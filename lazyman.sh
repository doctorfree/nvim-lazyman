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
HEALTHSC="${LMANDIR}/scripts/healthcheck.sh"
SUBMENUS="${LMANDIR}/scripts/lazyman_config.sh"
# LOLCAT="lolcat --animate --speed=70.0"
LOLCAT="lolcat"
BOLD=$(tput bold 2>/dev/null)
NORM=$(tput sgr0 2>/dev/null)
LINE=$(tput smul 2>/dev/null)

PLEASE="Please enter your choice"
USEGUI=
BASECFGS="Abstract AstroNvim BasicIde Ecovim LazyVim LunarVim NvChad Penguin SpaceVim MagicVim"
LANGUCFGS="Go LaTeX Python Rust SaleVim"
PRSNLCFGS="3rd Adib AlanVim Allaman Brain Charles Elianiva Ember Fennel Heiker Josean Knvim Magidc Mini Nv ONNO Optixal Plug Rafi Roiz Simple Slydragonn Traap"
MINIMCFGS="Extralight Minimal StartBase Opinion StartLsp StartMason Modular"
STARTCFGS="Basic CodeArt Cosmic Kickstart NvPak HardHacker Modern PDE ${MINIMCFGS}"
SPDIR="${HOME}/.SpaceVim.d"
# Timeout length for nvim headless execution
timeout=120
# Array with font names
fonts=("slant" "shadow" "small" "script" "standard")

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-E config]"
  printf "\n   [-e] [-f path] [-F menu] [-g] [-i] [-j] [-k] [-l] [-m] [-M] [-s]"
  printf "\n   [-S] [-v] [-n] [-o] [-p] [-P] [-q] [-Q] [-h] [-H] [-I] [-L lang]"
  printf "\n   [-rR] [-C url] [-D subdir] [-N nvimdir] [-G] [-tT] [-U] [-V url]"
  printf "\n   [-w conf] [-W] [-x conf] [-X] [-y] [-z] [-Z] [-u]"
  printf "\n   [health] [init] [install] [open] [remove] [status]"
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
  printf "\n    -D 'subdir' specifies the subdirectory of the repository to retrieve"
  printf "\n    -e indicates install and initialize Ecovim Neovim configuration"
  printf "\n    -E 'config' execute 'nvim' with 'config' Neovim configuration"
  printf "\n       'config' can be one of:"
  printf "\n           'lazyman', 'astronvim', 'kickstart', 'magicvim',"
  printf "\n           'ecovim', 'nvchad', 'lazyvim', 'lunarvim', 'spacevim'"
  printf "\n       or any Neovim configuration directory in '~/.config'"
  printf "\n           (e.g. 'lazyman -E lazyvim foo.lua')"
  printf "\n    -f 'path' fix treesitter 'help' parser in config file 'path'"
  printf "\n    -F 'menu' indicates present the specified Lazyman menu"
  printf "\n       'menu' can be one of:"
  printf "\n           'main', 'conf', 'lsp', 'format', 'plugin'"
  printf "\n    -G indicates no plugin manager, initialize with :TSUpdate"
  printf "\n    -g indicates install and initialize Abstract Neovim configuration"
  printf "\n    -j indicates install and initialize BasicIde Neovim configuration"
  printf "\n    -k indicates install and initialize Kickstart Neovim configuration"
  printf "\n    -l indicates install and initialize LazyVim Neovim configuration"
  printf "\n    -m indicates install and initialize MagicVim Neovim configuration"
  printf "\n    -M indicates install and initialize Mini Neovim configuration"
  printf "\n    -o indicates install and initialize penguinVim Neovim configuration"
  printf "\n    -s indicates install and initialize SpaceVim Neovim configuration"
  printf "\n    -v indicates install and initialize LunarVim Neovim configuration"
  printf "\n    -S indicates show Neovim configuration fuzzy selector menu"
  printf "\n    -n indicates dry run, don't actually do anything, just printf's"
  printf "\n    -p indicates use vim-plug rather than Lazy to initialize"
  printf "\n    -P indicates use Packer rather than Lazy to initialize"
  printf "\n    -q indicates quiet install"
  printf "\n    -Q indicates exit after performing specified action(s)"
  printf "\n    -h indicates use Homebrew to install rather than native pkg mgr"
  printf "\n        (Pacman is always used on Arch Linux, Homebrew on macOS)"
  printf "\n    -H indicates compile and install the nightly Neovim build"
  printf "\n    -i indicates install language servers and tools for coding diagnostics"
  printf "\n    -I indicates install all language servers and tools for coding diagnostics"
  printf "\n    -L 'lang' indicates install the 'lang' Language configuration"
  printf "\n       'lang' can be one of:"
  printf "\n           All ${LANGUCFGS}"
  printf "\n    -r indicates remove the previously installed configuration"
  printf "\n    -R indicates remove previously installed configuration and backups"
  printf "\n    -C 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n    -N 'nvimdir' specifies the folder name to use for the config given by -C"
  printf "\n    -t indicates list all installed Lazyman Neovim configurations"
  printf "\n    -T indicates list all uninstalled Lazyman Neovim configurations"
  printf "\n    -U indicates update an existing configuration"
  printf "\n    -V 'url' specifies an NvChad user configuration git repository"
  printf "\n    -w 'conf' indicates install and initialize Personal 'conf' config"
  printf "\n       'conf' can be one of:"
  printf "\n           All ${PRSNLCFGS}"
  printf "\n    -W indicates install and initialize all 'Personal' Neovim configurations"
  printf "\n    -x 'conf' indicates install and initialize nvim-starter 'conf' config"
  printf "\n       'conf' can be one of:"
  printf "\n           All ${STARTCFGS}"
  printf "\n    -X indicates install and initialize all 'Starter' configs"
  printf "\n    -y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n    -z indicates do not run nvim after initialization"
  printf "\n    -Z indicates do not install Homebrew, Neovim, or any other tools"
  printf "\n    -u displays this usage message and exits"
  printf "\n    'health' generate and display a health check for a configuration"
  printf "\n    'init' initialize specified Neovim configuration and exit"
  printf "\n    'install' fuzzy search and select configuration to install"
  printf "\n    'open' fuzzy search and select configuration to open"
  printf "\n    'remove' fuzzy search and select configuration to remove"
  printf "\n    'status' displays a brief status report and exits"
  printf "\nCommands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'"
  printf "\nWithout arguments lazyman installs and initializes ${LAZYMAN}"
  printf "\nor, if initialized, an interactive menu system is displayed.\n"
  exit 1
}

prompt_continue() {
  printf "\nPress <Enter> to continue ... "
  read -r yn
}

# Use a timeout function in case the headless nvim hangs waiting for input
xtimeout() {
  timeout=$1
  shift
  command=("$@")
  (
    "${command[@]}" &
    runnerpid=$!
    trap -- '' SIGTERM
    ( # killer job
      sleep $timeout
      if ps -p $runnerpid > /dev/null; then
        kill -SIGKILL $runnerpid 2>/dev/null
      fi
    ) &
    killerpid=$!
    wait $runnerpid
    kill -SIGKILL $killerpid
  )
}

set_haves() {
  have_brew=$(type -p brew)
  have_fzf=$(type -p fzf)
  have_cargo=$(type -p cargo)
  have_neovide=$(type -p neovide)
  have_figlet=$(type -p figlet)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)
}

# Patch references to ~/.config/nvim/
fix_nvim_dir() {
  fixnvimdir="$1"
  [ "${fixnvimdir}" == "${lazymandir}" ] || {
    find "${HOME}/.config/${fixnvimdir}" \
      -type f -a \( -name \*\.lua -o -name \*\.vim  \) | \
    while read -r f
    do
      echo "$f" | grep /.git/ > /dev/null && continue
      grep /nvim/ "$f" > /dev/null && {
        cat "$f" | sed -e "s%/nvim/%/${fixnvimdir}/%g" > /tmp/nvim$$
        cp /tmp/nvim$$ "$f"
        rm -f /tmp/nvim$$
      }
    done
  }
}

fix_help_file() {
  helpfile="$1"
  [ -f "${helpfile}" ] && {
    grep help "${helpfile}" >/dev/null && {
      cat "${helpfile}" | sed -e "s/\"help\",/\"vimdoc\",/" >/tmp/nvimhelp$$
      cp /tmp/nvimhelp$$ "${helpfile}"
      rm -f /tmp/nvimhelp$$
    }
  }
}

calc_elapsed() {
  FINISH_SECONDS=$(date +%s)
  ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
  ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
}

init_neovim() {
  neodir="$1"
  [ -d "${HOME}/.config/${neodir}" ] || return
  [ "${neodir}" == "${lazymandir}" ] || [ "${neodir}" == "${minivimdir}" ] && {
    oldpack=${packer}
    oldplug=${plug}
    plug=
    packer=
  }
  [ "${neodir}" == "${magicvimdir}" ] && {
    oldpack=${packer}
    packer=1
  }
  export NVIM_APPNAME="${neodir}"

  [ "${packer}" ] && {
    PACKER="${HOME}/.local/share/${neodir}/site/pack/packer/start/packer.nvim"
    [ -d "${PACKER}" ] || {
      [ "$quiet" ] || {
        printf "\nCloning packer.nvim into"
        printf "\n\t${PACKER}"
      }
      [ "$tellme" ] || {
        git clone --depth 1 \
          https://github.com/wbthomason/packer.nvim "${PACKER}" >/dev/null 2>&1
      }
    }
  }

  [ "${plug}" ] && {
    PLUG="${HOME}/.local/share/${neodir}/site/autoload/plug.vim"
    [ -d "${PLUG}" ] || {
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

  skipthis=
  [ "${custom_url}" ] && {
    # Check for wakatime plugin and use debug mode if found
    havewaka=
    find "${HOME}"/.config/"${neodir}" -type f -print0 \
      | xargs -0 grep wakatime/vim-wakatime >/dev/null && {
      [ -f "${HOME}"/.wakatime.cfg ] && havewaka=1
      wakafile=$(find "${HOME}"/.config/"${neodir}" -type f -print0 | xargs -0 grep wakatime/vim-wakatime | head -1 | awk -F ':' ' { print $1 } ')
      printf "\n\nThe ${neodir} Neovim configuration appears to use the WakaTime metrics plugin."
      printf "\nand cannot be automatically initialized as it requires user interaction."
      if [ "${havewaka}" ]; then
        printf "\nHowever, it appears you may have previously configured WakaTime."
        printf "\nWould you like to proceed with the Neovim ${neodir} initialization?\n"
        while true; do
          read -r -p "Initialze ${neodir} (may hang if API key not configured) ? (y/n) " yn
          case $yn in
            [Yy]*)
              printf "\nProceeding with initialization of ${neodir}"
              printf "\nIf the initialization process hangs, 'Ctrl-c' to exit and manually initialize\n"
              break
              ;;
            [Nn]*)
              printf "\nSkipping initialization of ${neodir}\n"
              skipthis=1
              break
              ;;
            *)
              printf "\nPlease answer yes or no.\n"
              ;;
          esac
        done
      else
        skipthis=1
      fi
      [ "${skipthis}" ] && {
        printf "\nTo initialize this configuration, either comment out the WakaTime plugin in:"
        printf "\n\t${wakafile}"
        printf "\nor get a WakaTime API key and manually initialize this configuration with:"
        printf "\n\tNVIM_APPNAME=${neodir} nvim"
        printf "\n\nSkipping auto-initialization, press <Enter> to continue ... "
        read -r yn
      }
    }
  }

  [ "${skipthis}" ] || {
    if [ "$debug" ]; then
      LOG="${LMANDIR}/logs/${neodir}"
      [ "$quiet" ] || {
        printf "\nInitializing configuration in debug mode."
        printf "\nLogging output in ${LMANDIR}/logs/ ... "
      }
      [ -d ${LMANDIR}/logs ] || mkdir -p ${LMANDIR}/logs
      START_SECONDS=$(date +%s)
      if [ "${packer}" ]; then
        xtimeout ${timeout} nvim --headless -c \
          'autocmd User PackerComplete quitall' -c 'PackerSync' > ${LOG} 2>&1
      else
        if [ "${plug}" ]; then
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c 'PlugInstall!' -c 'qa' > ${LOG} 2>&1
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c 'UpdateRemotePlugins' -c 'qa' >> ${LOG} 2>&1
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c 'GoInstallBinaries' -c 'qa' >> ${LOG} 2>&1
        else
          if [ "${neodir}" == "${spacevimdir}" ]; then
            xtimeout ${timeout} nvim --headless "+SPInstall" +qa > ${LOG} 2>&1
            xtimeout ${timeout} nvim --headless "+UpdateRemotePlugins" +qa >> ${LOG} 2>&1
          else
            if [ "${neodir}" == "${lunarvimdir}" ]; then
              export NVIM_APPNAME="nvim-LunarVim"
              export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
              export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
              export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
              export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
            fi
            if [ "${treesitter}" ]; then
              xtimeout ${timeout} nvim --headless '+TSUpdate' +qa > ${LOG} 2>&1
            else
              [ "${neodir}" == "${minivimdir}" ] || {
                xtimeout ${timeout} nvim --headless "+Lazy! sync" +qa > ${LOG} 2>&1
                [ "${neodir}" == "${nvchaddir}" ] || \
                [ "${neodir}" == "nvim-Go" ] || \
                [ "${neodir}" == "nvim-Rust" ] || \
                [ "${neodir}" == "nvim-Python" ] && {
                  xtimeout ${timeout} nvim --headless "+MasonInstallAll" +qa >> ${LOG} 2>&1
                }
              }
            fi
          fi
        fi
      fi
      [ -d "${HOME}/.config/${neodir}/doc" ] && {
        xtimeout ${timeout} nvim --headless \
          "+helptags ${HOME}/.config/${neodir}/doc" +qa >> ${LOG} 2>&1
      }
      [ "$quiet" ] || printf " done\n"
      calc_elapsed
      printf "\nInitialization elapsed time = ${ELAPSED}\n"
    else
      [ "$quiet" ] || printf "\nInitializing configuration ..."
      if [ "${packer}" ]; then
        xtimeout ${timeout} nvim --headless -c \
          'autocmd User PackerComplete quitall' -c 'PackerSync' >/dev/null 2>&1
      else
        if [ "${plug}" ]; then
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c 'PlugInstall!' -c 'qa' >/dev/null 2>&1
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c 'UpdateRemotePlugins' -c 'qa' >/dev/null 2>&1
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c 'GoInstallBinaries' -c 'qa' >/dev/null 2>&1
        else
          if [ "${neodir}" == "${spacevimdir}" ]; then
            xtimeout ${timeout} nvim --headless \
              "+SPInstall" +qa >/dev/null 2>&1
            xtimeout ${timeout} nvim --headless \
              "+UpdateRemotePlugins" +qa >/dev/null 2>&1
          else
            if [ "${neodir}" == "${lunarvimdir}" ]; then
              export NVIM_APPNAME="nvim-LunarVim"
              export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
              export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
              export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
              export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
            fi
            if [ "${treesitter}" ]; then
              xtimeout ${timeout} nvim --headless '+TSUpdate' +qa >/dev/null 2>&1
            else
              [ "${neodir}" == "${minivimdir}" ] || {
                xtimeout ${timeout} nvim --headless \
                  "+Lazy! sync" +qa >/dev/null 2>&1
                [ "${neodir}" == "${nvchaddir}" ] || \
                [ "${neodir}" == "nvim-Go" ] || \
                [ "${neodir}" == "nvim-Rust" ] || \
                [ "${neodir}" == "nvim-Python" ] && {
                  xtimeout ${timeout} nvim --headless \
                    "+MasonInstallAll" +qa >/dev/null 2>&1
                }
              }
            fi
          fi
        fi
      fi
      [ -d "${HOME}/.config/${neodir}/doc" ] && {
        xtimeout ${timeout} nvim --headless \
          "+helptags ${HOME}/.config/${neodir}/doc" +qa >/dev/null 2>&1
      }
      [ "$quiet" ] || printf " done\n"
    fi
  }
  [ "${neodir}" == "${magicvimdir}" ] && packer=${oldpack}
  [ "${neodir}" == "${lazymandir}" ] && {
    [ -f "${LMANDIR}/.initialized" ] || {
      touch "${LMANDIR}/.initialized"
    }
  }
  [ "${neodir}" == "${lazymandir}" ] || [ "${neodir}" == "${minivimdir}" ] && {
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
  if [ "${ndir}" == "nvim" ]; then
    printf "\nYou have requested removal of the Neovim configuration at:"
    printf "\n\t${HOME}/.config/nvim\n"
    printf "\nLazyman will not modify the standard nvim folders in any way."
    printf "\nRemoval cancelled, press <Enter> to continue ... "
    read -r yn
    return
  fi
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

  if [ "${ndir}" == "${spacevimdir}" ]; then
    [ -f ${SPDIR}/.git/config ] && {
      grep github.com/doctorfree/spacevim ${SPDIR}/.git/config > /dev/null && {
        [ "$quiet" ] || {
          printf "\nRemoving custom SpaceVim config at ${SPDIR}"
        }
        [ "$tellme" ] || {
          rm -rf "${SPDIR}"
        }
      }
    }
  fi
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
  GITDIR=".config/${ndir}"
  # [ "${ndir}" == "${lunarvimdir}" ] && GITDIR=".local/share/${lunarvimdir}/lvim"
  [ -d "${HOME}/${GITDIR}" ] && {
    printf "\nUpdating existing ${ndir} config at ${HOME}/${GITDIR} ..."
    [ "$tellme" ] || {
      [ "${ndir}" == "${lazymandir}" ] && {
        [ -f "${HOME}/${GITDIR}/lua/configuration.lua" ] && {
          cp "${HOME}/${GITDIR}/lua/configuration.lua" /tmp/lazyconf$$
        }
      }
      git -C "${HOME}/${GITDIR}" stash >/dev/null 2>&1
      git -C "${HOME}/${GITDIR}" reset --hard >/dev/null 2>&1
      git -C "${HOME}/${GITDIR}" pull >/dev/null 2>&1
      [ "${ndir}" == "${lazymandir}" ] || fix_nvim_dir "${ndir}"
    }
    printf " done"
    [ "$tellme" ] || add_nvimdirs_entry "${ndir}"
  }
  [ "$tellme" ] || {
    [ "${ndir}" == "${lazymandir}" ] && {
      cp ${NVIMCONF} ${CONFBACK}
      [ -f /tmp/lazyconf$$ ] && {
        restore_config=
        numconfold=$(grep ^conf /tmp/lazyconf$$ | wc -l)
        if [ -f "${HOME}/${GITDIR}/lua/configuration.lua" ]; then
          numconfnew=$(grep ^conf "${HOME}/${GITDIR}/lua/configuration.lua" | wc -l)
          [ ${numconfold} -eq ${numconfnew} ] && restore_config=1
        else
          restore_config=1
        fi
        if [ "${restore_config}" ]; then
          [ -f "${HOME}/${GITDIR}/lua/configuration.lua" ] && {
            printf "\nSaving new configuration file as:"
            printf "\n\t${HOME}/${GITDIR}/lua/configuration-new.lua"
            cp "${HOME}/${GITDIR}/lua/configuration.lua" \
              "${HOME}/${GITDIR}/lua/configuration-new.lua"
          }
          printf "\nRestoring your previous configuration file as:"
          printf "\n\t${HOME}/${GITDIR}/lua/configuration.lua"
          cp /tmp/lazyconf$$ "${HOME}/${GITDIR}/lua/configuration.lua"
        else
          cp /tmp/lazyconf$$ "${HOME}/${GITDIR}/lua/configuration-prev.lua"
          printf "\n\nThe format of the Lazyman configuration file has changed."
          printf "\nSaving your previous configuration file as:"
          printf "\n\t${HOME}/${GITDIR}/lua/configuration-prev.lua"
          printf "\nRe-apply any customizations to the new config at:"
          printf "\n\t${HOME}/${GITDIR}/lua/configuration.lua"
          prompt_continue
        fi
        rm -f /tmp/lazyconf$$
        ${SUBMENUS} -i
      }
      [ -d "${HOME}"/.local/bin ] || mkdir -p "${HOME}"/.local/bin
      [ -f "${LMANDIR}"/lazyman.sh ] && {
        cp "${LMANDIR}"/lazyman.sh "${HOME}"/.local/bin/lazyman
        chmod 755 "${HOME}"/.local/bin/lazyman
      }
    }
    [ "${ndir}" == "${astronvimdir}" ] || [ "${ndir}" == "${nvchaddir}" ] || \
    [ "${ndir}" == "nvim-Go" ] || [ "${ndir}" == "nvim-Rust" ] || \
    [ "${ndir}" == "nvim-Python" ] && {
      if [ "${ndir}" == "${astronvimdir}" ]; then
        cdir="lua/user"
      else
        cdir="lua/custom"
      fi
      [ -d "${HOME}/${GITDIR}/${cdir}" ] && {
        printf "\nUpdating existing add-on config at ${HOME}/.config/${ndir}/${cdir} ..."
        [ "$tellme" ] || {
          git -C "${HOME}/${GITDIR}/${cdir}" stash >/dev/null 2>&1
          git -C "${HOME}/${GITDIR}"/${cdir} reset --hard >/dev/null 2>&1
          git -C "${HOME}/${GITDIR}"/${cdir} pull >/dev/null 2>&1
        }
        printf " done"
      }
    }
    [ "${ndir}" == "${spacevimdir}" ] && {
      [ -d "${SPDIR}"/.git ] && {
        printf "\nUpdating existing SpaceVim add-on config at ${SPDIR} ..."
        [ "$tellme" ] || {
          git -C "${SPDIR}" stash >/dev/null 2>&1
          git -C "${SPDIR}" reset --hard >/dev/null 2>&1
          git -C "${SPDIR}" pull >/dev/null 2>&1
        }
        printf " done"
      }
    }
    [ "${ndir}" == "${minivimdir}" ] && {
      git -C "${HOME}/${GITDIR}" submodule update \
        --remote --init --recursive >/dev/null 2>&1
    }
    [ "${ndir}" == "${onnovimdir}" ] && {
      fix_help_file "${HOME}/.config/${ndir}/${fix_onno}"
    }
    [ "${ndir}" == "${latexvimdir}" ] && {
      fix_help_file "${HOME}/.config/${ndir}/${fix_latex}"
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
      # Replace references to /nvim/ with /$repodest/
      fix_nvim_dir "${repodest}"
    }
    [ "$quiet" ] || printf "done"
  }
}

show_figlet() {
  if [ "$1" ]; then
    FIG_TEXT="$1"
  else
    FIG_TEXT="Lazyman"
  fi
  # Seed random generator
  RANDOM=$$$(date +%s)
  USE_FONT=${fonts[$RANDOM % ${#fonts[@]}]}
  [ "${USE_FONT}" ] || USE_FONT="standard"
  if [ "${have_lolcat}" ]; then
    figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | ${LOLCAT}
  else
    figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null
  fi
}

git_status() {
  gpath="$1"
  tpath=$(echo "${gpath}" | sed -e "s%${HOME}%~%")
  git -C "${gpath}" remote update >/dev/null 2>&1
  UPSTREAM=${2:-'@{u}'}
  LOCAL=$(git -C "${gpath}" rev-parse @)
  REMOTE=$(git -C "${gpath}" rev-parse "$UPSTREAM")
  BASE=$(git -C "${gpath}" merge-base @ "$UPSTREAM")

  if [ $LOCAL = $REMOTE ]; then
    printf "\n  %-45s  Up-to-date " "${tpath}"
  elif [ $LOCAL = $BASE ]; then
    printf "\n  %-45s  Updates available" "${tpath}"
    printf "\n    Update with: lazyman -U -N ${neovim}"
  elif [ $REMOTE = $BASE ]; then
    printf "\n  %-45s  Local changes to tracked files" "${tpath}"
    printf "\n    Backup any local changes prior to running 'lazyman -U -N ${neovim}'"
  else
    printf "\n  %-45s  Appears to have diverged" "${tpath}"
    printf "\n    Backup any local changes prior to running 'lazyman -U -N ${neovim}'"
  fi
}

list_installed() {
  items=()
  [ -f "${LMANDIR}"/.lazymanrc ] && {
    source "${LMANDIR}"/.lazymanrc
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    installed=()
    for neovim in ${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}; do
      basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
      if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
        installed+=("${basenvdir}")
      fi
    done
    numins=${#installed[@]}
    if [ ${numins} -gt 0 ]; then
      printf "\n\n${numins} installed Lazyman Neovim configurations:\n"
      for conf in "${installed[@]}"; do
        printf "\n\t${conf}"
      done
    else
      printf "\n\nNo supported Lazyman Neovim configurations are installed."
    fi
  }
  printf "\n"
}

list_uninstalled() {
  items=()
  [ -f "${LMANDIR}"/.lazymanrc ] && {
    source "${LMANDIR}"/.lazymanrc
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    uninstalled=()
    for neovim in ${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}; do
      basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
      if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
        uninstalled+=("${basenvdir}")
      fi
    done
    numunins=${#uninstalled[@]}
    if [ ${numunins} -gt 0 ]; then
      printf "\n\n${numunins} uninstalled Lazyman Neovim configurations:\n"
      for conf in "${uninstalled[@]}"; do
        printf "\n\t${conf}"
      done
    else
      printf "\n\nAll supported Lazyman Neovim configurations are installed."
    fi
  }
  printf "\n"
}

show_health() {
  if [ -x ${HEALTHSC} ]
  then
    checkdir="$1"
    ${HEALTHSC} "${checkdir}"
    nvimconf=$(echo "${checkdir}" | sed -e "s/^nvim-//")
    if [ -f ${LMANDIR}/logs/health-${nvimconf}.md ]
    then
      NVIM_APPNAME="${checkdir}" nvim ${LMANDIR}/logs/health-${nvimconf}.md
    else
      echo "${LMANDIR}/logs/health-${nvimconf}.md not found"
    fi
  else
    echo "${HEALTHSC} not executable or missing"
  fi
}

show_info() {
  nvim_version=$(nvim --version | head -2)
  printf "\nInstalled Neovim version info:\n\n${nvim_version}\n"

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
    configpath="${HOME}/.config/${neovim}"
    twiddlpath="~/.config/${neovim}"
    if [ -d "${configpath}/.git" ]; then
      # Check if updates are available
      git_status "${configpath}"
    else
      if [ -d "${configpath}" ]; then
        printf "\n  %-45s  Not a git repository" "${twiddlpath}"
      else
        printf "\n  %-45s  Config folder not found!" "${twiddlpath}"
      fi
    fi
    [ "${neovim}" == "${spacevimdir}" ] && {
      tdir="~/.SpaceVim.d"
      if [ -d "${SPDIR}" ]; then
        if [ -d "${SPDIR}/.git" ]; then
          # Check if updates are available
          git_status "${SPDIR}"
        else
          printf "\n  %-45s  Not a git repository" "${tdir}"
        fi
      else
        printf "\n  %-45s  Custom config folder not found" "${tdir}"
      fi
    }
    [ "${neovim}" == "${astronvimdir}" ] || [ "${neovim}" == "${nvchaddir}" ] || \
    [ "${ndir}" == "nvim-Go" ] || [ "${ndir}" == "nvim-Rust" ] || \
    [ "${neovim}" == "nvim-Python" ] && {
      if [ "${neovim}" == "${astronvimdir}" ]; then
        cdir="lua/user"
        tdir="~/.config/${neovim}/lua/user"
      else
        cdir="lua/custom"
        tdir="~/.config/${neovim}/lua/custom"
      fi
      if [ -d "${configpath}/${cdir}" ]; then
        if [ -d "${configpath}/${cdir}/.git" ]; then
          # Check if updates are available
          git_status "${configpath}/${cdir}"
        else
          printf "\n  %-45s  Not a git repository" "${tdir}"
        fi
      else
        printf "\n  %-45s  Custom config folder not found" "${tdir}"
      fi
    }
  done
  list_uninstalled
}

show_alias() {
  adir="$1"
  [ "${quiet}" ] || {
    printf "\nAliases like the following are defined in ~/.config/nvim-Lazyman/.lazymanrc"
    if [ "$all" ]; then
      printf "\n\talias lnvim='NVIM_APPNAME=${LAZYMAN} nvim'"
    elif [ "$abstract" ]; then
      printf "\n\talias avim='NVIM_APPNAME=nvim-Abstract nvim'"
    elif [ "$astronvim" ]; then
      printf "\n\talias avim='NVIM_APPNAME=nvim-AstroNvim nvim'"
    elif [ "$basicide" ]; then
      printf "\n\talias bvim='NVIM_APPNAME=nvim-BasicIde nvim'"
    elif [ "$ecovim" ]; then
      printf "\n\talias evim='NVIM_APPNAME=nvim-Ecovim nvim'"
    elif [ "$kickstart" ]; then
      printf "\n\talias kvim='NVIM_APPNAME=nvim-Kickstart nvim'"
    elif [ "$modern" ]; then
      printf "\n\talias mvim='NVIM_APPNAME=nvim-Modern nvim'"
    elif [ "$pde" ]; then
      printf "\n\talias dvim='NVIM_APPNAME=nvim-PDE nvim'"
    elif [ "$lazyman" ]; then
      printf "\n\talias lmvim='NVIM_APPNAME=${LAZYMAN} nvim'"
    elif [ "$lazyvim" ]; then
      printf "\n\talias lvim='NVIM_APPNAME=nvim-LazyVim nvim'"
    elif [ "$lunarvim" ]; then
      printf "\n\talias lvim='NVIM_APPNAME=nvim-LunarVim nvim'"
    elif [ "$minivim" ]; then
      printf "\n\talias lvim='NVIM_APPNAME=nvim-Mini nvim'"
    elif [ "$penguinvim" ]; then
      printf "\n\talias pvim='NVIM_APPNAME=nvim-Penguin nvim'"
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
}

check_python_version() {
  have_python3=$(type -p python3)
  [ "${have_python3}" ] || {
    echo "NO"
    return 3
  }
  major=$(python3 -c 'import sys; print(sys.version_info.major)')
  if [ ${major} -eq 3 ]
  then
    minor=$(python3 -c 'import sys; print(sys.version_info.minor)')
    if [ ${minor} -ge 9 ]
    then
      echo "OK"
      return 0
    else
      echo "NO"
      return 1
    fi
  else
    echo "NO"
    return 2
  fi
}

install_config() {
  confname="$1"
  dodone=1
  printf "\nInstalling and initializing ${confname} Neovim configuration ... "
  case ${confname} in
    Abstract)
      lazyman ${darg} -g -z -y -Q -q
      ;;
    AstroNvim)
      lazyman ${darg} -a -z -y -Q -q
      ;;
    BasicIde)
      lazyman ${darg} -j -z -y -Q -q
      ;;
    Ecovim)
      lazyman ${darg} -e -z -y -Q -q
      ;;
    Kickstart)
      lazyman ${darg} -k -z -y -Q -q
      ;;
    Lazyman)
      lazyman ${darg} -i -z -y -Q -q
      ;;
    LazyVim)
      lazyman ${darg} -l -z -y -Q -q
      ;;
    LunarVim)
      lazyman ${darg} -v -z -y -Q -q
      ;;
    Mini)
      lazyman ${darg} -M -z -y -Q -q
      ;;
    NvChad)
      lazyman ${darg} -c -z -y -Q -q
      ;;
    Penguin)
      lazyman ${darg} -o -z -y -Q -q
      ;;
    SpaceVim)
      lazyman ${darg} -s -z -y -Q -q
      ;;
    MagicVim)
      lazyman ${darg} -m -z -y -Q -q
      ;;
    Go|LaTeX|Python|Rust|SaleVim)
      lazyman ${darg} -L ${confname} -z -y -Q -q
      ;;
    Adib|ONNO|3rd|AlanVim|Charles|Magidc|Ember|Knvim|Roiz|Fennel|Optixal|Plug|Heiker|Simple|Allaman|Brain|Elianiva|Josean|Nv|Rafi|Slydragonn|Traap)
      lazyman ${darg} -w ${confname} -z -y -Q -q
      ;;
    Basic|Modern|PDE|CodeArt|Cosmic|NvPak|HardHacker|StartBase|Opinion|StartLsp|StartMason|Modular|Extralight|Minimal)
      lazyman ${darg} -x ${confname} -z -y -Q -q
      ;;
    *)
      dodone=
      printf "\nUnsupported Neovim configuration!"
      printf "\nSkipping installation and initialization of ${confname}\n"
      ;;
  esac
  [ "${dodone}" ] && printf "done\n"
}

select_install() {
  set_haves
  [ "${have_fzf}" ] || {
    printf "\n\nConfiguration selection requires fzf but fzf is not found."
    printf "\nInstall fzf with 'lazyman -I' and verify fzf is in your PATH."
    printf "\nExiting\n"
    exit 1
  }
  items=()
  if [ -f "${LMANDIR}"/.lazymanrc ]; then
    source "${LMANDIR}"/.lazymanrc
  else
    printf "\n\n${LMANDIR}/.lazymanrc not found or not readable."
    printf "\nCheck your Lazyman installation."
    printf "\nExiting\n"
    exit 1
  fi
  readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
  uninstalled=()
  for neovim in ${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}; do
    basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
    if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
      uninstalled+=("${basenvdir}")
    fi
  done
  numunins=${#uninstalled[@]}
  if [ ${numunins} -gt 0 ]; then
    choice=$(printf "%s\n" "${uninstalled[@]}" \
      | fzf --prompt=" Install Neovim Config  " --layout=reverse --border --exit-0)
    [ "${choice}" ] && {
      if [[ " ${uninstalled[*]} " =~ " ${choice} " ]]; then
        install_config "${choice}"
      else
        printf "\n\nUnknown configuration choice: ${choice}\n"
      fi
    }
  else
    printf "\n\nAll supported Lazyman Neovim configurations are installed\n"
  fi
  exit 0
}

select_open() {
  set_haves
  if [ -f "${LMANDIR}"/.lazymanrc ]; then
    source "${LMANDIR}"/.lazymanrc
  else
    printf "\n\n${LMANDIR}/.lazymanrc not found or not readable."
    printf "\nCheck your Lazyman installation."
    printf "\nExiting\n"
    exit 1
  fi
  if [ "${USEGUI}" ]; then
    if [ "${have_neovide}" ]; then
      if alias neovides >/dev/null 2>&1; then
        neovselect
        exit 0
      fi
    fi
  fi
  if alias nvims >/dev/null 2>&1; then
    nvimselect
  else
    printf "\nLazyman nvims aliases incorrectly configured."
    printf "\nUnable to display selection menu. Exiting.\n"
    exit 1
  fi
  exit 0
}

select_remove() {
  set_haves
  if [ -f "${LMANDIR}"/.lazymanrc ]; then
    source "${LMANDIR}"/.lazymanrc
  else
    printf "\n\n${LMANDIR}/.lazymanrc not found or not readable."
    printf "\nCheck your Lazyman installation."
    printf "\nExiting\n"
    exit 1
  fi
  if [ "${USEGUI}" ]; then
    if [ "${have_neovide}" ]; then
      if alias neovides >/dev/null 2>&1; then
        neovselect -r
        exit 0
      fi
    fi
  fi
  if alias nvims >/dev/null 2>&1; then
    nvimselect -r
  else
    printf "\nLazyman nvims aliases incorrectly configured."
    printf "\nUnable to display selection menu. Exiting.\n"
    exit 1
  fi
  exit 0
}

show_vers_help() {
  if [ "${have_rich}" ]; then
    rich "[cyan]Lazyman Neovim Version Manager Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tLazyman Neovim Version Manager Menu Help\n"
  fi
  printf "\nSelect and install Neovim versions managed by the Bob Neovim version manager."
  printf "\nThe Bob Neovim version manager can also be used from the command line.\n"
  printf "\n${BOLD}${LINE}Usage:${NORM} ${BOLD}bob <COMMAND>${NORM}"
  printf "\n${BOLD}${LINE}Commands:${NORM}"
  printf "\n  ${BOLD}use${NORM}        Switch to the specified version (install if not installed)"
  printf "\n  ${BOLD}install${NORM}    Install the specified version"
  printf "\n  ${BOLD}uninstall${NORM}  Uninstall the specified version"
  printf "\n  ${BOLD}rollback${NORM}   Rollback to an existing nightly rollback"
  printf "\n  ${BOLD}erase${NORM}      Erase any change bob ever made"
  printf "\n  ${BOLD}list${NORM}       List all installed and used versions"
  printf "\n  ${BOLD}complete${NORM}   Generate shell completion"
  printf "\n  ${BOLD}help${NORM}       Print this message or the help of the given subcommand(s)"
  printf "\n${BOLD}${LINE}Options:${NORM}"
  printf "\n  ${BOLD}-h, --help${NORM}     Print help"
  printf "\n  ${BOLD}-V, --version${NORM}  Print version\n"
  prompt_continue
}

show_vers_menu() {
  help=
  tput reset
  readarray -t bob_versions < <(bob list | awk ' { print $2 } ' | grep -v Version | grep -v ^$ | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/\x1B\[[0-9;]*[A-Za-z]//g')
  readarray -t bob_status < <(bob list | awk ' { print $4 } ' | grep -v Status | grep -v ^$ | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
  if [ "${have_rich}" ]; then
    rich "[b cyan]Lazyman Neovim Version Menu[/]" -p -a rounded -c -C
  else
    [ "${have_figlet}" ] && show_figlet "Neovim Version"
  fi
  bob list
  nveropts=()
  used_ver=
  for ind in "${!bob_versions[@]}"; do
    spc_status=$(echo ${bob_status[$ind]} | sed -e 's/\x1B\[[0-9;]*[A-Za-z]//g')
    if [ "${spc_status}" == "Used" ]
    then
      status="[Used]"
      used_ver="${bob_versions[$ind]}"
    else
      status=
    fi
    nveropts+=("${bob_versions[$ind]} ${status}")
  done
  OWNER=neovim
  REPO=neovim
  API_URL="https://api.github.com/repos/${OWNER}/${REPO}/releases"
  have_jq=$(type -p jq)
  [ "${have_jq}" ] && {
    readarray -t nvim_releases < <(curl --silent "${API_URL}" | jq -r ".[] | .tag_name")
    for release in "${nvim_releases[@]}"; do
      if [[ ! " ${bob_versions[*]} " =~ " ${release} " ]]; then
        nveropts+=("${release}")
      fi
    done
    if [[ ! " ${bob_versions[*]} " =~ " nightly " ]]; then
      if [[ ! " ${nvim_releases[*]} " =~ " nightly " ]]; then
        nveropts+=("nightly")
      fi
    fi
  }
  nveropts+=("OK")
  nveropts+=("Quit")
  select opt in "${nveropts[@]}"; do
    case "$opt,$REPLY" in
      "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
        [ "$debug" ] || tput reset
        printf "\n"
        show_vers_help
        help=1
        break
        ;;
      "OK"*,* | *,"OK"* | "ok"*,* | *,"ok"* | "Ok"*,* | *,"Ok"*)
        break
        ;;
      "Quit",* | *,"Quit" | "quit",* | *,"quit")
        printf "\nExiting Lazyman\n"
        exit 0
        ;;
      *)
        if [ "${opt}" ]; then
          nvimvers=$(echo ${opt} | awk ' { print $1 } ')
        else
          nvimvers=$(echo ${REPLY} | awk ' { print $1 } ')
        fi
        [ "${nvimvers}" == "${used_ver}" ] || {
          bob use ${nvimvers} > /dev/null 2>&1
        }
        break
        ;;
    esac
    REPLY=
  done
  [ "${help}" ] && show_vers_menu
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
    versmenu=
    if [ -f "${LMANDIR}"/.lazymanrc ]; then
      source "${LMANDIR}"/.lazymanrc
    else
      show_warning=1
      showinstalled=
    fi
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    numitems=${#sorted[@]}
    if [ "${have_figlet}" ]; then
      show_figlet
    else
      [ "${have_rich}" ] && rich "[cyan]Lazyman Main Menu[/cyan]" -p -a rounded -c -C
    fi
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
    installed=1
    partial=
    get_config_str "${BASECFGS}"
    base_partial=${partial}
    base_installed=${installed}
    if [ "${base_installed}" ]
    then
      options+=("Update Base       ${configstr}")
    else
      options+=("Install Base      ${configstr}")
    fi
    installed=1
    partial=
    get_config_str "${LANGUCFGS}"
    lang_partial=${partial}
    lang_installed=${installed}
    if [ "${lang_installed}" ]
    then
      options+=("Update Languages  ${configstr}")
    else
      options+=("Install Languages ${configstr}")
    fi
    installed=1
    partial=
    get_config_str "${PRSNLCFGS}"
    prsnl_partial=${partial}
    prsnl_installed=${installed}
    if [ "${prsnl_installed}" ]
    then
      options+=("Update Personals  ${configstr}")
    else
      options+=("Install Personals ${configstr}")
    fi
    installed=1
    partial=
    get_config_str "${STARTCFGS}"
    start_partial=${partial}
    start_installed=${installed}
    if [ "${start_installed}" ]
    then
      options+=("Update Starters   ${configstr}")
    else
      options+=("Install Starters  ${configstr}")
    fi
    installed=1
    partial=
    get_config_str "${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}"
    if [ "${installed}" ]
    then
      options+=("Update All        ${configstr}")
    else
      options+=("Install All       ${configstr}")
    fi
    uninstalled=()
    if [ "${have_fzf}" ]
    then
      for neovim in ${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}; do
        basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
        if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
          uninstalled+=("${basenvdir}")
        fi
      done
      numunins=${#uninstalled[@]}
      [ ${numunins} -gt 0 ] && options+=("Select and Install")
    else
      printf "\n\nConfiguration selection requires fzf but fzf is not found."
      printf "\nInstall fzf with 'lazyman -I' and verify fzf is in your PATH."
      prompt_continue
    fi
    [ "${base_installed}" ] || options+=("Select/Install Base")
    [ "${lang_installed}" ] || options+=("Select/Inst Language")
    [ "${prsnl_installed}" ] || options+=("Select/Inst Personal")
    [ "${start_installed}" ] || options+=("Select/Inst Starter")
    if [ "${USEGUI}" ]; then
      if [ "${have_neovide}" ]; then
        if alias neovides >/dev/null 2>&1; then
          [ ${numitems} -gt 1 ] && options+=("Select and Open")
        else
          options+=("Open Neovide")
          if alias nvims >/dev/null 2>&1; then
            USEGUI=
            use_gui="neovim"
            [ ${numitems} -gt 1 ] && options+=("Select and Open")
          fi
        fi
      else
        USEGUI=
        use_gui="neovim"
        options+=("Install Neovide")
        if alias nvims >/dev/null 2>&1; then
          [ ${numitems} -gt 1 ] && options+=("Select and Open")
        fi
      fi
    else
      [ "${have_neovide}" ] || {
        USEGUI=
        use_gui="neovim"
        options+=("Install Neovide")
      }
      if alias nvims >/dev/null 2>&1; then
        [ ${numitems} -gt 1 ] && options+=("Select and Open")
      fi
    fi

    [ "${base_partial}" ] && options+=("Select/Open Base")
    [ "${lang_partial}" ] && options+=("Select/Open Language")
    [ "${prsnl_partial}" ] && options+=("Select/Open Personal")
    [ "${start_partial}" ] && options+=("Select/Open Starter")

    [ ${numitems} -gt 1 ] && options+=("Select and Remove")
    [ "${base_partial}" ] && options+=("Select/Remove Base")
    [ "${lang_partial}" ] && options+=("Select/Rem Language")
    [ "${prsnl_partial}" ] && options+=("Select/Rem Personal")
    [ "${start_partial}" ] && options+=("Select/Rem Starter")
    [ "${base_partial}" ] && options+=("Remove Base")
    [ "${lang_partial}" ] && options+=("Remove Languages")
    [ "${prsnl_partial}" ] && options+=("Remove Personals")
    [ "${start_partial}" ] && options+=("Remove Starters")
    numndirs=${#ndirs[@]}
    [ ${numndirs} -gt 1 ] && {
      options+=("Remove All")
    }
    options+=("Install Tools")
    if [ "${debug}" ]; then
      options+=("Debug Mode [on]")
    else
      options+=("Debug Mode [off]")
    fi
    have_bob=$(type -p bob)
    if [ "${have_bob}" ]
    then
      used=$(bob list | grep Used | awk ' { print $2 } ')
      options+=("Neovim Ver [${used}]")
    else
      options+=("Install Bob")
      options+=(" What is Bob?")
    fi
    if [ "${have_neovide}" ]; then
      options+=("Toggle UI [${use_gui}]")
    fi
    options+=("Health Check" "Lazyman Config" "Lazyman Status")
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
        "Select/Install Base"*,* | *,"Select/Install Base"*)
          choices=()
          for neovim in ${BASECFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Base Neovim Config to Install  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            install_config "${choice}"
          fi
          break
          ;;
        "Select/Inst Language"*,* | *,"Select/Inst Language"*)
          choices=()
          for neovim in ${LANGUCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Language Neovim Config to Install  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            install_config "${choice}"
          fi
          break
          ;;
        "Select/Inst Personal"*,* | *,"Select/Inst Personal"*)
          choices=()
          for neovim in ${PRSNLCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Personal Neovim Config to Install  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            install_config "${choice}"
          fi
          break
          ;;
        "Select/Inst Starter"*,* | *,"Select/Inst Starter"*)
          choices=()
          for neovim in ${STARTCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Starter Neovim Config to Install  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            install_config "${choice}"
          fi
          break
          ;;
        "Select and Install"*,* | *,"Select and Install"*)
          choice=$(printf "%s\n" "${uninstalled[@]}" | fzf --prompt=" Install Neovim Config  " --layout=reverse --border --exit-0)
          [ "${choice}" ] && install_config "${choice}"
          break
          ;;
        "Select/Open Base"*,* | *,"Select/Open Base"*)
          choices=()
          for neovim in ${BASECFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Base Neovim Config to Open  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${USEGUI}" ]; then
              NVIM_APPNAME="nvim-${choice}" neovide
            else
              NVIM_APPNAME="nvim-${choice}" nvim
            fi
          fi
          break
          ;;
        "Select/Open Language"*,* | *,"Select/Open Language"*)
          choices=()
          for neovim in ${LANGUCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Language Neovim Config to Open  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${USEGUI}" ]; then
              NVIM_APPNAME="nvim-${choice}" neovide
            else
              NVIM_APPNAME="nvim-${choice}" nvim
            fi
          fi
          break
          ;;
        "Select/Open Personal"*,* | *,"Select/Open Personal"*)
          choices=()
          for neovim in ${PRSNLCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Personal Neovim Config to Open  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${USEGUI}" ]; then
              NVIM_APPNAME="nvim-${choice}" neovide
            else
              NVIM_APPNAME="nvim-${choice}" nvim
            fi
          fi
          break
          ;;
        "Select/Open Starter"*,* | *,"Select/Open Starter"*)
          choices=()
          for neovim in ${STARTCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Starter Neovim Config to Open  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${USEGUI}" ]; then
              NVIM_APPNAME="nvim-${choice}" neovide
            else
              NVIM_APPNAME="nvim-${choice}" nvim
            fi
          fi
          break
          ;;
        "Select/Remove Base"*,* | *,"Select/Remove Base"*)
          choices=()
          for neovim in ${BASECFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Base Neovim Config to Remove  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            lazyman -R -N "nvim-${choice}"
          fi
          break
          ;;
        "Select/Rem Language"*,* | *,"Select/Rem Language"*)
          choices=()
          for neovim in ${LANGUCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Language Neovim Config to Remove  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            lazyman -R -N "nvim-${choice}"
          fi
          break
          ;;
        "Select/Rem Personal"*,* | *,"Select/Rem Personal"*)
          choices=()
          for neovim in ${PRSNLCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Personal Neovim Config to Remove  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            lazyman -R -N "nvim-${choice}"
          fi
          break
          ;;
        "Select/Rem Starter"*,* | *,"Select/Rem Starter"*)
          choices=()
          for neovim in ${STARTCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Starter Neovim Config to Remove  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            lazyman -R -N "nvim-${choice}"
          fi
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
          printf "\n\nInstalling all Lazyman 'Base' Neovim configurations\n"
          lazyman ${darg} -B -y -z -q -Q
          break
          ;;
        "Install Language"*,* | *,"Install Language"*)
          lazyman ${darg} -L all -y -z -Q -q
          break
          ;;
        "Install Personal"*,* | *,"Install Personal"*)
          lazyman ${darg} -W -y -z -Q -q
          break
          ;;
        "Install Starter"*,* | *,"Install Starter"*)
          lazyman ${darg} -X -y -z -Q -q
          break
          ;;
        "Install All"*,* | *,"Install All"*)
          printf "\n\nInstalling all Lazyman Neovim configurations\n"
          printf "\nInstalling all Lazyman 'Base' Neovim configurations\n"
          lazyman ${darg} -B -y -z -Q -q
          lazyman ${darg} -L all -y -z -Q -q
          lazyman ${darg} -W -y -z -Q -q
          lazyman ${darg} -X -y -z -Q -q
          break
          ;;
        "Update Base"*,* | *,"Update Base"*)
          printf "\nUpdating all Lazyman 'Base' Neovim configurations\n"
          lazyman ${darg} -B -y -z -Q -q -U
          break
          ;;
        "Update Language"*,* | *,"Update Language"*)
          lazyman ${darg} -L all -y -z -Q -q -U
          break
          ;;
        "Update Personal"*,* | *,"Update Personal"*)
          lazyman ${darg} -W -y -z -Q -q -U
          break
          ;;
        "Update Starter"*,* | *,"Update Starter"*)
          lazyman ${darg} -X -y -z -Q -q -U
          break
          ;;
        "Update All"*,* | *,"Update All"*)
          printf "\nUpdating all Lazyman Neovim configurations\n"
          printf "\nUpdating all Lazyman 'Base' Neovim configurations\n"
          lazyman ${darg} -B -y -z -Q -q -U
          lazyman ${darg} -L all -y -z -Q -q -U
          lazyman ${darg} -W -y -z -Q -q -U
          lazyman ${darg} -X -y -z -Q -q -U
          break
          ;;
        "Neovim Ver"*,* | *,"Neovim Ver"*)
          versmenu=1
          break
          ;;
        " What is Bob"*,* | *," What is Bob"*)
          printf "\nBob is an easy to use cross-platform Neovim version manager,"
          printf "\nallowing switching between Neovim versions from the command line.\n"
          printf "\nFor example, with Bob you could open a Neovim configuration with"
          printf "\nthe latest stable release of Neovim and then quickly and easily"
          printf "\nreopen that same configuration using the nightly Neovim build.\n"
          printf "\nThe Bob Neovim version manager can install and manage multiple"
          printf "\nNeovim versions from the command line and has been integrated"
          printf "\ninto Lazyman via the Lazyman Menu interface for ease of use.\n"
          printf "\nSee https://github.com/MordechaiHadad/bob for more info on Bob.\n"
          prompt_continue
          break
          ;;
        "Install Bob"*,* | *,"Install Bob"*)
          if [ -x "${LMANDIR}/scripts/install_bob.sh" ]; then
            "${LMANDIR}"/scripts/install_bob.sh
          else
            if command -v "cargo" >/dev/null 2>&1; then
              printf "\n\tInstalling bob with cargo ..."
              cargo install bob >/dev/null 2>&1
              printf " done\n"
            else
              printf "\n\tCannot locate cargo. Skipping installation of bob.\n"
              prompt_continue
              break
            fi
          fi
          if [ -x ${HOME}/.cargo/bin/bob ]
          then
            have_bob="${HOME}/.cargo/bin/bob"
            export PATH=$PATH:${HOME}/.cargo/bin
          else
            have_bob=$(type -p bob)
          fi
          if [ "${have_bob}" ]
          then
            printf "\n\tThe 'bob' neovim version manager is installed as:"
            printf "\n\t\t${have_bob}"
            export PATH="${HOME}/.local/share/bob/nvim-bin${PATH:+:${PATH}}"
          else
            printf "\n\tThe 'bob' neovim version manager cannot be located."
            printf "\n\tCheck your execution PATH or reinstall bob."
            printf "\n\tSee https://github.com/MordechaiHadad/bob"
          fi
          prompt_continue
          break
          ;;
        "Install Tools"*,* | *,"Install Tools"*)
          lazyman ${darg} -I
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
          if [ "${opt}" ]; then
            nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          else
            nvimconf=$(echo ${REPLY} | awk ' { print $2 } ')
          fi
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
              prompt_continue
            fi
          fi
          break
          ;;
        "Remove Base"*,* | *,"Remove Base"*)
          printf "\nRemoving all Lazyman 'Base' Neovim configurations\n"
          lazyman -R -B -y
          break
          ;;
        "Remove Language"*,* | *,"Remove Language"*)
          printf "\nRemoving all Lazyman 'Language' Neovim configurations\n"
          lazyman -R -L all -y
          break
          ;;
        "Remove Personal"*,* | *,"Remove Personal"*)
          printf "\nRemoving all Lazyman 'Personal' Neovim configurations\n"
          lazyman -R -W -y
          break
          ;;
        "Remove Starter"*,* | *,"Remove Starter"*)
          printf "\nRemoving all Lazyman 'Starter' Neovim configurations\n"
          lazyman -R -X -y
          break
          ;;
        "Remove All"*,* | *,"Remove All"*)
          printf "\nRemoving all Lazyman Neovim configurations\n"
          for ndirm in "${ndirs[@]}"; do
            [ "${ndirm}" == "${LAZYMAN}" ] && continue
            [ "${ndirm}" == "nvim" ] && continue
            lazyman -R -N ${ndirm} -y
          done
          break
          ;;
        "Debug Mode"*,* | *,"Debug Mode"*)
          if [ "${debug}" ]; then
            debug=
            darg=
          else
            debug=1
            darg="-d"
          fi
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
        "Health Check",* | *,"Health Check")
          choices=()
          items=()
          [ -f "${LMANDIR}"/.lazymanrc ] && {
            source "${LMANDIR}"/.lazymanrc
            readarray -t choices < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
          }
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Neovim Config for Health Check  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            lazyman -N "nvim-${choice}" health
          fi
          break
          ;;
        "Lazyman Config",* | *,"Lazyman Config")
          confmenu=1
          break
          ;;
        "Lazyman Status",* | *,"Lazyman Status")
          printf "\nPreparing Lazyman status report\n"
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
          break
          ;;
      esac
      REPLY=
    done
    [ "${confmenu}" ] && {
      ${SUBMENUS} -m conf
      [ $? -eq 3 ] && exit 0
    }
    [ "${versmenu}" ] && show_vers_menu
  done
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
    configstr="🌝"
  else
    if [ "${partial}" ]; then
      configstr="🌓"
    else
      configstr="🌚"
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
    Extralight)
      startbranch="xx-light"
      ;;
    *)
      printf "\nUnrecognized nvim-starter configuration: ${nvimstarter}"
      prompt_continue
      usage
      ;;
  esac
}

all=
branch=
instnvim=1
subdir=
language=
brew=
debug=
darg=
head=
fix_help=
invoke=
confmenu=
langservers=
nvchadcustom=
tellme=
exitafter=
astronvim=
abstract=
basicide=
ecovim=
kickstart=
lazyman=
lazyvim=
lunarvim=
minivim=
magicvim=
nvchad=
nvimbase=
nvimlang=
nvimprsnl=
nvimstarter=
modern=
pde=
penguinvim=
spacevim=
plug=
packer=
treesitter=
listinstalled=
listuninstalled=
proceed=
yes=
quiet=
remove=
removeall=
runvim=1
select=
update=
custom_url=
name=
pmgr="Lazy"
lazymandir="${LAZYMAN}"
astronvimdir="nvim-AstroNvim"
abstractdir="nvim-Abstract"
basicdir="nvim-Basic"
basicidedir="nvim-BasicIde"
ecovimdir="nvim-Ecovim"
kickstartdir="nvim-Kickstart"
lazyvimdir="nvim-LazyVim"
lunarvimdir="nvim-LunarVim"
minivimdir="nvim-Mini"
onnovimdir="nvim-ONNO"
moderndir="nvim-Modern"
pdedir="nvim-PDE"
penguinvimdir="nvim-Penguin"
fix_onno="lua/tvl/core/resources/treesitter.lua"
latexvimdir="nvim-LaTeX"
fix_latex="lua/user/treesitter.lua"
menu="main"
nvchaddir="nvim-NvChad"
spacevimdir="nvim-SpaceVim"
magicvimdir="nvim-MagicVim"
basenvimdirs=("$lazyvimdir" "$magicvimdir" "$spacevimdir" "$ecovimdir" "$astronvimdir" "$nvchaddir" "$lunarvimdir" "$abstractdir" "$penguinvimdir" "$basicidedir")
neovimdir=()
[ $# -eq 1 ] && {
  [ "$1" == "-F" ] && set -- "$@" 'config'
  [ "$1" == "-U" ] && neovimdir=("${lazymandir}")
}
while getopts "aAb:BcdD:eE:f:F:gGhHiIjklmMnL:opPqQrRsStTUC:N:vV:w:Wx:XyzZu" flag; do
  case $flag in
    a)
      astronvim=1
      neovimdir=("$astronvimdir")
      ;;
    A)
      all=1
      nvimbase=1
      nvimlang="all"
      nvimprsnl="all"
      nvimstarter="all"
      quiet=1
      ;;
    B)
      all=1
      astronvim=1
      abstract=1
      basicide=1
      ecovim=1
      lazyvim=1
      lunarvim=1
      magicvim=1
      nvchad=1
      spacevim=1
      penguinvim=1
      neovimdir=("${basenvimdirs[@]}")
      ;;
    b)
      branch="$OPTARG"
      ;;
    c)
      nvchad=1
      neovimdir=("$nvchaddir")
      ;;
    d)
      debug=1
      darg="-d"
      ;;
    e)
      ecovim=1
      neovimdir=("$ecovimdir")
      ;;
    E)
      invoke="$OPTARG"
      ;;
    f)
      fix_help="$OPTARG"
      ;;
    F)
      menu="${OPTARG}"
      if [ "${menu}" ]
      then
        case "${menu}" in
          conf*|Conf*)
            menu="confmenu"
            ;;
          plug*|Plug*)
            menu="plugmenu"
            ;;
          lsp*|Lsp*|LSP*)
            menu="lspmenu"
            ;;
          for*|For*|lint*|Lint*)
            menu="formenu"
            ;;
          *)
            menu="main"
            ;;
        esac
      else
        menu="confmenu"
      fi
      ;;
    g)
      abstract=1
      neovimdir=("$abstractdir")
      ;;
    h)
      brew="-h"
      ;;
    H)
      head="-n"
      ;;
    i)
      langservers=1
      ;;
    I)
      langservers=2
      ;;
    j)
      basicide=1
      neovimdir=("$basicidedir")
      ;;
    k)
      kickstart=1
      neovimdir=("$kickstartdir")
      ;;
    l)
      lazyvim=1
      neovimdir=("$lazyvimdir")
      ;;
    L)
      language="$OPTARG"
      nvimlang="${language}"
      [ "${language}" == "all" ] || [ "${language}" == "All" ] && {
        nvimlang="all"
      }
      ;;
    m)
      magicvim=1
      neovimdir=("$magicvimdir")
      ;;
    M)
      minivim=1
      neovimdir=("$minivimdir")
      ;;
    n)
      tellme=1
      ;;
    o)
      penguinvim=1
      neovimdir=("$penguinvimdir")
      ;;
    p)
      plug=1
      pmgr="Plug"
      ;;
    P)
      packer=1
      pmgr="Packer"
      ;;
    Q)
      exitafter=1
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
      neovimdir=("$spacevimdir")
      ;;
    t)
      listinstalled=1
      ;;
    T)
      listuninstalled=1
      ;;
    S)
      select=1
      ;;
    C)
      custom_url="$OPTARG"
      ;;
    D)
      subdir="$OPTARG"
      ;;
    G)
      treesitter=1
      pmgr="Treesitter"
      ;;
    N)
      name="$OPTARG"
      ;;
    U)
      update=1
      ;;
    V)
      nvchadcustom="$OPTARG"
      ;;
    v)
      lunarvim=1
      neovimdir=("$lunarvimdir")
      ;;
    w)
      nvimprsnl="$OPTARG"
      [ "${nvimprsnl}" == "All" ] && nvimprsnl="all"
      [ "${nvimprsnl}" == "all" ] && quiet=1
      ;;
    W)
      nvimprsnl="all"
      quiet=1
      ;;
    x)
      nvimstarter="$OPTARG"
      ;;
    X)
      nvimstarter="all"
      quiet=1
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

[ "$1" == "init" ] && {
  initdir="nvim-Lazyman"
  [ "$name" ] && initdir="$name"
  init_neovim ${initdir}
  exit 0
}

[ "$1" == "install" ] && {
  select_install
  exit 0
}

[ "$1" == "open" ] && {
  select_open
  exit 0
}

[ "$1" == "remove" ] && {
  select_remove
  exit 0
}

[ "$1" == "health" ] && {
  checkdir="nvim-Lazyman"
  [ "$name" ] && checkdir="$name"
  printf "\nPreparing Lazyman health check for ${checkdir} Neovim configuration\n"
  show_health "${checkdir}"
  exit 0
}

[ "$1" == "status" ] && {
  printf "\nPreparing Lazyman status report\n"
  show_info
  exit 0
}

[ "${listinstalled}" ] || [ "${listuninstalled}" ] && {
  [ "${listinstalled}" ] && list_installed
  [ "${listuninstalled}" ] && list_uninstalled
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

[ "$nvimbase" ] && {
  yesflag="-Q"
  [ "${proceed}" ] && yesflag="-Q -y"
  debugflag=
  [ "${debug}" ] && debugflag="-d"
  if [ "$remove" ]; then
    lazyman -R -B ${debugflag} ${yesflag}
  else
    if [ "${update}" ]
    then
      printf "\n\nUpdating all installed Base Neovim configurations."
      lazyman -B -U -q -z ${debugflag} ${yesflag}
    else
      printf "\n\nInstalling and initializing all Base Neovim configurations."
      lazyman -B -q -z ${debugflag} ${yesflag}
    fi
  fi
}

[ "$nvimlang" ] && {
  if [ "$remove" ]; then
    if [ "${nvimlang}" == "all" ]; then
      for neovim in ${LANGUCFGS}; do
        remove_config "nvim-${neovim}"
      done
    else
      remove_config "nvim-${nvimlang}"
    fi
  else
    if [ "${nvimlang}" == "all" ]; then
      printf "\n\nInstalling/Updating all Language Neovim configurations."
    else
      printf "\n\nInstalling/Updating ${nvimlang} Language Neovim configuration."
    fi
    yesflag="-Q"
    [ "${proceed}" ] && yesflag="-Q -y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${nvimlang}" == "all" ]; then
      action="Installing"
      [ -d ${HOME}/.config/nvim-Go ] && action="Updating"
      printf "\n${action} Go Neovim configuration ..."
      lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-go-config \
        -b main -N nvim-Go ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Go"
      action="Installing"
      [ -d ${HOME}/.config/nvim-LaTeX ] && action="Updating"
      printf "\n${action} LaTeX Neovim configuration ..."
      lazyman ${darg} -C https://github.com/benbrastmckie/.config -D nvim \
        -N nvim-LaTeX -f "${fix_latex}" -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-LaTeX"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Python ] && action="Updating"
      printf "\n${action} Python Neovim configuration ..."
      lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-python \
        -b main -N nvim-Python ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Python"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Rust ] && action="Updating"
      printf "\n${action} Rust Neovim configuration ..."
      lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-rust \
        -b main -N nvim-Rust ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Rust"
      action="Installing"
      [ -d ${HOME}/.config/nvim-SaleVim ] && action="Updating"
      printf "\n${action} SaleVim Neovim configuration ..."
      lazyman ${darg} -C https://github.com/igorcguedes/SaleVim \
        -N nvim-SaleVim -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-SaleVim"
    else
      lang_url=
      lang_dir=
      lang_opt=
      help_opt=
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimlang} in
        Go)
          lang_url="-V https://github.com/dreamsofcode-io/neovim-go-config"
          lang_opt="-b main"
          ;;
        LaTeX)
          lang_url="-C https://github.com/benbrastmckie/.config"
          lang_opt="-P"
          lang_dir="-D nvim"
          help_opt="-f ${fix_latex}"
          ;;
        Python)
          lang_url="-V https://github.com/dreamsofcode-io/neovim-python"
          lang_opt="-b main"
          ;;
        Rust)
          lang_url="-V https://github.com/dreamsofcode-io/neovim-rust"
          lang_opt="-b main"
          ;;
        SaleVim)
          lang_url="-C https://github.com/igorcguedes/SaleVim"
          lang_opt="-P"
          ;;
        *)
          printf "\nUnrecognized language configuration: ${nvimlang}"
          prompt_continue
          usage
          ;;
      esac
      action="Installing"
      [ -d ${HOME}/.config/nvim-${nvimlang} ] && action="Updating"
      printf "\n${action} ${nvimlang} Neovim configuration ..."
      lazyman ${darg} ${lang_url} -N nvim-${nvimlang} ${lang_dir} \
        ${lang_opt} ${help_opt} ${quietflag} ${runflag} ${yesflag}
      printf " done"
    fi
  fi
}

[ "$nvimprsnl" ] && {
  if [ "$remove" ]; then
    if [ "${nvimprsnl}" == "all" ]; then
      for neovim in ${PRSNLCFGS}; do
        remove_config "nvim-${neovim}"
      done
    else
      remove_config "nvim-${nvimprsnl}"
    fi
  else
    printf "\n\nInstalling/Updating all Personal Neovim configurations."
    yesflag="-Q"
    [ "${proceed}" ] && yesflag="-Q -y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${nvimprsnl}" == "all" ]; then
      action="Installing"
      [ -d ${HOME}/.config/nvim-Mini ] && action="Updating"
      printf "\n${action} Mini Neovim configuration ..."
      lazyman ${darg} -M ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Mini"
      action="Installing"
      [ -d ${HOME}/.config/nvim-AlanVim ] && action="Updating"
      printf "\n${action} AlanVim Neovim configuration ..."
      lazyman ${darg} -b main -C https://github.com/alanRizzo/dot-files \
        -D nvim -N nvim-AlanVim -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-AlanVim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-3rd ] && action="Updating"
      printf "\n${action} 3rd Neovim configuration ..."
      lazyman ${darg} -C https://github.com/3rd/config \
        -D home/dotfiles/nvim -N nvim-3rd ${quietflag} -z ${yesflag}
      for symlink in plugins/syslang/queries/syslang linters/eslint
      do
        [ -L ${HOME}/.config/nvim-3rd/${symlink} ] && {
          [ -e ${HOME}/.config/nvim-3rd/${symlink} ] || {
            rm -f ${HOME}/.config/nvim-3rd/${symlink}
          }
        }
      done
      printf " done"
      show_alias "nvim-3rd"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Charles ] && action="Updating"
      printf "\n${action} Charles Neovim configuration ..."
      lazyman ${darg} -C https://github.com/CharlesChiuGit/nvimdots.lua \
        -N nvim-Charles ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Charles"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Magidc ] && action="Updating"
      printf "\n${action} Magidc Neovim configuration ..."
      lazyman ${darg} -C https://github.com/magidc/nvim-config \
        -N nvim-Magidc ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Magidc"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Ember ] && action="Updating"
      printf "\n${action} Ember Neovim configuration ..."
      lazyman ${darg} -b main -C https://github.com/danlikestocode/embervim \
        -D nvim -N nvim-Ember ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Ember"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Knvim ] && action="Updating"
      printf "\n${action} Knvim Neovim configuration ..."
      lazyman ${darg} -C https://github.com/knmac/knvim \
        -N nvim-Knvim ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Knvim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Fennel ] && action="Updating"
      printf "\n${action} Fennel Neovim configuration ..."
      lazyman ${darg} -C https://github.com/jhchabran/nvim-config \
        -N nvim-Fennel -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Fennel"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Adib ] && action="Updating"
      printf "\n${action} Adib Neovim configuration ..."
      lazyman ${darg} -C https://github.com/adibhanna/nvim \
        -N nvim-Adib ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Adib"
      action="Installing"
      [ -d ${HOME}/.config/nvim-ONNO ] && action="Updating"
      printf "\n${action} ONNO Neovim configuration ..."
      lazyman ${darg} -C https://github.com/loctvl842/nvim -N nvim-ONNO \
        -f "${fix_onno}" ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-ONNO"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Optixal ] && action="Updating"
      printf "\n${action} Optixal Neovim configuration ..."
      lazyman ${darg} -C https://github.com/Optixal/neovim-init.vim \
        -N nvim-Optixal -p ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Optixal"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Plug ] && action="Updating"
      printf "\n${action} Plug Neovim configuration ..."
      lazyman ${darg} -C https://github.com/doctorfree/nvim-plug \
        -N nvim-Plug -p ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Plug"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Heiker ] && action="Updating"
      printf "\n${action} VonHeikemen Neovim configuration ..."
      lazyman ${darg} -C https://github.com/VonHeikemen/dotfiles \
        -D my-configs/neovim -N nvim-Heiker ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Heiker"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Roiz ] && action="Updating"
      printf "\n${action} Roiz Neovim configuration ..."
      lazyman ${darg} -C https://github.com/MrRoiz/rnvim \
        -N nvim-Roiz ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Roiz"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Simple ] && action="Updating"
      printf "\n${action} Simple Neovim configuration ..."
      lazyman ${darg} -C https://github.com/anthdm/.nvim \
        -N nvim-Simple -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Simple"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Allaman ] && action="Updating"
      printf "\n${action} Allaman Neovim configuration ..."
      lazyman ${darg} -C https://github.com/Allaman/nvim \
        -N nvim-Allaman ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Allaman"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Brain ] && action="Updating"
      printf "\n${action} Brain Neovim configuration ..."
      lazyman ${darg} -b main -C https://github.com/brainfucksec/neovim-lua \
        -N nvim-Brain -D nvim ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Brain"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Elianiva ] && action="Updating"
      printf "\n${action} Elianiva Neovim configuration ..."
      lazyman ${darg} -C https://github.com/elianiva/dotfiles \
        -D nvim/.config/nvim -N nvim-Elianiva ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Elianiva"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Josean ] && action="Updating"
      printf "\n${action} Josean Neovim configuration ..."
      lazyman ${darg} -C https://github.com/josean-dev/dev-environment-files \
        -b main -D .config/nvim -N nvim-Josean -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Josean"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Nv ] && action="Updating"
      printf "\n${action} Nv Neovim configuration ..."
      lazyman ${darg} -C https://github.com/appelgriebsch/Nv \
        -N nvim-Nv ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Nv"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Rafi ] && action="Updating"
      printf "\n${action} Rafi Neovim configuration ..."
      lazyman ${darg} -C https://github.com/rafi/vim-config \
        -N nvim-Rafi ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Rafi"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Slydragonn ] && action="Updating"
      printf "\n${action} Slydragonn Neovim configuration ..."
      lazyman ${darg} -b main -C https://github.com/slydragonn/dotfiles \
        -D '.config/nvim' -N nvim-Slydragonn -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Slydragonn"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Traap ] && action="Updating"
      printf "\n${action} Traap Neovim configuration ..."
      lazyman ${darg} -C https://github.com/Traap/nvim \
        -N nvim-Traap ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Traap"
    else
      prsnl_url=
      prsnl_dir=
      prsnl_opt=
      help_opt=
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimprsnl} in
        3rd)
          prsnl_url="https://github.com/3rd/config"
          prsnl_dir="-D home/dotfiles/nvim"
          ;;
        AlanVim)
          prsnl_url="https://github.com/alanRizzo/dot-files"
          prsnl_opt="-b main -P"
          prsnl_dir="-D nvim"
          ;;
        Allaman)
          prsnl_url="https://github.com/Allaman/nvim"
          ;;
        Brain)
          prsnl_url="https://github.com/brainfucksec/neovim-lua"
          prsnl_dir="-D nvim"
          ;;
        Elianiva)
          prsnl_url="https://github.com/elianiva/dotfiles"
          prsnl_dir="-D nvim/.config/nvim"
          ;;
        Josean)
          prsnl_url="https://github.com/josean-dev/dev-environment-files"
          prsnl_opt="-b main -P"
          prsnl_dir="-D .config/nvim"
          ;;
        Nv)
          prsnl_url="https://github.com/appelgriebsch/Nv"
          ;;
        Rafi)
          prsnl_url="https://github.com/rafi/vim-config"
          ;;
        Slydragonn)
          prsnl_url="https://github.com/slydragonn/dotfiles"
          prsnl_opt="-P"
          prsnl_dir="-D .config/nvim"
          ;;
        Traap)
          prsnl_url="https://github.com/Traap/nvim"
          ;;
        Charles)
          prsnl_url="https://github.com/CharlesChiuGit/nvimdots.lua"
          ;;
        Magidc)
          prsnl_url="https://github.com/magidc/nvim-config"
          ;;
        Mini)
          prsnl_url="https://github.com/echasnovski/nvim"
          ;;
        Adib)
          prsnl_url="https://github.com/adibhanna/nvim"
          ;;
        Knvim)
          prsnl_url="https://github.com/knmac/knvim"
          ;;
        Roiz)
          prsnl_url="https://github.com/MrRoiz/rnvim"
          ;;
        Fennel)
          prsnl_url="https://github.com/jhchabran/nvim-config"
          prsnl_opt="-P"
          ;;
        ONNO)
          prsnl_url="https://github.com/loctvl842/nvim"
          help_opt="-f ${fix_onno}"
          ;;
        Ember)
          prsnl_url="https://github.com/danlikestocode/embervim"
          prsnl_opt="-b main"
          prsnl_dir="-D nvim"
          ;;
        Optixal)
          prsnl_url="https://github.com/Optixal/neovim-init.vim"
          prsnl_opt="-p"
          ;;
        Plug)
          prsnl_url="https://github.com/doctorfree/nvim-plug"
          prsnl_opt="-p"
          ;;
        Heiker)
          prsnl_url="https://github.com/VonHeikemen/dotfiles"
          prsnl_dir="-D my-configs/neovim"
          ;;
        Simple)
          prsnl_url="https://github.com/anthdm/.nvim"
          prsnl_opt="-P"
          ;;
        *)
          printf "\nUnrecognized personal configuration: ${nvimprsnl}"
          prompt_continue
          usage
          ;;
      esac
      action="Installing"
      [ -d ${HOME}/.config/nvim-${nvimprsnl} ] && action="Updating"
      printf "\n${action} ${nvimprsnl} Neovim configuration ..."
      lazyman ${darg} -C ${prsnl_url} -N nvim-${nvimprsnl} ${prsnl_dir} \
        ${prsnl_opt} ${help_opt} ${quietflag} ${runflag} ${yesflag}
      printf " done"
    fi
  fi
}

[ "$nvimstarter" ] && {
  if [ "$remove" ]; then
    if [ "${nvimstarter}" == "all" ]; then
      for neovim in ${STARTCFGS}; do
        remove_config "nvim-${neovim}"
      done
    else
      remove_config "nvim-${nvimstarter}"
    fi
  else
    printf "\n\nInstalling/Updating all Starter Neovim configurations."
    yesflag="-Q"
    [ "${proceed}" ] && yesflag="-Q -y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${nvimstarter}" == "all" ]; then
      for neovim in ${MINIMCFGS}; do
        startbranch=
        set_starter_branch "${neovim}"
        [ "${startbranch}" ] || usage
        action="Installing"
        [ -d ${HOME}/.config/nvim-${neovim} ] && action="Updating"
        printf "\n${action} nvim-starter ${neovim} Neovim configuration ..."
        lazyman ${darg} -C https://github.com/VonHeikemen/nvim-starter \
          -N nvim-${neovim} -b ${startbranch} ${quietflag} -z ${yesflag}
        printf " done"
        show_alias "nvim-${neovim}"
      done
      action="Installing"
      [ -d ${HOME}/.config/nvim-Basic ] && action="Updating"
      printf "\n${action} Basic Neovim configuration ..."
      lazyman ${darg} -C https://github.com/NvChad/basic-config \
        -N nvim-Basic ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Basic"
      updflag=
      [ -d ${HOME}/.config/nvim-Kickstart ] && updflag="-U"
      lazyman ${darg} -k ${quietflag} -z ${yesflag} ${updflag}
      show_alias "nvim-Kickstart"
      action="Installing"
      [ -d ${HOME}/.config/nvim-CodeArt ] && action="Updating"
      printf "\n${action} CodeArt Neovim configuration ..."
      lazyman ${darg} -C https://github.com/artart222/CodeArt \
        -N nvim-CodeArt ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-CodeArt"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Cosmic ] && action="Updating"
      printf "\n${action} Cosmic Neovim configuration ..."
      lazyman ${darg} -C https://github.com/CosmicNvim/CosmicNvim \
        -N nvim-Cosmic ${quietflag} -z ${yesflag}
      CMICDIR="${HOME}"/.config/nvim-Cosmic/lua/cosmic/config
      [ -f "${CMICDIR}"/config.lua ] || {
        [ -f "${CMICDIR}"/examples/config.lua ] && {
          cp "${CMICDIR}"/examples/config.lua "${CMICDIR}"/config.lua
        }
      }
      [ -f "${CMICDIR}"/editor.lua ] || {
        [ -f "${CMICDIR}"/examples/editor.lua ] && {
          cp "${CMICDIR}"/examples/editor.lua "${CMICDIR}"/editor.lua
        }
      }
      printf " done"
      show_alias "nvim-Cosmic"
      action="Installing"
      [ -d ${HOME}/.config/nvim-NvPak ] && action="Updating"
      printf "\n${action} NvPak Neovim configuration ..."
      lazyman ${darg} -C https://github.com/Pakrohk-DotFiles/NvPak.git \
        -N nvim-NvPak ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-NvPak"
      action="Installing"
      [ -d ${HOME}/.config/nvim-HardHacker ] && action="Updating"
      printf "\n${action} HardHacker Neovim configuration ..."
      lazyman ${darg} -C https://github.com/hardhackerlabs/oh-my-nvim \
        -N nvim-HardHacker ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-HardHacker"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Modern ] && action="Updating"
      printf "\n${action} Modern Neovim configuration ..."
      lazyman ${darg} -C https://github.com/alpha2phi/modern-neovim \
        -N nvim-Modern ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Modern"
      action="Installing"
      [ -d ${HOME}/.config/nvim-PDE ] && action="Updating"
      printf "\n${action} PDE Neovim configuration ..."
      lazyman ${darg} -C https://github.com/alpha2phi/neovim-pde \
        -N nvim-PDE ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-PDE"
    else
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimstarter} in
        Basic)
          action="Installing"
          [ -d ${HOME}/.config/nvim-Basic ] && action="Updating"
          printf "\n${action} Basic Neovim configuration ..."
          lazyman ${darg} -C https://github.com/NvChad/basic-config \
            -N nvim-Basic ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-Basic"
          ;;
        Kickstart)
          action="Installing"
          [ -d ${HOME}/.config/nvim-Kickstart ] && action="Updating"
          printf "\n${action} Kickstart Neovim configuration ..."
          lazyman ${darg} -k ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-Kickstart"
          ;;
        CodeArt)
          action="Installing"
          [ -d ${HOME}/.config/nvim-CodeArt ] && action="Updating"
          printf "\n${action} CodeArt Neovim configuration ..."
          lazyman ${darg} -C https://github.com/artart222/CodeArt \
            -N nvim-CodeArt ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-CodeArt"
          ;;
        Cosmic)
          action="Installing"
          [ -d ${HOME}/.config/nvim-Cosmic ] && action="Updating"
          printf "\n${action} Cosmic Neovim configuration ..."
          lazyman ${darg} -C https://github.com/CosmicNvim/CosmicNvim \
            -N nvim-Cosmic ${quietflag} -z ${yesflag}
          CMICDIR="${HOME}"/.config/nvim-Cosmic/lua/cosmic/config
          [ -f "${CMICDIR}"/config.lua ] || {
            [ -f "${CMICDIR}"/examples/config.lua ] && {
              cp "${CMICDIR}"/examples/config.lua "${CMICDIR}"/config.lua
            }
          }
          [ -f "${CMICDIR}"/editor.lua ] || {
            [ -f "${CMICDIR}"/examples/editor.lua ] && {
              cp "${CMICDIR}"/examples/editor.lua "${CMICDIR}"/editor.lua
            }
          }
          printf " done"
          show_alias "nvim-Cosmic"
          ;;
        NvPak)
          action="Installing"
          [ -d ${HOME}/.config/nvim-NvPak ] && action="Updating"
          printf "\n${action} NvPak Neovim configuration ..."
          lazyman ${darg} -C https://github.com/Pakrohk-DotFiles/NvPak.git \
            -N nvim-NvPak ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-NvPak"
          ;;
        HardHacker)
          action="Installing"
          [ -d ${HOME}/.config/nvim-HardHacker ] && action="Updating"
          printf "\n${action} HardHacker Neovim configuration ..."
          lazyman ${darg} -C https://github.com/hardhackerlabs/oh-my-nvim \
            -N nvim-HardHacker ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-HardHacker"
          ;;
        Modern)
          action="Installing"
          [ -d ${HOME}/.config/nvim-Modern ] && action="Updating"
          printf "\n${action} Modern Neovim configuration ..."
          lazyman ${darg} -C https://github.com/alpha2phi/modern-neovim \
            -N nvim-Modern ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-Modern"
          ;;
        PDE)
          action="Installing"
          [ -d ${HOME}/.config/nvim-PDE ] && action="Updating"
          printf "\n${action} PDE Neovim configuration ..."
          lazyman ${darg} -C https://github.com/alpha2phi/neovim-pde \
            -N nvim-PDE ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-PDE"
          ;;
        *)
          startbranch=
          set_starter_branch "${nvimstarter}"
          [ "${startbranch}" ] || usage
          action="Installing"
          [ -d ${HOME}/.config/nvim-${nvimstarter} ] && action="Updating"
          printf "\n${action} nvim-starter ${nvimstarter} Neovim configuration ..."
          lazyman ${darg} -C https://github.com/VonHeikemen/nvim-starter \
            -N nvim-${nvimstarter} -b ${startbranch} \
            ${quietflag} ${runflag} ${yesflag}
          printf " done"
          ;;
      esac
    fi
  fi
  printf "\n"
}

[ "$langservers" ] && {
  [ "${instnvim}" ] || {
    printf "\n\n-I/-i and -Z are incompatible options."
    printf "\nThe '-I' or '-i' option indicates install tools."
    printf "\nThe '-Z' option indicates do not install tools."
    brief_usage
  }
  if [ -x "${LMANDIR}/scripts/install_neovim.sh" ]; then
    if [ $langservers -eq 2 ]; then
      "${LMANDIR}"/scripts/install_neovim.sh -a $darg $head $brew $yes
    else
      "${LMANDIR}"/scripts/install_neovim.sh $darg $head $brew $yes
    fi
    exit 0
  fi
  exit 1
}

[ "$custom_url" ] && {
  [ "$name" ] || {
    printf "\nERROR: '-C url' must be accompanied with '-N nvimdir'\n"
    brief_usage
  }
}
[ "$nvchadcustom" ] && {
  [ "$name" ] || {
    printf "\nERROR: '-V url' must be accompanied with '-N nvimdir'\n"
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
  [ "$abstract" ] && numvim=$((numvim + 1))
  [ "$basicide" ] && numvim=$((numvim + 1))
  [ "$ecovim" ] && numvim=$((numvim + 1))
  [ "$kickstart" ] && numvim=$((numvim + 1))
  [ "$lazyvim" ] && numvim=$((numvim + 1))
  [ "$lazyman" ] && numvim=$((numvim + 1))
  [ "$lunarvim" ] && numvim=$((numvim + 1))
  [ "$magicvim" ] && numvim=$((numvim + 1))
  [ "$minivim" ] && numvim=$((numvim + 1))
  [ "$nv" ] && numvim=$((numvim + 1))
  [ "$nvchad" ] && numvim=$((numvim + 1))
  [ "$modern" ] && numvim=$((numvim + 1))
  [ "$pde" ] && numvim=$((numvim + 1))
  [ "$penguinvim" ] && numvim=$((numvim + 1))
  [ "$spacevim" ] && numvim=$((numvim + 1))
  [ "$numvim" -gt 1 ] && {
    printf "\nERROR: multiple Neovim configs cannot be used with '-N nvimdir'\n"
    brief_usage
  }
  [ "$astronvim" ] && astronvimdir="$name"
  [ "$abstract" ] && astronvimdir="$name"
  [ "$basicide" ] && basicidedir="$name"
  [ "$ecovim" ] && ecovimdir="$name"
  [ "$kickstart" ] && kickstartdir="$name"
  [ "$lazyman" ] && lazymandir="$name"
  [ "$lazyvim" ] && lazyvimdir="$name"
  [ "$lunarvim" ] && lunarvimdir="$name"
  [ "$magicvim" ] && magicvimdir="$name"
  [ "$minivim" ] && minivimdir="$name"
  [ "$nvchad" ] && nvchaddir="$name"
  [ "$modern" ] && moderndir="$name"
  [ "$pde" ] && pdedir="$name"
  [ "$penguinvim" ] && penguinvimdir="$name"
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
    abstract)
      ndir="$abstractdir"
      ;;
    basic)
      ndir="$basicdir"
      ;;
    basicide)
      ndir="$basicidedir"
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
    minivim)
      ndir="$minivimdir"
      ;;
    nv)
      ndir="$nvdir"
      ;;
    nvchad)
      ndir="$nvchaddir"
      ;;
    magicvim)
      ndir="$magicvimdir"
      ;;
    modern)
      ndir="$moderndir"
      ;;
    pde)
      ndir="$pdedir"
      ;;
    penguinvim)
      ndir="$penguinvimdir"
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

[ "$name" ] && neovimdir=("$name")

[ "$remove" ] && {
  for neovim in "${neovimdir[@]}"; do
    [ "${all}" ] && [ "${neovim}" == "${lazymandir}" ] && continue
    remove_config "$neovim"
  done
  [ "${all}" ] && {
    cat "${NVIMDIRS}" | while read nvimdir
    do
      [ "${nvimdir}" == "${lazymandir}" ] && continue
      remove_config "$nvimdir"
    done
  }
  exit 0
}

[ "$update" ] && {
  [ ${#neovimdir[@]} -eq 0 ] || {
    for neovim in "${neovimdir[@]}"; do
      update_config "$neovim"
      [ "$tellme" ] || init_neovim "$neovim"
    done
  }
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
numvimdirs=${#neovimdir[@]}
[ ${numvimdirs} -eq 0 ] && {
  neovimdir=("${lazymandir}")
  [ -f "${LMANDIR}/.initialized" ] && interactive=1
}
if [ -d "${LMANDIR}" ]; then
  [ "$branch" ] && {
    git -C "${LMANDIR}" checkout "$branch" >/dev/null 2>&1
  }
  [ -d "${HOME}/.local/share/${lazymandir}" ] || interactive=
  [ -f "${LMANDIR}/.initialized" ] && instnvim=
else
  [ "$quiet" ] || {
    printf "\nCloning ${LAZYMAN} configuration into"
    printf "\n\t${LMANDIR} ... "
  }
  [ "$tellme" ] || {
    git clone https://github.com/doctorfree/nvim-lazyman \
      "${LMANDIR}" >/dev/null 2>&1
    [ "$branch" ] && {
      git -C "${LMANDIR}" checkout "$branch" >/dev/null 2>&1
    }
  }
  [ "$quiet" ] || printf "done"
  interactive=
fi
# Always make sure nvim-Lazyman is in .nvimdirs
[ "$tellme" ] || {
  add_nvimdirs_entry "${lazymandir}"
}

# Stash original config for future reset
[ -f ${CONFBACK} ] || {
  cp ${NVIMCONF} ${CONFBACK}
}

# Increase user limits before kicking off Neovim install script
currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]; then
  [ "$tellme" ] || ulimit -n 4096
else
  [ "$tellme" ] || ulimit -n "$hardlimit"
fi

[ "${instnvim}" ] && {
  if [ -x "${LMANDIR}/scripts/install_neovim.sh" ]; then
    "${LMANDIR}"/scripts/install_neovim.sh \
      $darg $head $brew $yes
    have_nvim=$(type -p nvim)
    [ "$have_nvim" ] || {
      printf "\nERROR: cannot locate neovim."
      printf "\nHomebrew install failure, manual debug required."
      printf "\n\t'brew update && lazyman -d'."
      printf "\nNeovim 0.9 or later required. Install and retry. Exiting.\n"
      brief_usage
    }
  else
    printf "\n${LMANDIR}/scripts/install_neovim.sh not executable"
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

[ "${all}" ] && printf "\nCloning Neovim configuration repositories ..."
[ "$abstract" ] && {
  clone_repo Abstract Abstract-IDE/Abstract "$abstractdir"
}
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
[ "$basicide" ] && {
  clone_repo BasicIde LunarVim/nvim-basic-ide "$basicidedir"
}
[ "$ecovim" ] && {
  clone_repo Ecovim ecosse3/nvim "$ecovimdir"
}
[ "$kickstart" ] && {
  clone_repo Kickstart nvim-lua/kickstart.nvim "$kickstartdir"
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
  # Replace references to /nvim/ with /$lunarvimdir/
  fix_nvim_dir "${lunarvimdir}"
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
      # Replace references to /nvim/ with /$magicvimdir/
      fix_nvim_dir "${magicvimdir}"
    }
    [ "$quiet" ] || printf "done"
  }
}
[ "$minivim" ] && {
  [ -d "${HOME}/.config/$minivimdir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning Mini configuration into"
      printf "\n\t${HOME}/.config/${minivimdir} ... "
    }
    [ "$tellme" ] || {
      git clone \
        https://github.com/echasnovski/nvim \
        "${HOME}/.config/${minivimdir}" >/dev/null 2>&1
      # Replace references to /nvim/ with /$minivimdir/
      fix_nvim_dir "${minivimdir}"
      git -C "${HOME}/.config/${minivimdir}" submodule update \
        --init --recursive >/dev/null 2>&1
      add_nvimdirs_entry "$minivimdir"
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
      # Replace references to /nvim/ with /$nvchaddir/
      fix_nvim_dir "${nvchaddir}"
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
[ "$modern" ] && {
  clone_repo Modern alpha2phi/modern-neovim "$moderndir"
}
[ "$pde" ] && {
  clone_repo PDE alpha2phi/neovim-pde "$pdedir"
}
[ "$penguinvim" ] && {
  clone_repo Penguin p3nguin-kun/penguinVim "$penguinvimdir"
}
[ "$spacevim" ] && {
  clone_repo SpaceVim SpaceVim/SpaceVim "$spacevimdir"
  [ -d "${SPDIR}" ] || {
    [ "$quiet" ] || {
      printf "\nAdding custom SpaceVim configuration into"
      printf "\n\t${SPDIR} ... "
    }
    [ "$tellme" ] || {
      [ -d "${HOME}"/.vim_backups ] || mkdir -p "${HOME}"/.vim_backups
      git clone https://github.com/doctorfree/spacevim "${SPDIR}" >/dev/null 2>&1
    }
    [ "$quiet" ] || printf "done"
  }
}
[ "${all}" ] && printf " done"
[ "$custom_url" ] && {
  if [ -d "${HOME}/.config/${neovimdir[0]}" ]; then
    update=1
    [ "$quiet" ] || {
      printf "\nThe directory ${HOME}/.config/${neovimdir[0]} already exists."
    }
  else
    [ "$quiet" ] || {
      printf "\nCloning ${custom_url} into"
      printf "\n\t${HOME}/.config/${neovimdir[0]} ... "
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
        git remote add -f origin ${custom_url} >/dev/null 2>&1
        git config core.sparseCheckout true >/dev/null 2>&1
        [ -d .git/info ] || mkdir -p .git/info
        echo "${subdir}" >>.git/info/sparse-checkout
        git pull origin ${branch} >/dev/null 2>&1
        cd || exit
        mv "/tmp/lazyman$$/${subdir}" "${HOME}/.config/${neovimdir[0]}"
        rm -rf "/tmp/lazyman$$"
      else
        git clone \
          "${custom_url}" "${HOME}/.config/${neovimdir[0]}" >/dev/null 2>&1
        [ "$branch" ] && {
          git -C "${HOME}/.config/${neovimdir[0]}" checkout "$branch" >/dev/null 2>&1
        }
      fi
      [ -f ${HOME}/.config/${neovimdir[0]}/lua/user/env.sample ] && {
        [ -f ${HOME}/.config/${neovimdir[0]}/lua/user/env.lua ] || {
          cp ${HOME}/.config/${neovimdir[0]}/lua/user/env.sample \
            ${HOME}/.config/${neovimdir[0]}/lua/user/env.lua
        }
      }
      # Replace references to /nvim/ with /$neovimdir[0]/
      fix_nvim_dir "${neovimdir[0]}"
      add_nvimdirs_entry "${neovimdir[0]}"
    }
    [ "$quiet" ] || printf "done"
  fi
}
# -V
[ "$nvchadcustom" ] && {
  if [ -d "${HOME}/.config/${neovimdir[0]}" ]; then
    update=1
    [ "$quiet" ] || {
      printf "\nThe directory ${HOME}/.config/${neovimdir[0]} already exists."
    }
  else
    [ "$quiet" ] || {
      printf "\nCloning ${nvchadcustom} into"
      printf "\n\t${HOME}/.config/${neovimdir[0]} ... "
    }
    [ "$tellme" ] || {
      git clone https://github.com/NvChad/NvChad \
          "${HOME}/.config/${neovimdir[0]}" --depth 1 >/dev/null 2>&1
      if [ "${subdir}" ]; then
        [ "${branch}" ] || branch="master"
        # Perform some git tricks here to retrieve a repo subdirectory
        mkdir /tmp/lazyman$$
        git -C /tmp/lazyman$$ init >/dev/null 2>&1
        git -C /tmp/lazyman$$ remote add -f origin ${nvchadcustom} >/dev/null 2>&1
        git -C /tmp/lazyman$$ config core.sparseCheckout true >/dev/null 2>&1
        [ -d /tmp/lazyman$$/.git/info ] || mkdir -p /tmp/lazyman$$/.git/info
        echo "${subdir}" >>/tmp/lazyman$$/.git/info/sparse-checkout
        git -C /tmp/lazyman$$ pull origin ${branch} >/dev/null 2>&1
        mv "/tmp/lazyman$$/${subdir}" "${HOME}/.config/${neovimdir[0]}"/lua/custom
        rm -rf "/tmp/lazyman$$"
      else
        git clone "${nvchadcustom}" \
            "${HOME}/.config/${neovimdir[0]}"/lua/custom >/dev/null 2>&1
        [ "$branch" ] && {
          git -C "${HOME}/.config/${neovimdir[0]}/lua/custom" \
            checkout "$branch" >/dev/null 2>&1
        }
      fi
      # Replace references to /nvim/ with /$neovimdir[0]/
      fix_nvim_dir "${neovimdir[0]}"
      add_nvimdirs_entry "${neovimdir[0]}"
    }
    [ "$quiet" ] || printf "done"
  fi
}

# Apply any patch we have created for this config
[ -f "${LMANDIR}"/scripts/patches/${neovimdir[0]}.patch ] && {
  [ -x "${LMANDIR}"/scripts/patch_config.sh ] && {
    "${LMANDIR}"/scripts/patch_config.sh "${neovimdir[0]}"
  }
}
[ "${fix_help}" ] && {
  fix_help_file "${HOME}/.config/${neovimdir[0]}/${fix_help}"
}

[ "${interactive}" ] || {
  for neovim in "${neovimdir[@]}"; do
    [ "${update}" ] || {
      if [[ " ${basenvimdirs[*]} " =~ " ${neovim} " ]]; then
        pm="$pmgr"
        [ "$neovim" == "$spacevimdir" ] && pm="SP"
        [ "$neovim" == "$magicvimdir" ] && pm="Packer"
        printf "\nInitializing ${neovim} Neovim configuration with ${pm}"
      fi
    }
    [ "$tellme" ] || init_neovim "$neovim"
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
    printf "\n\texport NVIM_APPNAME=\"${neovimdir[0]}\"\n"
  fi
  printf "\nTo easily switch between lazyman installed Neovim configurations,"
  printf "\nshell aliases and the 'nvims' and 'neovides' commands have been created."
  [ -f "${LMANDIR}"/.lazymanrc ] && source "${LMANDIR}"/.lazymanrc
  if ! alias nvims >/dev/null 2>&1; then
    printf "\nTo activate these aliases and the 'nvims' Neovim config switcher,"
    printf "\nlogout and login or issue the following command:"
    printf "\n\tsource ~/.config/${LAZYMAN}/.lazymanrc"
  fi
  show_alias "${neovimdir[0]}"
}

if [ "${interactive}" ] && [ ! "${exitafter}" ]; then
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
      [ "${skipthis}" ] || nvim
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

[ "${exitafter}" ] && exit 0

exitstatus=0
[ "${interactive}" ] && {
  if [ "$menu" ]; then
    if [ "$menu" == "confmenu" ]; then
      ${SUBMENUS} -m conf
      exitstatus=$?
    else
      if [ "$menu" == "plugmenu" ]; then
        ${SUBMENUS} -m plugmenu
        exitstatus=$?
      else
        if [ "$menu" == "lspmenu" ]; then
          ${SUBMENUS} -m lspmenu
          exitstatus=$?
        else
          if [ "$menu" == "formenu" ]; then
            ${SUBMENUS} -m formenu
            exitstatus=$?
          else
            show_main_menu
          fi
        fi
      fi
    fi
  else
    show_main_menu
  fi
}
# Submenus can exit 2 to indicate display main menu
[ ${exitstatus} -eq 2 ] && exec lazyman

exit 0
