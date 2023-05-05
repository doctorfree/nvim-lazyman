#!/usr/bin/env bash
#
# lazyman - install, initialize, manage, and explore multiple Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>, Spring 2023
#
# shellcheck disable=SC1090,SC2001,SC2002,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2076

LAZYMAN="nvim-Lazyman"
LMANDIR="${HOME}/.config/${LAZYMAN}"
NVIMDIRS="${LMANDIR}/.nvimdirs"
NVIMCONF="${LMANDIR}/lua/configuration.lua"
CONFBACK="${LMANDIR}/lua/configuration-orig.lua"
GET_CONF="${LMANDIR}/scripts/get_conf.lua"
# LOLCAT="lolcat --animate --speed=70.0"
LOLCAT="lolcat"
BOLD=$(tput bold 2>/dev/null)
NORM=$(tput sgr0 2>/dev/null)
PLEASE="Please enter your choice"
FIG_TEXT="Lazyman"
USEGUI=
BASECFGS="AstroNvim Ecovim LazyVim LunarVim NvChad SpaceVim MagicVim"
EXTRACFGS="Abstract Nv Knvim Roiz Fennel Adib Optixal Plug Heiker Simple"
STARTCFGS="Kickstart Minimal StartBase Opinion StartLsp StartMason Modular NvPak"
# Array with font names
fonts=("lean" "slant" "shadow" "small" "script" "standard")
# Supported themes
themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" "tundra" "onedarkpro" "everforest" "monokai-pro")
# Themes with styles
styled_themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" "onedarkpro" "monokai-pro")

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-e] [-E config]"
  printf "\n       [-F] [-i] [-k] [-l] [-m] [-s] [-S] [-v] [-n] [-p] [-P] [-q]"
  printf "\n       [-h] [-H] [-I] [-L cmd] [-rR] [-C url] [-D subdir] [-N nvimdir]"
  printf "\n       [-U] [-w conf] [-W] [-x conf] [-X] [-y] [-z] [-Z] [-u] [status]"
  [ "$1" == "noexit" ] || exit 1
}

usage() {
  brief_usage noexit
  printf "\nWhere:"
  printf "\n    -A indicates install all supported Neovim configurations"
  printf "\n    -a indicates install and initialize AstroNvim Neovim configuration"
  printf "\n    -B indicates install and initialize all 'Base' Neovim configurations"
  printf "\n    -b 'branch' specifies an ${LAZYMAN} git branch to checkout"
  printf "\n    -c indicates install and initialize NvChad Neovim configuration"
  printf "\n    -d indicates debug mode"
  printf "\n    -e indicates install and initialize Ecovim Neovim configuration"
  printf "\n    -E 'config' execute 'nvim' with 'config' Neovim configuration"
  printf "\n       'config' can be one of:"
  printf "\n           'lazyman', 'astronvim', 'kickstart', 'magicvim',"
  printf "\n           'ecovim', 'nvchad', 'lazyvim', 'lunarvim', 'spacevim'"
  printf "\n       or any Neovim configuration directory in '~/.config'"
  printf "\n           (e.g. 'lazyman -E lazyvim foo.lua')"
  printf "\n    -F indicates present the Lazyman Configuration menu"
  printf "\n    -i indicates install and initialize Lazyman Neovim configuration"
  printf "\n    -k indicates install and initialize Kickstart Neovim configuration"
  printf "\n    -l indicates install and initialize LazyVim Neovim configuration"
  printf "\n    -m indicates install and initialize MagicVim Neovim configuration"
  printf "\n    -s indicates install and initialize SpaceVim Neovim configuration"
  printf "\n    -v indicates install and initialize LunarVim Neovim configuration"
  printf "\n    -S indicates show Neovim configuration fuzzy selector menu"
  printf "\n    -n indicates dry run, don't actually do anything, just printf's"
  printf "\n    -p indicates use vim-plug rather than Lazy to initialize"
  printf "\n    -P indicates use Packer rather than Lazy to initialize"
  printf "\n    -q indicates quiet install"
  printf "\n    -h indicates use Homebrew to install rather than native pkg mgr"
  printf "\n        (Pacman is always used on Arch Linux, Homebrew on macOS)"
  printf "\n    -H indicates compile and install the nightly Neovim build"
  printf "\n    -I indicates install language servers and tools for coding diagnostics"
  printf "\n    -L 'cmd' specifies a Lazy command to run in the selected configuration"
  printf "\n    -r indicates remove the previously installed configuration"
  printf "\n    -R indicates remove previously installed configuration and backups"
  printf "\n    -C 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n    -N 'nvimdir' specifies the folder name to use for the config given by -C"
  printf "\n    -U indicates update an existing configuration"
  printf "\n    -w 'conf' indicates install and initialize Extra 'conf' config"
  printf "\n       'conf' can be one of:"
  printf "\n           'Abstract' 'Knvim' 'Roiz' 'Fennel' 'Nv'"
  printf "\n           'Adib' 'Optixal' 'Plug' 'Simple' 'Heiker'"
  printf "\n    -W indicates install and initialize all 'Extra' Neovim configurations"
  printf "\n    -x 'conf' indicates install and initialize nvim-starter 'conf' config"
  printf "\n       'conf' can be one of:"
  printf "\n           'Kickstart' 'NvPak' 'Minimal' 'StartBase'"
  printf "\n           'Opinion' 'StartLsp' 'StartMason', or 'Modular'"
  printf "\n    -X indicates install and initialize all 'Starter' configs"
  printf "\n    -y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n    -z indicates do not run nvim after initialization"
  printf "\n    -Z indicates do not install Homebrew, Neovim, or any other tools"
  printf "\n    -u displays this usage message and exits"
  printf "\n    'status' displays a brief status report and exits"
  printf "\nCommands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'"
  printf "\nWithout arguments lazyman installs and initializes ${LAZYMAN}"
  printf "\nor, if initialized, an interactive menu system is displayed.\n"
  exit 1
}

create_backups() {
  ndir="$1"
  [ -d "${HOME}/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} config as ${HOME}/.config/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.config/$ndir" "${HOME}/.config/$ndir-bak$$"
    }
  }

  [ -d "${HOME}/.local/share/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} plugins as ${HOME}/.local/share/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.local/share/$ndir" "${HOME}/.local/share/$ndir-bak$$"
    }
  }

  [ -d "${HOME}/.local/state/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} state as ${HOME}/.local/state/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.local/state/$ndir" "${HOME}/.local/state/$ndir-bak$$"
    }
  }
  [ -d "${HOME}/.cache/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} cache as ${HOME}/.cache/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.cache/$ndir" "${HOME}/.cache/$ndir-bak$$"
    }
  }
}

run_command() {
  neodir="$1"
  comm="$2"
  [ "$neodir" == "${lazymandir}" ] && {
    oldpack=${packer}
    oldplug=${plug}
    plug=
    packer=
  }
  [ "$neodir" == "$magicvimdir" ] && {
    oldpack=${packer}
    packer=1
  }
  [ "$tellme" ] || {
    export NVIM_APPNAME="$neodir"
    if [ "$debug" ]; then
      if [ "$packer" ]; then
        nvim --headless -c 'autocmd User PackerComplete quitall' -c "Packer${comm}"
      else
        if [ "$plug" ]; then
          nvim --headless -c 'set nomore' -c "Plug${comm}" -c 'qa'
        else
          if [ "$neodir" == "$spacevimdir" ]; then
            nvim --headless "+${comm}" +qa
          else
            nvim --headless "+Lazy! ${comm}" +qa
          fi
        fi
      fi
    else
      if [ "$packer" ]; then
        nvim --headless -c \
          'autocmd User PackerComplete quitall' -c "Packer${comm}" >/dev/null 2>&1
      else
        if [ "$plug" ]; then
          nvim --headless -c 'set nomore' -c "Plug${comm}" -c 'qa' >/dev/null 2>&1
        else
          if [ "$neodir" == "$spacevimdir" ]; then
            nvim --headless "+${comm}" +qa >/dev/null 2>&1
          else
            nvim --headless "+Lazy! ${comm}" +qa >/dev/null 2>&1
          fi
        fi
      fi
    fi
  }
  [ "$neodir" == "$magicvimdir" ] && packer=${oldpack}
  [ "$neodir" == "${lazymandir}" ] && {
    packer=${oldpack}
    plug=${oldplug}
  }
}

set_haves() {
  have_brew=$(type -p brew)
  have_fzf=$(type -p fzf)
  have_cargo=$(type -p cargo)
  have_neovide=$(type -p neovide)
  have_figlet=$(type -p figlet)
  have_tscli=$(type -p tree-sitter)
  have_rocks=$(type -p luarocks)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)
  have_zoxi=$(type -p zoxide)
}

init_neovim() {
  neodir="$1"
  [ "$neodir" == "${lazymandir}" ] && {
    oldpack=${packer}
    oldplug=${plug}
    plug=
    packer=
  }
  [ "$neodir" == "$magicvimdir" ] && {
    oldpack=${packer}
    packer=1
  }
  export NVIM_APPNAME="$neodir"

  [ "$packer" ] && {
    PACKER="${HOME}/.local/share/${neodir}/site/pack/packer/start/packer.nvim"
    [ -d "$PACKER" ] || {
      [ "$quiet" ] || {
        printf "\nCloning packer.nvim into"
        printf "\n\t${PACKER} ... "
      }
      [ "$tellme" ] || {
        git clone --depth 1 \
          https://github.com/wbthomason/packer.nvim "$PACKER" >/dev/null 2>&1
      }
      [ "$quiet" ] || printf "done"
    }
  }

  [ "$plug" ] && {
    PLUG="${HOME}/.local/share/${neodir}/site/autoload/plug.vim"
    [ -d "$PLUG" ] || {
      [ "$quiet" ] || {
        printf "\nCopying plug.vim to"
        printf "\n\t${PLUG} ... "
      }
      [ "$tellme" ] || {
        sh -c "curl -fLo ${PLUG} --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" \
          >/dev/null 2>&1
      }
      [ "$quiet" ] || printf "done"
    }
  }

  if [ "$debug" ]; then
    if [ "$packer" ]; then
      nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
    else
      if [ "$plug" ]; then
        nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa'
        nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa'
        nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa'
      else
        if [ "$neodir" == "$spacevimdir" ]; then
          nvim --headless "+SPInstall" +qa
          nvim --headless "+UpdateRemotePlugins" +qa
        else
          if [ "$neodir" == "$lunarvimdir" ]; then
            export NVIM_APPNAME="nvim-LunarVim"
            export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
            export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
            export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
            export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
          fi
          nvim --headless "+Lazy! sync" +qa
        fi
      fi
    fi
    [ -d "${HOME}/.config/${neodir}/doc" ] && {
      nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa
    }
  else
    if [ "$packer" ]; then
      nvim --headless -c \
        'autocmd User PackerComplete quitall' -c 'PackerSync' >/dev/null 2>&1
    else
      if [ "$plug" ]; then
        nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa' >/dev/null 2>&1
        nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa' >/dev/null 2>&1
        nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa' >/dev/null 2>&1
      else
        if [ "$neodir" == "$spacevimdir" ]; then
          nvim --headless "+SPInstall" +qa >/dev/null 2>&1
          nvim --headless "+UpdateRemotePlugins" +qa >/dev/null 2>&1
        else
          if [ "$neodir" == "$lunarvimdir" ]; then
            export NVIM_APPNAME="nvim-LunarVim"
            export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
            export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
            export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
            export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
          fi
          nvim --headless "+Lazy! sync" +qa >/dev/null 2>&1
        fi
      fi
    fi
    [ -d "${HOME}/.config/${neodir}/doc" ] && {
      nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa >/dev/null 2>&1
    }
  fi
  [ "$neodir" == "$magicvimdir" ] && packer=${oldpack}
  [ "$neodir" == "${lazymandir}" ] && {
    [ -f "${HOME}/.config/${lazymandir}/.initialized" ] || {
      touch "${HOME}/.config/${lazymandir}/.initialized"
    }
    packer=${oldpack}
    plug=${oldplug}
  }
}

add_nvimdirs_entry() {
  ndir="$1"
  if [ -f "${NVIMDIRS}" ]; then
    grep ^"$ndir"$ "${NVIMDIRS}" >/dev/null || {
      echo "$ndir" >>"${NVIMDIRS}"
    }
  else
    [ -d "${LMANDIR}" ] && {
      echo "$ndir" >"${NVIMDIRS}"
    }
  fi
}

remove_nvimdirs_entry() {
  ndir="$1"
  [ -f "${NVIMDIRS}" ] && {
    grep ^"$ndir"$ "${NVIMDIRS}" >/dev/null && {
      grep -v ^"$ndir"$ "${NVIMDIRS}" >/tmp/nvimdirs$$
      cp /tmp/nvimdirs$$ "${NVIMDIRS}"
      rm -f /tmp/nvimdirs$$
    }
  }
}

remove_config() {
  ndir="$1"
  [ "$proceed" ] || {
    printf "\nYou have requested removal of the Neovim configuration at:"
    printf "\n\t${HOME}/.config/${ndir}\n"
    printf "\nConfirm removal of the Neovim ${ndir} configuration\n"
    while true; do
      read -r -p "Remove ${ndir} ? (y/n) " yn
      case $yn in
        [Yy]*)
          break
          ;;
        [Nn]*)
          printf "\nAborting removal and exiting\n"
          exit 0
          ;;
        *)
          printf "\nPlease answer yes or no.\n"
          ;;
      esac
    done
  }

  if [ "${ndir}" == "${lunarvimdir}" ]; then
    USCP="${HOME}/.local/share/${lunarvimdir}/lvim/utils/installer/uninstall.sh"
    [ -x ${USCP} ] || {
      LVIM_URL="https://raw.githubusercontent.com/lunarvim/lunarvim"
      LVIM_UNINSTALL="${LVIM_URL}/master/utils/installer/uninstall.sh"
      curl -s ${LVIM_UNINSTALL} >/tmp/lvim-uninstall$$.sh
      chmod 755 /tmp/lvim-uninstall$$.sh
      USCP="/tmp/lvim-uninstall$$.sh"
    }
    [ "$quiet" ] || {
      printf "\nRunning LunarVim uninstall script"
    }
    [ "$tellme" ] || {
      export NVIM_APPNAME="${lunarvimdir}"
      export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
      export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
      export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
      export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
      remove_backups=
      [ "$removeall" ] && remove_backups="--remove-backups"
      ${USCP} ${remove_backups} --remove-config >/dev/null 2>&1
    }
  fi
  [ -d "${HOME}/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.config/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} config backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.config/$ndir"-bak*
      rm -rf "${HOME}/.config/$ndir".old
    }
  }

  [ -d "${HOME}/.local/share/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} plugins at ${HOME}/.local/share/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/share/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} plugins backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/share/$ndir"-bak*
      rm -rf "${HOME}/.local/share/$ndir".old
    }
  }

  [ -d "${HOME}/.local/state/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} state at ${HOME}/.local/state/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/state/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} state backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/state/$ndir"-bak*
      rm -rf "${HOME}/.local/state/$ndir".old
    }
  }

  [ -d "${HOME}/.cache/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} cache at ${HOME}/.cache/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.cache/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} cache backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.cache/$ndir"-bak*
      rm -rf "${HOME}/.cache/$ndir".old
    }
  }
  [ "$tellme" ] || {
    remove_nvimdirs_entry "$ndir"
  }
}

update_config() {
  ndir="$1"
  GITDIR=".config/$ndir"
  [ "${ndir}" == "${lunarvimdir}" ] && GITDIR=".local/share/${lunarvimdir}/lvim"
  [ -d "${HOME}/${GITDIR}" ] && {
    [ "$quiet" ] || {
      printf "\nUpdating existing ${ndir} config at ${HOME}/${GITDIR} ..."
    }
    [ "$tellme" ] || {
      [ "$ndir" == "$lazymandir" ] && {
        [ -f "${HOME}/${GITDIR}/lua/configuration.lua" ] && {
          cp "${HOME}/${GITDIR}/lua/configuration.lua" /tmp/lazyconf$$
        }
      }
      git -C "${HOME}/${GITDIR}" stash >/dev/null 2>&1
      git -C "${HOME}/${GITDIR}" reset --hard >/dev/null 2>&1
      git -C "${HOME}/${GITDIR}" pull >/dev/null 2>&1
    }
    [ "$quiet" ] || {
      printf " done"
    }
    add_nvimdirs_entry "$ndir"
  }
  [ "$ndir" == "$lazymandir" ] && {
    [ -f /tmp/lazyconf$$ ] && {
      cp /tmp/lazyconf$$ "${HOME}/${GITDIR}/lua/configuration.lua"
      rm -f /tmp/lazyconf$$
    }
    [ -d "$HOME"/.local/bin ] || mkdir -p "$HOME"/.local/bin
    [ -f "${LMANDIR}"/lazyman.sh ] && {
      cp "${LMANDIR}"/lazyman.sh "$HOME"/.local/bin/lazyman
      chmod 755 "$HOME"/.local/bin/lazyman
    }
  }
  [ "$ndir" == "$astronvimdir" ] || [ "$ndir" == "$nvchaddir" ] && {
    if [ "$ndir" == "$astronvimdir" ]; then
      cdir="lua/user"
    else
      cdir="lua/custom"
    fi
    [ -d "${HOME}/.config/$ndir/$cdir" ] && {
      [ "$quiet" ] || {
        printf "\nUpdating existing add-on config at ${HOME}/.config/${ndir}/${cdir} ..."
      }
      [ "$tellme" ] || {
        git -C "${HOME}/.config/$ndir/$cdir" stash >/dev/null 2>&1
        git -C "${HOME}/.config/$ndir"/$cdir reset --hard >/dev/null 2>&1
        git -C "${HOME}/.config/$ndir"/$cdir pull >/dev/null 2>&1
      }
      [ "$quiet" ] || {
        printf " done"
      }
    }
  }
}

set_brew() {
  if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
    HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
  else
    if [ -x /usr/local/bin/brew ]; then
      HOMEBREW_HOME="/usr/local"
    else
      if [ -x /opt/homebrew/bin/brew ]; then
        HOMEBREW_HOME="/opt/homebrew"
      else
        HOMEBREW_HOME=
      fi
    fi
  fi
  if [ "$HOMEBREW_HOME" ]; then
    BREW_EXE="${HOMEBREW_HOME}/bin/brew"
  else
    BREW_EXE=
  fi
}

clone_repo() {
  reponame="$1"
  repourl="$2"
  repodest="$3"
  [ -d "${HOME}/.config/$repodest" ] || {
    [ "$quiet" ] || {
      printf "\nCloning ${reponame} configuration into"
      printf "\n\t${HOME}/.config/${repodest} ... "
    }
    [ "$tellme" ] || {
      git clone \
        https://github.com/"$repourl" \
        "${HOME}/.config/${repodest}" >/dev/null 2>&1
      add_nvimdirs_entry "$repodest"
    }
    [ "$quiet" ] || printf "done"
  }
}

show_figlet() {
  # Seed random generator
  RANDOM=$$$(date +%s)
  USE_FONT=${fonts[$RANDOM % ${#fonts[@]}]}
  [ "${USE_FONT}" ] || USE_FONT="standard"
  if [ "${have_lolcat}" ]; then
    if [ "${USE_FONT}" == "lean" ]; then
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | tr ' _/' ' ()' | ${LOLCAT}
    else
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | ${LOLCAT}
    fi
  else
    if [ "${USE_FONT}" == "lean" ]; then
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | tr ' _/' ' ()'
    else
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null
    fi
  fi
}

show_info() {
  [ -f "${LMANDIR}"/.lazymanrc ] && {
    source "${LMANDIR}"/.lazymanrc
  }
  readarray -t sorted < <(printf '%s\0' "${ndirs[@]}" | sort -z | xargs -0n1)
  numitems=${#sorted[@]}
  if alias nvims >/dev/null 2>&1; then
    printf "\nThe 'nvims' alias exists:"
    nvims_alias=$(alias nvims)
    printf "\n\t${nvims_alias}"
  else
    printf "\nThe 'nvims' alias does not exist"
    printf "\nSource $HOME/.config/nvim-Lazyman/.lazymanrc in your shell initialization,"
    printf "\nlogout and login"
  fi
  if [ "${have_neovide}" ]; then
    printf "\n\nThe neovide Neovim GUI is installed"
    if alias neovides >/dev/null 2>&1; then
      printf "\n\nThe 'neovides' alias exists:"
      neovides_alias=$(alias neovides)
      printf "\n\t${neovides_alias}"
    else
      printf "\n\nThe 'neovides' alias does not exist"
    fi
  else
    printf "\n\nThe neovide Neovim GUI is not installed"
  fi
  printf "\n\n${numitems} Lazyman Neovim configurations installed:\n"
  for neovim in "${sorted[@]}"; do
    if [ -d ${HOME}/.config/${neovim} ]; then
      printf "\n\t${HOME}/.config/${neovim}"
    else
      printf "\n\tMissing ${HOME}/.config/${neovim} !"
    fi
  done
  nvim_version=$(nvim --version)
  printf "\n\nInstalled Neovim version info:\n\n${nvim_version}\n"
}

show_alias() {
  adir="$1"
  printf "\nAliases like the following are defined in ~/.config/nvim-Lazyman/.lazymanrc"
  if [ "$all" ]; then
    printf "\n\talias lnvim='NVIM_APPNAME=${LAZYMAN} nvim'"
  elif [ "$astronvim" ]; then
    printf "\n\talias avim='NVIM_APPNAME=nvim-AstroNvim nvim'"
  elif [ "$ecovim" ]; then
    printf "\n\talias evim='NVIM_APPNAME=nvim-Ecovim nvim'"
  elif [ "$kickstart" ]; then
    printf "\n\talias kvim='NVIM_APPNAME=nvim-Kickstart nvim'"
  elif [ "$lazyman" ]; then
    printf "\n\talias lmvim='NVIM_APPNAME=${LAZYMAN} nvim'"
  elif [ "$lazyvim" ]; then
    printf "\n\talias lvim='NVIM_APPNAME=nvim-LazyVim nvim'"
  elif [ "$lunarvim" ]; then
    printf "\n\talias lvim='NVIM_APPNAME=nvim-LunarVim nvim'"
  elif [ "$spacevim" ]; then
    printf "\n\talias svim='NVIM_APPNAME=nvim-SpaceVim nvim'"
  elif [ "$nvchad" ]; then
    printf "\n\talias cvim='NVIM_APPNAME=nvim-NvChad nvim'"
  elif [ "$magicvim" ]; then
    printf "\n\talias mvim='NVIM_APPNAME=nvim-MagicVim nvim'"
  else
    printf "\n\talias lmvim=\"NVIM_APPNAME=${adir} nvim\""
  fi
  printf "\n"
}

get_conf_value() {
  confname="$1"
  confval=$(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
  echo "${confval}"
}

set_conf_value() {
  confname="$1"
  confval="$2"
  grep "conf.${confname} =" "${NVIMCONF}" >/dev/null && {
    case ${confval} in
      true | false | [0-9])
        cat "${NVIMCONF}" \
          | sed -e "s/conf.${confname} =.*/conf.${confname} = ${confval}/" >/tmp/nvim$$
        ;;
      *)
        cat "${NVIMCONF}" \
          | sed -e "s/conf.${confname} =.*/conf.${confname} = \"${confval}\"/" >/tmp/nvim$$
        ;;
    esac
    cp /tmp/nvim$$ "${NVIMCONF}"
    rm -f /tmp/nvim$$
  }
}

set_chat_gpt() {
  [ "$OPENAI_API_KEY" ] && {
    grep 'conf.enable_chatgpt' "${NVIMCONF}" >/dev/null && {
      cat "${NVIMCONF}" \
        | sed -e "s/conf.enable_chatgpt.*/conf.enable_chatgpt = true/" >/tmp/nvim$$
      cp /tmp/nvim$$ "${NVIMCONF}"
      rm -f /tmp/nvim$$
    }
  }
}

install_config() {
  confname="$1"
  case ${confname} in
    Abstract)
      lazyman -w Abstract -z -y
      ;;
    AstroNvim)
      lazyman -a -z -y
      ;;
    Ecovim)
      lazyman -e -z -y
      ;;
    Kickstart)
      lazyman -k -z -y
      ;;
    Lazyman)
      lazyman -i -z -y
      ;;
    LazyVim)
      lazyman -l -z -y
      ;;
    LunarVim)
      lazyman -v -z -y
      ;;
    NvChad)
      lazyman -c -z -y
      ;;
    SpaceVim)
      lazyman -s -z -y
      ;;
    MagicVim)
      lazyman -m -z -y
      ;;
    Adib)
      lazyman -w Adib -z -y
      ;;
    Nv)
      lazyman -w Nv -z -y
      ;;
    Knvim)
      lazyman -w Knvim -z -y
      ;;
    Roiz)
      lazyman -w Roiz -z -y
      ;;
    Fennel)
      lazyman -w Fennel -z -y
      ;;
    NvPak)
      lazyman -x NvPak -z -y
      ;;
    Optixal)
      lazyman -w Optixal -z -y
      ;;
    Plug)
      lazyman -w Plug -z -y
      ;;
    Heiker)
      lazyman -w Heiker -z -y
      ;;
    Minimal)
      lazyman -x Minimal -z -y
      ;;
    Simple)
      lazyman -w Simple -z -y
      ;;
    StartBase)
      lazyman -x StartBase -z -y
      ;;
    Opinion)
      lazyman -x Opinion -z -y
      ;;
    StartLsp)
      lazyman -x StartLsp -z -y
      ;;
    StartMason)
      lazyman -x StartMason -z -y
      ;;
    Modular)
      lazyman -x Modular -z -y
      ;;
  esac
}

select_theme_style() {
  selected_style="${theme_style}"
  case "$1" in
    kanagawa)
      styles=("wave" "dragon" "lotus")
      ;;
    tokyonight)
      styles=("night" "storm" "day" "moon")
      ;;
    onedarkpro)
      styles=("onedark" "onelight" "onedark_vivid" "onedark_dark")
      ;;
    catppuccin)
      styles=("latte" "frappe" "macchiato" "mocha" "custom")
      ;;
    dracula)
      styles=("blood" "magic" "soft" "default")
      ;;
    nightfox)
      styles=("carbonfox" "dawnfox" "dayfox" "duskfox" "nightfox" "nordfox" "terafox")
      ;;
    monokai-pro)
      styles=("classic" "octagon" "pro" "machine" "ristretto" "spectrum")
      ;;
    *)
      styles=()
      ;;
  esac
  if [ "${have_fzf}" ]; then
    choice=$(printf "%s\n" "${styles[@]}" | fzf --prompt=" Neovim Theme Style  " --layout=reverse --border --exit-0)
    [ "${choice}" == "${theme_style}" ] || {
      if [[ " ${styles[*]} " =~ " ${choice} " ]]; then
        set_conf_value "theme_style" "${choice}"
      fi
    }
  else
    set_haves
    while true; do
      confmenu=
      mainmenu=
      [ "$debug" ] || tput reset
      printf "\n"
      [ "${have_figlet}" ] && show_figlet
      printf "\n"
      PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
      options=()
      for sty in "${styles[@]}"; do
        if [ "${theme_style}" == "$sty" ]; then
          options+=("$sty   ")
        else
          options+=("$sty")
        fi
      done
      [ "${theme_style}" == "${selected_style}" ] || {
        options+=("Set style to ${theme_style}")
      }
      options+=("Configuration Menu" "Main Menu" "Quit")
      select opt in "${options[@]}"; do
        case "$opt,$REPLY" in
          "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
            [ "$debug" ] || tput reset
            printf "\n"
            man lazyman
            break
            ;;
          "wave",* | *,"wave")
            theme_style="wave"
            break
            ;;
          "dragon",* | *,"dragon")
            theme_style="dragon"
            break
            ;;
          "lotus",* | *,"lotus")
            theme_style="lotus"
            break
            ;;
          "night",* | *,"night")
            theme_style="night"
            break
            ;;
          "storm",* | *,"storm")
            theme_style="storm"
            break
            ;;
          "dayfox",* | *,"dayfox")
            theme_style="dayfox"
            break
            ;;
          "day",* | *,"day")
            theme_style="day"
            break
            ;;
          "moon",* | *,"moon")
            theme_style="moon"
            break
            ;;
          "onedark",* | *,"onedark")
            theme_style="onedark"
            break
            ;;
          "onelight",* | *,"onelight")
            theme_style="onelight"
            break
            ;;
          "onedark_vivid",* | *,"onedark_vivid")
            theme_style="onedark_vivid"
            break
            ;;
          "onedark_dark",* | *,"onedark_dark")
            theme_style="onedark_dark"
            break
            ;;
          "latte",* | *,"latte")
            theme_style="latte"
            break
            ;;
          "frappe",* | *,"frappe")
            theme_style="frappe"
            break
            ;;
          "macchiato",* | *,"macchiato")
            theme_style="macchiato"
            break
            ;;
          "mocha",* | *,"mocha")
            theme_style="mocha"
            break
            ;;
          "custom",* | *,"custom")
            theme_style="custom"
            break
            ;;
          "blood",* | *,"blood")
            theme_style="blood"
            break
            ;;
          "magic",* | *,"magic")
            theme_style="magic"
            break
            ;;
          "soft",* | *,"soft")
            theme_style="soft"
            break
            ;;
          "default",* | *,"default")
            theme_style="default"
            break
            ;;
          "carbonfox",* | *,"carbonfox")
            theme_style="carbonfox"
            break
            ;;
          "dawnfox",* | *,"dawnfox")
            theme_style="dawnfox"
            break
            ;;
          "duskfox",* | *,"duskfox")
            theme_style="duskfox"
            break
            ;;
          "nightfox",* | *,"nightfox")
            theme_style="nightfox"
            break
            ;;
          "nordfox",* | *,"nordfox")
            theme_style="nordfox"
            break
            ;;
          "terafox",* | *,"terafox")
            theme_style="terafox"
            break
            ;;
          "classic",* | *,"classic")
            theme_style="classic"
            break
            ;;
          "octagon",* | *,"octagon")
            theme_style="octagon"
            break
            ;;
          "pro",* | *,"pro")
            theme_style="pro"
            break
            ;;
          "machine",* | *,"machine")
            theme_style="machine"
            break
            ;;
          "ristretto",* | *,"ristretto")
            theme_style="ristretto"
            break
            ;;
          "Set style to"*,* | *,"Set style to"*)
            set_conf_value "theme_style" "${theme_style}"
            break 2
            ;;
          "Configuration Menu"*,* | *,"Configuration Menu"*)
            confmenu=1
            break 2
            ;;
          "Main Menu"*,* | *,"Main Menu"*)
            mainmenu=1
            break 2
            ;;
          "Quit",* | *,"Quit" | "quit",* | *,"quit")
            printf "\nExiting Lazyman\n"
            exit 0
            ;;
        esac
        REPLY=
      done
    done
    [ "${confmenu}" ] && show_conf_menu
    [ "${mainmenu}" ] && show_main_menu
  fi
}

set_default_style() {
  case "$1" in
    kanagawa)
      set_conf_value "theme_style" "dragon"
      ;;
    tokyonight)
      set_conf_value "theme_style" "moon"
      ;;
    onedarkpro)
      set_conf_value "theme_style" "onedark_dark"
      ;;
    catppuccin)
      set_conf_value "theme_style" "mocha"
      ;;
    dracula)
      set_conf_value "theme_style" "soft"
      ;;
    nightfox)
      set_conf_value "theme_style" "carbonfox"
      ;;
    monokai-pro)
      set_conf_value "theme_style" "pro"
      ;;
    *)
      set_conf_value "theme_style" "none"
      ;;
  esac
}

select_theme() {
  selected_theme="$1"
  if [ "${have_fzf}" ]; then
    theme=$(printf "%s\n" "${themes[@]}" | fzf --prompt=" Neovim Theme  " --layout=reverse --border --exit-0)
    [ "${theme}" == "${selected_theme}" ] || {
      if [[ " ${themes[*]} " =~ " ${theme} " ]]; then
        set_conf_value "theme" "${theme}"
        set_default_style "${theme}"
      fi
    }
  else
    set_haves
    while true; do
      confmenu=
      mainmenu=
      [ "$debug" ] || tput reset
      printf "\n"
      [ "${have_figlet}" ] && show_figlet
      printf "\n"
      PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
      options=()
      for thm in "${themes[@]}"; do
        if [ "${theme}" == "$thm" ]; then
          options+=("$thm   ")
        else
          options+=("$thm")
        fi
      done
      [ "${theme}" == "${selected_theme}" ] || {
        options+=("Set theme to ${theme}")
      }
      options+=("Configuration Menu" "Main Menu" "Quit")
      select opt in "${options[@]}"; do
        case "$opt,$REPLY" in
          "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
            [ "$debug" ] || tput reset
            printf "\n"
            man lazyman
            break
            ;;
          "nightfox"*,* | *,"nightfox"*)
            theme="nightfox"
            break
            ;;
          "tokyonight"*,* | *,"tokyonight"*)
            theme="tokyonight"
            break
            ;;
          "dracula"*,* | *,"dracula"*)
            theme="dracula"
            break
            ;;
          "kanagawa"*,* | *,"kanagawa"*)
            theme="kanagawa"
            break
            ;;
          "catppuccin"*,* | *,"catppuccin"*)
            theme="catppuccin"
            break
            ;;
          "tundra"*,* | *,"tundra"*)
            theme="tundra"
            break
            ;;
          "onedarkpro"*,* | *,"onedarkpro"*)
            theme="onedarkpro"
            break
            ;;
          "everforest"*,* | *,"everforest"*)
            theme="everforest"
            break
            ;;
          "monokai-pro"*,* | *,"monokai-pro"*)
            theme="monokai-pro"
            break
            ;;
          "Set theme to"*,* | *,"Set theme to"*)
            set_conf_value "theme" "${theme}"
            set_default_style "${theme}"
            break 2
            ;;
          "Configuration Menu"*,* | *,"Configuration Menu"*)
            confmenu=1
            break 2
            ;;
          "Main Menu"*,* | *,"Main Menu"*)
            mainmenu=1
            break 2
            ;;
          "Quit",* | *,"Quit" | "quit",* | *,"quit")
            printf "\nExiting Lazyman\n"
            exit 0
            ;;
        esac
        REPLY=
      done
    done
  fi
  [ "${confmenu}" ] && show_conf_menu
  [ "${mainmenu}" ] && show_main_menu
}

show_conf_menu() {
  set_haves
  while true; do
    mainmenu=
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install Lazyman"
      printf "\nPress Enter to continue\n"
      read -r yn
      mainmenu=1
      break
    }
    [ "$debug" ] || tput reset
    [ "${have_figlet}" ] && show_figlet
    theme=$(get_conf_value theme)
    use_theme="${theme}"
    theme_style=$(get_conf_value theme_style)
    use_theme_style="${theme_style}"
    enable_transparent=$(get_conf_value enable_transparent)
    if [ "${enable_transparent}" == "true" ]; then
      use_transparent=""
    else
      use_transparent="✗"
    fi
    mapleader=$(get_conf_value mapleader)
    use_mapleader="${mapleader}"
    maplocalleader=$(get_conf_value maplocalleader)
    use_maplocalleader="${maplocalleader}"
    enable_number=$(get_conf_value number)
    if [ "${enable_number}" == "true" ]; then
      use_number=""
    else
      use_number="✗"
    fi
    enable_relative_number=$(get_conf_value relative_number)
    if [ "${enable_relative_number}" == "true" ]; then
      use_relative_number=""
    else
      use_relative_number="✗"
    fi
    enable_list=$(get_conf_value list)
    if [ "${enable_list}" == "true" ]; then
      use_list=""
    else
      use_list="✗"
    fi
    session_manager=$(get_conf_value session_manager)
    use_session_manager="${session_manager}"
    enable_neotree=$(get_conf_value enable_neotree)
    if [ "${enable_neotree}" == "true" ]; then
      use_neotree="neo-tree"
    else
      use_neotree="nvim-tree"
    fi
    enable_noice=$(get_conf_value enable_noice)
    if [ "${enable_noice}" == "true" ]; then
      use_noice=""
    else
      use_noice="✗"
    fi
    enable_chatgpt=$(get_conf_value enable_chatgpt)
    if [ "${enable_chatgpt}" == "true" ]; then
      use_chatgpt=""
    else
      use_chatgpt="✗"
    fi
    enable_rainbow2=$(get_conf_value enable_rainbow2)
    if [ "${enable_rainbow2}" == "true" ]; then
      use_rainbow2=""
    else
      use_rainbow2="✗"
    fi
    enable_fancy=$(get_conf_value enable_fancy)
    if [ "${enable_fancy}" == "true" ]; then
      use_fancy=""
    else
      use_fancy="✗"
    fi
    enable_wilder=$(get_conf_value enable_wilder)
    if [ "${enable_wilder}" == "true" ]; then
      use_wilder=""
    else
      use_wilder="✗"
    fi
    enable_statusline=$(get_conf_value enable_statusline)
    if [ "${enable_statusline}" == "true" ]; then
      use_statusline=""
    else
      use_statusline="✗"
    fi
    enable_tabline=$(get_conf_value enable_tabline)
    if [ "${enable_tabline}" == "true" ]; then
      use_tabline=""
    else
      use_tabline="✗"
    fi
    enable_winbar=$(get_conf_value enable_winbar)
    if [ "${enable_winbar}" == "true" ]; then
      use_winbar=""
    else
      use_winbar="✗"
    fi
    enable_terminal=$(get_conf_value enable_terminal)
    if [ "${enable_terminal}" == "true" ]; then
      use_terminal=""
    else
      use_terminal="✗"
    fi
    enable_games=$(get_conf_value enable_games)
    if [ "${enable_games}" == "true" ]; then
      use_games=""
    else
      use_games="✗"
    fi
    enable_alpha=$(get_conf_value enable_alpha)
    enable_startup=$(get_conf_value enable_startup)
    startup_theme=$(get_conf_value startup_theme)
    if [ "${enable_alpha}" == "true" ]; then
      use_dash="alpha"
    else
      if [ "${enable_startup}" == "true" ]; then
        use_dash="start"
      else
        use_dash="dash"
      fi
    fi
    enable_bookmarks=$(get_conf_value enable_bookmarks)
    if [ "${enable_bookmarks}" == "true" ]; then
      use_bookmarks=""
    else
      use_bookmarks="✗"
    fi
    enable_ide=$(get_conf_value enable_ide)
    if [ "${enable_ide}" == "true" ]; then
      use_ide=""
    else
      use_ide="✗"
    fi
    enable_navigator=$(get_conf_value enable_navigator)
    if [ "${enable_navigator}" == "true" ]; then
      use_navigator=""
    else
      use_navigator="✗"
    fi
    enable_project=$(get_conf_value enable_project)
    if [ "${enable_project}" == "true" ]; then
      use_project=""
    else
      use_project="✗"
    fi
    enable_picker=$(get_conf_value enable_picker)
    if [ "${enable_picker}" == "true" ]; then
      use_picker=""
    else
      use_picker="✗"
    fi
    enable_smooth_scrolling=$(get_conf_value enable_smooth_scrolling)
    if [ "${enable_smooth_scrolling}" == "true" ]; then
      use_smooth_scrolling=""
    else
      use_smooth_scrolling="✗"
    fi
    dashboard_recent_files=$(get_conf_value dashboard_recent_files)
    use_dashboard_recent_files="${dashboard_recent_files}"
    enable_dashboard_header=$(get_conf_value enable_dashboard_header)
    if [ "${enable_dashboard_header}" == "true" ]; then
      use_dashboard_header=""
    else
      use_dashboard_header="✗"
    fi
    enable_dashboard_quick_links=$(get_conf_value enable_dashboard_quick_links)
    if [ "${enable_dashboard_quick_links}" == "true" ]; then
      use_dashboard_quick_links=""
    else
      use_dashboard_quick_links="✗"
    fi
    enable_color_indentline=$(get_conf_value enable_color_indentline)
    if [ "${enable_color_indentline}" == "true" ]; then
      use_color_indentline=""
    else
      use_color_indentline="✗"
    fi
    show_diagnostics=$(get_conf_value show_diagnostics)
    use_show_diagnostics="${show_diagnostics}"
    enable_semantic_highlighting=$(get_conf_value enable_semantic_highlighting)
    if [ "${enable_semantic_highlighting}" == "true" ]; then
      use_semantic_highlighting=""
    else
      use_semantic_highlighting="✗"
    fi
    convert_semantic_highlighting=$(get_conf_value convert_semantic_highlighting)
    if [ "${convert_semantic_highlighting}" == "true" ]; then
      convert_semantic_highlighting=""
    else
      convert_semantic_highlighting="✗"
    fi
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    options+=("Theme [${use_theme}]")
    if [[ " ${styled_themes[*]} " =~ " ${use_theme} " ]]; then
      options+=("Style [${use_theme_style}]")
    fi
    options+=("Dashboard [${use_dash}]")
    if [ "${enable_alpha}" == "true" ]; then
      options+=("Alpha Header  [${use_dashboard_header}]")
      options+=("Recent Files  [${use_dashboard_recent_files}]")
      options+=("Quick Links   [${use_dashboard_quick_links}]")
    fi
    if [ "${enable_startup}" == "true" ]; then
      options+=("Startup [${startup_theme}]")
    fi
    options+=("Diagnostics [${use_show_diagnostics}]")
    options+=("File Tree [${use_neotree}]")
    options+=("Session [${use_session_manager}]")
    options+=("Leader        [${use_mapleader}]")
    options+=("Local Leader  [${use_maplocalleader}]")
    options+=("Transparency  [${use_transparent}]")
    options+=("Number Lines  [${use_number}]")
    options+=("Relative Nums [${use_relative_number}]")
    options+=("List Chars    [${use_list}]")
    options+=("Noice UI      [${use_noice}]")
    options+=("ChatGPT       [${use_chatgpt}]")
    options+=("Rainbow 2     [${use_rainbow2}]")
    options+=("Fancy Icons   [${use_fancy}]")
    options+=("Wilder Menus  [${use_wilder}]")
    options+=("Terminal      [${use_terminal}]")
    options+=("Enable Games  [${use_games}]")
    options+=("Bookmarks     [${use_bookmarks}]")
    options+=("Enable IDE    [${use_ide}]")
    options+=("Navigator     [${use_navigator}]")
    options+=("Project       [${use_project}]")
    options+=("Picker        [${use_picker}]")
    options+=("Smooth Scroll [${use_smooth_scrolling}]")
    options+=("Color Indent  [${use_color_indentline}]")
    options+=("Semantic HL   [${use_semantic_highlighting}]")
    options+=("Convert SemHL [${convert_semantic_highlighting}]")
    options+=("Status Line   [${use_statusline}]")
    options+=("Tab Line      [${use_tabline}]")
    options+=("Winbar        [${use_winbar}]")
    [ -f ${CONFBACK} ] && {
      diff ${CONFBACK} ${NVIMCONF} >/dev/null || options+=("Reset to Defaults")
    }
    [ -d "${HOME}/.config/nvim-Lazyman" ] && options+=("Open Lazyman")
    options+=("Main Menu")
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || tput reset
          printf "\n"
          man lazyman
          break
          ;;
        "Status Line"*,* | *,"Status Line"*)
          if [ "${enable_statusline}" == "true" ]; then
            set_conf_value "enable_statusline" "false"
          else
            set_conf_value "enable_statusline" "true"
          fi
          break
          ;;
        "Tab Line"*,* | *,"Tab Line"*)
          if [ "${enable_tabline}" == "true" ]; then
            set_conf_value "enable_tabline" "false"
          else
            set_conf_value "enable_tabline" "true"
          fi
          break
          ;;
        "Winbar"*,* | *,"Winbar"*)
          if [ "${enable_winbar}" == "true" ]; then
            set_conf_value "enable_winbar" "false"
          else
            set_conf_value "enable_winbar" "true"
          fi
          break
          ;;
        "Style"*,* | *,"Style"*)
          select_theme_style ${theme}
          break
          ;;
        "Theme"*,* | *,"Theme"*)
          select_theme ${theme}
          break
          ;;
        "Transparency"*,* | *,"Transparency"*)
          if [ "${enable_transparent}" == "true" ]; then
            set_conf_value "enable_transparent" "false"
          else
            set_conf_value "enable_transparent" "true"
          fi
          break
          ;;
        "Leader"*,* | *,"Leader"*)
          if [ "${use_mapleader}" == "," ]; then
            set_conf_value "mapleader" " "
          else
            set_conf_value "mapleader" ","
          fi
          break
          ;;
        "Local Leader"*,* | *,"Local Leader"*)
          if [ "${use_maplocalleader}" == "," ]; then
            set_conf_value "maplocalleader" " "
          else
            set_conf_value "maplocalleader" ","
          fi
          break
          ;;
        "Number Lines"*,* | *,"Number Lines"*)
          if [ "${enable_number}" == "true" ]; then
            set_conf_value "number" "false"
          else
            set_conf_value "number" "true"
          fi
          break
          ;;
        "Relative Num"*,* | *,"Relative Num"*)
          if [ "${enable_relative_number}" == "true" ]; then
            set_conf_value "relative_number" "false"
          else
            set_conf_value "relative_number" "true"
          fi
          break
          ;;
        "List"*,* | *,"List"*)
          if [ "${enable_list}" == "true" ]; then
            set_conf_value "list" "false"
          else
            set_conf_value "list" "true"
          fi
          break
          ;;
        "Session"*,* | *,"Session"*)
          if [ "${session_manager}" == "possession" ]; then
            set_conf_value "session_manager" "persistence"
          else
            set_conf_value "session_manager" "possession"
          fi
          break
          ;;
        "File"*,* | *,"File"*)
          if [ "${enable_neotree}" == "true" ]; then
            set_conf_value "enable_neotree" "false"
          else
            set_conf_value "enable_neotree" "true"
          fi
          break
          ;;
        "Noice"*,* | *,"Noice"*)
          if [ "${enable_noice}" == "true" ]; then
            set_conf_value "enable_noice" "false"
          else
            set_conf_value "enable_noice" "true"
          fi
          break
          ;;
        "ChatGPT"*,* | *,"ChatGPT"*)
          if [ "${enable_chatgpt}" == "true" ]; then
            set_conf_value "enable_chatgpt" "false"
          else
            set_conf_value "enable_chatgpt" "true"
          fi
          break
          ;;
        "Rainbow"*,* | *,"Rainbow"*)
          if [ "${enable_rainbow2}" == "true" ]; then
            set_conf_value "enable_rainbow2" "false"
          else
            set_conf_value "enable_rainbow2" "true"
          fi
          break
          ;;
        "Fancy"*,* | *,"Fancy"*)
          if [ "${enable_fancy}" == "true" ]; then
            set_conf_value "enable_fancy" "false"
          else
            set_conf_value "enable_fancy" "true"
          fi
          break
          ;;
        "Wilder"*,* | *,"Wilder"*)
          if [ "${enable_wilder}" == "true" ]; then
            set_conf_value "enable_wilder" "false"
          else
            set_conf_value "enable_wilder" "true"
          fi
          break
          ;;
        "Terminal"*,* | *,"Terminal"*)
          if [ "${enable_terminal}" == "true" ]; then
            set_conf_value "enable_terminal" "false"
          else
            set_conf_value "enable_terminal" "true"
          fi
          break
          ;;
        "Enable Games"*,* | *,"Enable Games"*)
          if [ "${enable_games}" == "true" ]; then
            set_conf_value "enable_games" "false"
          else
            set_conf_value "enable_games" "true"
          fi
          break
          ;;
        "Dashboard"*,* | *,"Dashboard"*)
          choices=("alpha" "dashboard" "startup")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Dashboard  " --layout=reverse --border --exit-0)
          if [ "${choice}" == "startup" ]; then
            tchoices=("lazyman" "dashboard" "startify")
            tchoice=$(printf "%s\n" "${tchoices[@]}" | fzf --prompt=" Startup Dashboard Theme  " --layout=reverse --border --exit-0)
            if [[ " ${tchoices[*]} " =~ " ${tchoice} " ]]; then
              [ "${startup_theme}" == "${tchoice}" ] || {
                set_conf_value "startup_theme" "${tchoice}"
              }
              [ "${enable_startup}" == "true" ] || {
                set_conf_value "enable_startup" "true"
                NVIM_APPNAME="${LAZYMAN}" nvim --headless \
                  "+Lazy! sync startup" +qa >/dev/null 2>&1
              }
              set_conf_value "enable_alpha" "false"
            fi
          elif [ "${choice}" == "alpha" ]; then
            set_conf_value "enable_startup" "false"
            [ "${enable_alpha}" == "true" ] || {
              set_conf_value "enable_alpha" "true"
              NVIM_APPNAME="${LAZYMAN}" nvim --headless \
                "+Lazy! sync alpha" +qa >/dev/null 2>&1
            }
          elif [ "${choice}" == "dashboard" ]; then
            resync=
            [ "${enable_alpha}" == "true" ] && {
              set_conf_value "enable_alpha" "false"
              resync=1
            }
            [ "${enable_startup}" == "true" ] && {
              set_conf_value "enable_startup" "false"
              resync=1
            }
            [ "${resync}" ] && {
              NVIM_APPNAME="${LAZYMAN}" nvim --headless \
                "+Lazy! sync dashboard" +qa >/dev/null 2>&1
            }
          fi
          break
          ;;
        "Startup"*,* | *,"Startup"*)
          choices=("lazyman" "dashboard" "startify")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Startup Dashboard Theme  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            [ "${startup_theme}" == "${choice}" ] || {
              set_conf_value "startup_theme" "${choice}"
            }
          fi
          break
          ;;
        "Bookmarks"*,* | *,"Bookmarks"*)
          if [ "${enable_bookmarks}" == "true" ]; then
            set_conf_value "enable_bookmarks" "false"
          else
            set_conf_value "enable_bookmarks" "true"
          fi
          break
          ;;
        "Enable IDE"*,* | *,"Enable IDE"*)
          if [ "${enable_ide}" == "true" ]; then
            set_conf_value "enable_ide" "false"
          else
            set_conf_value "enable_ide" "true"
          fi
          break
          ;;
        "Navigator"*,* | *,"Navigator"*)
          if [ "${enable_navigator}" == "true" ]; then
            set_conf_value "enable_navigator" "false"
          else
            set_conf_value "enable_navigator" "true"
          fi
          break
          ;;
        "Project"*,* | *,"Project"*)
          if [ "${enable_project}" == "true" ]; then
            set_conf_value "enable_project" "false"
          else
            set_conf_value "enable_project" "true"
          fi
          break
          ;;
        "Picker"*,* | *,"Picker"*)
          if [ "${enable_picker}" == "true" ]; then
            set_conf_value "enable_picker" "false"
          else
            set_conf_value "enable_picker" "true"
          fi
          break
          ;;
        "Smooth Scroll"*,* | *,"Smooth Scroll"*)
          if [ "${enable_smooth_scrolling}" == "true" ]; then
            set_conf_value "enable_smooth_scrolling" "false"
          else
            set_conf_value "enable_smooth_scrolling" "true"
          fi
          break
          ;;
        "Recent Files"*,* | *,"Recent Files"*)
          choices=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Number of Recent Files  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${dashboard_recent_files}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "dashboard_recent_files" "${choice}"
            fi
          }
          break
          ;;
        "Alpha Header"*,* | *,"Alpha Header"*)
          if [ "${enable_dashboard_header}" == "true" ]; then
            set_conf_value "enable_dashboard_header" "false"
          else
            set_conf_value "enable_dashboard_header" "true"
          fi
          break
          ;;
        "Quick Links"*,* | *,"Quick Links"*)
          if [ "${enable_dashboard_quick_links}" == "true" ]; then
            set_conf_value "enable_dashboard_quick_links" "false"
          else
            set_conf_value "enable_dashboard_quick_links" "true"
          fi
          break
          ;;
        "Color Indent"*,* | *,"Color Indent"*)
          if [ "${enable_color_indentline}" == "true" ]; then
            set_conf_value "enable_color_indentline" "false"
          else
            set_conf_value "enable_color_indentline" "true"
          fi
          break
          ;;
        "Diagnostic"*,* | *,"Diagnostic"*)
          choices=("none" "icons" "popup")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Diagnostics  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${show_diagnostics}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "show_diagnostics" "${choice}"
            fi
          }
          break
          ;;
        "Semantic HL"*,* | *,"Semantic HL"*)
          if [ "${enable_semantic_highlighting}" == "true" ]; then
            set_conf_value "enable_semantic_highlighting" "false"
          else
            set_conf_value "enable_semantic_highlighting" "true"
          fi
          break
          ;;
        "Convert SemHL"*,* | *,"Convert SemHL"*)
          if [ "${convert_semantic_highlighting}" == "true" ]; then
            set_conf_value "convert_semantic_highlighting" "false"
          else
            set_conf_value "convert_semantic_highlighting" "true"
          fi
          break
          ;;
        "Reset"*,* | *,"Reset"*)
          [ -f ${CONFBACK} ] && {
            cp ${CONFBACK} ${NVIMCONF}
            set_chat_gpt
          }
          break
          ;;
        "Open Lazyman",* | *,"Open Lazyman")
          if [ "${USEGUI}" ]; then
            NVIM_APPNAME="nvim-Lazyman" neovide
          else
            NVIM_APPNAME="nvim-Lazyman" nvim
          fi
          break
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          mainmenu=1
          break 2
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
      esac
      REPLY=
    done
  done
  [ "${mainmenu}" ] && show_main_menu
}

show_main_menu() {
  set_haves
  while true; do
    [ "$debug" ] || tput reset
    if [ "${USEGUI}" ]; then
      use_gui="neovide"
    else
      use_gui="neovim"
    fi
    items=()
    showinstalled=1
    show_warning=
    confmenu=
    if [ -f "${LMANDIR}"/.lazymanrc ]; then
      source "${LMANDIR}"/.lazymanrc
    else
      show_warning=1
      showinstalled=
    fi
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    numitems=${#sorted[@]}
    [ "${have_figlet}" ] && show_figlet
    [ "${show_warning}" ] && {
      if [ "${have_rich}" ]; then
        rich "[bold red]WARNING[/]: missing [b yellow]${LMANDIR}/.lazymanrc[/]
  reinstall Lazyman with:
    [bold green]lazyman -R -N ${LAZYMAN}[/]
  followed by:
        [bold green]lazyman[/]" -p -a rounded -c
      else
        printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
        printf "\nReinstall Lazyman with:"
        printf "\n\tlazyman -R -N ${LAZYMAN}"
        printf "\n\tlazyman\n"
      fi
    }
    confword="configurations"
    [ ${numitems} -eq 1 ] && confword="configuration"
    if [ "${have_rich}" ]; then
      rich "[b magenta]${numitems} Lazyman[/] [b green]Neovim ${confword}[/] [b magenta]installed[/]" -p -c
    else
      printf "\n${numitems} Lazyman Neovim configurations installed:\n"
    fi
    [ "${showinstalled}" ] && {
      linelen=0
      if [ "${have_rich}" ]; then
        neovims=""
        leader="[b green]"
        for neovim in "${sorted[@]}"; do
          neovims="${neovims} ${leader}${neovim}[/]"
          if [ "${leader}" == "[b green]" ]; then
            leader="[b magenta]"
          else
            leader="[b green]"
          fi
        done
        rich "${neovims}" -p -a rounded -c -C -w 78
      else
        printf "\t"
        for neovim in "${sorted[@]}"; do
          printf "${neovim}  "
          nvsz=${#neovim}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n\t"
            linelen=0
          }
        done
        printf "\n\n"
      fi
    }

    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    uninstalled=()
    [ "${have_fzf}" ] && {
      for neovim in ${BASECFGS} ${EXTRACFGS} ${STARTCFGS}; do
        nvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
        if [[ ! " ${sorted[*]} " =~ " ${nvdir} " ]]; then
          uninstalled+=("${nvdir}")
        fi
      done
      numunins=${#uninstalled[@]}
      [ ${numunins} -gt 0 ] && options+=("Select and Install")
    }
    if [ "${USEGUI}" ]; then
      if [ "${have_neovide}" ]; then
        if alias neovides >/dev/null 2>&1; then
          [ ${numitems} -gt 1 ] && {
            options+=("Select and Open")
            options+=("Select and Remove")
          }
        else
          options+=("Open Neovide")
          if alias nvims >/dev/null 2>&1; then
            USEGUI=
            use_gui="neovim"
            [ ${numitems} -gt 1 ] && {
              options+=("Select and Open")
              options+=("Select and Remove")
            }
          fi
        fi
      else
        USEGUI=
        use_gui="neovim"
        options+=("Install Neovide")
        if alias nvims >/dev/null 2>&1; then
          [ ${numitems} -gt 1 ] && {
            options+=("Select and Open")
            options+=("Select and Remove")
          }
        fi
      fi
    else
      if alias nvims >/dev/null 2>&1; then
        [ ${numitems} -gt 1 ] && {
          options+=("Select and Open")
          options+=("Select and Remove")
        }
      fi
    fi
    installed=1
    partial=
    get_config_str "${BASECFGS}"
    base_partial=${partial}
    options+=("Install Base ${configstr}")
    installed=1
    partial=
    get_config_str "${EXTRACFGS}"
    extra_partial=${partial}
    options+=("Install Extras ${configstr}")
    installed=1
    partial=
    get_config_str "${STARTCFGS}"
    start_partial=${partial}
    options+=("Install Starters ${configstr}")
    installed=1
    partial=
    get_config_str "${BASECFGS} ${EXTRACFGS} ${STARTCFGS}"
    options+=("Install All ${configstr}")
    [[ "${have_figlet}" && "${have_rocks}" && "${have_tscli}" && "${have_zoxi}" ]] || {
      options+=("Install Tools")
    }
    [ "${base_partial}" ] && options+=("Remove Base")
    [ "${extra_partial}" ] && options+=("Remove Extras")
    [ "${start_partial}" ] && options+=("Remove Starters")
    [ "${base_partial}" ] || [ "${extra_partial}" ] || [ "${start_partial}" ] && {
      options+=("Remove All")
    }
    for neovim in "${sorted[@]}"; do
      options+=("Open ${neovim}")
    done
    if [ "${have_neovide}" ]; then
      options+=("Toggle UI [${use_gui}]")
    fi
    options+=("Lazyman Config")
    options+=("Lazyman Status")
    [ "${have_brew}" ] && {
      options+=("Homebrew Upgrade")
    }
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || tput reset
          printf "\n"
          man lazyman
          break
          ;;
        "Select and Install"*,* | *,"Select and Install"*)
          choice=$(printf "%s\n" "${uninstalled[@]}" | fzf --prompt=" Install Neovim Config  " --layout=reverse --border --exit-0)
          [ "${choice}" ] && install_config "${choice}"
          break
          ;;
        "Select and Open"*,* | *,"Select and Open"*)
          if [ "${USEGUI}" ]; then
            neovselect
          else
            nvimselect
          fi
          break
          ;;
        "Select and Remove"*,* | *,"Select and Remove"*)
          if [ "${USEGUI}" ]; then
            neovselect -r
          else
            nvimselect -r
          fi
          break
          ;;
        "Install Base"*,* | *,"Install Base"*)
          lazyman -B -y -z
          break
          ;;
        "Install Extra"*,* | *,"Install Extra"*)
          lazyman -W -y -z
          break
          ;;
        "Install Starter"*,* | *,"Install Starter"*)
          lazyman -X -y -z
          break
          ;;
        "Install All"*,* | *,"Install All"*)
          lazyman -A -y -z
          break
          ;;
        "Install Tools"*,* | *,"Install Tools"*)
          lazyman -I
          set_haves
          break
          ;;
        "Install Neovide"*,* | *,"Install Neovide"*)
          [ "${have_cargo}" ] || {
            printf "\nNeovide build requires cargo but cargo not found.\n"
            while true; do
              read -r -p "Do you wish to install cargo now ? (y/n) " yn
              case $yn in
                [Yy]*)
                  printf "\nInstalling cargo ..."
                  if [ "${have_brew}" ]; then
                    brew install rust >/dev/null 2>&1
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
                  printf " done"
                  break
                  ;;
                [Nn]*)
                  printf "\nAborting cargo and neovide install\n"
                  break 2
                  ;;
                *)
                  printf "\nPlease answer yes or no.\n"
                  ;;
              esac
            done
            have_cargo=$(type -p cargo)
          }
          if [ "${have_cargo}" ]; then
            printf "\nBuilding Neovide GUI, please be patient ... "
            cargo install --git https://github.com/neovide/neovide >/dev/null 2>&1
            printf "done\n"
            have_neovide=$(type -p neovide)
          else
            printf "\nCannot locate cargo. Perhaps it is not in your PATH."
            printf "\nUnable to build Neovide"
          fi
          [ -f "${LMANDIR}"/.lazymanrc ] && {
            source "${LMANDIR}"/.lazymanrc
          }
          break
          ;;
        "Open Neovide"*,* | *,"Open Neovide"*)
          NVIM_APPNAME="${LAZYMAN}" neovide
          break
          ;;
        "Open "*,* | *,"Open "*)
          nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          if [ -d "${HOME}/.config/nvim-${nvimconf}" ]; then
            if [ "${USEGUI}" ]; then
              NVIM_APPNAME="nvim-${nvimconf}" neovide
            else
              NVIM_APPNAME="nvim-${nvimconf}" nvim
            fi
          else
            if [ -d "${HOME}/.config/${nvimconf}" ]; then
              if [ "${USEGUI}" ]; then
                NVIM_APPNAME="${nvimconf}" neovide
              else
                NVIM_APPNAME="${nvimconf}" nvim
              fi
            else
              printf "\nCannot locate ${nvimconf} Neovim configuration\n"
              printf "\nPress Enter to continue\n"
              read -r yn
            fi
          fi
          break
          ;;
        "Remove Base"*,* | *,"Remove Base"*)
          lazyman -R -B -y
          break
          ;;
        "Remove Extra"*,* | *,"Remove Extra"*)
          lazyman -R -W -y
          break
          ;;
        "Remove Starter"*,* | *,"Remove Starter"*)
          lazyman -R -X -y
          break
          ;;
        "Remove All"*,* | *,"Remove All"*)
          for ndirm in "${ndirs[@]}"; do
            [ "${ndirm}" == "${LAZYMAN}" ] && continue
            [ "${ndirm}" == "nvim" ] && continue
            lazyman -R -N ${ndirm} -y
          done
          break
          ;;
        "Toggle"*,* | *,"Toggle"*)
          if [ "${USEGUI}" ]; then
            USEGUI=
          else
            USEGUI=1
          fi
          break
          ;;
        "Lazyman Config",* | *,"Lazyman Config")
          confmenu=1
          break 2
          ;;
        "Lazyman Status",* | *,"Lazyman Status")
          show_info >/tmp/lminfo$$
          if [ "${USEGUI}" ]; then
            NVIM_APPNAME="${LAZYMAN}" neovide /tmp/lminfo$$
          else
            NVIM_APPNAME="${LAZYMAN}" nvim /tmp/lminfo$$
          fi
          rm -f /tmp/lminfo$$
          break
          ;;
        "Homebrew Upgrade",* | *,"Homebrew Upgrade")
          printf "Upgrading Homebrew packages with 'brew upgrade' ..."
          brew update --quiet >/dev/null 2>&1
          brew upgrade --quiet >/dev/null 2>&1
          printf " done"
          break
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
        *,*)
          printf "\nCould not match '${REPLY}' with a menu entry."
          printf "\nPlease try again with an exact match.\n"
          [ "${have_figlet}" ] && show_figlet
          ;;
      esac
      REPLY=
    done
  done
  [ "${confmenu}" ] && show_conf_menu
}

get_config_str() {
  CFGS="$1"
  for cfg in ${CFGS}; do
    inst=
    for bdir in "${sorted[@]}"; do
      [[ $cfg == "$bdir" ]] && {
        partial=1
        inst=1
        break
      }
    done
    [ "${inst}" ] || installed=
  done
  if [ "${installed}" ]; then
    configstr=" "
  else
    if [ "${partial}" ]; then
      configstr=" "
    else
      configstr=""
    fi
  fi
}

set_starter_branch() {
  starter="$1"
  case ${starter} in
    Minimal)
      startbranch="00-minimal"
      ;;
    StartBase)
      startbranch="01-base"
      ;;
    Opinion)
      startbranch="02-opinionated"
      ;;
    StartLsp)
      startbranch="03-lsp"
      ;;
    StartMason)
      startbranch="04-lsp-installer"
      ;;
    Modular)
      startbranch="05-modular"
      ;;
    *)
      printf "\nUnrecognized nvim-starter configuration: ${nvimstarter}"
      printf "\nPress Enter to continue\n"
      read -r yn
      usage
      ;;
  esac
}

all=
branch=
instnvim=1
subdir=
command=
brew=
debug=
head=
invoke=
confmenu=
langservers=
tellme=
astronvim=
ecovim=
kickstart=
lazyman=
lazyvim=
lunarvim=
magicvim=
nvchad=
nvimextra=
nvimstarter=
spacevim=
plug=
packer=
proceed=
yes=
quiet=
remove=
removeall=
runvim=1
select=
update=
url=
name=
pmgr="Lazy"
lazymandir="${LAZYMAN}"
astronvimdir="nvim-AstroNvim"
ecovimdir="nvim-Ecovim"
kickstartdir="nvim-Kickstart"
lazyvimdir="nvim-LazyVim"
lunarvimdir="nvim-LunarVim"
nvchaddir="nvim-NvChad"
spacevimdir="nvim-SpaceVim"
magicvimdir="nvim-MagicVim"
basenvimdirs=("$lazyvimdir" "$magicvimdir" "$spacevimdir" "$ecovimdir" "$astronvimdir" "$nvchaddir" "$lunarvimdir")
nvimdir=()
while getopts "aAb:BcdD:eE:FhHiIklmnL:pPqrRsSUC:N:vw:Wx:XyzZu" flag; do
  case $flag in
    a)
      astronvim=1
      nvimdir=("$astronvimdir")
      ;;
    A)
      all=1
      nvimextra="all"
      nvimstarter="all"
      astronvim=1
      ecovim=1
      lazyvim=1
      lunarvim=1
      magicvim=1
      nvchad=1
      spacevim=1
      nvimdir=("${basenvimdirs[@]}")
      ;;
    B)
      all=1
      astronvim=1
      ecovim=1
      lazyvim=1
      lunarvim=1
      magicvim=1
      nvchad=1
      spacevim=1
      nvimdir=("${basenvimdirs[@]}")
      ;;
    b)
      branch="$OPTARG"
      ;;
    c)
      nvchad=1
      nvimdir=("$nvchaddir")
      ;;
    d)
      debug="-d"
      ;;
    e)
      ecovim=1
      nvimdir=("$ecovimdir")
      ;;
    E)
      invoke="$OPTARG"
      ;;
    F)
      confmenu=1
      ;;
    h)
      brew="-h"
      ;;
    H)
      head="-n"
      ;;
    i)
      lazyman=1
      nvimdir=("${lazymandir}")
      ;;
    I)
      langservers=1
      ;;
    k)
      kickstart=1
      nvimdir=("$kickstartdir")
      ;;
    l)
      lazyvim=1
      nvimdir=("$lazyvimdir")
      ;;
    L)
      command="$OPTARG"
      ;;
    m)
      magicvim=1
      nvimdir=("$magicvimdir")
      ;;
    n)
      tellme=1
      ;;
    p)
      plug=1
      pmgr="Plug"
      ;;
    P)
      packer=1
      pmgr="Packer"
      ;;
    q)
      quiet=1
      ;;
    r)
      remove=1
      ;;
    R)
      remove=1
      removeall=1
      ;;
    s)
      spacevim=1
      nvimdir=("$spacevimdir")
      ;;
    S)
      select=1
      ;;
    C)
      url="$OPTARG"
      ;;
    D)
      subdir="$OPTARG"
      ;;
    N)
      name="$OPTARG"
      ;;
    U)
      update=1
      ;;
    v)
      lunarvim=1
      nvimdir=("$lunarvimdir")
      ;;
    w)
      nvimextra="$OPTARG"
      ;;
    W)
      nvimextra="all"
      ;;
    x)
      nvimstarter="$OPTARG"
      ;;
    X)
      nvimstarter="all"
      ;;
    y)
      proceed=1
      yes="-y"
      ;;
    z)
      runvim=
      ;;
    Z)
      instnvim=
      ;;
    u)
      usage
      ;;
    *)
      printf "\nUnrecognized option. Exiting.\n"
      usage
      ;;
  esac
done
shift $((OPTIND - 1))

[ "$1" == "status" ] && {
  show_info
  exit 0
}

set_haves

[ "$select" ] && {
  if [ -f "${LMANDIR}"/.lazymanrc ]; then
    source "${LMANDIR}"/.lazymanrc
  else
    printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
    printf "\nReinstall Lazyman with:"
    printf "\n\tlazyman -R -N ${LAZYMAN}"
    printf "\n\tlazyman\n"
  fi
  if alias nvims >/dev/null 2>&1; then
    nvimselect "$@"
  fi
  exit 0
}

[ "$nvimextra" ] && {
  if [ "$remove" ]; then
    if [ "${nvimextra}" == "all" ]; then
      for neovim in Abstract Nv Knvim Roiz Fennel Adib Optixal Plug Heiker Simple; do
        remove_config "nvim-${neovim}"
      done
    else
      remove_config "nvim-${nvimextra}"
    fi
  else
    yesflag=
    [ "${proceed}" ] && yesflag="-y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${nvimextra}" == "all" ]; then
      action="Installing"
      [ -d ${HOME}/.config/nvim-Abstract ] && action="Updating"
      printf "\n${action} Abstract Neovim configuration ..."
      lazyman -b main -C https://github.com/Abstract-IDE/Abstract \
        -N nvim-Abstract -P -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Abstract"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Nv ] && action="Updating"
      printf "\n${action} Nv Neovim configuration ..."
      lazyman -C https://github.com/appelgriebsch/Nv \
        -N nvim-Nv -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Nv"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Knvim ] && action="Updating"
      printf "\n${action} Knvim Neovim configuration ..."
      lazyman -b main -C https://github.com/knmac/knvim \
        -N nvim-Knvim -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Knvim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Fennel ] && action="Updating"
      printf "\n${action} Fennel Neovim configuration ..."
      lazyman -C https://github.com/jhchabran/nvim-config \
        -N nvim-Fennel -P -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Fennel"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Adib ] && action="Updating"
      printf "\n${action} Adib Neovim configuration ..."
      lazyman -b main -C https://github.com/adibhanna/nvim \
        -N nvim-Adib -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Adib"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Optixal ] && action="Updating"
      printf "\n${action} Optixal Neovim configuration ..."
      lazyman -C https://github.com/Optixal/neovim-init.vim \
        -N nvim-Optixal -p -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Optixal"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Plug ] && action="Updating"
      printf "\n${action} Plug Neovim configuration ..."
      lazyman -C https://github.com/doctorfree/nvim-plug \
        -N nvim-Plug -p -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Plug"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Heiker ] && action="Updating"
      printf "\n${action} VonHeikemen Neovim configuration ..."
      lazyman -C https://github.com/VonHeikemen/dotfiles \
        -D my-configs/neovim -N nvim-Heiker -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Heiker"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Roiz ] && action="Updating"
      printf "\n${action} Roiz Neovim configuration ..."
      lazyman -b main -C https://github.com/MrRoiz/rnvim \
        -N nvim-Roiz -q -z ${yesflag}
      printf " done\n"
      show_alias "nvim-Roiz"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Simple ] && action="Updating"
      printf "\n${action} Simple Neovim configuration ..."
      lazyman -C https://github.com/anthdm/.nvim \
        -N nvim-Simple -P -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Simple"
    else
      extra_url=
      extra_dir=
      extra_opt=
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimextra} in
        Abstract)
          extra_url="https://github.com/Abstract-IDE/Abstract"
          extra_opt="-b main -P"
          ;;
        Adib)
          extra_url="https://github.com/adibhanna/nvim"
          extra_opt="-b main"
          ;;
        Knvim)
          extra_url="https://github.com/knmac/knvim"
          extra_opt="-b main"
          ;;
        Roiz)
          extra_url="https://github.com/MrRoiz/rnvim"
          extra_opt="-b main"
          ;;
        Fennel)
          extra_url="https://github.com/jhchabran/nvim-config"
          extra_opt="-P"
          ;;
        Nv)
          extra_url="https://github.com/appelgriebsch/Nv"
          ;;
        NvPak)
          extra_url="https://github.com/Pakrohk-DotFiles/NvPak.git"
          ;;
        Optixal)
          extra_url="https://github.com/Optixal/neovim-init.vim"
          extra_opt="-p"
          ;;
        Plug)
          extra_url="https://github.com/doctorfree/nvim-plug"
          extra_opt="-p"
          ;;
        Heiker)
          extra_url="https://github.com/VonHeikemen/dotfiles"
          extra_dir="-D my-configs/neovim"
          ;;
        Simple)
          extra_url="https://github.com/anthdm/.nvim"
          extra_opt="-P"
          ;;
        *)
          printf "\nUnrecognized extra configuration: ${nvimextra}"
          printf "\nPress Enter to continue\n"
          read -r yn
          usage
          ;;
      esac
      action="Installing"
      [ -d ${HOME}/.config/nvim-${nvimextra} ] && action="Updating"
      printf "\n${action} ${nvimextra} Neovim configuration ..."
      lazyman -C ${extra_url} -N nvim-${nvimextra} ${extra_dir} ${extra_opt} \
        ${quietflag} ${runflag} ${yesflag}
      printf " done"
    fi
  fi
}

[ "$nvimstarter" ] && {
  if [ "$remove" ]; then
    if [ "${nvimstarter}" == "all" ]; then
      for neovim in Minimal StartBase Opinion StartLsp StartMason Modular; do
        remove_config "nvim-${neovim}"
      done
      remove_config "nvim-Kickstart"
    else
      remove_config "nvim-${nvimstarter}"
    fi
  else
    yesflag=
    [ "${proceed}" ] && yesflag="-y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${nvimstarter}" == "all" ]; then
      for neovim in Minimal StartBase Opinion StartLsp StartMason Modular; do
        startbranch=
        set_starter_branch "${neovim}"
        [ "${startbranch}" ] || usage
        action="Installing"
        [ -d ${HOME}/.config/nvim-${neovim} ] && action="Updating"
        printf "\n${action} nvim-starter ${neovim} Neovim configuration ..."
        lazyman -C https://github.com/VonHeikemen/nvim-starter \
          -N nvim-${neovim} -b ${startbranch} -q -z ${yesflag}
        printf " done"
        show_alias "nvim-${neovim}"
      done
      action="Installing"
      [ -d ${HOME}/.config/nvim-Kickstart ] && action="Updating"
      printf "\n${action} Kickstart Neovim configuration ..."
      lazyman -k -q -z ${yesflag}
      printf " done"
      show_alias "nvim-Kickstart"
      action="Installing"
      [ -d ${HOME}/.config/nvim-NvPak ] && action="Updating"
      printf "\n${action} NvPak Neovim configuration ..."
      lazyman -C https://github.com/Pakrohk-DotFiles/NvPak.git \
        -N nvim-NvPak -q -z ${yesflag}
      printf " done"
      show_alias "nvim-NvPak"
    else
      # TODO: What about Kickstart and NvPak ?
      runflag=
      [ "${runvim}" ] || runflag="-z"
      startbranch=
      set_starter_branch "${nvimstarter}"
      [ "${startbranch}" ] || usage
      action="Installing"
      [ -d ${HOME}/.config/nvim-${nvimstarter} ] && action="Updating"
      printf "\n${action} nvim-starter ${nvimstarter} Neovim configuration ..."
      lazyman -C https://github.com/VonHeikemen/nvim-starter \
        -N nvim-${nvimstarter} -b ${startbranch} \
        ${quietflag} ${runflag} ${yesflag}
      printf " done"
    fi
  fi
  printf "\n"
}

[ "$langservers" ] && {
  [ "${instnvim}" ] || {
    printf "\n\n-I and -Z are incompatible options."
    printf "\nThe '-I' option indicates install tools."
    printf "\nThe '-Z' option indicates do not install tools."
    brief_usage
  }
  if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]; then
    "${HOME}/.config/${lazymandir}"/scripts/install_neovim.sh \
      "$debug" "$head" "$brew" "$yes"
    exit 0
  fi
  exit 1
}

[ "$url" ] && {
  [ "$name" ] || {
    printf "\nERROR: '-C url' must be accompanied with '-N nvimdir'\n"
    brief_usage
  }
}
[ "$all" ] && [ "$name" ] && {
  printf "\nERROR: '-A' cannot be used with '-N nvimdir'\n"
  brief_usage
}
[ "$packer" ] && [ "$plug" ] && {
  printf "\nERROR: '-P' cannot be used with '-p'"
  printf "\nOnly one plugin manager can be specified\n"
  brief_usage
}
# Support specifying '-N nvimdir' with supported configurations
# This breaks subsequent '-E' invocations for that config
[ "$name" ] && {
  numvim=0
  [ "$astronvim" ] && numvim=$((numvim + 1))
  [ "$ecovim" ] && numvim=$((numvim + 1))
  [ "$kickstart" ] && numvim=$((numvim + 1))
  [ "$lazyvim" ] && numvim=$((numvim + 1))
  [ "$lazyman" ] && numvim=$((numvim + 1))
  [ "$lunarvim" ] && numvim=$((numvim + 1))
  [ "$magicvim" ] && numvim=$((numvim + 1))
  [ "$nvchad" ] && numvim=$((numvim + 1))
  [ "$spacevim" ] && numvim=$((numvim + 1))
  [ "$numvim" -gt 1 ] && {
    printf "\nERROR: multiple Neovim configs cannot be used with '-N nvimdir'\n"
    brief_usage
  }
  [ "$astronvim" ] && astronvimdir="$name"
  [ "$ecovim" ] && ecovimdir="$name"
  [ "$kickstart" ] && kickstartdir="$name"
  [ "$lazyman" ] && lazymandir="$name"
  [ "$lazyvim" ] && lazyvimdir="$name"
  [ "$lunarvim" ] && lunarvimdir="$name"
  [ "$magicvim" ] && magicvimdir="$name"
  [ "$nvchad" ] && nvchaddir="$name"
  [ "$spacevim" ] && spacevimdir="$name"
  [ "$numvim" -eq 1 ] && {
    [ "$quiet" ] || {
      printf "\nWARNING: Specifying '-N nvimdir' will change the configuration location"
      printf "\n\tof a supported config to ${name}"
      printf "\n\tThis will make it incompatible with '-E <config>' in subsequent runs\n"
    }
    [ "$proceed" ] || {
      printf "\nDo you wish to proceed with this non-standard initialization?\n"
      while true; do
        read -r -p "Proceed with config in ${name} ? (y/n) " yn
        case $yn in
          [Yy]*)
            break
            ;;
          [Nn]*)
            printf "\nAborting install and exiting\n"
            exit 0
            ;;
          *)
            printf "\nPlease answer yes or no.\n"
            ;;
        esac
      done
    }
  }
}

[ "$invoke" ] && {
  nvimlower=$(echo "$invoke" | tr '[:upper:]' '[:lower:]')
  case "$nvimlower" in
    astronvim)
      ndir="$astronvimdir"
      ;;
    ecovim)
      ndir="$ecovimdir"
      ;;
    kickstart)
      ndir="$kickstartdir"
      ;;
    lazyman)
      ndir="$lazymandir"
      ;;
    lazyvim)
      ndir="$lazyvimdir"
      ;;
    lunarvim)
      ndir="$lunarvimdir"
      ;;
    nvchad)
      ndir="$nvchaddir"
      ;;
    magicvim)
      ndir="$magicvimdir"
      ;;
    spacevim)
      ndir="$spacevimdir"
      ;;
    *)
      ndir="$invoke"
      ;;
  esac
  [ -d "${HOME}/.config/${ndir}" ] || {
    printf "\nNeovim configuration for ${ndir} not found"
    printf "\nExiting\n"
    exit 1
  }
  export NVIM_APPNAME="$ndir"
  nvim "$@"
  exit 0
}

[ "$name" ] && nvimdir=("$name")

[ "$remove" ] && {
  for neovim in "${nvimdir[@]}"; do
    [ "${all}" ] && [ "${neovim}" == "${lazymandir}" ] && continue
    remove_config "$neovim"
  done
  exit 0
}

[ "$command" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && nvimdir=("$NVIM_APPNAME")
  }
  for neovim in "${nvimdir[@]}"; do
    run_command "$neovim" "$command"
  done
  exit 0
}

[ "$update" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && nvimdir=("$NVIM_APPNAME")
  }
  for neovim in "${nvimdir[@]}"; do
    update_config "$neovim"
    [ "$tellme" ] || {
      init_neovim "$neovim"
    }
  done
  exit 0
}

have_git=$(type -p git)
[ "$have_git" ] || {
  [ "$have_brew" ] && {
    brew install git >/dev/null 2>&1
  }
  have_git=$(type -p git)
  [ "$have_git" ] || {
    printf "\nLazyman requires git but git not found"
    printf "\nPlease install git and retry this lazyman command\n"
    brief_usage
  }
}

interactive=
numvimdirs=${#nvimdir[@]}
[ ${numvimdirs} -eq 0 ] && {
  nvimdir=("${lazymandir}")
  interactive=1
}
if [ -d "${HOME}/.config/${lazymandir}" ]; then
  [ "$branch" ] && {
    git -C "${HOME}/.config/${lazymandir}" checkout "$branch" >/dev/null 2>&1
  }
  [ -d "${HOME}/.local/share/${lazymandir}" ] || interactive=
  [ -f "${HOME}/.config/${lazymandir}/.initialized" ] && instnvim=
else
  [ "$quiet" ] || {
    printf "\nCloning ${LAZYMAN} configuration into"
    printf "\n\t${HOME}/.config/${lazymandir} ... "
  }
  [ "$tellme" ] || {
    git clone https://github.com/doctorfree/nvim-lazyman \
      "${HOME}/.config/${lazymandir}" >/dev/null 2>&1
    [ "$branch" ] && {
      git -C "${HOME}/.config/${lazymandir}" checkout "$branch" >/dev/null 2>&1
    }
  }
  [ "$quiet" ] || printf "done"
  interactive=
fi
# Always make sure nvim-Lazyman is in .nvimdirs
[ "$tellme" ] || {
  add_nvimdirs_entry "${lazymandir}"
}

# Enable ChatGPT plugin if OPENAI_API_KEY set
set_chat_gpt
[ -f ${CONFBACK} ] || {
  cp ${NVIMCONF} ${CONFBACK}
}

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]; then
  [ "$tellme" ] || ulimit -n 4096
else
  [ "$tellme" ] || ulimit -n "$hardlimit"
fi

[ "${instnvim}" ] && {
  if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]; then
    "${HOME}/.config/${lazymandir}"/scripts/install_neovim.sh \
      "$debug" "$head" "$brew" "$yes"
    have_nvim=$(type -p nvim)
    [ "$have_nvim" ] || {
      printf "\nERROR: cannot locate neovim."
      printf "\nHomebrew install failure, manual debug required."
      printf "\n\t'brew update && lazyman -d'."
      printf "\nNeovim 0.9 or later required. Install and retry. Exiting.\n"
      brief_usage
    }
  else
    printf "\n${HOME}/.config/${lazymandir}/scripts/install_neovim.sh not executable"
    printf "\nPlease check the Lazyman installation and retry this install script\n"
    brief_usage
  fi

  # Append sourcing of .lazymanrc to shell initialization files
  if [ -f "${LMANDIR}"/.lazymanrc ]; then
    for shinit in bashrc zshrc; do
      [ -f "${HOME}/.$shinit" ] || continue
      grep lazymanrc "${HOME}/.$shinit" >/dev/null && continue
      COMM="# Source the Lazyman shell initialization for aliases and nvims selector"
      echo "$COMM" >>"${HOME}/.$shinit"
      SHCK="# shellcheck source=.config/nvim-Lazyman/.lazymanrc"
      echo "$SHCK" >>"${HOME}/.$shinit"
      TEST_SRC="[ -f ~/.config/${LAZYMAN}/.lazymanrc ] &&"
      SOURCE="source ~/.config/${LAZYMAN}/.lazymanrc"
      echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
    done
    # Append sourcing of .nvimsbind to shell initialization files
    [ -f "${HOME}/.config/${lazymandir}"/.nvimsbind ] && {
      for shinit in bashrc zshrc; do
        [ -f "${HOME}/.$shinit" ] || continue
        grep nvimsbind "${HOME}/.$shinit" >/dev/null && continue
        COMM="# Source the Lazyman .nvimsbind for nvims key binding"
        echo "$COMM" >>"${HOME}/.$shinit"
        SHCK="# shellcheck source=.config/nvim-Lazyman/.nvimsbind"
        echo "$SHCK" >>"${HOME}/.$shinit"
        TEST_SRC="[ -f ~/.config/${LAZYMAN}/.nvimsbind ] &&"
        SOURCE="source ~/.config/${LAZYMAN}/.nvimsbind"
        echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
      done
    }
  else
    printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
    printf "\nReinstall Lazyman with:"
    printf "\n\tlazyman -R -N ${LAZYMAN}"
    printf "\n\tlazyman\n"
  fi
}

# Source the Lazyman shell initialization for aliases and nvims selector
# shellcheck source=~/.config/nvim-Lazyman/.lazymanrc
[ -f ~/.config/nvim-Lazyman/.lazymanrc ] && source ~/.config/nvim-Lazyman/.lazymanrc
BREW_EXE=
set_brew
[ "$BREW_EXE" ] && eval "$("$BREW_EXE" shellenv)"

for neovim in "${nvimdir[@]}"; do
  [ "$neovim" == "${lazymandir}" ] && continue
  if [ "$proceed" ]; then
    update_config "$neovim"
  else
    [ -d "${HOME}/.config/$neovim" ] && {
      printf "\nYou have requested installation of the ${neovim} Neovim configuration."
      printf "\nIt appears there is a previously installed Neovim configuration at:"
      printf "\n\t${HOME}/.config/${neovim}\n"
      printf "\nThe existing Neovim configuration can be updated or backed up.\n"
      while true; do
        read -r -p "Update ${neovim} ? (y/n) " yn
        case $yn in
          [Yy]*)
            update_config "$neovim"
            break
            ;;
          [Nn]*)
            create_backups "$neovim"
            break
            ;;
          *)
            echo "Please answer yes or no."
            ;;
        esac
      done
    }
  fi
done

[ "$astronvim" ] && {
  clone_repo AstroNvim AstroNvim/AstroNvim "$astronvimdir"
  [ "$quiet" ] || {
    printf "\nAdding user configuration into"
    printf "\n\t${HOME}/.config/${astronvimdir}/lua/user ... "
  }
  [ "$tellme" ] || {
    if [ -d "${HOME}/.config/$astronvimdir"/lua/user ]; then
      update_config "$astronvimdir"
    else
      git clone https://github.com/doctorfree/astronvim \
        "${HOME}/.config/$astronvimdir"/lua/user >/dev/null 2>&1
    fi
  }
  [ "$quiet" ] || printf "done"
}
[ "$ecovim" ] && {
  clone_repo Ecovim ecosse3/nvim "$ecovimdir"
}
[ "$kickstart" ] && {
  clone_repo Kickstart nvim-lua/kickstart.nvim.git "$kickstartdir"
}
[ "$lazyvim" ] && {
  clone_repo LazyVim LazyVim/starter "$lazyvimdir"
}
[ "$lunarvim" ] && {
  export NVIM_APPNAME="${lunarvimdir}"
  export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
  export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
  export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
  export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
  LVIM_URL="https://raw.githubusercontent.com/lunarvim/lunarvim"
  LVIM_INSTALL="${LVIM_URL}/master/utils/installer/install.sh"
  [ "$quiet" ] || printf "\nCloning and initializing LunarVim ... "
  [ "$tellme" ] || {
    curl -s ${LVIM_INSTALL} >/tmp/lvim-install$$.sh
    chmod 755 /tmp/lvim-install$$.sh
    [ -x $HOME/.local/bin/lvim ] || {
      [ -f ${LMANDIR}/scripts/lvim ] && {
        if [ "${lunarvimdir}" == "nvim-LunarVim" ]; then
          cp ${LMANDIR}/scripts/lvim $HOME/.local/bin/lvim
        else
          cat ${LMANDIR}/scripts/lvim \
            | sed -e "s/nvim-LunarVim/${lunarvimdir}/" >$HOME/.local/bin/lvim
        fi
        chmod 755 $HOME/.local/bin/lvim
      }
    }
    if [ "$debug" ]; then
      /tmp/lvim-install$$.sh --no-install-dependencies
    else
      /tmp/lvim-install$$.sh --no-install-dependencies >/dev/null 2>&1
    fi
    rm -f /tmp/lvim-install$$.sh
    add_nvimdirs_entry "${lunarvimdir}"
  }
  [ "$quiet" ] || printf "done"
  [ "$quiet" ] || {
    printf "\nAdding LunarVim custom configuration into"
    printf "\n\t${HOME}/.config/${lunarvimdir}/lua/user ... "
  }
  [ "$tellme" ] || {
    [ -d "${HOME}/.config/${lunarvimdir}"/lua/user ] || {
      git clone https://github.com/IfCodingWereNatural/minimal-nvim \
        "${HOME}/.config/${lunarvimdir}"/tmp$$ >/dev/null 2>&1
      [ -d "${HOME}/.config/${lunarvimdir}"/tmp$$ ] && {
        git -C "${HOME}/.config/${lunarvimdir}"/tmp$$ \
          checkout lunarvim >/dev/null 2>&1
        for folder in ftplugin lsp-settings plugin snippets lua/user; do
          cp -a "${HOME}/.config/${lunarvimdir}"/tmp$$/lvim/${folder} \
            "${HOME}/.config/${lunarvimdir}"/${folder}
        done
        cp "${HOME}/.config/${lunarvimdir}"/tmp$$/lvim/config.lua \
          "${HOME}/.config/${lunarvimdir}"/config.lua
      }
      rm -rf "${HOME}/.config/${lunarvimdir}"/tmp$$
    }
  }
  [ "$quiet" ] || printf "done"
}
[ "$magicvim" ] && {
  [ -d "${HOME}/.config/$magicvimdir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning MagicVim configuration into"
      printf "\n\t${HOME}/.config/${magicvimdir} ... "
    }
    [ "$tellme" ] || {
      git clone \
        https://gitlab.com/GitMaster210/magicvim \
        "${HOME}/.config/${magicvimdir}" >/dev/null 2>&1
      add_nvimdirs_entry "$magicvimdir"
    }
    [ "$quiet" ] || printf "done"
  }
}
[ "$nvchad" ] && {
  [ -d "${HOME}/.config/$nvchaddir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning NvChad configuration into"
      printf "\n\t${HOME}/.config/${nvchaddir} ... "
    }
    [ "$tellme" ] || {
      git clone https://github.com/NvChad/NvChad \
        "${HOME}/.config/${nvchaddir}" --depth 1 >/dev/null 2>&1
      add_nvimdirs_entry "$nvchaddir"
    }
    [ "$quiet" ] || {
      printf "\nAdding custom configuration into"
      printf "\n\t${HOME}/.config/${nvchaddir}/lua/custom ... "
    }
  }
  [ "$tellme" ] || {
    if [ -d "${HOME}/.config/$nvchaddir"/lua/custom ]; then
      update_config "$nvchaddir"
    else
      git clone https://github.com/doctorfree/NvChad-custom \
        "${HOME}/.config/$nvchaddir"/lua/custom >/dev/null 2>&1
    fi
  }
  [ "$quiet" ] || printf "done"
}
[ "$spacevim" ] && {
  clone_repo SpaceVim SpaceVim/SpaceVim "$spacevimdir"
}
[ "$url" ] && {
  if [ -d "${HOME}/.config/${nvimdir[0]}" ]; then
    [ "$quiet" ] || {
      printf "\nThe directory ${HOME}/.config/${nvimdir[0]} already exists."
    }
  else
    [ "$quiet" ] || {
      printf "\nCloning ${url} into"
      printf "\n\t${HOME}/.config/${nvimdir[0]} ... "
    }
    [ "$tellme" ] || {
      if [ "${subdir}" ]; then
        [ "${branch}" ] || branch="master"
        # Perform some git tricks here to retrieve a repo subdirectory
        mkdir /tmp/lazyman$$
        cd /tmp/lazyman$$ || {
          printf "\nCreation of /tmp/lazyman$$ temporary directory failed. Exiting."
          exit 1
        }
        git init >/dev/null 2>&1
        git remote add -f origin $url >/dev/null 2>&1
        git config core.sparseCheckout true >/dev/null 2>&1
        [ -d .git/info ] || mkdir -p .git/info
        echo "${subdir}" >>.git/info/sparse-checkout
        git pull origin ${branch} >/dev/null 2>&1
        cd || exit
        mv "/tmp/lazyman$$/${subdir}" "${HOME}/.config/${nvimdir[0]}"
        rm -rf "/tmp/lazyman$$"
      else
        git clone \
          "$url" "${HOME}/.config/${nvimdir[0]}" >/dev/null 2>&1
        [ "$branch" ] && {
          git -C "${HOME}/.config/${nvimdir[0]}" checkout "$branch" >/dev/null 2>&1
        }
      fi
      [ -f ${HOME}/.config/${nvimdir[0]}/lua/user/env.sample ] && {
        [ -f ${HOME}/.config/${nvimdir[0]}/lua/user/env.lua ] || {
          cp ${HOME}/.config/${nvimdir[0]}/lua/user/env.sample \
            ${HOME}/.config/${nvimdir[0]}/lua/user/env.lua
        }
      }
      add_nvimdirs_entry "${nvimdir[0]}"
    }
    [ "$quiet" ] || printf "done"
  fi
}

[ "${interactive}" ] || {
  for neovim in "${nvimdir[@]}"; do
    [ "$quiet" ] || {
      pm="$pmgr"
      [ "$neovim" == "$spacevimdir" ] && pm="SP"
      [ "$neovim" == "$magicvimdir" ] && pm="Packer"
      printf "\nInitializing ${neovim} Neovim configuration with ${pm}"
    }
    [ "$tellme" ] || {
      init_neovim "$neovim"
    }
  done
}

[ "$tellme" ] || ulimit -n "$currlimit"

lazyinst=
if [ -f "$HOME"/.local/bin/lazyman ]; then
  [ -f "${LMANDIR}"/lazyman.sh ] && {
    diff "${LMANDIR}"/lazyman.sh "$HOME"/.local/bin/lazyman >/dev/null || lazyinst=1
  }
else
  lazyinst=1
fi
[ "$lazyinst" ] && {
  [ "$quiet" ] || {
    printf "\nInstalling lazyman command in ${HOME}/.local/bin"
    printf "\nUse 'lazyman' to explore Neovim configurations."
    printf "\nReview the lazyman usage message with 'lazyman -u'"
  }
}

maninst=
if [ -f "$HOME"/.local/share/man/man1/lazyman.1 ]; then
  [ -f "${LMANDIR}"/man/man1/lazyman.1 ] && {
    diff "${LMANDIR}"/man/man1/lazyman.1 \
      "$HOME"/.local/share/man/man1/lazyman.1 >/dev/null || maninst=1
  }
else
  maninst=1
fi
[ "$maninst" ] && {
  [ "$quiet" ] || printf "\nView the lazyman man page with 'man lazyman'"
}

[ "$quiet" ] || [ "${interactive}" ] || {
  printf "\n\nTo use this lazyman installed Neovim configuration as the default,"
  printf "\nadd a line like the following to your .bashrc or .zshrc:\n"
  if [ "$all" ]; then
    printf '\n\texport NVIM_APPNAME="${LAZYMAN}"\n'
  else
    printf "\n\texport NVIM_APPNAME=\"${nvimdir[0]}\"\n"
  fi
  printf "\nTo easily switch between lazyman installed Neovim configurations,"
  printf "\nshell aliases and the 'nvims' and 'neovides' commands have been created."
  [ -f "${LMANDIR}"/.lazymanrc ] && source "${LMANDIR}"/.lazymanrc
  if ! alias nvims >/dev/null 2>&1; then
    printf "\nTo activate these aliases and the 'nvims' Neovim config switcher,"
    printf "\nlogout and login or issue the following command:"
    printf "\n\tsource ~/.config/${LAZYMAN}/.lazymanrc"
  fi
  show_alias "${nvimdir[0]}"
}

if [ "${interactive}" ]; then
  [ "$debug" ] || tput reset
else
  [ "$quiet" ] || {
    printf "\nRun 'lazyman' with no arguments for an interactive menu system"
    printf "\nRun 'lazyman -F' for the Lazyman Configuration menu\n"
  }
fi

[ "$tellme" ] || {
  [ "$runvim" ] && {
    [ "${interactive}" ] || {
      [ "$all" ] && export NVIM_APPNAME="${lazymandir}"
      nvim
    }
  }
}

[ "$lazyinst" ] && {
  [ "$tellme" ] || {
    [ -d "$HOME"/.local/bin ] || mkdir -p "$HOME"/.local/bin
    [ -f "${LMANDIR}"/lazyman.sh ] && {
      cp "${LMANDIR}"/lazyman.sh "$HOME"/.local/bin/lazyman
      chmod 755 "$HOME"/.local/bin/lazyman
    }
  }
}
[ "$maninst" ] && {
  [ "$tellme" ] || {
    [ -d "$HOME"/.local/share/man ] || mkdir -p "$HOME"/.local/share/man
    [ -d "$HOME"/.local/share/man/man1 ] || mkdir -p "$HOME"/.local/share/man/man1
    [ -f "${LMANDIR}"/man/man1/lazyman.1 ] && {
      cp "${LMANDIR}"/man/man1/lazyman.1 "$HOME"/.local/share/man/man1/lazyman.1
      chmod 644 "$HOME"/.local/share/man/man1/lazyman.1
    }
  }
}

[ "${interactive}" ] && {
  if [ "$confmenu" ]; then
    show_conf_menu
  else
    show_main_menu
  fi
}

exit 0
