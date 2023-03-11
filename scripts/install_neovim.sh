#!/bin/bash
#
# Copyright (C) 2023 Ronald Record <ronaldrecord@gmail.com>
# Copyright (C) 2022 Michael Peter <michaeljohannpeter@gmail.com>
#
# Install Neovim and all dependencies for the Neovim config at:
#     https://github.com/doctorfree/nvim-lazyman
#
# shellcheck disable=SC2001,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059

OS=""
DIST=""
DOC_HOMEBREW="https://docs.brew.sh"
BREW_EXE="brew"

abort () {
  printf "\nERROR: %s\n" "$@" >&2
  exit 1
}

log () {
  [ "${quiet}" ] || {
    printf "\n\t%s" "$@"
  }
}

check_prerequisites () {
  if [ -z "${BASH_VERSION:-}" ]; then
    abort "Bash is required to interpret this script."
  fi

  if [[ $EUID -eq 0 ]]; then
    abort "Script must not be run as root user"
  fi

  command -v sudo > /dev/null 2>&1 || { abort "sudo not found - please install"; }

  arch=$(uname -m)
  if [[ $arch =~ "arm" || $arch =~ "aarch64" ]]; then
    abort "Only amd64/x86_64 is supported"
  fi
}

get_os () {
  if [[ "$OSTYPE" =~ "darwin"* ]]; then
    OS="apple"
  elif [[ "$OSTYPE" =~ "linux" ]]; then
    OS="linux"
  fi
}

get_linux_distribution () {
  local release
  release=$(cat /etc/*-release)
  if [[ "$release" =~ "Debian" ]]; then
    DIST="debian"
  elif [[ "$release" =~ "Ubuntu" ]]; then
    DIST="ubuntu"
  elif [[ "$release" =~ "Arch" ]]; then
    DIST="arch"
  elif [ -f /etc/os-release ]
  then
    . /etc/os-release
    [ "${ID}" == "debian" ] || [ "${ID_LIKE}" == "debian" ] && {
      DIST="debian"
      debian=1
    }
    [ "${ID}" == "arch" ] || [ "${ID_LIKE}" == "arch" ] && {
      DIST="arch"
      arch=1
    }
    [ "${ID}" == "fedora" ] && {
      DIST="fedora"
      fedora=1
    }
    [ "${arch}" ] || [ "${debian}" ] || [ "${fedora}" ] || {
      echo "${ID_LIKE}" | grep debian > /dev/null && debian=1
    }
  else
    if [ -f /etc/arch-release ]
    then
      DIST="arch"
    else
      have_apt=$(type -p apt)
      if [ "${have_apt}" ]
      then
        DIST="debian"
      else
        if [ -f /etc/fedora-release ]
        then
          DIST="fedora"
        else
          have_dnf=$(type -p dnf)
          if [ "${have_dnf}" ]
          then
            DIST="fedora"
          else
            abort "Unknown operating system distribution"
          fi
        fi
      fi
    fi
  fi
}

install_brew () {
  if ! command -v brew >/dev/null 2>&1; then
    [ "${debug}" ] && START_SECONDS=$(date +%s)
    log "Installing Homebrew, please be patient ..."
    BREW_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
    have_curl=$(type -p curl)
    [ "${have_curl}" ] || abort "The curl command could not be located."
    curl -fsSL "${BREW_URL}" > /tmp/brew-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/brew-$$.sh
      curl -kfsSL "${BREW_URL}" > /tmp/brew-$$.sh
    }
    [ -f /tmp/brew-$$.sh ] || abort "Brew install script download failed"
    chmod 755 /tmp/brew-$$.sh
    NONINTERACTIVE=1 /bin/bash -c "/tmp/brew-$$.sh" > /dev/null 2>&1
    rm -f /tmp/brew-$$.sh
    export HOMEBREW_NO_INSTALL_CLEANUP=1
    export HOMEBREW_NO_ENV_HINTS=1
    export HOMEBREW_NO_AUTO_UPDATE=1
    printf " done"
    if [ -f ${HOME}/.profile ]
    then
      BASHINIT="${HOME}/.profile"
    else
      if [ -f ${HOME}/.bashrc ]
      then
        BASHINIT="${HOME}/.bashrc"
      else
        BASHINIT="${HOME}/.profile"
      fi
    fi
    if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]
    then
      HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
      BREW_EXE="${HOMEBREW_HOME}/bin/brew"
    else
      if [ -x /usr/local/bin/brew ]
      then
        HOMEBREW_HOME="/usr/local"
        BREW_EXE="${HOMEBREW_HOME}/bin/brew"
      else
        if [ -x /opt/homebrew/bin/brew ]
        then
          HOMEBREW_HOME="/opt/homebrew"
          BREW_EXE="${HOMEBREW_HOME}/bin/brew"
        else
          abort "Homebrew brew executable could not be located"
        fi
      fi
    fi
    GOTEXT='# Go paths
[ -d ~/go ] && export GOPATH=$HOME/go
[ "$GOPATH" ] && [ -d "$GOPATH/bin" ] && PATH="$PATH:$GOPATH/bin"

if [ -d __YYY__/opt/go ]
then
  export GOROOT=__YYY__/opt/go
else
  [ -d /usr/local/go ] && export GOROOT=/usr/local/go
fi
[ -d ${GOROOT}/bin ] && {
  if [ `echo $PATH | grep -c ${GOROOT}/bin` -ne "1" ]; then
    PATH="$PATH:${GOROOT}/bin"
  fi
}
[ -d $HOME/go/bin ] && {
  if [ `echo $PATH | grep -c $HOME/go/bin` -ne "1" ]; then
    PATH="$PATH:$HOME/go/bin"
  fi
}
export PATH'

    if [ -f "${BASHINIT}" ]
    then
      grep "export GOROOT" "${BASHINIT}" > /dev/null || {
        echo "${GOTEXT}" | sed -e "s%__YYY__%${HOMEBREW_HOME}%" >> "${BASHINIT}"
      }
      grep "^eval \"\$(${BREW_EXE} shellenv)\"" "${BASHINIT}" > /dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
        echo 'fi' >> "${BASHINIT}"
      }
      grep "^eval \"\$(zoxide init" "${BASHINIT}" > /dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >> "${BASHINIT}"
        echo '  eval "$(zoxide init bash)"' >> "${BASHINIT}"
        echo 'fi' >> "${BASHINIT}"
      }
    else
      echo "${GOTEXT}" | sed -e "s%__YYY__%${HOMEBREW_HOME}%" > "${BASHINIT}"
      echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
      echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
      echo 'fi' >> "${BASHINIT}"
      echo 'if command -v zoxide > /dev/null; then' >> "${BASHINIT}"
      echo '  eval "$(zoxide init bash)"' >> "${BASHINIT}"
      echo 'fi' >> "${BASHINIT}"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "export GOROOT" "${HOME}/.zshrc" > /dev/null || {
        echo "${GOTEXT}" | sed -e "s%__YYY__%${HOMEBREW_HOME}%" >> "${HOME}/.zshrc"
      }
      grep "^eval \"\$(${BREW_EXE} shellenv)\"" "${HOME}/.zshrc" > /dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >> "${HOME}/.zshrc"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${HOME}/.zshrc"
        echo 'fi' >> "${HOME}/.zshrc"
      }
      grep "^eval \"\$(zoxide init" "${HOME}/.zshrc" > /dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >> "${HOME}/.zshrc"
        echo '  eval "$(zoxide init bash)"' >> "${HOME}/.zshrc"
        echo 'fi' >> "${HOME}/.zshrc"
      }
    }
    eval "$(${BREW_EXE} shellenv)"
    have_brew=`type -p brew`
    [ "${have_brew}" ] && BREW_EXE="brew"
    [ "${debug}" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nHomebrew install elapsed time = ${ELAPSED}\n"
    }
  fi
  [ "${HOMEBREW_HOME}" ] || {
    brewpath=$(command -v brew)
    if [ $? -eq 0 ]
    then
      HOMEBREW_HOME=`dirname ${brewpath} | sed -e "s%/bin$%%"`
    else
      HOMEBREW_HOME="Unknown"
    fi
  }
  log "    Homebrew installed in ${HOMEBREW_HOME}"
  log "    See ${DOC_HOMEBREW}"
  log "Installing Homebrew gcc, cmake, and make ..."
  if [ "${debug}" ]
  then
	for tool in gcc cmake make
	do
      START_SECONDS=$(date +%s)
      ${BREW_EXE} install ${tool}
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nInstall ${tool} elapsed time = %s${ELAPSED}\n"
	done
    START_SECONDS=$(date +%s)
    ${BREW_EXE} uninstall --ignore-dependencies llvm
    ${BREW_EXE} install llvm@14
    ${BREW_EXE} link llvm@14
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
    ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
    printf "\nInstall llvm elapsed time = %s${ELAPSED}\n"
  else
    ${BREW_EXE} install --quiet gcc > /dev/null 2>&1
    ${BREW_EXE} install --quiet cmake > /dev/null 2>&1
    ${BREW_EXE} install --quiet make > /dev/null 2>&1
    ${BREW_EXE} uninstall --ignore-dependencies llvm > /dev/null 2>&1
    ${BREW_EXE} install --quiet llvm@14 > /dev/null 2>&1
    ${BREW_EXE} link llvm@14 > /dev/null 2>&1
  fi
  printf " done"
}

install_neovim_dependencies () {
  log "Installing dependencies ..."
  PKGS="git lazygit fd ripgrep fzf tmux go node"
  for pkg in ${PKGS}
  do
    if [ "${debug}" ]
    then
      START_SECONDS=$(date +%s)
      ${BREW_EXE} install ${pkg}
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nInstall ${pkg} elapsed time = %s${ELAPSED}\n"
    else
      ${BREW_EXE} install --quiet ${pkg} > /dev/null 2>&1
    fi
#   [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet ${pkg} > /dev/null 2>&1
  done
  printf " done"
  if ! command -v cargo >/dev/null 2>&1; then
    log "Installing cargo ..."
    [ "${debug}" ] && START_SECONDS=$(date +%s)
    RUST_URL="https://sh.rustup.rs"
    curl -fsSL "${RUST_URL}" > /tmp/rust-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/rust-$$.sh
      curl -kfsSL "${RUST_URL}" > /tmp/rust-$$.sh
      [ -f /tmp/rust-$$.sh ] && {
        cat /tmp/rust-$$.sh | sed -e "s/--show-error/--insecure --show-error/" > /tmp/ins$$
        cp /tmp/ins$$ /tmp/rust-$$.sh
        rm -f /tmp/ins$$
      }
    }
    [ -f /tmp/rust-$$.sh ] && sh /tmp/rust-$$.sh -y > /dev/null 2>&1
    rm -f /tmp/rust-$$.sh
    printf " done"
    [ "${debug}" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nCargo install elapsed time = %s${ELAPSED}\n"
    }
  fi
}

install_neovim_head () {
  if ! command -v nvim >/dev/null 2>&1; then
    log "Installing Neovim HEAD, please be patient ..."
    if [ "${debug}" ]
    then
      START_SECONDS=$(date +%s)
      ${BREW_EXE} install --HEAD neovim
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nInstall Neovim elapsed time = %s${ELAPSED}\n"
    else
      ${BREW_EXE} install -q --HEAD neovim > /dev/null 2>&1
    fi
    printf " done"
  elif [[ ! $(nvim --version) =~ "dev" ]]; then
    log "Neovim is installed but not HEAD version"
  else
    log "Skipping Neovim installation"
  fi
}

fixup_init_vim () {
  [ "${BREW_EXE}" ] || BREW_EXE=brew
  BREW_ROOT="$(${BREW_EXE} --prefix)"
  [ "${BREW_ROOT}" ] && {
    if [ -d ${BREW_ROOT}/opt/go/libexec ]
    then
      export GOROOT="${BREW_ROOT}/opt/go/libexec"
    else
      if [ -d ${BREW_ROOT}/opt/go ]
      then
        export GOROOT="${BREW_ROOT}/opt/go"
      else
        [ -d ${BREW_ROOT}/go ] && export GOROOT="${BREW_ROOT}/go"
      fi
    fi
  }
  [ "${GOPATH}" ] || export GOPATH="${HOME}/go"
  for gop in ${GOPATH} ${GOPATH}/src ${GOPATH}/pkg ${GOPATH}/bin
  do
    [ -d "${gop}" ] || mkdir -p "${gop}"
  done
  have_nvim=`type -p nvim`
}

main () {
  check_prerequisites
  local common_packages="git curl gip tar unzip"
  get_os
  if [[ $OS == "linux" ]]; then
    get_linux_distribution
    if [[ $DIST == "debian" || $DIST == "ubuntu" ]]; then
      log "Updating package database ..."
      sudo apt -q -y update > /dev/null 2>&1
      printf " done"
      log "Installing common packages ..."
      sudo apt -q -y install build-essential ${common_packages} > /dev/null 2>&1
      printf " done"
      install_brew
      install_neovim_dependencies
      install_neovim_head
    elif [[ $DIST == "arch" ]]; then
      log "Updating package database ..."
      sudo pacman -Sy --noconfirm > /dev/null 2>&1
      printf " done"
      log "Installing common packages ..."
      sudo pacman -S --noconfirm base-devel ${common_packages} > /dev/null 2>&1
      printf " done"
      install_brew
      install_neovim_dependencies
      install_neovim_head
    elif [[ $DIST == "fedora" ]]; then
      log "Updating package database ..."
      sudo dnf --assumeyes --quiet update > /dev/null 2>&1
      printf " done"
      log "Installing common packages ..."
      sudo dnf --assumeyes --quiet groupinstall "Development Tools" > /dev/null 2>&1
      sudo dnf --assumeyes --quiet install ${common_packages} > /dev/null 2>&1
      printf " done"
      install_brew
      install_neovim_dependencies
      install_neovim_head
    fi
  elif [[ $OS == "apple" ]];then
    have_xcode=`type -p xcode-select`
    [ "${have_xcode}" ] || abort "Xcode must be installed. See the App store."
    xcode-select -p > /dev/null 2>&1
    [ $? -eq 0 ] || xcode-select --install
    install_brew
    log "Installing common packages ..."
    for pkg in ${common_packages}
    do
      ${BREW_EXE} install --quiet ${pkg} > /dev/null 2>&1
      [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet ${pkg} > /dev/null 2>&1
    done
    printf " done"
    install_neovim_dependencies
    install_neovim_head
  fi
  printf "\n"
}

quiet=
debug=

while getopts "dq" flag; do
  case $flag in
    d)
        debug=1
        ;;
    q)
        quiet=1
        ;;
    *)
        ;;
  esac
done

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
if [ ${hardlimit} -gt 4096 ]
then
  ulimit -n 4096
else
  ulimit -n ${hardlimit}
fi

[ "${debug}" ] && MAIN_START_SECONDS=$(date +%s)

main

[ "${debug}" ] && {
  MAIN_FINISH_SECONDS=$(date +%s)
  MAIN_ELAPSECS=$(( MAIN_FINISH_SECONDS - MAIN_START_SECONDS ))
  MAIN_ELAPSED=`eval "echo $(date -ud "@$MAIN_ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
  printf "\nTotal elapsed time = %s${MAIN_ELAPSED}\n"
}

ulimit -n ${currlimit}
