#!/usr/bin/env bash
#
# Copyright (C) 2023 Ronald Record <ronaldrecord@gmail.com>
# Copyright (C) 2022 Michael Peter <michaeljohannpeter@gmail.com>
#
# Install Neovim and all dependencies for the Neovim config at:
#     https://github.com/doctorfree/nvim-lazyman
#
# shellcheck disable=SC2001,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2164

DOC_HOMEBREW="https://docs.brew.sh"
BREW_EXE="brew"
HOMEBREW_HOME=
PYTHON=
export PATH=${HOME}/.local/bin:${PATH}

abort() {
  printf "\nERROR: %s\n" "$@" >&2
  exit 1
}

log() {
  [ "$quiet" ] || {
    printf "\n\t%s" "$@"
  }
}

calc_elapsed() {
  FINISH_SECONDS=$(date +%s)
  ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
  ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
}

check_prerequisites() {
  if [ "${BASH_VERSION:-}" = "" ]; then
    abort "Bash is required to interpret this script."
  fi
  [ "${BASH_VERSINFO:-0}" -ge 4 ] || install_bash=1

  if [[ $EUID -eq 0 ]]; then
    abort "Script must not be run as root user"
  fi

  architecture=$(uname -m)
  if [[ $architecture =~ "arm" || $architecture =~ "aarch64" ]]; then
    abort "Only amd64/x86_64 is supported"
  fi
}

get_platform() {
  platform=$(uname -s)
  if [ "$platform" == "Darwin" ]; then
    darwin=1
  else
    if [ -f /etc/os-release ]; then
      . /etc/os-release
      [ "${ID}" == "debian" ] || [ "${ID_LIKE}" == "debian" ] && debian=1
      [ "${ID}" == "arch" ] || [ "${ID_LIKE}" == "arch" ] && arch=1
      [ "${ID}" == "alpine" ] && alpine=1
      [ "${ID}" == "fedora" ] && redhat=1
      [ "${ID}" == "centos" ] && redhat=1
      [ "${ID}" == "opensuse" ] && suse=1
      [ "${ID}" == "void" ] && void=1
      [ "${alpine}" ] || [ "${arch}" ] || [ "${debian}" ] \
        || [ "${redhat}" ] || [ "${suse}" ] || [ "${void}" ] || {
        echo "${ID_LIKE}" | grep debian >/dev/null && debian=1
        echo "${ID_LIKE}" | grep suse >/dev/null && suse=1
        echo "${ID_LIKE}" | grep void >/dev/null && void=1
      }
    else
      if [ -f /etc/arch-release ]; then
        arch=1
      else
        if [ "${have_apt}" ]; then
          debian=1
        else
          if [ -f /etc/fedora-release ]; then
            redhat=1
          else
            if [ "${have_dnf}" ] || [ "${have_yum}" ]; then
              redhat=1
            else
              if [ "${have_zyp}" ]; then
                suse=1
              else
                if [ "${have_xbps}" ]; then
                  void=1
                else
                  if [ "${have_apk}" ]; then
                    alpine=1
                  else
                    printf "\nUnknown operating system distribution\n"
                  fi
                fi
              fi
            fi
          fi
        fi
      fi
    fi
  fi

  [ "${debian}" ] && {
    PKGMGR="APT"
    if [ "${have_apt}" ]; then
      APT="apt -q -y"
    else
      if [ "${have_aptget}" ]; then
        APT="apt-get -q -y"
      else
        printf "\nCould not locate apt or apt-get"
        printf "\nUsing Homebrew to install Neovim dependencies and tools\n"
        native=
      fi
    fi
  }

  [ "${redhat}" ] && {
    if [ "${have_dnf}" ]; then
      DNF="dnf --assumeyes --quiet"
      PKGMGR="DNF"
    else
      if [ "${have_yum}" ]; then
        DNF="yum --assumeyes --quiet"
        PKGMGR="YUM"
      else
        printf "\nCould not locate dnf or yum"
        printf "\nUsing Homebrew to install Neovim dependencies and tools\n"
        native=
      fi
    fi
  }

  [ "${suse}" ] && {
    if [ "${have_zyp}" ]; then
      PKGMGR="DNF"
    else
      printf "\nCould not locate zypper"
      printf "\nUsing Homebrew to install Neovim dependencies and tools\n"
      native=
    fi
  }

  [ "${alpine}" ] && {
    if [ "${have_apk}" ]; then
      PKGMGR="APK"
    else
      printf "\nCould not locate apk"
      printf "\nUsing Homebrew to install Neovim dependencies and tools\n"
      native=
    fi
  }

  [ "${arch}" ] && {
    if [ "${have_pac}" ]; then
      PKGMGR="PACMAN"
    else
      printf "\nCould not locate pacman"
      printf "\nUsing Homebrew to install Neovim dependencies and tools\n"
      native=
    fi
  }

  [ "${void}" ] && {
    if [ "${have_xbps}" ]; then
      PKGMGR="XBPS"
    else
      printf "\nCould not locate xbps-install"
      printf "\nUsing Homebrew to install Neovim dependencies and tools\n"
      native=
    fi
  }
}

# Compare two version strings [$1: version string 1 (v1), $2: version string 2 (v2)]
# Return values:
#   0: v1 == v2
#   1: v1 > v2
#   2: v1 < v2
# Based on https://stackoverflow.com/a/4025065 by Dennis Williamson
# and https://stackoverflow.com/questions/4023830/how-to-compare-two-strings-in-dot-separated-version-format-in-bash/49351294#49351294 by Github user @fonic
compare_versions() {

  # Trivial v1 == v2 test based on string comparison
  [[ "$1" == "$2" ]] && return 0

  # Local variables
  local regex="^(.*)-r([0-9]*)$" va1=() vr1=0 va2=() vr2=0 len i IFS="."

  # Split version strings into arrays, extract trailing revisions
  if [[ "$1" =~ ${regex} ]]; then
    va1=("${BASH_REMATCH[1]}")
    [[ -n "${BASH_REMATCH[2]}" ]] && vr1=${BASH_REMATCH[2]}
  else
    va1=("$1")
  fi
  if [[ "$2" =~ ${regex} ]]; then
    va2=("${BASH_REMATCH[1]}")
    [[ -n "${BASH_REMATCH[2]}" ]] && vr2=${BASH_REMATCH[2]}
  else
    va2=("$2")
  fi

  # Bring va1 and va2 to same length by filling empty fields with zeros
  ((${#va1[@]} > ${#va2[@]})) && len=${#va1[@]} || len=${#va2[@]}
  for ((i = 0; i < len; ++i)); do
    [[ -z "${va1[i]}" ]] && va1[i]="0"
    [[ -z "${va2[i]}" ]] && va2[i]="0"
  done

  # Append revisions, increment length
  va1+=("$vr1")
  va2+=("$vr2")
  len=$((len + 1))

  # Compare version elements, check if v1 > v2 or v1 < v2
  for ((i = 0; i < len; ++i)); do
    if ((10#${va1[i]} > 10#${va2[i]})); then
      return 1
    elif ((10#${va1[i]} < 10#${va2[i]})); then
      return 2
    fi
  done

  # All elements are equal, thus v1 == v2
  return 0
}

install_homebrew() {
  if ! command -v brew >/dev/null 2>&1; then
    [ "$debug" ] && START_SECONDS=$(date +%s)
    log "Installing Homebrew ..."
    BREW_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
    curl -fsSL "$BREW_URL" >/tmp/brew-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/brew-$$.sh
      curl -kfsSL "$BREW_URL" >/tmp/brew-$$.sh
    }
    [ -f /tmp/brew-$$.sh ] || abort "Brew install script download failed"
    chmod 755 /tmp/brew-$$.sh
    NONINTERACTIVE=1 /bin/bash -c "/tmp/brew-$$.sh" >/dev/null 2>&1
    rm -f /tmp/brew-$$.sh
    export HOMEBREW_NO_INSTALL_CLEANUP=1
    export HOMEBREW_NO_ENV_HINTS=1
    export HOMEBREW_NO_AUTO_UPDATE=1
    [ "$quiet" ] || printf " done"
    if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
      HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
      BREW_EXE="${HOMEBREW_HOME}/bin/brew"
    else
      if [ -x /usr/local/bin/brew ]; then
        HOMEBREW_HOME="/usr/local"
        BREW_EXE="${HOMEBREW_HOME}/bin/brew"
      else
        if [ -x /opt/homebrew/bin/brew ]; then
          HOMEBREW_HOME="/opt/homebrew"
          BREW_EXE="${HOMEBREW_HOME}/bin/brew"
        else
          abort "Homebrew brew executable could not be located"
        fi
      fi
    fi

    if [ -f "${HOME}/.bashrc" ]; then
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "${HOME}/.bashrc" >/dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.bashrc"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.bashrc"
        echo 'fi' >>"${HOME}/.bashrc"
      }
    else
      echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >"${HOME}/.bashrc"
      echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.bashrc"
      echo 'fi' >>"${HOME}/.bashrc"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "${HOME}/.zshrc" >/dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.zshrc"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.zshrc"
        echo 'fi' >>"${HOME}/.zshrc"
      }
    }
    [ "$debug" ] && {
      calc_elapsed
      printf "\nHomebrew install elapsed time = ${ELAPSED}\n"
    }
    log "Homebrew installed in ${HOMEBREW_HOME}"
    log "See ${DOC_HOMEBREW}"
  fi
  eval "$("$BREW_EXE" shellenv)"
  have_brew=$(type -p brew)
  [ "$have_brew" ] && BREW_EXE="brew"
  [ "$HOMEBREW_HOME" ] || {
    brewpath=$(command -v brew)
    if [ $? -eq 0 ]; then
      HOMEBREW_HOME=$(dirname "$brewpath" | sed -e "s%/bin$%%")
    else
      HOMEBREW_HOME="Unknown"
    fi
  }
}

brew_install() {
  brewpkg="$1"
  if command -v "$brewpkg" >/dev/null 2>&1; then
    log "Using previously installed ${brewpkg}"
  else
    log "Installing ${brewpkg} ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet "$brewpkg" >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "$brewpkg" >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
    if [ "$debug" ]; then
      calc_elapsed
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi
}

platform_install() {
  platpkg="$1"
  if [ "$2" ]; then
    pkgname="$2"
  else
    pkgname="$platpkg"
  fi
  if command -v "$pkgname" >/dev/null 2>&1; then
    log "Using previously installed ${platpkg}"
  else
    log "Installing ${platpkg} ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    if [ "${debian}" ]; then
      if [ "${APT}" ]; then
        sudo ${APT} install ${platpkg} >/dev/null 2>&1
      else
        [ "${quiet}" ] || printf "\n\t\tCannot locate apt to install. Skipping ..."
      fi
    else
      if [ "${redhat}" ]; then
        if [ "${DNF}" ]; then
          sudo ${DNF} install ${platpkg} >/dev/null 2>&1
        else
          [ "${quiet}" ] || {
            printf "\n\t\tCannot locate dnf to install. Skipping ..."
          }
        fi
      else
        [ "${arch}" ] && {
          if [ "${have_pac}" ]; then
            sudo pacman -S --noconfirm ${platpkg} >/dev/null 2>&1
          else
            [ "${quiet}" ] || {
              printf "\n\t\tCannot locate pacman to install. Skipping ..."
            }
          fi
        }
        [ "${suse}" ] && {
          if [ "${have_zyp}" ]; then
            sudo zypper install ${platpkg} >/dev/null 2>&1
          else
            [ "${quiet}" ] || {
              printf "\n\t\tCannot locate zypper to install. Skipping ..."
            }
          fi
        }
        [ "${alpine}" ] && {
          if [ "${have_apk}" ]; then
            sudo apk add ${platpkg} >/dev/null 2>&1
          else
            [ "${quiet}" ] || {
              printf "\n\t\tCannot locate apk to install. Skipping ..."
            }
          fi
        }
        [ "${void}" ] && {
          if [ "${have_xbps}" ]; then
            sudo xbps-install -S ${platpkg} >/dev/null 2>&1
          else
            [ "${quiet}" ] || {
              printf "\n\t\tCannot locate xbps-install to install. Skipping ..."
            }
          fi
        }
      fi
    fi
    [ "$quiet" ] || printf " done"
    if [ "$debug" ]; then
      calc_elapsed
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi
}

plat_install() {
  if [ "${use_homebrew}" ]; then
    brew_install "$1"
  else
    platform_install "$1"
  fi
}

install_neovim_dependencies() {
  [ "$quiet" ] || printf "\nInstalling dependencies"
  [ "$install_bash" ] && {
    log "Installing a modern version of bash ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    if [ "${use_homebrew}" ]; then
      "$BREW_EXE" install --quiet bash >/dev/null 2>&1
      [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet bash >/dev/null 2>&1
    else
      platform_install bash xxxfoobaryyy
    fi
    if [ "$debug" ]; then
      calc_elapsed
      printf " elapsed time = %s${ELAPSED}"
    fi
  }
  PKGS="git curl jq tar unzip fzf wget xclip"
  for pkg in $PKGS
  do
    plat_install "$pkg"
  done

  if [ "${use_homebrew}" ]; then
    brew_install clipboard
  else
    platform_install "wl-clipboard" wl-copy
  fi

  have_curl=$(type -p curl)
  [ "$have_curl" ] || abort "The curl command could not be located."
  have_jq=$(type -p jq)
  have_wget=$(type -p wget)

  if command -v gh >/dev/null 2>&1; then
    log "Using previously installed gh"
  else
    if [ "${use_homebrew}" ]; then
      # Things are so much easier with Homebrew
      brew_install gh
    else
      OWNER=cli
      PROJECT=cli
      API_URL="https://api.github.com/repos/${OWNER}/${PROJECT}/releases/latest"
      DL_URL=
      [ "${have_curl}" ] && [ "${have_jq}" ] && {
        DL_URL=$(curl --silent "${API_URL}" \
            | jq --raw-output '.assets | .[]?.browser_download_url' \
          | grep "linux_amd64\.tar\.gz$")
      }
      [ "${DL_URL}" ] && {
        [ "${have_wget}" ] && {
          log "Installing gh ..."
          TEMP_TGZ="$(mktemp --suffix=.tgz)"
          wget --quiet -O "${TEMP_TGZ}" "${DL_URL}" >/dev/null 2>&1
          chmod 644 "${TEMP_TGZ}"
          mkdir -p /tmp/ghit$$
          tar -C /tmp/ghit$$ -xzf "${TEMP_TGZ}"
          for ghimbin in /tmp/"ghit$$"/*/bin/gh /tmp/"ghit$$"/bin/gh
          do
            [ "${ghimbin}" == "/tmp/ghit$$/*/bin/gh" ] && continue
            [ -f "${ghimbin}" ] && {
              ghimdir=$(dirname ${ghimbin})
              ghimdir=$(dirname ${ghimdir})
              tar -C ${ghimdir} -cf /tmp/ghim-$$.tar bin share
              tar -C ${HOME}/.local -xf /tmp/ghim-$$.tar
              [ -f ${HOME}/.local/bin/gh ] && chmod 755 ${HOME}/.local/bin/gh
              break
            }
          done
          rm -f "${TEMP_TGZ}"
          rm -f "/tmp/ghim-$$.tar"
          rm -rf /tmp/ghit$$
          [ "$quiet" ] || printf " done"
        }
      }
    fi
  fi

  if command -v lazygit >/dev/null 2>&1; then
    log "Using previously installed lazygit"
  else
    if [ "${use_homebrew}" ]; then
      # Things are so much easier with Homebrew
      brew_install lazygit
    else
      OWNER=jesseduffield
      PROJECT=lazygit
      API_URL="https://api.github.com/repos/${OWNER}/${PROJECT}/releases/latest"
      DL_URL=
      [ "${have_curl}" ] && [ "${have_jq}" ] && {
        DL_URL=$(curl --silent "${API_URL}" \
            | jq --raw-output '.assets | .[]?.browser_download_url' \
          | grep "Linux_x86_64\.tar\.gz$")
      }
      [ "${DL_URL}" ] && {
        [ "${have_wget}" ] && {
          log "Installing lazygit ..."
          TEMP_TGZ="$(mktemp --suffix=.tgz)"
          wget --quiet -O "${TEMP_TGZ}" "${DL_URL}" >/dev/null 2>&1
          chmod 644 "${TEMP_TGZ}"
          mkdir -p /tmp/lgit$$
          tar -C /tmp/lgit$$ -xzf "${TEMP_TGZ}"
          [ -f /tmp/lgit$$/lazygit ] && {
            cp /tmp/lgit$$/lazygit ${HOME}/.local/bin/lazygit
            chmod 755 ${HOME}/.local/bin/lazygit
          }
          rm -f "${TEMP_TGZ}"
          rm -rf /tmp/lgit$$
          [ "$quiet" ] || printf " done"
        }
      }
    fi
  fi

  if command -v zoxide >/dev/null 2>&1; then
    log "Using previously installed zoxide"
  else
    log "Installing zoxide ..."
    ZOXI_URL="https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh"
    curl -fsSL "${ZOXI_URL}" >/tmp/zoxi-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/zoxi-$$.sh
      curl -kfsSL "${ZOXI_URL}" >/tmp/zoxi-$$.sh
    }
    [ -f /tmp/zoxi-$$.sh ] && bash /tmp/zoxi-$$.sh >/dev/null 2>&1
    rm -f /tmp/zoxi-$$.sh

    if [ -f "${HOME}/.bashrc" ]; then
      grep "eval \"\$(zoxide init" "${HOME}/.bashrc" >/dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >>"${HOME}/.bashrc"
        echo '  eval "$(zoxide init bash)"' >>"${HOME}/.bashrc"
        echo 'fi' >>"${HOME}/.bashrc"
      }
    else
      echo 'if command -v zoxide > /dev/null; then' >"${HOME}/.bashrc"
      echo '  eval "$(zoxide init bash)"' >>"${HOME}/.bashrc"
      echo 'fi' >>"${HOME}/.bashrc"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "eval \"\$(zoxide init" "${HOME}/.zshrc" >/dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >>"${HOME}/.zshrc"
        echo '  eval "$(zoxide init zsh)"' >>"${HOME}/.zshrc"
        echo 'fi' >>"${HOME}/.zshrc"
      }
    }
    [ "$quiet" ] || printf " done"
  fi

  if command -v rg >/dev/null 2>&1; then
    log "Using previously installed ripgrep"
  else
    plat_install ripgrep
  fi
  [ "$quiet" ] || printf "\n"
}

install_neovim() {
  log "Installing Neovim ..."
  OWNER=neovim
  PROJECT=neovim
  API_URL="https://api.github.com/repos/${OWNER}/${PROJECT}/releases/latest"
  DL_URL=
  if [ "$debug" ]; then
    START_SECONDS=$(date +%s)
    if [ "${use_homebrew}" ]; then
      "$BREW_EXE" link -q libuv
      "$BREW_EXE" install neovim
    else
      [ -d $HOME/.local ] || mkdir -p $HOME/.local
      [ "${have_curl}" ] && [ "${have_jq}" ] && {
        DL_URL=$(curl --silent "${API_URL}" \
            | jq --raw-output '.assets | .[]?.browser_download_url' \
          | grep "linux64\.tar\.gz$")
      }
      [ "${DL_URL}" ] && {
        [ "${have_wget}" ] && {
          TEMP_TGZ="$(mktemp --suffix=.tgz)"
          wget --quiet -O "${TEMP_TGZ}" "${DL_URL}"
          chmod 644 "${TEMP_TGZ}"
          mkdir -p /tmp/nvim$$
          tar -C /tmp/nvim$$ -xzf "${TEMP_TGZ}"
          if [ -f /tmp/nvim$$/nvim-linux64/bin/nvim ]; then
            tar -C /tmp/nvim$$/nvim-linux64 -cf /tmp/nvim-$$.tar .
            tar -C ${HOME}/.local -xf /tmp/nvim-$$.tar
            chmod 755 ${HOME}/.local/bin/nvim
          else
            for nvimbin in /tmp/"nvim$$"/*/bin/nvim /tmp/"nvim$$"/bin/nvim
            do
              [ "${nvimbin}" == "/tmp/nvim$$/*/bin/nvim" ] && continue
              [ -f "${nvimbin}" ] && {
                nvimdir=$(dirname ${nvimbin})
                nvimdir=$(dirname ${nvimdir})
                tar -C ${nvimdir} -cf /tmp/nvim-$$.tar .
                tar -C ${HOME}/.local -xf /tmp/nvim-$$.tar
                chmod 755 ${HOME}/.local/bin/nvim
                break
              }
            done
          fi
          rm -f "${TEMP_TGZ}"
          rm -f /tmp/nvim-$$.tar
          rm -rf /tmp/nvim$$
        }
      }
    fi
  else
    if [ "${use_homebrew}" ]; then
      "$BREW_EXE" link -q libuv >/dev/null 2>&1
      "$BREW_EXE" install -q neovim >/dev/null 2>&1
    else
      [ -d $HOME/.local ] || mkdir -p $HOME/.local
      [ "${have_curl}" ] && [ "${have_jq}" ] && {
        DL_URL=$(curl --silent "${API_URL}" \
            | jq --raw-output '.assets | .[]?.browser_download_url' \
          | grep "linux64\.tar\.gz$")
      }
      [ "${DL_URL}" ] && {
        [ "${have_wget}" ] && {
          TEMP_TGZ="$(mktemp --suffix=.tgz)"
          wget --quiet -O "${TEMP_TGZ}" "${DL_URL}" >/dev/null 2>&1
          chmod 644 "${TEMP_TGZ}"
          mkdir -p /tmp/nvim$$
          tar -C /tmp/nvim$$ -xzf "${TEMP_TGZ}"
          if [ -f /tmp/nvim$$/nvim-linux64/bin/nvim ]; then
            tar -C /tmp/nvim$$/nvim-linux64 -cf /tmp/nvim-$$.tar .
            tar -C ${HOME}/.local -xf /tmp/nvim-$$.tar
            chmod 755 ${HOME}/.local/bin/nvim
          else
            for nvimbin in /tmp/"nvim$$"/*/bin/nvim /tmp/"nvim$$"/bin/nvim; do
              [ "${nvimbin}" == "/tmp/nvim$$/*/bin/nvim" ] && continue
              [ -f "${nvimbin}" ] && {
                nvimdir=$(dirname ${nvimbin})
                nvimdir=$(dirname ${nvimdir})
                tar -C ${nvimdir} -cf /tmp/nvim-$$.tar .
                tar -C ${HOME}/.local -xf /tmp/nvim-$$.tar
                chmod 755 ${HOME}/.local/bin/nvim
                break
              }
            done
          fi
          rm -f "${TEMP_TGZ}"
          rm -f /tmp/nvim-$$.tar
          rm -rf /tmp/nvim$$
        }
      }
    fi
  fi
  [ "$quiet" ] || printf " done"
  if [ "$debug" ]; then
    calc_elapsed
    printf "\nInstall Neovim elapsed time = %s${ELAPSED}\n"
  fi
}

install_neovim_head() {
  [ "${use_homebrew}" ] && "$BREW_EXE" link -q libuv >/dev/null 2>&1
  log "Building and installing nightly Neovim ..."
  if [ "$debug" ]; then
    START_SECONDS=$(date +%s)
    if [ "${use_homebrew}" ]; then
      "$BREW_EXE" install --HEAD neovim
    else
      [ -d /tmp/neovim$$ ] && rm -rf /tmp/neovim$$
      git clone https://github.com/neovim/neovim.git /tmp/neovim$$
      cd /tmp/neovim$$
      rm -f ${HOME}/.local/bin/nvim
      rm -rf ${HOME}/.local/share/nvim
      make CMAKE_BUILD_TYPE=Release \
        CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=${HOME}/.local"
      make install
      cd
      rm -rf /tmp/neovim$$
    fi
  else
    if [ "${use_homebrew}" ]; then
      "$BREW_EXE" install -q --HEAD neovim >/dev/null 2>&1
    else
      [ -d /tmp/neovim$$ ] && rm -rf /tmp/neovim$$
      git clone https://github.com/neovim/neovim.git /tmp/neovim$$ >/dev/null 2>&1
      cd /tmp/neovim$$
      rm -f ${HOME}/.local/bin/nvim
      rm -rf ${HOME}/.local/share/nvim
      make CMAKE_BUILD_TYPE=Release \
        CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=${HOME}/.local" >/dev/null 2>&1
      make install >/dev/null 2>&1
      cd
      rm -rf /tmp/neovim$$
    fi
  fi
  if [ "$debug" ]; then
    calc_elapsed
    printf "\nInstall Neovim elapsed time = %s${ELAPSED}\n"
  fi
  [ "$quiet" ] || printf " done"
}

check_python() {
  brew_path=$(command -v brew)
  [ "${brew_path}" ] || {
    [ "${BREW_EXE}" == "brew" ] || {
      [ "${BREW_EXE}" ] && brew_path="${BREW_EXE}"
    }
  }
  [ "${brew_path}" ] || {
    [ "$HOMEBREW_HOME" == "Unknown" ] || {
      [ "$HOMEBREW_HOME" ] && brew_path="${HOMEBREW_HOME}/bin/brew"
    }
    [ "${brew_path}" ] || {
      if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
        HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
        brew_path="${HOMEBREW_HOME}/bin/brew"
      else
        if [ -x /usr/local/bin/brew ]; then
          HOMEBREW_HOME="/usr/local"
          brew_path="${HOMEBREW_HOME}/bin/brew"
        else
          if [ -x /opt/homebrew/bin/brew ]; then
            HOMEBREW_HOME="/opt/homebrew"
            brew_path="${HOMEBREW_HOME}/bin/brew"
          fi
        fi
      fi
    }
  }
  brew_dir=$(dirname "$brew_path")
  if [ -x ${brew_dir}/python3 ]; then
    PYTHON="${brew_dir}/python3"
  else
    PYTHON=$(command -v python3)
  fi
}

check_ruby() {
  brew_path=$(command -v brew)
  brew_dir=$(dirname "$brew_path")
  if [ -x "$brew_dir"/ruby ]; then
    RUBY="${brew_dir}/ruby"
  else
    RUBY=$(command -v ruby)
  fi
  if [ -x "$brew_dir"/gem ]; then
    GEM="${brew_dir}/gem"
  else
    GEM=$(command -v gem)
  fi
}

# Brew doesn't create a python symlink so we do so here
link_python() {
  python3_path=$(command -v python3)
  [ "$python3_path" ] && {
    python_dir=$(dirname "$python3_path")
    if [ -w "$python_dir" ]; then
      rm -f "$python_dir"/python
      ln -s "$python_dir"/python3 "$python_dir"/python
    fi
  }
}

install_extra() {
  [ "$quiet" ] || printf "\nInstalling extra language servers and tools"
  for pkg in luarocks julia php composer
  do
    plat_install ${pkg}
  done
}

install_tools() {
  [ "$quiet" ] || printf "\nInstalling language servers and tools"
  plat_install ccls
  [ "${use_homebrew}" ] && {
    "$BREW_EXE" link --overwrite --quiet ccls >/dev/null 2>&1
  }

  if command -v "cargo" >/dev/null 2>&1; then
    log "Using previously installed cargo"
  else
    log "Installing cargo ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    if [ "${use_homebrew}" ]; then
      "$BREW_EXE" install --quiet "rust" >/dev/null 2>&1
      [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "rust" >/dev/null 2>&1
    else
      RUST_URL="https://sh.rustup.rs"
      curl -fsSL "${RUST_URL}" >/tmp/rust-$$.sh
      [ $? -eq 0 ] || {
        rm -f /tmp/rust-$$.sh
        curl -kfsSL "${RUST_URL}" >/tmp/rust-$$.sh
        [ -f /tmp/rust-$$.sh ] && {
          cat /tmp/rust-$$.sh | sed -e "s/--show-error/--insecure --show-error/" >/tmp/ins$$
          cp /tmp/ins$$ /tmp/rust-$$.sh
          rm -f /tmp/ins$$
        }
      }
      [ -f /tmp/rust-$$.sh ] && sh /tmp/rust-$$.sh -y >/dev/null 2>&1
      rm -f /tmp/rust-$$.sh
    fi
    if [ "$debug" ]; then
      calc_elapsed
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi
  if ! command -v "cargo" >/dev/null 2>&1; then
    [ -x "${HOME}"/.cargo/bin/cargo ] && {
      export PATH="$HOME/.cargo/bin:$PATH"
    }
  fi

  [ "$quiet" ] || printf "\nInstalling npm and treesitter dependencies"

  # First try to install tree-sitter-cli with cargo then npm
  if command -v tree-sitter >/dev/null 2>&1; then
    log "Using previously installed tree-sitter cli"
  else
    if command -v "cargo" >/dev/null 2>&1; then
      log "Installing tree-sitter cli with cargo ..."
      cargo install tree-sitter-cli >/dev/null 2>&1
      [ "$quiet" ] || printf " done"
    fi
  fi
  if ! command -v tldr >/dev/null 2>&1; then
    if [ "${use_homebrew}" ]; then
      brew_install tealdeer
    else
      OWNER=dbrgn
      PROJECT=tealdeer
      API_URL="https://api.github.com/repos/${OWNER}/${PROJECT}/releases/latest"
      DL_URL=
      [ "${have_curl}" ] && [ "${have_jq}" ] && {
        DL_URL=$(curl --silent "${API_URL}" \
            | jq --raw-output '.assets | .[]?.browser_download_url' \
          | grep "linux-x86_64-musl$")
      }
      [ "${DL_URL}" ] && {
        [ "${have_wget}" ] && {
          log "Installing tealdeer ..."
          TEMP_TGZ="$(mktemp --suffix=.bin)"
          wget --quiet -O "${TEMP_TGZ}" "${DL_URL}" >/dev/null 2>&1
          [ -d ${HOME}/.local/bin ] || mkdir -p ${HOME}/.local/bin
          cp "${TEMP_TGZ}" ${HOME}/.local/bin/tldr
          [ -f ${HOME}/.local/bin/tldr ] && {
            chmod 755 ${HOME}/.local/bin/tldr
            ${HOME}/.local/bin/tldr --update > /dev/null 2>&1
          }
          rm -f "${TEMP_TGZ}"
          [ "$quiet" ] || printf " done"
        }
      }
    fi
  fi
  if command -v ascii-image-converter >/dev/null 2>&1; then
      log "Using previously installed ascii-image-converter"
  else
    if [ "${use_homebrew}" ]; then
      log "Installing ascii-image-converter ..."
      "$BREW_EXE" install --quiet \
        TheZoraiz/ascii-image-converter/ascii-image-converter >/dev/null 2>&1
      [ "$quiet" ] || printf " done"
    else
      OWNER=TheZoraiz
      PROJECT=ascii-image-converter
      API_URL="https://api.github.com/repos/${OWNER}/${PROJECT}/releases/latest"
      DL_URL=
      [ "${have_curl}" ] && [ "${have_jq}" ] && {
        DL_URL=$(curl --silent "${API_URL}" \
            | jq --raw-output '.assets | .[]?.browser_download_url' \
          | grep "Linux_amd64")
      }
      [ "${DL_URL}" ] && {
        [ "${have_wget}" ] && {
          log "Installing ascii-image-converter ..."
          TEMP_TGZ="$(mktemp --suffix=.bin)"
          wget --quiet -O "${TEMP_TGZ}" "${DL_URL}" >/dev/null 2>&1
          chmod 644 "${TEMP_TGZ}"
          mkdir -p /tmp/ascc$$
          [ -d ${HOME}/.local/bin ] || mkdir -p ${HOME}/.local/bin
          tar -C /tmp/ascc$$ -xzf "${TEMP_TGZ}"
          for asccbin in /tmp/"ascc$$"/*/ascii-image-converter /tmp/"ascc$$"/ascii-image-converter
          do
            [ "${asccbin}" == "/tmp/ascc$$/*/ascii-image-converter" ] && continue
            [ -f "${asccbin}" ] && {
              cp "${asccbin}" ${HOME}/.local/bin/ascii-image-converter
              [ -f ${HOME}/.local/bin/ascii-image-converter ] && {
                chmod 755 ${HOME}/.local/bin/ascii-image-converter
                break
              }
            }
          done
          rm -f "${TEMP_TGZ}"
          rm -rf /tmp/ascc$$
          [ "$quiet" ] || printf " done"
        }
      }
    fi
  fi
  have_npm=$(type -p npm)
  [ "$have_npm" ] && {
    if ! command -v tree-sitter >/dev/null 2>&1; then
      log "Installing tree-sitter command line npm package ..."
      npm i -g tree-sitter-cli >/dev/null 2>&1
      [ "$quiet" ] || printf " done"
    fi

    log "Installing Neovim npm package ..."
    npm i -g neovim >/dev/null 2>&1
    [ "$quiet" ] || printf " done"

    log "Installing fd-find package ..."
    npm i -g fd-find >/dev/null 2>&1
    [ "$quiet" ] || printf " done"

    if command -v cspell >/dev/null 2>&1; then
      log "Using previously installed cspell"
    else
      log "Installing cspell npm package ..."
      npm i -g cspell >/dev/null 2>&1
      [ "$quiet" ] || printf " done"
    fi

    if command -v tsserver >/dev/null 2>&1; then
      log "Using previously installed typescript package"
    else
      log "Installing typescript npm package ..."
      npm i -g typescript >/dev/null 2>&1
      [ "$quiet" ] || printf " done"
    fi

    if command -v eslint_d >/dev/null 2>&1; then
      log "Using previously installed eslint_d"
    else
      log "Installing eslint_d npm package ..."
      npm i -g eslint_d >/dev/null 2>&1
      [ "$quiet" ] || printf " done"
    fi

    log "Installing the icon font for Visual Studio Code ..."
    npm i -g @vscode/codicons >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
  }
  if command -v tree-sitter >/dev/null 2>&1; then
    tree-sitter init-config >/dev/null 2>&1
  fi

  for pkg in bat lsd figlet luarocks lolcat xsel
  do
    plat_install "${pkg}"
  done
  if ! command -v lsd >/dev/null 2>&1; then
    if command -v "cargo" >/dev/null 2>&1; then
      log "Installing lsd with cargo ..."
      cargo install lsd >/dev/null 2>&1
      [ "$quiet" ] || printf " done"
    fi
  fi

  [ "$quiet" ] || printf "\nInstalling Python dependencies"
  check_python
  [ "$PYTHON" ] || {
    # Could not find Python
    if [ "${use_homebrew}" ]; then
      log 'Installing Python with Homebrew ...'
      "$BREW_EXE" install --quiet python >/dev/null 2>&1
      [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet python >/dev/null 2>&1
    else
      log 'Installing Python ...'
      platform_install python3
    fi
    check_python
    [ "$quiet" ] || printf " done"
  }
  link_python
  [ "$PYTHON" ] && {
    PIPARGS="--user --no-cache-dir --upgrade --force-reinstall"
    log 'Upgrading pip, setuptools, wheel, doq, and pynvim ...'
    "$PYTHON" -m pip install ${PIPARGS} pip >/dev/null 2>&1
    "$PYTHON" -m pip install ${PIPARGS} setuptools >/dev/null 2>&1
    "$PYTHON" -m pip install ${PIPARGS} wheel >/dev/null 2>&1
    "$PYTHON" -m pip install ${PIPARGS} pynvim doq >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
    log 'Installing black, beautysh, and ruff formatters/linters ...'
    "$PYTHON" -m pip install ${PIPARGS} beautysh >/dev/null 2>&1
    "$PYTHON" -m pip install ${PIPARGS} black >/dev/null 2>&1
    "$PYTHON" -m pip install ${PIPARGS} ruff >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
    [ "${native}" ] && [ "${debian}" ] && platform_install python3-venv
    [ "$quiet" ] || printf "\n\tInstalling neovim-remote (nvr) ..."
    if [ "${use_homebrew}" ]; then
      "$BREW_EXE" install -q neovim-remote >/dev/null 2>&1
    else
      ${PYTHON} -m pip install ${PIPARGS} neovim-remote >/dev/null 2>&1
    fi
    [ "$quiet" ] || printf " done"
    log 'Installing langchain, llama-cpp-python, and pygments ...'
    "$PYTHON" -m pip install ${PIPARGS} pygments >/dev/null 2>&1
    "$PYTHON" -m pip install --user --no-cache-dir --force-reinstall \
      langchain==0.0.177 llama-cpp-python==0.1.48 > /dev/null 2>&1
    [ "$quiet" ] || printf " done"
    if command -v "rich" >/dev/null 2>&1; then
      log "Using previously installed rich-cli"
    else
      log "Installing rich-cli ..."
      if [ "${use_homebrew}" ]; then
        "$BREW_EXE" install --quiet "rich-cli" >/dev/null 2>&1
        [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "rich-cli" >/dev/null 2>&1
      else
        ${PYTHON} -m pip install ${PIPARGS} rich-cli >/dev/null 2>&1
      fi
    fi
    [ "$quiet" ] || printf " done"
  }

  [ "$quiet" ] || printf "\nInstalling Ruby dependencies"
  check_ruby
  [ "$RUBY" ] || {
    # Could not find Ruby
    if [ "${use_homebrew}" ]; then
      log 'Installing Ruby with Homebrew ...'
      "$BREW_EXE" install --quiet ruby >/dev/null 2>&1
      [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet ruby >/dev/null 2>&1
    else
      log 'Installing Ruby ...'
      platform_install ruby
    fi
    check_ruby
    [ "$quiet" ] || printf " done"
  }

  [ "${native}" ] && {
    [ "${debian}" ] && platform_install ruby-dev
    [ "${redhat}" ] || [ "${suse}" ] || [ "${void}" ] && {
      platform_install ruby-devel
    }
  }

  [ "$GEM" ] && {
    log "Installing Ruby neovim gem ..."
    ${GEM} install neovim --user-install >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
  }

  GHUC="https://raw.githubusercontent.com"
  JETB_URL="${GHUC}/JetBrains/JetBrainsMono/master/install_manual.sh"
  [ "$quiet" ] || printf "\n\tInstalling JetBrains Mono font ... "
  curl -fsSL "$JETB_URL" >/tmp/jetb-$$.sh
  [ $? -eq 0 ] || {
    rm -f /tmp/jetb-$$.sh
    curl -kfsSL "$JETB_URL" >/tmp/jetb-$$.sh
  }
  [ -f /tmp/jetb-$$.sh ] && {
    chmod 755 /tmp/jetb-$$.sh
    /bin/bash -c "/tmp/jetb-$$.sh" >/dev/null 2>&1
    rm -f /tmp/jetb-$$.sh
  }
  [ "$quiet" ] || printf "done\n"
}

main() {
  check_prerequisites
  get_platform
  [ "$proceed" ] || {
    [ "${alpine}" ] || [ "${arch}" ] || [ "${debian}" ] \
      || [ "${redhat}" ] || [ "${suse}" ] || [ "${void}" ] && {
      prompt=
      if [ "${native}" ]; then
        printf "\n\n${PKGMGR} will be used to install dependencies and tools."
        printf "\nThis requires 'sudo' (root) privilege.\n"
        have_brew=$(type -p brew)
        [ "${have_brew}" ] && {
          prompt=1
          printf "\nAn existing Homebrew installation has been detected.\n"
          printf "\nEnter 'h' to use Homebrew, 'n' or <Enter> to use ${PKGMGR}"
        }
      else
        prompt=1
        printf "\n\nHomebrew will be used to install dependencies and tools.\n"
        printf "\nEnter 'h' or <Enter> to use Homebrew, 'n' to use ${PKGMGR}"
      fi
      if [ "${prompt}" ]; then
        printf "\nEnter 'q' to exit the Neovim installer\n"
        while true; do
          read -r -p "Do you wish to use ${PKGMGR} or Homebrew ? (h/n/q) " yn
          case $yn in
            [Nn]*)
              printf "\nUsing ${PKGMGR} to install dependencies and tools\n"
              native=1
              break
              ;;
            [Hh]*)
              printf "\nUsing Homebrew to install dependencies and tools\n"
              native=
              break
              ;;
            [Qq]*)
              printf "\nExiting Neovim installer without installing dependencies or tools\n"
              exit 1
              ;;
            '')
              if [ "${native}" ]; then
                printf "\nUsing ${PKGMGR} to install dependencies and tools\n"
              else
                printf "\nUsing Homebrew to install dependencies and tools\n"
              fi
              break
              ;;
            *)
              printf "\nPlease answer 'h' or 'n'.\n"
              ;;
          esac
        done
      else
        printf "\nPress <Enter> to continue ... "
        read -r yn
      fi
    }
  }
  if [ "${darwin}" ]; then
    # Always use Homebrew on macOS
    use_homebrew=1
  else
    # All other platforms, use Homebrew only when instructed
    [ "${native}" ] || use_homebrew=1
  fi
  [ "${use_homebrew}" ] && install_homebrew
  install_neovim_dependencies
  if command -v nvim >/dev/null 2>&1; then
    if [ "$nvim_head" ]; then
      printf "\nInstalling nightly build of Neovim"
      install_neovim_head
    else
      # Check if installed nvim is v0.9.0 or greater
      ver_head=$(nvim --version | head -1 | awk '{ print $2 }')
      nvim_ver=$(echo ${ver_head} | awk -F '-' '{ print $1 }' | sed -e "s/^v//")
      if [ "${nvim_ver}" ]; then
        compare_versions "${nvim_ver}" "0.9.0" >/dev/null 2>&1
        [ $? -eq 2 ] && {
          printf "\nCurrently installed Neovim is less than version 0.9"
          printf "\nInstalling/upgrading Neovim"
          install_neovim
        }
      else
        # Don't know, install anyway
        printf "\nInstalling/upgrading Neovim"
        install_neovim
      fi
    fi
  else
    if [ "$nvim_head" ]; then
      install_neovim_head
    else
      install_neovim
    fi
  fi
  install_tools
  [ "${alltools}" ] && install_extra
}

APT=
DNF=
nvim_head=
quiet=
debug=
darwin=
alpine=
arch=
debian=
redhat=
suse=
void=
have_apk=$(type -p apk)
have_apt=$(type -p apt)
have_aptget=$(type -p apt-get)
have_dnf=$(type -p dnf)
have_pac=$(type -p pacman)
have_xbps=$(type -p xbps-install)
have_yum=$(type -p yum)
have_zyp=$(type -p zypper)
alltools=
native=1
proceed=

while getopts "adhnqy" flag; do
  case $flag in
    a)
      alltools=1
      ;;
    d)
      debug=1
      ;;
    n)
      nvim_head=1
      ;;
    h)
      native=
      PKGMGR="Homebrew"
      ;;
    q)
      quiet=1
      ;;
    y)
      proceed=1
      ;;
    *) ;;
  esac
done

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]; then
  ulimit -n 4096
else
  ulimit -n "$hardlimit"
fi

install_bash=
[ "$debug" ] && MAIN_START_SECONDS=$(date +%s)

main

[ "$debug" ] && {
  MAIN_FINISH_SECONDS=$(date +%s)
  MAIN_ELAPSECS=$((MAIN_FINISH_SECONDS - MAIN_START_SECONDS))
  MAIN_ELAPSED=$(eval "echo $(date -ud "@$MAIN_ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
  printf "\nTotal elapsed time = %s${MAIN_ELAPSED}\n"
}

ulimit -n "$currlimit"
