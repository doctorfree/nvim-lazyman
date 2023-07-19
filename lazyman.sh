#!/usr/bin/env bash
#
# lazyman - install, initialize, manage, and explore multiple Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>, Spring 2023
#
# shellcheck disable=SC1090,SC2001,SC2002,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2076,SC2126

LAZYMAN="nvim-Lazyman"
LMANDIR="${HOME}/.config/${LAZYMAN}"
NVIMDIRS="${LMANDIR}/.nvimdirs"
LZYMANRC="${LMANDIR}/.lazymanrc"
NVIMCONF="${LMANDIR}/lua/configuration.lua"
CONFBACK="${LMANDIR}/lua/configuration-orig.lua"
SCRIPTSD="${LMANDIR}/scripts"
CONFIGRC="${SCRIPTSD}/configrc"
HEALTHSC="${SCRIPTSD}/healthcheck.sh"
INFOSCPT="${SCRIPTSD}/information.sh"
INSTNVIM="${SCRIPTSD}/install_neovim.sh"
JAVADBUG="${SCRIPTSD}/java_debug.sh"
KILLNVIM="${SCRIPTSD}/kill_all_neovim.sh"
SUBMENUS="${SCRIPTSD}/lazyman_config.sh"
WEBDEV="${SCRIPTSD}/webdev_config.sh"
LZYIDE="${SCRIPTSD}/lzyide_config.sh"
# LOLCAT="lolcat --animate --speed=70.0"
LOLCAT="lolcat"
BOLD=$(tput bold 2>/dev/null)
NORM=$(tput sgr0 2>/dev/null)
LINE=$(tput smul 2>/dev/null)

USEGUI=
if [ -f "${CONFIGRC}" ]; then
  source "${CONFIGRC}"
else
  printf "\n\nERROR: Missing ${CONFIGRC}"
  printf "\n\nReinstall Lazyman\n\n"
  exit 1
fi
SPDIR="${HOME}/.SpaceVim.d"
# Timeout length for nvim headless execution
timeout=120
# Array with font names
fonts=("slant" "shadow" "small" "script" "standard")
cfginst=1
cfgpart=
showinstalled=1

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-E config] [-e]"
  printf "\n   [-f path] [-F menu] [-g] [-i group] [-j] [-k] [-l] [-m] [-M] [-s]"
  printf "\n   [-S] [-v] [-n] [-o] [-p] [-P] [-q] [-Q] [-h] [-H] [-I] [-J] [-L lang]"
  printf "\n   [-rR] [-C url] [-D subdir] [-N nvimdir] [-G] [-tT] [-U] [-V url]"
  printf "\n   [-w conf] [-W] [-x conf] [-X] [-y] [-z] [-Z] [-K conf] [-u]"
  printf "\n   [health] [info] [init] [install] [open] [remove] [search] [status] [usage]"
  [ "$1" == "noexit" ] || exit 1
}

usage() {
  brief_usage noexit
  printf "\nWhere:"
  printf "\n    -A indicates install all supported Neovim configurations"
  printf "\n    -a indicates install and initialize AstroNvimPlus Neovim configuration"
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
  printf "\n           'main', 'conf', 'lsp', 'format', 'plugin', 'lazyide', 'webdev'"
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
  printf "\n    -i 'group' specifies a group to install/remove/update"
  printf "\n       'group' can be one of:"
  printf "\n           astronvim kickstart lazyvim lunarvim nvchad packer plug"
  printf "\n    -I indicates install all language servers and tools for coding diagnostics"
  printf "\n    -J indicates install indicated repo as an AstroNvim custom configuration"
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
  printf "\n    -K 'conf' indicates install 'conf' in development unsupported config"
  printf "\n    -u displays this usage message and exits"
  printf "\n    'health' generate and display a health check for a configuration"
  printf "\n    'info' open an information page for a configuration in the default browser"
  printf "\n    'init' initialize specified Neovim configuration and exit"
  printf "\n    'install' fuzzy search and select configuration to install"
  printf "\n    'open' fuzzy search and select configuration to open"
  printf "\n    'remove' fuzzy search and select configuration to remove"
  printf "\n    'search' fuzzy search and select configurations for a plugin"
  printf "\n    'status' displays a brief status report and exits"
  printf "\n    'usage' displays this usage message and exits"
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
      if ps -p $runnerpid >/dev/null; then
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
  have_neovide=$(type -p neovide)
  have_figlet=$(type -p figlet)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)
}

# Patch references to ~/.config/lvim/
fix_lvim_dir() {
  fixlvimdir="$1"
  [ "${fixlvimdir}" == "${LAZYMAN}" ] || {
    find "${HOME}/.config/${fixlvimdir}" \
      -type f -a \( -name \*\.lua -o -name \*\.vim -o -name \*\.fnl \) |
      while read -r f; do
        echo "$f" | grep /.git/ >/dev/null && continue
        grep /lvim/ "$f" >/dev/null && {
          cat "$f" | sed -e "s%/lvim/%/${fixlvimdir}/%g" >/tmp/lvim$$
          cp /tmp/lvim$$ "$f"
          rm -f /tmp/lvim$$
        }
      done
  }
}

# Patch references to ~/.config/nvim/
fix_nvim_dir() {
  fixnvimdir="$1"
  [ "${fixnvimdir}" == "${LAZYMAN}" ] || {
    find "${HOME}/.config/${fixnvimdir}" \
      -type f -a \( -name \*\.lua -o -name \*\.vim -o -name \*\.fnl \) |
      while read -r f; do
        echo "$f" | grep /.git/ >/dev/null && continue
        grep /nvim/ "$f" >/dev/null && {
          cat "$f" | sed -e "s%/nvim/%/${fixnvimdir}/%g" >/tmp/nvim$$
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

init_lvim() {
  lvimdir="$1"
  export NVIM_APPNAME="${lvimdir}"
  #export LUNARVIM_CONFIG_DIR="$HOME/.config/lvim"
  #export LUNARVIM_CACHE_DIR="$HOME/.cache/lvim"
  #export LUNARVIM_BASE_DIR="${HOME}/.local/share/${NVIM_APPNAME}/lvim"
  #export LUNARVIM_BASE_DIR="$HOME/.local/share/lunarvim/lvim"
  #export LUNARVIM_RUNTIME_DIR="$HOME/.local/share/lunarvim"
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
        if [ "${lvimdir}" == "nvim-LunarVim" ]; then
          cp ${LMANDIR}/scripts/lvim $HOME/.local/bin/lvim
        else
          cat ${LMANDIR}/scripts/lvim |
            sed -e "s/nvim-LunarVim/${lvimdir}/" >$HOME/.local/bin/lvim
        fi
        chmod 755 $HOME/.local/bin/lvim
      }
    }
    if [ "$debug" ]; then
      /tmp/lvim-install$$.sh --no-install-dependencies --yes
    else
      /tmp/lvim-install$$.sh --no-install-dependencies --yes >/dev/null 2>&1
    fi
    rm -f /tmp/lvim-install$$.sh
    add_nvimdirs_entry "${lvimdir}"
  }
}

init_neovim() {
  neodir="$1"
  [ -d "${HOME}/.config/${neodir}" ] || return
  [ "${neodir}" == "${LAZYMAN}" ] || [ "${neodir}" == "${minivimdir}" ] && {
    oldpack=${packer}
    oldplug=${plug}
    plug=
    packer=
  }
  [ "${neodir}" == "${magicvimdir}" ] || [ "${neodir}" == "${abstractdir}" ] && {
    oldpack=${packer}
    packer=1
  }
  export NVIM_APPNAME="${neodir}"

  [ "${neodir}" == "nvim-Nyoom" ] && {
    [ -x ${HOME}/.config/nvim-Nyoom/bin/nyoom ] && {
      if [ "${debug}" ]; then
        ${HOME}/.config/nvim-Nyoom/bin/nyoom install
        ${HOME}/.config/nvim-Nyoom/bin/nyoom sync
      else
        ${HOME}/.config/nvim-Nyoom/bin/nyoom install >/dev/null 2>&1
        ${HOME}/.config/nvim-Nyoom/bin/nyoom sync >/dev/null 2>&1
      fi
    }
  }

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
  [ "${neodir}" == "${abstractdir}" ] && {
    BUILDER="${HOME}/.local/share/${neodir}/custom_tools/lazy-builder"
    if [ -d "${BUILDER}" ]; then
      [ "$tellme" ] || git -C ${BUILDER} pull >/dev/null 2>&1
    else
      [ "$quiet" ] || {
        printf "\nCloning lazy builder into"
        printf "\n\t${BUILDER}"
      }
      [ "$tellme" ] || {
        git clone https://github.com/Abstract-IDE/lazy-builder \
          "${BUILDER}" >/dev/null 2>&1
      }
    fi
  }
  [ "${neodir}" == "nvim-LunarIde" ] ||
    [ "${neodir}" == "nvim-Shuvro" ] && {
    [ -x ${JAVADBUG} ] && {
      [ "$quiet" ] || printf "\nInstalled Java debug packages ... "
      if [ "$debug" ]; then
        ${JAVADBUG} "${neodir}"
      else
        ${JAVADBUG} "${neodir}" >/dev/null 2>&1
      fi
      [ "$quiet" ] || printf "done"
    }
  }
  [ "${neodir}" == "${lunarvimdir}" ] ||
    [ "${neodir}" == "nvim-JustinLvim" ] ||
    [ "${neodir}" == "nvim-LunarIde" ] ||
    [ "${neodir}" == "nvim-LvimAdib" ] ||
    [ "${neodir}" == "nvim-Shuvro" ] ||
    [ "${neodir}" == "nvim-Daniel" ] && fix_lvim_dir "${neodir}"

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
  if [ "${neodir}" == "nvim-Webdev" ]; then
    [ -x ${WEBDEV} ] && ${WEBDEV} -i
    custom_url=
  else
    [ "${neodir}" == "nvim-LazyIde" ] && {
      [ -x ${LZYIDE} ] && ${LZYIDE} -i
      custom_url=
    }
  fi
  [ "${custom_url}" ] && {
    # Check for wakatime plugin and use debug mode if found
    havewaka=
    find "${HOME}"/.config/"${neodir}" -type f \
      -a \( -name \*\.lua -o -name \*\.vim -o -name \*\.fnl \) -print0 |
      xargs -0 grep wakatime/vim-wakatime >/dev/null && {
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
        xtimeout ${timeout} nvim --headless \
          -c 'autocmd User PackerComplete quitall' \
          -c 'PackerSync' >${LOG} 2>&1
      else
        if [ "${plug}" ]; then
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c 'PlugInstall!' -c 'qa' >${LOG} 2>&1
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c 'UpdateRemotePlugins' -c 'qa' >>${LOG} 2>&1
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c 'GoInstallBinaries' -c 'qa' >>${LOG} 2>&1
        else
          if [ "${neodir}" == "${spacevimdir}" ]; then
            xtimeout ${timeout} nvim --headless "+SPInstall" +qa >${LOG} 2>&1
            xtimeout ${timeout} nvim --headless "+UpdateRemotePlugins" +qa >>${LOG} 2>&1
          else
            [ "${neodir}" == "${lunarvimdir}" ] ||
              [ "${neodir}" == "nvim-Daniel" ] ||
              [ "${neodir}" == "nvim-JustinLvim" ] ||
              [ "${neodir}" == "nvim-LvimAdib" ] ||
              [ "${neodir}" == "nvim-Shuvro" ] ||
              [ "${neodir}" == "nvim-LunarIde" ] && {
              export NVIM_APPNAME="${neodir}"
              export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
              export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
              export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
              export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
            }
            if [ "${treesitter}" ]; then
              xtimeout ${timeout} nvim --headless '+TSUpdate' +qa >${LOG} 2>&1
            else
              [ "${neodir}" == "${minivimdir}" ] || {
                [ "${neodir}" == "nvim-Nyoom" ] || {
                  xtimeout ${timeout} nvim --headless "+Lazy! sync" +qa >>${LOG} 2>&1
                  [ "${neodir}" == "${nvchaddir}" ] ||
                    [ "${neodir}" == "nvim-Cpp" ] ||
                    [ "${neodir}" == "nvim-Go" ] ||
                    [ "${neodir}" == "nvim-LazyIde" ] ||
                    [ "${neodir}" == "nvim-Rust" ] ||
                    [ "${neodir}" == "nvim-Python" ] && {
                    xtimeout ${timeout} nvim --headless "+MasonInstallAll" +qa >>${LOG} 2>&1
                  }
                  [ "${neodir}" == "nvim-2k" ] && {
                    xtimeout ${timeout} nvim --headless "+UpdateRemotePlugins" +qa >>${LOG} 2>&1
                  }
                }
              }
            fi
          fi
        fi
      fi
      [ -d "${HOME}/.config/${neodir}/doc" ] && {
        xtimeout ${timeout} nvim --headless \
          "+helptags ${HOME}/.config/${neodir}/doc" +qa >>${LOG} 2>&1
      }
      [ "$quiet" ] || printf " done\n"
      calc_elapsed
      printf "\nInitialization elapsed time = ${ELAPSED}\n"
    else
      [ "$quiet" ] || printf "\nInitializing configuration ..."
      if [ "${packer}" ]; then
        xtimeout ${timeout} nvim --headless \
          -c 'autocmd User PackerComplete quitall' \
          -c 'PackerSync' >/dev/null 2>&1
      else
        if [ "${plug}" ]; then
          xtimeout ${timeout} nvim --headless \
            -c 'set nomore' -c 'PlugInstall!' -c 'qa' >/dev/null 2>&1
          xtimeout ${timeout} nvim --headless \
            -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa' >/dev/null 2>&1
          xtimeout ${timeout} nvim --headless \
            -c 'set nomore' -c 'GoInstallBinaries' -c 'qa' >/dev/null 2>&1
        else
          if [ "${neodir}" == "${spacevimdir}" ]; then
            xtimeout ${timeout} nvim --headless \
              "+SPInstall" +qa >/dev/null 2>&1
            xtimeout ${timeout} nvim --headless \
              "+UpdateRemotePlugins" +qa >/dev/null 2>&1
          else
            [ "${neodir}" == "${lunarvimdir}" ] ||
              [ "${neodir}" == "nvim-LvimAdib" ] ||
              [ "${neodir}" == "nvim-Shuvro" ] ||
              [ "${neodir}" == "nvim-Daniel" ] ||
              [ "${neodir}" == "nvim-JustinLvim" ] ||
              [ "${neodir}" == "nvim-LunarIde" ] && {
              export NVIM_APPNAME="${neodir}"
              export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
              export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
              export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
              export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
            }
            if [ "${treesitter}" ]; then
              xtimeout ${timeout} nvim --headless '+TSUpdate' +qa >/dev/null 2>&1
            else
              [ "${neodir}" == "${minivimdir}" ] || {
                [ "${neodir}" == "nvim-Nyoom" ] || {
                  xtimeout ${timeout} nvim --headless \
                    "+Lazy! sync" +qa >/dev/null 2>&1
                  [ "${neodir}" == "${nvchaddir}" ] ||
                    [ "${neodir}" == "nvim-Cpp" ] ||
                    [ "${neodir}" == "nvim-Go" ] ||
                    [ "${neodir}" == "nvim-LazyIde" ] ||
                    [ "${neodir}" == "nvim-Rust" ] ||
                    [ "${neodir}" == "nvim-Python" ] && {
                    xtimeout ${timeout} nvim --headless \
                      "+MasonInstallAll" +qa >/dev/null 2>&1
                  }
                  [ "${neodir}" == "nvim-2k" ] && {
                    xtimeout ${timeout} nvim \
                      --headless "+UpdateRemotePlugins" +qa >/dev/null 2>&1
                  }
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
  [ "${neodir}" == "${LAZYMAN}" ] && {
    [ -f "${LMANDIR}/.initialized" ] || {
      touch "${LMANDIR}/.initialized"
    }
  }
  [ "${neodir}" == "${LAZYMAN}" ] || [ "${neodir}" == "${minivimdir}" ] && {
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
      grep github.com/doctorfree/spacevim ${SPDIR}/.git/config >/dev/null && {
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
      #export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
      #export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
      #export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
      #export LUNARVIM_BASE_DIR="${HOME}/.local/share/${NVIM_APPNAME}/lvim"
      #export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}/lua/lvim"
      #export LUNARVIM_RUNTIME_DIR="$HOME/.local/share/lunarvim"
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

apply_patch() {
  patchdir="$1"
  [ -f "${LMANDIR}"/scripts/patches/${patchdir}.patch ] && {
    [ -x "${LMANDIR}"/scripts/patch_config.sh ] && {
      "${LMANDIR}"/scripts/patch_config.sh "${patchdir}"
    }
  }
}

update_config() {
  ndir="$1"
  GITDIR=".config/${ndir}"
  [ -d "${HOME}/${GITDIR}" ] || {
    [ -d "${HOME}/.config/nvim-${ndir}" ] && {
      ndir="nvim-${ndir}"
      GITDIR=".config/${ndir}"
    }
  }
  [ -d "${HOME}/${GITDIR}" ] && {
    printf "\nUpdating existing ${ndir} config at ${HOME}/${GITDIR} ..."
    [ "$tellme" ] || {
      [ "${ndir}" == "${LAZYMAN}" ] && {
        [ -f "${HOME}/${GITDIR}/lua/configuration.lua" ] && {
          cp "${HOME}/${GITDIR}/lua/configuration.lua" /tmp/lazyconf$$
        }
      }
      git -C "${HOME}/${GITDIR}" stash >/dev/null 2>&1
      git -C "${HOME}/${GITDIR}" reset --hard >/dev/null 2>&1
      git -C "${HOME}/${GITDIR}" pull >/dev/null 2>&1
    }
    printf " done"
    [ "$tellme" ] || add_nvimdirs_entry "${ndir}"
  }
  [ "$tellme" ] || {
    [ "${ndir}" == "${LAZYMAN}" ] && {
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
    [ "${ndir}" == "${astronvimdir}" ] ||
    [ "${ndir}" == "${nvchaddir}" ] ||
    [ "${ndir}" == "nvim-Cpp" ] ||
    [ "${ndir}" == "nvim-Go" ] ||
    [ "${ndir}" == "nvim-Rust" ] ||
    [ "${ndir}" == "nvim-Python" ] ||
    [ "${customastro}" ] && {
      if [ "${ndir}" == "${astronvimdir}" ] || [ "${customastro}" ]; then
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
    [ "${ndir}" == "${LAZYMAN}" ] || fix_nvim_dir "${ndir}"
    [ "${ndir}" == "${lunarvimdir}" ] ||
      [ "${ndir}" == "nvim-LunarIde" ] ||
      [ "${ndir}" == "nvim-LvimAdib" ] ||
      [ "${ndir}" == "nvim-Shuvro" ] ||
      [ "${ndir}" == "nvim-JustinLvim" ] ||
      [ "${ndir}" == "nvim-Daniel" ] && fix_lvim_dir "${ndir}"
    apply_patch "${ndir}"
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
  [ -f "${LZYMANRC}" ] && {
    source "${LZYMANRC}"
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
  [ -f "${LZYMANRC}" ] && {
    source "${LZYMANRC}"
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
  if [ -x ${HEALTHSC} ]; then
    checkdir="$1"
    ${HEALTHSC} "${checkdir}"
    nvimconf=$(echo "${checkdir}" | sed -e "s/^nvim-//")
    if [ -f ${LMANDIR}/logs/health-${nvimconf}.md ]; then
      NVIM_APPNAME="${checkdir}" nvim ${LMANDIR}/logs/health-${nvimconf}.md
    else
      echo "${LMANDIR}/logs/health-${nvimconf}.md not found"
    fi
  else
    echo "${HEALTHSC} not executable or missing"
  fi
}

open_info() {
  nviminfo="$1"
  infourl="${LMANDIR}/info/html/${nviminfo}.html"
  platform=$(uname -s)
  if [ "${platform}" == "Darwin" ]; then
    if [ "${URL_OPEN_COMMAND}" ]; then
      ${URL_OPEN_COMMAND} "${infourl}"
    else
      have_open=$(type -p open)
      if [ "${have_open}" ]; then
        open "${infourl}"
      else
        if [ -f ${LMANDIR}/info/${nviminfo}.md ]; then
          NVIM_APPNAME="${LAZYMAN}" nvim ${LMANDIR}/info/${nviminfo}.md
        else
          echo "Unable to locate command to open ${LMANDIR}/info/html/${nviminfo}.html"
        fi
      fi
    fi
  else
    # The Firefox Snap on some systems is so weirdly broken
    # https://bugs.launchpad.net/snapd/+bug/1972762
    # It won't open documents in /tmp or hidden folders in $HOME
    # Copy the HTML documents to $HOME/tmp to open
    [ -d "${HOME}/tmp" ] || mkdir -p "${HOME}/tmp"
    [ -d "${HOME}/tmp/lazyman_html" ] || mkdir "${HOME}/tmp/lazyman_html"
    cp "${LMANDIR}/info/html/${nviminfo}.html" "${HOME}/tmp/lazyman_html"
    infourl="${HOME}/tmp/lazyman_html/${nviminfo}.html"
    if [ "${URL_OPEN_COMMAND}" ]; then
      ${URL_OPEN_COMMAND} "${infourl}"
    else
      have_python=$(type -p python3)
      if [ "${have_python}" ]; then
        python3 -m webbrowser "${infourl}"
      else
        have_xdg=$(type -p xdg-open)
        if [ "${have_xdg}" ]; then
          xdg-open "${infourl}"
        else
          have_gio=$(type -p gio)
          if [ "${have_gio}" ]; then
            gio open "${infourl}"
          else
            if [ -f ${LMANDIR}/info/${nviminfo}.md ]; then
              NVIM_APPNAME="${LAZYMAN}" nvim ${LMANDIR}/info/${nviminfo}.md
            else
              echo "Unable to locate command to open ${LMANDIR}/info/html/${nviminfo}.html"
            fi
          fi
        fi
      fi
    fi
  fi
}

show_info() {
  checkdir="$1"
  nvimconf=$(echo "${checkdir}" | sed -e "s/^nvim-//")
  if [ -f ${LMANDIR}/info/html/${nvimconf}.html ]; then
    open_info "${nvimconf}"
  else
    if [ -f ${LMANDIR}/info/${nvimconf}.md ]; then
      NVIM_APPNAME="${LAZYMAN}" nvim ${LMANDIR}/info/${nvimconf}.md
    else
      [ -x ${INFOSCPT} ] && ${INFOSCPT} -i ${nvimconf}
      if [ -f ${LMANDIR}/info/html/${nvimconf}.html ]; then
        open_info "${nvimconf}"
      else
        if [ -f ${LMANDIR}/info/${nvimconf}.md ]; then
          NVIM_APPNAME="${LAZYMAN}" nvim ${LMANDIR}/info/${nvimconf}.md
        else
          echo "${LMANDIR}/info/html/${nvimconf}.html not found"
        fi
      fi
    fi
  fi
}

show_status() {
  nvim_version=$(nvim --version | head -2)
  printf "\nInstalled Neovim version info:\n\n${nvim_version}\n"

  [ -f "${LZYMANRC}" ] && {
    source "${LZYMANRC}"
  }
  readarray -t sorted < <(printf '%s\0' "${ndirs[@]}" | sort -z | xargs -0n1)
  numitems=${#sorted[@]}
  if typeset -f nvims >/dev/null 2>&1; then
    printf "\nThe 'nvims' shell function exists:"
  else
    printf "\nThe 'nvims' shell function does not exist"
    printf "\nSource ~/.config/${LAZYMAN}/.lazymanrc in your shell initialization,"
    printf "\nlogout and login"
  fi
  if [ "${have_neovide}" ]; then
    printf "\n\nThe neovide Neovim GUI is installed"
    if typeset -f neovides >/dev/null 2>&1; then
      printf "\n\nThe 'neovides' shell function exists:"
    else
      printf "\n\nThe 'neovides' shell function does not exist"
    fi
  else
    printf "\n\nThe neovide Neovim GUI is not installed"
  fi
  printf "\n\n${numitems} Lazyman Neovim configurations installed:\n"
  binst=0
  btots=0
  for neovim in ${BASECFGS}; do
    if [[ " ${sorted[*]} " =~ " nvim-${neovim} " ]]; then
      ((binst++))
    fi
    ((btots++))
  done
  linst=0
  ltots=0
  for neovim in ${LANGUCFGS}; do
    if [[ " ${sorted[*]} " =~ " nvim-${neovim} " ]]; then
      ((linst++))
    fi
    ((ltots++))
  done
  pinst=0
  ptots=0
  for neovim in ${PRSNLCFGS}; do
    if [[ " ${sorted[*]} " =~ " nvim-${neovim} " ]]; then
      ((pinst++))
    fi
    ((ptots++))
  done
  sinst=0
  stots=0
  for neovim in ${STARTCFGS}; do
    if [[ " ${sorted[*]} " =~ " nvim-${neovim} " ]]; then
      ((sinst++))
    fi
    ((stots++))
  done
  printf "\n  %-8s  Base Neovim configurations installed" "${binst}/${btots}"
  printf "\n  %-8s  Language Neovim configurations installed" "${linst}/${ltots}"
  printf "\n  %-8s  Personal Neovim configurations installed" "${pinst}/${ptots}"
  printf "\n  %-8s  Starter Neovim configurations installed\n" "${sinst}/${stots}"
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
    [ "${neovim}" == "${astronvimdir}" ] ||
    [ "${neovim}" == "${nvchaddir}" ] ||
    [ "${ndir}" == "nvim-Cpp" ] ||
    [ "${ndir}" == "nvim-Go" ] ||
    [ "${ndir}" == "nvim-Rust" ] ||
    [ "${neovim}" == "nvim-Python" ] ||
    [ "${customastro}" ] && {
      if [ "${neovim}" == "${astronvimdir}" ] || [ "${customastro}" ]; then
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
    printf "\nAliases like the following are defined in ~/.config/${LAZYMAN}/.lazymanrc"
    if [ "$all" ]; then
      printf "\n\talias lnvim='NVIM_APPNAME=${LAZYMAN} nvim'"
    elif [ "$abstract" ]; then
      printf "\n\talias avim='NVIM_APPNAME=nvim-Abstract nvim'"
    elif [ "$astronvim" ]; then
      printf "\n\talias avim='NVIM_APPNAME=nvim-AstroNvimPlus nvim'"
    elif [ "$basicide" ]; then
      printf "\n\talias bvim='NVIM_APPNAME=nvim-BasicIde nvim'"
    elif [ "$ecovim" ]; then
      printf "\n\talias evim='NVIM_APPNAME=nvim-Ecovim nvim'"
    elif [ "$kickstart" ]; then
      printf "\n\talias kvim='NVIM_APPNAME=nvim-Kickstart nvim'"
    elif [ "$modern" ]; then
      printf "\n\talias mvim='NVIM_APPNAME=nvim-Modern nvim'"
    elif [ "$pde" ]; then
      printf "\n\talias nde='NVIM_APPNAME=nvim-pde nvim'"
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
  if [ ${major} -eq 3 ]; then
    minor=$(python3 -c 'import sys; print(sys.version_info.minor)')
    if [ ${minor} -ge 9 ]; then
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

install_astronvim() {
  base_dir="$1"
  user_url="$2"
  clone_repo AstroNvim AstroNvim/AstroNvim "$base_dir"
  [ "$quiet" ] || {
    printf "\nAdding user configuration into"
    printf "\n\t${HOME}/.config/${base_dir}/lua/user ... "
  }
  [ "$tellme" ] || {
    if [ -d "${HOME}/.config/$base_dir"/lua/user ]; then
      update_config "$base_dir"
    else
      if [ "${subdir}" ]; then
        [ "${branch}" ] || branch="master"
        # Perform some git tricks here to retrieve a repo subdirectory
        mkdir /tmp/lazyman$$
        cd /tmp/lazyman$$ || {
          printf "\nCreation of /tmp/lazyman$$ temporary directory failed. Exiting."
          exit 1
        }
        git init >/dev/null 2>&1
        git remote add -f origin ${user_url} >/dev/null 2>&1
        git config core.sparseCheckout true >/dev/null 2>&1
        [ -d .git/info ] || mkdir -p .git/info
        echo "${subdir}" >>.git/info/sparse-checkout
        git pull origin ${branch} >/dev/null 2>&1
        cd || exit
        mv "/tmp/lazyman$$/${subdir}" "${HOME}/.config/${base_dir}/lua/user"
        rm -rf "/tmp/lazyman$$"
      else
        git clone ${user_url} \
          "${HOME}/.config/$base_dir"/lua/user >/dev/null 2>&1
        [ "$branch" ] && {
          git -C "${HOME}/.config/${base_dir}/lua/user" checkout "$branch" >/dev/null 2>&1
        }
      fi
    fi
  }
  [ "$quiet" ] || printf "done"
}

install_config() {
  confname="$1"
  dodone=1
  printf "\nInstalling and initializing ${confname} Neovim configuration ... "
  case ${confname} in
  Abstract)
    lazyman ${darg} -g -z -y -Q -q
    ;;
  AstroNvimPlus)
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
  Nyoom)
    lazyman ${darg} -K Nyoom -z -y -Q -q
    ;;
  AlanVim | Allaman | CatNvim | Cpp | Go | Go2one | LunarIde | Knvim | LaTeX | LazyIde | LvimIde | Magidc | Nv | NV-IDE | Python | Rust | SaleVim | Shuvro | Webdev)
    lazyman ${darg} -L ${confname} -z -y -Q -q
    ;;
  2k | AstroNvimStart | Basic | Modern | pde | CodeArt | Cosmic | Ember | Fennel | JustinNvim | JustinLvim | Kabin | Lamia | Micah | Normal | NvPak | HardHacker | Rohit | Scratch | SingleFile | StartBase | Opinion | StartLsp | StartMason | Modular | BasicLsp | BasicMason | Extralight | LspCmp | Minimal)
    lazyman ${darg} -x ${confname} -z -y -Q -q
    ;;
  Adib | Artur | ONNO | Charles | Craftzdog | Dillon | Daniel | Kodo | LvimAdib | Maddison | Metis | Roiz | OnMyWay | Optixal | Plug | Heiker | Simple | Brain | Elianiva | Enrique | J4de | Josean | Rafi | Slydragonn | Traap | xero | Xiao)
    lazyman ${darg} -w ${confname} -z -y -Q -q
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
  if [ -f "${LZYMANRC}" ]; then
    source "${LZYMANRC}"
  else
    printf "\n\n${LZYMANRC} not found or not readable."
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
    choice=$(printf "%s\n" "${uninstalled[@]}" |
      fzf --prompt=" Install Neovim Config  " --layout=reverse --border --exit-0)
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
  if [ -f "${LZYMANRC}" ]; then
    source "${LZYMANRC}"
  else
    printf "\n\n${LZYMANRC} not found or not readable."
    printf "\nCheck your Lazyman installation."
    printf "\nExiting\n"
    exit 1
  fi
  if [ "${USEGUI}" ]; then
    if [ "${have_neovide}" ]; then
      if typeset -f neovides >/dev/null 2>&1; then
        neovides
        exit 0
      fi
    fi
  fi
  if typeset -f nvims >/dev/null 2>&1; then
    nvims
  else
    printf "\nLazyman nvims shell function incorrectly configured."
    printf "\nUnable to display selection menu. Exiting.\n"
    exit 1
  fi
  exit 0
}

select_remove() {
  set_haves
  if [ -f "${LZYMANRC}" ]; then
    source "${LZYMANRC}"
  else
    printf "\n\n${LZYMANRC} not found or not readable."
    printf "\nCheck your Lazyman installation."
    printf "\nExiting\n"
    exit 1
  fi
  if [ "${USEGUI}" ]; then
    if [ "${have_neovide}" ]; then
      if typeset -f neovides >/dev/null 2>&1; then
        neovides -R
        exit 0
      fi
    fi
  fi
  if typeset -f nvims >/dev/null 2>&1; then
    nvims -R
  else
    printf "\nLazyman nvims shell function incorrectly configured."
    printf "\nUnable to display selection menu. Exiting.\n"
    exit 1
  fi
}

select_search() {
  noexit="$1"
  set_haves
  [ "${have_fzf}" ] || {
    printf "\n\nPlugin search selection requires fzf but fzf is not found."
    printf "\nInstall fzf with 'lazyman -I' and verify fzf is in your PATH.\n"
    if [ "${noexit}" ]; then
      prompt_continue
    else
      printf "\nExiting\n"
      exit 1
    fi
  }
  printf "\nEnter a plugin name or string to match against configuration plugins\n"
  read -r -p "Plugin search string: " plug_name
  choices=()
  while read cfg; do
    match=$(grep "^- " "${cfg}" | grep -v ":" | grep -i "${plug_name}" "${cfg}" | grep "/")
    [ "${match}" ] && {
      matched=
      while read matchline; do
        if [ "${matched}" ]; then
          newmatch=$(echo "${matchline}" | awk -F '[' ' { print $2 } ' | awk -F ']' ' { print $1 } ')
          echo "${newmatch}" | grep '/' >/dev/null && {
            newmatch=$(echo "${newmatch}" | awk -F '/' ' { print $2 } ')
            matched="${matched} ${newmatch}"
          }
        else
          first=$(echo "${matchline}" | awk -F '[' ' { print $2 } ' | awk -F ']' ' { print $1 } ')
          echo "${first}" | grep '/' >/dev/null && {
            matched=$(echo "${first}" | awk -F '/' ' { print $2 } ')
          }
        fi
      done < <(echo "${match}")
      # Sort and remove duplicates
      matched=$(echo $(printf '%s\n' ${matched} | sort -u))
      neocfg=$(echo "${cfg}" | sed -e "s%${LMANDIR}/info/%%" -e "s/\.md//")
      if [ -d "${HOME}/.config/nvim-${neocfg}" ]; then
        choices+=("${neocfg}  (Installed, Matches: ${matched})")
      else
        choices+=("${neocfg}  (Uninstalled, Matches: ${matched})")
      fi
    }
  done < <(grep -i -l "${plug_name}" "${LMANDIR}"/info/*.md)
  IFS=$'\n' choices=($(sort <<<"${choices[*]}"))
  unset IFS
  choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Neovim Config matching ${plug_name} for Information Display  " --layout=reverse --border --exit-0)
  if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
    infocfg=$(echo "${choice}" | awk ' { print $1 } ')
    lazyman -N "nvim-${infocfg}" info
  fi
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
    if [ "${spc_status}" == "Used" ]; then
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
        bob use ${nvimvers} >/dev/null 2>&1
      }
      break
      ;;
    esac
    REPLY=
  done
  [ "${help}" ] && show_vers_menu
}

show_main_help() {
  if [ "${have_rich}" ]; then
    rich "[cyan]Lazyman Neovim Configuration Manager Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tLazyman Neovim Configuration Manager Menu Help\n"
  fi
  printf "\nSelect and install/open/remove Neovim configurations managed by Lazyman."
  printf "\nEnter a menu option number or keywords to select an option."
  printf "\nKeywords include: ${BOLD}help, info, install, open, remove search update${NORM}"
  printf "\nIn the fuzzy selection dialogs, enter a few letters to fuzzy select from the options"
  printf "\nor use the <Up-Arrow> and <Down-Arrow> keys to move through the options."
  printf "\nPress <Enter> to select the highlighted option.\n"
  printf "\nLazyman Neovim configurations are organized into categories. Configurations can be"
  printf "\nindividually installed/removed or all configurations in a category can be acted on.\n"
  printf "\nThis menu also provides options to install additional tools, enable debug mode,"
  printf "\ninstall the Bob Neovim version manager, select the Neovim version to use, toggle"
  printf "\nthe user interface between Neovim and Neovide, perform a Neovim health check, "
  printf "\nbring up the Lazyman Neovim Configuration menu, or generate a status report."
  printf "\nIn addition, an option exists to view the Lazyman manual.\n"
  printf "\nThe Lazyman Neovim configuration manager can also be used from the command line.\n"
  printf "\n\t${BOLD}${LINE}Usage:${NORM} ${BOLD}lazyman [options] <COMMAND>${NORM}"
  printf "\n\t${BOLD}${LINE}See:${NORM}   ${BOLD}lazyman -u${NORM}  for usage details\n"
  prompt_continue
}

show_main_menu() {
  help=
  set_haves
  while true; do
    [ "$debug" ] || tput reset
    if [ "${USEGUI}" ]; then
      use_gui="neovide"
    else
      use_gui="neovim"
    fi
    items=()
    show_warning=
    confmenu=
    lidemenu=
    versmenu=
    wdevmenu=
    if [ -f "${LZYMANRC}" ]; then
      source "${LZYMANRC}"
    else
      show_warning=1
      showinstalled=0
    fi
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    numitems=${#sorted[@]}
    [ ${numitems} -gt 16 ] && {
      [ ${showinstalled} -gt 1 ] || showinstalled=0
    }
    if [ "${have_figlet}" ]; then
      show_figlet
    else
      [ "${have_rich}" ] && rich "[cyan]Lazyman Main Menu[/cyan]" -p -a rounded -c -C
    fi
    [ "${show_warning}" ] && {
      if [ "${have_rich}" ]; then
        rich "[bold red]WARNING[/]: missing [b yellow]${LZYMANRC}[/]
  reinstall Lazyman with:
    [bold green]lazyman -R -N ${LAZYMAN}[/]
  followed by:
        [bold green]lazyman[/]" -p -a rounded -c
      else
        printf "\nWARNING: missing ${LZYMANRC}"
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
    if [ ${showinstalled} -gt 0 ]; then
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
    else
      printf "\n"
    fi

    PS3="${BOLD}Enter a choice (number, shortcut, or text, 'h' help): ${NORM}"
    options=()
    get_config_str "${BASECFGS}"
    base_partial=${cfgpart}
    base_installed=${cfginst}
    if [ "${base_installed}" ]; then
      options+=("Update Base       ${configstr}")
    else
      options+=("Install Base      ${configstr}")
    fi
    get_config_str "${LANGUCFGS}"
    lang_partial=${cfgpart}
    lang_installed=${cfginst}
    if [ "${lang_installed}" ]; then
      options+=("Update Languages  ${configstr}")
    else
      options+=("Install Languages ${configstr}")
    fi
    get_config_str "${PRSNLCFGS}"
    prsnl_partial=${cfgpart}
    prsnl_installed=${cfginst}
    if [ "${prsnl_installed}" ]; then
      options+=("Update Personals  ${configstr}")
    else
      options+=("Install Personals ${configstr}")
    fi
    get_config_str "${STARTCFGS}"
    start_partial=${cfgpart}
    start_installed=${cfginst}
    if [ "${start_installed}" ]; then
      options+=("Update Starters   ${configstr}")
    else
      options+=("Install Starters  ${configstr}")
    fi
    get_config_str "${ASTROCFGS}"
    astro_partial=${cfgpart}
    astro_installed=${cfginst}
    if [ "${astro_installed}" ]; then
      options+=("Update Astros     ${configstr}")
    else
      options+=("Install Astros    ${configstr}")
    fi
    get_config_str "${LAZYVIMCFGS}"
    lzyvm_partial=${cfgpart}
    lzyvm_installed=${cfginst}
    if [ "${lzyvm_installed}" ]; then
      options+=("Update LazyVims   ${configstr}")
    else
      options+=("Install LazyVims  ${configstr}")
    fi
    get_config_str "${LUNARVIMCFGS}"
    lunar_partial=${cfgpart}
    lunar_installed=${cfginst}
    if [ "${lunar_installed}" ]; then
      options+=("Update LunarVims  ${configstr}")
    else
      options+=("Install LunarVims ${configstr}")
    fi
    get_config_str "${NVCHADCFGS}"
    nvchd_partial=${cfgpart}
    nvchd_installed=${cfginst}
    if [ "${nvchd_installed}" ]; then
      options+=("Update NvChads    ${configstr}")
    else
      options+=("Install NvChads   ${configstr}")
    fi
    get_config_str "${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}"
    if [ "${cfginst}" ]; then
      options+=("Update All        ${configstr}")
      iushort="update"
    else
      options+=("Install All       ${configstr}")
      iushort="install"
    fi
    uninstalled=()
    if [ "${have_fzf}" ]; then
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
    [ "${astro_installed}" ] || options+=("Select/Inst Astros")
    [ "${lzyvm_installed}" ] || options+=("Select/Inst LazyVims")
    [ "${lunar_installed}" ] || options+=("Select/Inst LunarVims")
    [ "${nvchd_installed}" ] || options+=("Select/Inst NvChads")
    if [ "${USEGUI}" ]; then
      if [ "${have_neovide}" ]; then
        if typeset -f neovides >/dev/null 2>&1; then
          [ ${numitems} -gt 1 ] && options+=("Select and Open")
        else
          options+=("Open Neovide")
          if typeset -f nvims >/dev/null 2>&1; then
            USEGUI=
            use_gui="neovim"
            [ ${numitems} -gt 1 ] && options+=("Select and Open")
          fi
        fi
      else
        USEGUI=
        use_gui="neovim"
        options+=("Install Neovide")
        if typeset -f nvims >/dev/null 2>&1; then
          [ ${numitems} -gt 1 ] && options+=("Select and Open")
        fi
      fi
    else
      [ "${have_neovide}" ] || {
        USEGUI=
        use_gui="neovim"
        options+=("Install Neovide")
      }
      if typeset -f nvims >/dev/null 2>&1; then
        [ ${numitems} -gt 1 ] && options+=("Select and Open")
      fi
    fi

    [ "${base_partial}" ] && options+=("Select/Open Base")
    [ "${lang_partial}" ] && options+=("Select/Open Language")
    [ "${prsnl_partial}" ] && options+=("Select/Open Personal")
    [ "${start_partial}" ] && options+=("Select/Open Starter")
    [ "${astro_partial}" ] && options+=("Select/Open Astros")
    [ "${lzyvm_partial}" ] && options+=("Select/Open LazyVims")
    [ "${lunar_partial}" ] && options+=("Select/Open LunarVims")
    [ "${nvchd_partial}" ] && options+=("Select/Open NvChads")

    options+=("Select and Update")
    if [ "${iushort}" == "update" ]; then
      shortcuts="help info open search update"
    else
      shortcuts="help info install open search"
    fi
    [ ${numitems} -gt 1 ] && {
      options+=("Select and Remove")
      if [ "${iushort}" == "update" ]; then
        shortcuts="help info open remove search update"
      else
        shortcuts="help info install open remove search"
      fi
    }
    [ "${base_partial}" ] && options+=("Remove Base")
    [ "${lang_partial}" ] && options+=("Remove Languages")
    [ "${prsnl_partial}" ] && options+=("Remove Personals")
    [ "${start_partial}" ] && options+=("Remove Starters")
    [ "${astro_partial}" ] && options+=("Remove Astros")
    [ "${lunar_partial}" ] && options+=("Remove LunarVims")
    [ "${lzyvm_partial}" ] && options+=("Remove LazyVims")
    [ "${nvchd_partial}" ] && options+=("Remove NvChads")
    numndirs=${#ndirs[@]}
    [ ${numndirs} -gt 1 ] && {
      options+=("Remove All")
    }
    if [ ${showinstalled} -gt 1 ]; then
      options+=("Hide List")
    else
      [ ${showinstalled} -eq 0 ] && options+=("Show List")
    fi
    if [ -f "${LMANDIR}/.initialized" ]; then
      grep "__extra_tools__" "${LMANDIR}"/.initialized >/dev/null || {
        options+=("Install Tools")
      }
    else
      options+=("Initialize Lazyman")
      options+=("Install Tools")
    fi
    if [ "${debug}" ]; then
      options+=("Debug Mode [on]")
    else
      options+=("Debug Mode [off]")
    fi
    have_bob=$(type -p bob)
    if [ "${have_bob}" ]; then
      used=$(bob list | grep Used | awk ' { print $2 } ')
      options+=("Neovim Ver [${used}]")
    else
      options+=("Install Bob")
      options+=(" What is Bob?")
    fi
    if [ "${have_neovide}" ]; then
      options+=("Toggle UI [${use_gui}]")
    fi
    options+=("Config Info" "Health Check" "Plugin Search")
    numnvim=$(ps -ef | grep ' nvim ' | grep -v grep | wc -l)
    [ ${numnvim} -gt 0 ] && {
      [ -x ${KILLNVIM} ] && options+=("Kill All Nvim")
    }
    options+=("Lazyman Config")
    [ -f ${HOME}/.config/nvim-LazyIde/lua/configuration.lua ] && {
      options+=("LazyIde Config")
    }
    [ -f ${HOME}/.config/nvim-Webdev/lua/configuration.lua ] && {
      options+=("Webdev Config")
    }
    options+=("Lazyman Manual" "Lazyman Status")
    [ "${have_brew}" ] && {
      options+=("Homebrew Upgrade")
    }
    options+=("Quit")
    if [ "${have_rich}" ]; then
      rich "[b cyan]Selection shortcuts:[/] [b yellow]${shortcuts}[/]" -p
    else
      printf "\nSelection shortcuts: ${BOLD}${shortcuts}${NORM}\n"
    fi
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
      "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
        [ "$debug" ] || tput reset
        printf "\n"
        show_main_help
        help=1
        break
        ;;
      "Lazyman Manual"*,* | *,"Lazyman Manual"*)
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
      "Select/Inst Astros"*,* | *,"Select/Inst Astros"*)
        choices=()
        for neovim in ${ASTROCFGS}; do
          basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
          if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
            choices+=("${basenvdir}")
          fi
        done
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select AstroNvim Neovim Config to Install  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          install_config "${choice}"
        fi
        break
        ;;
      "Select/Inst NvChad"*,* | *,"Select/Inst NvChad"*)
        choices=()
        for neovim in ${NVCHADCFGS}; do
          basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
          if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
            choices+=("${basenvdir}")
          fi
        done
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select NvChad Neovim Config to Install  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          install_config "${choice}"
        fi
        break
        ;;
      "Select/Inst LazyVim"*,* | *,"Select/Inst LazyVim"*)
        choices=()
        for neovim in ${LAZYVIMCFGS}; do
          basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
          if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
            choices+=("${basenvdir}")
          fi
        done
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select LazyVim Neovim Config to Install  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          install_config "${choice}"
        fi
        break
        ;;
      "Select/Inst LunarVim"*,* | *,"Select/Inst LunarVim"*)
        choices=()
        for neovim in ${LUNARVIMCFGS}; do
          basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
          if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
            choices+=("${basenvdir}")
          fi
        done
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select LunarVim Neovim Config to Install  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          install_config "${choice}"
        fi
        break
        ;;
      "Select and Install"*,* | *,"Select and Install"* | "install",* | *,"install" | "Install",* | *,"Install")
        choice=$(printf "%s\n" "${uninstalled[@]}" | fzf --prompt=" Install Neovim Config  " --layout=reverse --border --exit-0)
        [ "${choice}" ] && install_config "${choice}"
        break
        ;;
      "Select and Update"*,* | *,"Select and Update"* | "update",* | *,"update" | "Update",* | *,"Update")
        choice=$(printf "%s\n" "${sorted[@]}" | fzf --prompt=" Update Neovim Config  " --layout=reverse --border --exit-0)
        [ "${choice}" ] && update_config "${choice}"
        break
        ;;
      "Select/Open Base"*,* | *,"Select/Open Base"* | "open b"*,* | *,"open b"* | "Open B"*,* | *,"Open B"*)
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
            runconfig "nvim-${choice}" "neovide"
          else
            runconfig "nvim-${choice}"
          fi
        fi
        break
        ;;
      "Select/Open Language"*,* | *,"Select/Open Language"* | "open lan"*,* | *,"open lan"* | "Open Lan"*,* | *,"Open Lan"*)
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
            runconfig "nvim-${choice}" "neovide"
          else
            runconfig "nvim-${choice}"
          fi
        fi
        break
        ;;
      "Select/Open Personal"*,* | *,"Select/Open Personal"* | "open p"*,* | *,"open p"* | "Open P"*,* | *,"Open P"*)
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
            runconfig "nvim-${choice}" "neovide"
          else
            runconfig "nvim-${choice}"
          fi
        fi
        break
        ;;
      "Select/Open Starter"*,* | *,"Select/Open Starter"* | "open s"*,* | *,"open s"* | "Open S"*,* | *,"Open S"*)
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
            runconfig "nvim-${choice}" "neovide"
          else
            runconfig "nvim-${choice}"
          fi
        fi
        break
        ;;
      "Select/Open Astros"*,* | *,"Select/Open Astros"* | "open a"*,* | *,"open a"* | "Open A"*,* | *,"Open A"*)
        choices=()
        for neovim in ${ASTROCFGS}; do
          basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
          if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
            choices+=("${basenvdir}")
          fi
        done
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select AstroNvim Neovim Config to Open  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          if [ "${USEGUI}" ]; then
            runconfig "nvim-${choice}" "neovide"
          else
            runconfig "nvim-${choice}"
          fi
        fi
        break
        ;;
      "Select/Open NvChad"*,* | *,"Select/Open NvChad"* | "open n"*,* | *,"open n"* | "Open N"*,* | *,"Open N"*)
        choices=()
        for neovim in ${NVCHADCFGS}; do
          basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
          if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
            choices+=("${basenvdir}")
          fi
        done
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select NvChad Neovim Config to Open  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          if [ "${USEGUI}" ]; then
            runconfig "nvim-${choice}" "neovide"
          else
            runconfig "nvim-${choice}"
          fi
        fi
        break
        ;;
      "Select/Open LazyVim"*,* | *,"Select/Open LazyVim"* | "open laz"*,* | *,"open laz"* | "Open Laz"*,* | *,"Open Laz"*)
        choices=()
        for neovim in ${LAZYVIMCFGS}; do
          basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
          if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
            choices+=("${basenvdir}")
          fi
        done
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select LazyVim Neovim Config to Open  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          if [ "${USEGUI}" ]; then
            runconfig "nvim-${choice}" "neovide"
          else
            runconfig "nvim-${choice}"
          fi
        fi
        break
        ;;
      "Select/Open LunarVim"*,* | *,"Select/Open LunarVim"* | "open lun"*,* | *,"open lun"* | "Open Lun"*,* | *,"Open Lun"*)
        choices=()
        for neovim in ${LUNARVIMCFGS}; do
          basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
          if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
            choices+=("${basenvdir}")
          fi
        done
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select LunarVim Neovim Config to Open  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          if [ "${USEGUI}" ]; then
            runconfig "nvim-${choice}" "neovide"
          else
            runconfig "nvim-${choice}"
          fi
        fi
        break
        ;;
      "Select and Open"*,* | *,"Select and Open"* | "open",* | *,"open" | "Open",* | *,"Open")
        if [ "${USEGUI}" ]; then
          neovides
        else
          nvims
        fi
        break
        ;;
      "Select and Remove"*,* | *,"Select and Remove"* | "remove",* | *,"remove" | "Remove",* | *,"Remove")
        if [ "${USEGUI}" ]; then
          neovides -R
        else
          nvims -R
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
      "Install Astros"*,* | *,"Install Astros"*)
        lazyman ${darg} -i astronvim -y -z -Q -q
        break
        ;;
      "Install NvChad"*,* | *,"Install NvChad"*)
        lazyman ${darg} -i nvchad -y -z -Q -q
        break
        ;;
      "Install LazyVim"*,* | *,"Install LazyVim"*)
        lazyman ${darg} -i lazyvim -y -z -Q -q
        break
        ;;
      "Install LunarVim"*,* | *,"Install LunarVim"*)
        lazyman ${darg} -i lunarvim -y -z -Q -q
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
      "Update Astros"*,* | *,"Update Astros"*)
        lazyman ${darg} -i astronvim -y -z -Q -q -U
        break
        ;;
      "Update NvChad"*,* | *,"Update NvChad"*)
        lazyman ${darg} -i nvchad -y -z -Q -q -U
        break
        ;;
      "Update LazyVim"*,* | *,"Update LazyVim"*)
        lazyman ${darg} -i lazyvim -y -z -Q -q -U
        break
        ;;
      "Update LunarVim"*,* | *,"Update LunarVim"*)
        lazyman ${darg} -i lunarvim -y -z -Q -q -U
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
        if [ -x ${HOME}/.cargo/bin/bob ]; then
          have_bob="${HOME}/.cargo/bin/bob"
          export PATH=$PATH:${HOME}/.cargo/bin
        else
          have_bob=$(type -p bob)
        fi
        if [ "${have_bob}" ]; then
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
      "Initialize Lazyman"*,* | *,"Initialize Lazyman"*)
        install_neovim ${darg} -I
        [ -x "${INSTNVIM}" ] && {
          "${INSTNVIM}" $darg $head $brew $yes
        }
        lazyman ${darg} init
        set_haves
        break
        ;;
      "Install Tools"*,* | *,"Install Tools"*)
        lazyman ${darg} -I
        set_haves
        break
        ;;
      "Install Neovide"*,* | *,"Install Neovide"*)
        [ -x "${SCRIPTSD}/install_neovide.sh" ] && {
          "${SCRIPTSD}/install_neovide.sh"
        }
        have_neovide=$(type -p neovide)
        [ -f "${LZYMANRC}" ] && {
          source "${LZYMANRC}"
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
            runconfig "nvim-${nvimconf}" "neovide"
          else
            runconfig "nvim-${nvimconf}"
          fi
        else
          if [ -d "${HOME}/.config/${nvimconf}" ]; then
            if [ "${USEGUI}" ]; then
              runconfig "nvim-${nvimconf}" "neovide"
            else
              runconfig "nvim-${nvimconf}"
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
      "Remove Astros"*,* | *,"Remove Astros"*)
        printf "\nRemoving all Lazyman 'AstroNvim' Neovim configurations\n"
        lazyman -R -i astronvim -y
        break
        ;;
      "Remove NvChad"*,* | *,"Remove NvChad"*)
        printf "\nRemoving all Lazyman 'NvChad' Neovim configurations\n"
        lazyman -R -i nvchad -y
        break
        ;;
      "Remove LazyVim"*,* | *,"Remove LazyVim"*)
        printf "\nRemoving all Lazyman 'LazyVim' Neovim configurations\n"
        lazyman -R -i lazyvim -y
        break
        ;;
      "Remove LunarVim"*,* | *,"Remove LunarVim"*)
        printf "\nRemoving all Lazyman 'LunarVim' Neovim configurations\n"
        lazyman -R -i lunarvim -y
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
      "Hide List"*,* | *,"Hide List"*)
        showinstalled=0
        break
        ;;
      "Show List"*,* | *,"Show List"*)
        showinstalled=2
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
      "Config Info",* | *,"Config Info" | "info",* | *,"info" | "Info",* | *,"Info")
        items=()
        [ -f "${LZYMANRC}" ] && {
          source "${LZYMANRC}"
          # This gets all supported configs plus any installed custom configs
          readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
          for neovim in ${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}; do
            if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
              sorted+=("${neovim}")
            fi
          done
          IFS=$'\n' choices=($(sort <<<"${sorted[*]}"))
          unset IFS
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Neovim Config for Information Display  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            lazyman -N "nvim-${choice}" info
          fi
        }
        break
        ;;
      "Plugin Search",* | *,"Plugin Search" | "search"*,* | *,"search"* | "Search"*,* | *,"Search"*)
        select_search noexit
        break
        ;;
      "Health Check",* | *,"Health Check")
        choices=()
        items=()
        [ -f "${LZYMANRC}" ] && {
          source "${LZYMANRC}"
          readarray -t choices < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
        }
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Neovim Config for Health Check  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          lazyman -N "nvim-${choice}" health
        fi
        break
        ;;
      "Kill All"*,* | *,"Kill All"*)
        ${KILLNVIM}
        break
        ;;
      "Lazyman Config",* | *,"Lazyman Config")
        confmenu=1
        break
        ;;
      "LazyIde Config",* | *,"LazyIde Config")
        lidemenu=1
        break
        ;;
      "Webdev Config",* | *,"Webdev Config")
        wdevmenu=1
        break
        ;;
      "Lazyman Status",* | *,"Lazyman Status")
        printf "\nPreparing Lazyman status report\n"
        show_status >/tmp/lminfo$$
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
    [ "${lidemenu}" ] && {
      ${LZYIDE}
      [ $? -eq 3 ] && exit 0
    }
    [ "${wdevmenu}" ] && {
      ${WEBDEV}
      [ $? -eq 3 ] && exit 0
    }
    [ "${versmenu}" ] && show_vers_menu
  done
  [ "${help}" ] && show_main_menu
}

get_config_str() {
  CFGS="$1"
  cfginst=1
  cfgpart=
  for cfg in ${CFGS}; do
    inst=
    for bdir in "${sorted[@]}"; do
      [[ $cfg == "$bdir" ]] && {
        cfgpart=1
        inst=1
        break
      }
    done
    [ "${inst}" ] || cfginst=
  done
  if [ "${cfginst}" ]; then
    configstr="🌝"
  else
    if [ "${cfgpart}" ]; then
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
  BasicLsp)
    startbranch="xx-basic-lsp"
    ;;
  BasicMason)
    startbranch="xx-mason"
    ;;
  Extralight)
    startbranch="xx-light"
    ;;
  LspCmp)
    startbranch="xx-lsp-cmp"
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
instcfgs=
langservers=
nvchadcustom=
tellme=
exitafter=
astronvim=
customastro=
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
nvimsupport=
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
astronvimdir="nvim-AstroNvimPlus"
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
pdedir="nvim-pde"
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
  [ "$1" == "-U" ] && neovimdir=("${LAZYMAN}")
}
while getopts "aAb:BcC:dD:eE:f:F:gGhHi:IjJkK:lL:mMnN:opPqQrRsStTUvV:w:Wx:XyzZu" flag; do
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
    if [ "${menu}" ]; then
      case "${menu}" in
      conf* | Conf*)
        menu="confmenu"
        ;;
      plug* | Plug*)
        menu="plugmenu"
        ;;
      lsp* | Lsp* | LSP*)
        menu="lspmenu"
        ;;
      for* | For* | lint* | Lint*)
        menu="formenu"
        ;;
      lazy* | Lazy* | lide* | Lide*)
        menu="lidemenu"
        ;;
      webd* | Webd* | wdev* | Wdev*)
        menu="wdevmenu"
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
    packer=1
    pmgr="Packer"
    ;;
  h)
    brew="-h"
    ;;
  H)
    head="-n"
    ;;
  i)
    instcfgs="${OPTARG}"
    ;;
  I)
    langservers=1
    ;;
  j)
    basicide=1
    neovimdir=("$basicidedir")
    ;;
  J)
    customastro=1
    ;;
  k)
    kickstart=1
    neovimdir=("$kickstartdir")
    ;;
  K)
    nvimsupport="$OPTARG"
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
  initdir="${LAZYMAN}"
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
  checkdir="${LAZYMAN}"
  [ "$name" ] && checkdir="$name"
  printf "\nPreparing Lazyman health check for ${checkdir} Neovim configuration\n"
  show_health "${checkdir}"
  exit 0
}

[ "$1" == "info" ] && {
  checkdir="${LAZYMAN}"
  [ "$name" ] && checkdir="$name"
  printf "\nPreparing Lazyman information display for ${checkdir} Neovim configuration\n"
  show_info "${checkdir}"
  exit 0
}

[ "$1" == "status" ] && {
  printf "\nPreparing Lazyman status report\n"
  show_status
  exit 0
}

[ "$1" == "search" ] && {
  select_search
  exit 0
}

[ "$1" == "usage" ] && usage

[ "${listinstalled}" ] || [ "${listuninstalled}" ] && {
  [ "${listinstalled}" ] && list_installed
  [ "${listuninstalled}" ] && list_uninstalled
  exit 0
}

set_haves

[ "$select" ] && {
  if [ -f "${LZYMANRC}" ]; then
    source "${LZYMANRC}"
  else
    printf "\nWARNING: missing ${LZYMANRC}"
    printf "\nReinstall Lazyman with:"
    printf "\n\tlazyman -R -N ${LAZYMAN}"
    printf "\n\tlazyman\n"
  fi
  if typeset -f nvims >/dev/null 2>&1; then
    nvims "$@"
  fi
  exit 0
}

install_remove() {
  cfg="$1"
  if [ "$remove" ]; then
    remove_config "nvim-${cfg}"
  else
    install_config ${cfg}
  fi
}

[ "${instcfgs}" ] && {
  case ${instcfgs} in
  LazyVim | lazyvim)
    for nvimconfig in ${LAZYVIMCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  AstroNvim | Astronvim | astronvim)
    for nvimconfig in ${ASTROCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  Kickstart | kickstart)
    for nvimconfig in ${KICKSTARTCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  LunarVim | lunarvim)
    for nvimconfig in ${LUNARVIMCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  NvChad | Nvchad | nvchad)
    for nvimconfig in ${NVCHADCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  Packer | packer)
    for nvimconfig in ${PACKERCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  Plug | plug)
    for nvimconfig in ${PLUGCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  *)
    printf "\nUnknown configuration group: -i ${instcfgs}"
    brief_usage
    ;;
  esac
}

[ "$nvimbase" ] && {
  yesflag="-Q"
  [ "${proceed}" ] && yesflag="-Q -y"
  debugflag=
  [ "${debug}" ] && debugflag="-d"
  if [ "$remove" ]; then
    lazyman -R -B ${debugflag} ${yesflag}
  else
    if [ "${update}" ]; then
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
      [ -d ${HOME}/.config/nvim-AlanVim ] && action="Updating"
      printf "\n${action} AlanVim Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/alanRizzo/dot-files \
        -D nvim -N nvim-AlanVim -P ${quietflag} -z ${yesflag}
      show_alias "nvim-AlanVim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Allaman ] && action="Updating"
      printf "\n${action} Allaman Neovim configuration"
      lazyman ${darg} -C https://github.com/Allaman/nvim \
        -N nvim-Allaman ${quietflag} -z ${yesflag}
      show_alias "nvim-Allaman"
      action="Installing"
      [ -d ${HOME}/.config/nvim-CatNvim ] && action="Updating"
      printf "\n${action} CatNvim Neovim configuration"
      lazyman ${darg} -C https://github.com/nullchilly/CatNvim \
        -N nvim-CatNvim ${quietflag} -z ${yesflag}
      show_alias "nvim-CatNvim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Cpp ] && action="Updating"
      printf "\n${action} Cpp Neovim configuration"
      lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-cpp \
        -b main -N nvim-Cpp ${quietflag} -z ${yesflag}
      show_alias "nvim-Cpp"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Go ] && action="Updating"
      printf "\n${action} Go Neovim configuration"
      lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-go-config \
        -b main -N nvim-Go ${quietflag} -z ${yesflag}
      show_alias "nvim-Go"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Go2one ] && action="Updating"
      printf "\n${action} Go2one Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/leoluz/go2one \
        -D nvim -N nvim-Go2one -P ${quietflag} -z ${yesflag}
      show_alias "nvim-Go2one"
      action="Installing"
      [ -d ${HOME}/.config/nvim-LazyIde ] && action="Updating"
      printf "\n${action} LazyIde Neovim configuration"
      lazyman ${darg} -C https://github.com/doctorfree/nvim-LazyIde \
        -N nvim-LazyIde ${quietflag} -z ${yesflag}
      show_alias "nvim-LazyIde"
      action="Installing"
      [ -d ${HOME}/.config/nvim-LunarIde ] && action="Updating"
      printf "\n${action} LunarIde Neovim configuration"
      lazyman ${darg} -C https://github.com/doctorfree/lvim-Christian \
        -N nvim-LunarIde ${quietflag} -z ${yesflag}
      show_alias "nvim-LunarIde"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Knvim ] && action="Updating"
      printf "\n${action} Knvim Neovim configuration"
      lazyman ${darg} -C https://github.com/knmac/knvim \
        -N nvim-Knvim ${quietflag} -z ${yesflag}
      show_alias "nvim-Knvim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-LaTeX ] && action="Updating"
      printf "\n${action} LaTeX Neovim configuration"
      lazyman ${darg} -C https://github.com/benbrastmckie/.config -D nvim \
        -N nvim-LaTeX -f "${fix_latex}" -P ${quietflag} -z ${yesflag}
      show_alias "nvim-LaTeX"
      action="Installing"
      [ -d ${HOME}/.config/nvim-LvimIde ] && action="Updating"
      printf "\n${action} LvimIde Neovim configuration"
      lazyman ${darg} -C https://github.com/lvim-tech/lvim \
        -N nvim-LvimIde ${quietflag} -z ${yesflag}
      show_alias "nvim-LvimIde"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Magidc ] && action="Updating"
      printf "\n${action} Magidc Neovim configuration"
      lazyman ${darg} -C https://github.com/magidc/nvim-config \
        -N nvim-Magidc ${quietflag} -z ${yesflag}
      show_alias "nvim-Magidc"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Nv ] && action="Updating"
      printf "\n${action} Nv Neovim configuration"
      lazyman ${darg} -C https://github.com/appelgriebsch/Nv \
        -N nvim-Nv ${quietflag} -z ${yesflag}
      show_alias "nvim-Nv"
      action="Installing"
      [ -d ${HOME}/.config/nvim-NV-IDE ] && action="Updating"
      printf "\n${action} NV-IDE Neovim configuration"
      lazyman ${darg} -C https://github.com/crivotz/nv-ide \
        -N nvim-NV-IDE ${quietflag} -z ${yesflag}
      show_alias "nvim-NV-IDE"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Python ] && action="Updating"
      printf "\n${action} Python Neovim configuration"
      lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-python \
        -b main -N nvim-Python ${quietflag} -z ${yesflag}
      show_alias "nvim-Python"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Rust ] && action="Updating"
      printf "\n${action} Rust Neovim configuration"
      lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-rust \
        -b main -N nvim-Rust ${quietflag} -z ${yesflag}
      show_alias "nvim-Rust"
      action="Installing"
      [ -d ${HOME}/.config/nvim-SaleVim ] && action="Updating"
      printf "\n${action} SaleVim Neovim configuration"
      lazyman ${darg} -C https://github.com/igorcguedes/SaleVim \
        -N nvim-SaleVim -P ${quietflag} -z ${yesflag}
      show_alias "nvim-SaleVim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Shuvro ] && action="Updating"
      printf "\n${action} Shuvro Neovim configuration"
      lazyman ${darg} -b custom -C https://github.com/shuvro/lvim \
        -N nvim-Shuvro ${quietflag} -z ${yesflag}
      show_alias "nvim-Shuvro"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Webdev ] && action="Updating"
      printf "\n${action} Webdev Neovim configuration"
      lazyman ${darg} -C https://github.com/doctorfree/nvim-webdev \
        -N nvim-Webdev ${quietflag} -z ${yesflag}
      show_alias "nvim-Webdev"
    else
      lang_url=
      lang_dir=
      lang_opt=
      help_opt=
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimlang} in
      AlanVim)
        lang_url="-C https://github.com/alanRizzo/dot-files"
        lang_opt="-b main -P"
        lang_dir="-D nvim"
        ;;
      Allaman)
        lang_url="-C https://github.com/Allaman/nvim"
        ;;
      CatNvim)
        lang_url="-C https://github.com/nullchilly/CatNvim"
        ;;
      Cpp)
        lang_url="-V https://github.com/dreamsofcode-io/neovim-cpp"
        lang_opt="-b main"
        ;;
      Go)
        lang_url="-V https://github.com/dreamsofcode-io/neovim-go-config"
        lang_opt="-b main"
        ;;
      Go2one)
        lang_url="-C https://github.com/leoluz/go2one"
        lang_opt="-b main -P"
        lang_dir="-D nvim"
        ;;
      LazyIde)
        lang_url="-C https://github.com/doctorfree/nvim-LazyIde"
        ;;
      LunarIde)
        lang_url="-C https://github.com/doctorfree/lvim-Christian"
        ;;
      Knvim)
        lang_url="-C https://github.com/knmac/knvim"
        ;;
      LaTeX)
        lang_url="-C https://github.com/benbrastmckie/.config"
        lang_opt="-P"
        lang_dir="-D nvim"
        help_opt="-f ${fix_latex}"
        ;;
      LvimIde)
        lang_url="-C https://github.com/lvim-tech/lvim"
        ;;
      Magidc)
        lang_url="-C https://github.com/magidc/nvim-config"
        ;;
      Nv)
        lang_url="-C https://github.com/appelgriebsch/Nv"
        ;;
      NV-IDE)
        lang_url="-C https://github.com/crivotz/nv-ide"
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
      Shuvro)
        lang_url="-C https://github.com/shuvro/lvim"
        lang_opt="-b custom"
        ;;
      Webdev)
        lang_url="-C https://github.com/doctorfree/nvim-webdev"
        ;;
      *)
        printf "\nUnrecognized language configuration: ${nvimlang}"
        prompt_continue
        usage
        ;;
      esac
      action="Installing"
      [ -d ${HOME}/.config/nvim-${nvimlang} ] && action="Updating"
      printf "\n${action} ${nvimlang} Neovim configuration"
      lazyman ${darg} ${lang_url} -N nvim-${nvimlang} ${lang_dir} \
        ${lang_opt} ${help_opt} ${quietflag} ${runflag} ${yesflag}
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
    yesflag="-Q"
    [ "${proceed}" ] && yesflag="-Q -y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${nvimprsnl}" == "all" ]; then
      printf "\n\nInstalling/Updating all Personal Neovim configurations."
      action="Installing"
      [ -d ${HOME}/.config/nvim-Mini ] && action="Updating"
      printf "\n${action} Mini Neovim configuration"
      lazyman ${darg} -M ${quietflag} -z ${yesflag}
      show_alias "nvim-Mini"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Charles ] && action="Updating"
      printf "\n${action} Charles Neovim configuration"
      lazyman ${darg} -C https://github.com/CharlesChiuGit/nvimdots.lua \
        -N nvim-Charles ${quietflag} -z ${yesflag}
      show_alias "nvim-Charles"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Craftzdog ] && action="Updating"
      printf "\n${action} Craftzdog Neovim configuration"
      lazyman ${darg} -C https://github.com/craftzdog/dotfiles-public \
        -D .config/nvim -N nvim-Craftzdog -P ${quietflag} -z ${yesflag}
      show_alias "nvim-Craftzdog"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Daniel ] && action="Updating"
      printf "\n${action} Daniel Neovim configuration"
      lazyman ${darg} -C https://github.com/daniel-vera-g/lvim \
        -N nvim-Daniel ${quietflag} -z ${yesflag}
      show_alias "nvim-Daniel"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Dillon ] && action="Updating"
      printf "\n${action} Dillon Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/dmmulroy/dotfiles \
        -D .config/nvim -N nvim-Dillon -P ${quietflag} -z ${yesflag}
      show_alias "nvim-Dillon"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Kodo ] && action="Updating"
      printf "\n${action} Kodo Neovim configuration"
      lazyman ${darg} -C https://github.com/chadcat7/kodo \
        -N nvim-Kodo ${quietflag} -z ${yesflag}
      show_alias "nvim-Kodo"
      action="Installing"
      [ -d ${HOME}/.config/nvim-LvimAdib ] && action="Updating"
      printf "\n${action} LvimAdib Neovim configuration"
      lazyman ${darg} -C https://github.com/adibhanna/lvim-config \
        -N nvim-LvimAdib ${quietflag} -z ${yesflag}
      show_alias "nvim-LvimAdib"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Maddison ] && action="Updating"
      printf "\n${action} Maddison Neovim configuration"
      lazyman ${darg} -C https://github.com/b0o/nvim-conf \
        -N nvim-Maddison ${quietflag} -z ${yesflag}
      show_alias "nvim-Maddison"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Metis ] && action="Updating"
      printf "\n${action} Metis Neovim configuration"
      lazyman ${darg} -C https://github.com/metis-os/pwnvim \
        -N nvim-Metis ${quietflag} -z ${yesflag}
      show_alias "nvim-Metis"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Orhun ] && action="Updating"
      printf "\n${action} Orhun Neovim configuration"
      lazyman ${darg} -C https://github.com/orhun/dotfiles -J \
        -D nvim/.config/nvim/lua/user -N nvim-Orhun ${quietflag} -z ${yesflag}
      show_alias "nvim-Orhun"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Spider ] && action="Updating"
      printf "\n${action} Spider Neovim configuration"
      lazyman ${darg} -C https://github.com/fearless-spider/FSAstroNvim \
        -N nvim-Spider ${quietflag} -z ${yesflag}
      show_alias "nvim-Spider"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Adib ] && action="Updating"
      printf "\n${action} Adib Neovim configuration"
      lazyman ${darg} -C https://github.com/adibhanna/nvim \
        -N nvim-Adib ${quietflag} -z ${yesflag}
      show_alias "nvim-Adib"
      action="Installing"
      [ -d ${HOME}/.config/nvim-ONNO ] && action="Updating"
      printf "\n${action} ONNO Neovim configuration"
      lazyman ${darg} -C https://github.com/loctvl842/nvim -N nvim-ONNO \
        -f "${fix_onno}" ${quietflag} -z ${yesflag}
      show_alias "nvim-ONNO"
      action="Installing"
      [ -d ${HOME}/.config/nvim-OnMyWay ] && action="Updating"
      printf "\n${action} OnMyWay Neovim configuration"
      lazyman ${darg} -C https://github.com/RchrdAlv/NvimOnMy_way \
        -N nvim-OnMyWay -p ${quietflag} -z ${yesflag}
      show_alias "nvim-OnMyWay"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Optixal ] && action="Updating"
      printf "\n${action} Optixal Neovim configuration"
      lazyman ${darg} -C https://github.com/Optixal/neovim-init.vim \
        -N nvim-Optixal -p ${quietflag} -z ${yesflag}
      show_alias "nvim-Optixal"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Heiker ] && action="Updating"
      printf "\n${action} VonHeikemen Neovim configuration"
      lazyman ${darg} -C https://github.com/VonHeikemen/dotfiles \
        -D my-configs/neovim -N nvim-Heiker ${quietflag} -z ${yesflag}
      show_alias "nvim-Heiker"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Roiz ] && action="Updating"
      printf "\n${action} Roiz Neovim configuration"
      lazyman ${darg} -C https://github.com/MrRoiz/rnvim \
        -N nvim-Roiz ${quietflag} -z ${yesflag}
      show_alias "nvim-Roiz"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Simple ] && action="Updating"
      printf "\n${action} Simple Neovim configuration"
      lazyman ${darg} -C https://github.com/anthdm/.nvim \
        -N nvim-Simple -P ${quietflag} -z ${yesflag}
      show_alias "nvim-Simple"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Artur ] && action="Updating"
      printf "\n${action} Artur Neovim configuration"
      lazyman ${darg} -C https://github.com/arturgoms/nvim \
        -N nvim-Artur ${quietflag} -z ${yesflag}
      show_alias "nvim-Artur"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Brain ] && action="Updating"
      printf "\n${action} Brain Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/brainfucksec/neovim-lua \
        -N nvim-Brain -D nvim ${quietflag} -z ${yesflag}
      show_alias "nvim-Brain"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Elianiva ] && action="Updating"
      printf "\n${action} Elianiva Neovim configuration"
      lazyman ${darg} -C https://github.com/elianiva/dotfiles \
        -D nvim/.config/nvim -N nvim-Elianiva ${quietflag} -z ${yesflag}
      show_alias "nvim-Elianiva"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Enrique ] && action="Updating"
      printf "\n${action} Enrique Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/kiyov09/dotfiles \
        -D .config/nvim -N nvim-Enrique -P ${quietflag} -z ${yesflag}
      show_alias "nvim-Enrique"
      action="Installing"
      [ -d ${HOME}/.config/nvim-J4de ] && action="Updating"
      printf "\n${action} J4de Neovim configuration"
      lazyman ${darg} -C https://codeberg.org/j4de/nvim \
        -N nvim-J4de ${quietflag} -z ${yesflag}
      show_alias "nvim-J4de"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Josean ] && action="Updating"
      printf "\n${action} Josean Neovim configuration"
      lazyman ${darg} -C https://github.com/josean-dev/dev-environment-files \
        -b main -D .config/nvim -N nvim-Josean -P ${quietflag} -z ${yesflag}
      show_alias "nvim-Josean"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Rafi ] && action="Updating"
      printf "\n${action} Rafi Neovim configuration"
      lazyman ${darg} -C https://github.com/rafi/vim-config \
        -N nvim-Rafi ${quietflag} -z ${yesflag}
      show_alias "nvim-Rafi"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Slydragonn ] && action="Updating"
      printf "\n${action} Slydragonn Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/slydragonn/dotfiles \
        -D '.config/nvim' -N nvim-Slydragonn -P ${quietflag} -z ${yesflag}
      show_alias "nvim-Slydragonn"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Traap ] && action="Updating"
      printf "\n${action} Traap Neovim configuration"
      lazyman ${darg} -C https://github.com/Traap/nvim \
        -N nvim-Traap ${quietflag} -z ${yesflag}
      show_alias "nvim-Traap"
      action="Installing"
      [ -d ${HOME}/.config/nvim-xero ] && action="Updating"
      printf "\n${action} xero Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/xero/dotfiles \
        -D neovim/.config/nvim -N nvim-xero ${quietflag} -z ${yesflag}
      show_alias "nvim-xero"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Xiao ] && action="Updating"
      printf "\n${action} Xiao Neovim configuration"
      lazyman ${darg} -C https://github.com/onichandame/nvim-config \
        -N nvim-Xiao ${quietflag} -z ${yesflag}
      show_alias "nvim-Xiao"
    else
      prsnl_url=
      prsnl_dir=
      prsnl_opt=
      help_opt=
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimprsnl} in
      Adib)
        prsnl_url="https://github.com/adibhanna/nvim"
        ;;
      Artur)
        prsnl_url="https://github.com/arturgoms/nvim"
        ;;
      Brain)
        prsnl_url="https://github.com/brainfucksec/neovim-lua"
        prsnl_dir="-D nvim"
        ;;
      Elianiva)
        prsnl_url="https://github.com/elianiva/dotfiles"
        prsnl_dir="-D nvim/.config/nvim"
        ;;
      Enrique)
        prsnl_url="https://github.com/kiyov09/dotfiles"
        prsnl_opt="-b main -P"
        prsnl_dir="-D .config/nvim"
        ;;
      J4de)
        prsnl_url="https://codeberg.org/j4de/nvim"
        ;;
      Josean)
        prsnl_url="https://github.com/josean-dev/dev-environment-files"
        prsnl_opt="-b main -P"
        prsnl_dir="-D .config/nvim"
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
      xero)
        prsnl_url="https://github.com/xero/dotfiles"
        prsnl_opt="-b main"
        prsnl_dir="-D neovim/.config/nvim"
        ;;
      Xiao)
        prsnl_url="https://github.com/onichandame/nvim-config"
        ;;
      Charles)
        prsnl_url="https://github.com/CharlesChiuGit/nvimdots.lua"
        ;;
      Craftzdog)
        prsnl_url="https://github.com/craftzdog/dotfiles-public"
        prsnl_opt="-P"
        prsnl_dir="-D .config/nvim"
        ;;
      Daniel)
        prsnl_url="https://github.com/daniel-vera-g/lvim"
        ;;
      Dillon)
        prsnl_url="https://github.com/dmmulroy/dotfiles"
        prsnl_opt="-b main -P"
        prsnl_dir="-D .config/nvim"
        ;;
      Kodo)
        prsnl_url="https://github.com/chadcat7/kodo"
        ;;
      LvimAdib)
        prsnl_url="https://github.com/adibhanna/lvim-config"
        ;;
      Maddison)
        prsnl_url="https://github.com/b0o/nvim-conf"
        ;;
      Metis)
        prsnl_url="https://github.com/metis-os/pwnvim"
        ;;
      Mini)
        prsnl_url="https://github.com/echasnovski/nvim"
        ;;
      Orhun)
        prsnl_url="https://github.com/orhun/dotfiles"
        prsnl_opt="-J"
        prsnl_dir="-D nvim/.config/nvim/lua/user"
        ;;
      Spider)
        prsnl_url="https://github.com/fearless-spider/FSAstroNvim"
        ;;
      Roiz)
        prsnl_url="https://github.com/MrRoiz/rnvim"
        ;;
      ONNO)
        prsnl_url="https://github.com/loctvl842/nvim"
        help_opt="-f ${fix_onno}"
        ;;
      OnMyWay)
        prsnl_url="https://github.com/RchrdAlv/NvimOnMy_way"
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
      printf "\n${action} ${nvimprsnl} Neovim configuration"
      lazyman ${darg} -C ${prsnl_url} -N nvim-${nvimprsnl} ${prsnl_dir} \
        ${prsnl_opt} ${help_opt} ${quietflag} ${runflag} ${yesflag}
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
    yesflag="-Q"
    [ "${proceed}" ] && yesflag="-Q -y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${nvimstarter}" == "all" ]; then
      printf "\n\nInstalling/Updating all Starter Neovim configurations."
      for neovim in ${MINIMCFGS}; do
        startbranch=
        set_starter_branch "${neovim}"
        [ "${startbranch}" ] || usage
        action="Installing"
        [ -d ${HOME}/.config/nvim-${neovim} ] && action="Updating"
        printf "\n${action} nvim-starter ${neovim} Neovim configuration"
        lazyman ${darg} -C https://github.com/VonHeikemen/nvim-starter \
          -N nvim-${neovim} -b ${startbranch} ${quietflag} -z ${yesflag}
        show_alias "nvim-${neovim}"
      done
      action="Installing"
      [ -d ${HOME}/.config/nvim-2k ] && action="Updating"
      printf "\n${action} nvim2k Neovim configuration"
      lazyman ${darg} -C https://github.com/2KAbhishek/nvim2k \
        -N nvim-2k ${quietflag} -z ${yesflag}
      show_alias "nvim-2k"
      action="Installing"
      [ -d ${HOME}/.config/nvim-AstroNvimStart ] && action="Updating"
      printf "\n${action} AstroNvimStart Neovim configuration"
      lazyman ${darg} -C https://github.com/doctorfree/AstroNvimStart \
        -J -N nvim-AstroNvimStart ${quietflag} -z ${yesflag}
      show_alias "nvim-AstroNvimStart"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Basic ] && action="Updating"
      printf "\n${action} Basic Neovim configuration"
      lazyman ${darg} -C https://github.com/NvChad/basic-config \
        -N nvim-Basic ${quietflag} -z ${yesflag}
      show_alias "nvim-Basic"
      updflag=
      [ -d ${HOME}/.config/nvim-Kickstart ] && updflag="-U"
      lazyman ${darg} -k ${quietflag} -z ${yesflag} ${updflag}
      show_alias "nvim-Kickstart"
      action="Installing"
      [ -d ${HOME}/.config/nvim-CodeArt ] && action="Updating"
      printf "\n${action} CodeArt Neovim configuration"
      lazyman ${darg} -C https://github.com/artart222/CodeArt \
        -N nvim-CodeArt -P ${quietflag} -z ${yesflag}
      show_alias "nvim-CodeArt"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Cosmic ] && action="Updating"
      printf "\n${action} Cosmic Neovim configuration"
      updcosmic=
      lazyman ${darg} -C https://github.com/CosmicNvim/CosmicNvim \
        -N nvim-Cosmic ${quietflag} -z ${yesflag}
      CMICDIR="${HOME}"/.config/nvim-Cosmic/lua/cosmic/config
      [ -f "${CMICDIR}"/config.lua ] || {
        [ -f "${CMICDIR}"/examples/config.lua ] && {
          cp "${CMICDIR}"/examples/config.lua "${CMICDIR}"/config.lua
          updcosmic=1
        }
      }
      [ -f "${CMICDIR}"/editor.lua ] || {
        [ -f "${CMICDIR}"/examples/editor.lua ] && {
          cp "${CMICDIR}"/examples/editor.lua "${CMICDIR}"/editor.lua
          updcosmic=1
        }
      }
      [ "${updcosmic}" ] && {
        lazyman ${darg} -N nvim-Cosmic -U ${quietflag} -z ${yesflag}
      }
      show_alias "nvim-Cosmic"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Ember ] && action="Updating"
      printf "\n${action} Ember Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/danlikestocode/embervim \
        -D nvim -N nvim-Ember ${quietflag} -z ${yesflag}
      show_alias "nvim-Ember"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Fennel ] && action="Updating"
      printf "\n${action} Fennel Neovim configuration"
      lazyman ${darg} -C https://github.com/jhchabran/nvim-config \
        -N nvim-Fennel -P ${quietflag} -z ${yesflag}
      show_alias "nvim-Fennel"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Micah ] && action="Updating"
      printf "\n${action} Micah Neovim configuration"
      lazyman ${darg} -C https://code.mehalter.com/AstroNvim_user \
        -J -N nvim-Micah ${quietflag} -z ${yesflag}
      show_alias "nvim-Micah"
      action="Installing"
      [ -d ${HOME}/.config/nvim-JustinLvim ] && action="Updating"
      printf "\n${action} JustinLvim Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/justinsgithub/dotfiles \
        -D lunarvim/.config/lvim -N nvim-JustinLvim ${quietflag} -z ${yesflag}
      show_alias "nvim-JustinLvim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-JustinNvim ] && action="Updating"
      printf "\n${action} JustinNvim Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/justinsgithub/dotfiles \
        -D neovim/.config/nvim -N nvim-JustinNvim ${quietflag} -z ${yesflag}
      show_alias "nvim-JustinNvim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Kabin ] && action="Updating"
      printf "\n${action} Kabin Neovim configuration"
      lazyman ${darg} -C https://github.com/kabinspace/AstroNvim_user \
        -J -N nvim-Kabin ${quietflag} -z ${yesflag}
      show_alias "nvim-Kabin"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Lamia ] && action="Updating"
      printf "\n${action} Lamia Neovim configuration"
      lazyman ${darg} -C https://github.com/A-Lamia/AstroNvim-conf \
        -J -N nvim-Lamia ${quietflag} -z ${yesflag}
      show_alias "nvim-Lamia"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Normal ] && action="Updating"
      printf "\n${action} Normal Neovim configuration"
      lazyman ${darg} -C https://github.com/NormalNvim/NormalNvim \
        -N nvim-Normal ${quietflag} -z ${yesflag}
      show_alias "nvim-Normal"
      action="Installing"
      [ -d ${HOME}/.config/nvim-NvPak ] && action="Updating"
      printf "\n${action} NvPak Neovim configuration"
      lazyman ${darg} -C https://github.com/Pakrohk-DotFiles/NvPak.git \
        -N nvim-NvPak ${quietflag} -z ${yesflag}
      show_alias "nvim-NvPak"
      action="Installing"
      [ -d ${HOME}/.config/nvim-HardHacker ] && action="Updating"
      printf "\n${action} HardHacker Neovim configuration"
      lazyman ${darg} -C https://github.com/hardhackerlabs/oh-my-nvim \
        -N nvim-HardHacker ${quietflag} -z ${yesflag}
      show_alias "nvim-HardHacker"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Modern ] && action="Updating"
      printf "\n${action} Modern Neovim configuration"
      lazyman ${darg} -C https://github.com/alpha2phi/modern-neovim \
        -N nvim-Modern ${quietflag} -z ${yesflag}
      show_alias "nvim-Modern"
      action="Installing"
      [ -d ${HOME}/.config/nvim-pde ] && action="Updating"
      printf "\n${action} PDE Neovim configuration"
      lazyman ${darg} -C https://github.com/alpha2phi/neovim-pde \
        -N nvim-pde ${quietflag} -z ${yesflag}
      show_alias "nvim-pde"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Rohit ] && action="Updating"
      printf "\n${action} Rohit Neovim configuration"
      lazyman ${darg} -C https://github.com/rohit-kumar-j/nvim \
        -N nvim-Rohit ${quietflag} -z ${yesflag}
      show_alias "nvim-Rohit"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Scratch ] && action="Updating"
      printf "\n${action} Scratch Neovim configuration"
      lazyman ${darg} -C https://github.com/ngscheurich/nvim-from-scratch \
        -N nvim-Scratch ${quietflag} -z ${yesflag}
      show_alias "nvim-Scratch"
      action="Installing"
      [ -d ${HOME}/.config/nvim-SingleFile ] && action="Updating"
      printf "\n${action} SingleFile Neovim configuration"
      lazyman ${darg} -C https://github.com/creativenull/nvim-oneconfig \
        -N nvim-SingleFile -P ${quietflag} -z ${yesflag}
      show_alias "nvim-SingleFile"
    else
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimstarter} in
      2k)
        action="Installing"
        [ -d ${HOME}/.config/nvim-2k ] && action="Updating"
        printf "\n${action} nvim2k Neovim configuration"
        lazyman ${darg} -C https://github.com/2KAbhishek/nvim2k \
          -N nvim-2k ${quietflag} -z ${yesflag}
        show_alias "nvim-2k"
        ;;
      AstroNvimStart)
        action="Installing"
        [ -d ${HOME}/.config/nvim-AstroNvimStart ] && action="Updating"
        printf "\n${action} AstroNvimStart Neovim configuration"
        lazyman ${darg} -C https://github.com/doctorfree/AstroNvimStart \
          -J -N nvim-AstroNvimStart ${quietflag} -z ${yesflag}
        show_alias "nvim-AstroNvimStart"
        ;;
      Basic)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Basic ] && action="Updating"
        printf "\n${action} Basic Neovim configuration"
        lazyman ${darg} -C https://github.com/NvChad/basic-config \
          -N nvim-Basic ${quietflag} -z ${yesflag}
        show_alias "nvim-Basic"
        ;;
      Kickstart)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Kickstart ] && action="Updating"
        printf "\n${action} Kickstart Neovim configuration"
        lazyman ${darg} -k ${quietflag} -z ${yesflag}
        show_alias "nvim-Kickstart"
        ;;
      CodeArt)
        action="Installing"
        [ -d ${HOME}/.config/nvim-CodeArt ] && action="Updating"
        printf "\n${action} CodeArt Neovim configuration"
        lazyman ${darg} -C https://github.com/artart222/CodeArt \
          -N nvim-CodeArt -P ${quietflag} -z ${yesflag}
        show_alias "nvim-CodeArt"
        ;;
      Cosmic)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Cosmic ] && action="Updating"
        printf "\n${action} Cosmic Neovim configuration"
        updcosmic=
        lazyman ${darg} -C https://github.com/CosmicNvim/CosmicNvim \
          -N nvim-Cosmic ${quietflag} -z ${yesflag}
        CMICDIR="${HOME}"/.config/nvim-Cosmic/lua/cosmic/config
        [ -f "${CMICDIR}"/config.lua ] || {
          [ -f "${CMICDIR}"/examples/config.lua ] && {
            cp "${CMICDIR}"/examples/config.lua "${CMICDIR}"/config.lua
            updcosmic=1
          }
        }
        [ -f "${CMICDIR}"/editor.lua ] || {
          [ -f "${CMICDIR}"/examples/editor.lua ] && {
            cp "${CMICDIR}"/examples/editor.lua "${CMICDIR}"/editor.lua
            updcosmic=1
          }
        }
        [ "${updcosmic}" ] && {
          lazyman ${darg} -N nvim-Cosmic -U ${quietflag} -z ${yesflag}
        }
        show_alias "nvim-Cosmic"
        ;;
      Ember)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Ember ] && action="Updating"
        printf "\n${action} Ember Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/danlikestocode/embervim \
          -D nvim -N nvim-Ember ${quietflag} -z ${yesflag}
        show_alias "nvim-Ember"
        ;;
      Fennel)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Fennel ] && action="Updating"
        printf "\n${action} Fennel Neovim configuration"
        lazyman ${darg} -C https://github.com/jhchabran/nvim-config \
          -N nvim-Fennel -P ${quietflag} -z ${yesflag}
        show_alias "nvim-Fennel"
        ;;
      JustinLvim)
        action="Installing"
        [ -d ${HOME}/.config/nvim-JustinLvim ] && action="Updating"
        printf "\n${action} JustinLvim Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/justinsgithub/dotfiles \
          -D lunarvim/.config/lvim -N nvim-JustinLvim ${quietflag} -z ${yesflag}
        show_alias "nvim-JustinLvim"
        ;;
      JustinNvim)
        action="Installing"
        [ -d ${HOME}/.config/nvim-JustinNvim ] && action="Updating"
        printf "\n${action} JustinNvim Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/justinsgithub/dotfiles \
          -D neovim/.config/nvim -N nvim-JustinNvim ${quietflag} -z ${yesflag}
        show_alias "nvim-JustinNvim"
        ;;
      Kabin)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Kabin ] && action="Updating"
        printf "\n${action} Kabin Neovim configuration"
        lazyman ${darg} -C https://github.com/kabinspace/AstroNvim_user \
          -J -N nvim-Kabin ${quietflag} -z ${yesflag}
        show_alias "nvim-Kabin"
        ;;
      Micah)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Micah ] && action="Updating"
        printf "\n${action} Micah Neovim configuration"
        lazyman ${darg} -C https://code.mehalter.com/AstroNvim_user \
          -J -N nvim-Micah ${quietflag} -z ${yesflag}
        show_alias "nvim-Micah"
        ;;
      Lamia)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Lamia ] && action="Updating"
        printf "\n${action} Lamia Neovim configuration"
        lazyman ${darg} -C https://github.com/A-Lamia/AstroNvim-conf \
          -J -N nvim-Lamia ${quietflag} -z ${yesflag}
        show_alias "nvim-Lamia"
        ;;
      Normal)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Normal ] && action="Updating"
        printf "\n${action} Normal Neovim configuration"
        lazyman ${darg} -C https://github.com/NormalNvim/NormalNvim \
          -N nvim-Normal ${quietflag} -z ${yesflag}
        show_alias "nvim-Normal"
        ;;
      NvPak)
        action="Installing"
        [ -d ${HOME}/.config/nvim-NvPak ] && action="Updating"
        printf "\n${action} NvPak Neovim configuration"
        lazyman ${darg} -C https://github.com/Pakrohk-DotFiles/NvPak.git \
          -N nvim-NvPak ${quietflag} -z ${yesflag}
        show_alias "nvim-NvPak"
        ;;
      HardHacker)
        action="Installing"
        [ -d ${HOME}/.config/nvim-HardHacker ] && action="Updating"
        printf "\n${action} HardHacker Neovim configuration"
        lazyman ${darg} -C https://github.com/hardhackerlabs/oh-my-nvim \
          -N nvim-HardHacker ${quietflag} -z ${yesflag}
        show_alias "nvim-HardHacker"
        ;;
      Modern)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Modern ] && action="Updating"
        printf "\n${action} Modern Neovim configuration"
        lazyman ${darg} -C https://github.com/alpha2phi/modern-neovim \
          -N nvim-Modern ${quietflag} -z ${yesflag}
        show_alias "nvim-Modern"
        ;;
      pde)
        action="Installing"
        [ -d ${HOME}/.config/nvim-pde ] && action="Updating"
        printf "\n${action} PDE Neovim configuration"
        lazyman ${darg} -C https://github.com/alpha2phi/neovim-pde \
          -N nvim-pde ${quietflag} -z ${yesflag}
        show_alias "nvim-pde"
        ;;
      Rohit)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Rohit ] && action="Updating"
        printf "\n${action} Rohit Neovim configuration"
        lazyman ${darg} -C https://github.com/rohit-kumar-j/nvim \
          -N nvim-Rohit ${quietflag} -z ${yesflag}
        show_alias "nvim-Rohit"
        ;;
      Scratch)
        action="Installing"
        [ -d ${HOME}/.config/nvim-Scratch ] && action="Updating"
        printf "\n${action} Scratch Neovim configuration"
        lazyman ${darg} -C https://github.com/ngscheurich/nvim-from-scratch \
          -N nvim-Scratch ${quietflag} -z ${yesflag}
        show_alias "nvim-Scratch"
        ;;
      SingleFile)
        action="Installing"
        [ -d ${HOME}/.config/nvim-SingleFile ] && action="Updating"
        printf "\n${action} SingleFile Neovim configuration"
        lazyman ${darg} -C https://github.com/creativenull/nvim-oneconfig \
          -N nvim-SingleFile -P ${quietflag} -z ${yesflag}
        show_alias "nvim-SingleFile"
        ;;
      *)
        startbranch=
        set_starter_branch "${nvimstarter}"
        [ "${startbranch}" ] || usage
        action="Installing"
        [ -d ${HOME}/.config/nvim-${nvimstarter} ] && action="Updating"
        printf "\n${action} nvim-starter ${nvimstarter} Neovim configuration"
        lazyman ${darg} -C https://github.com/VonHeikemen/nvim-starter \
          -N nvim-${nvimstarter} -b ${startbranch} \
          ${quietflag} ${runflag} ${yesflag}
        ;;
      esac
    fi
  fi
  printf "\n"
}

[ "$nvimsupport" ] && {
  if [ "$remove" ]; then
    remove_config "nvim-${nvimsupport}"
  else
    yesflag="-Q"
    [ "${proceed}" ] && yesflag="-Q -y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    runflag=
    [ "${runvim}" ] || runflag="-z"
    case ${nvimsupport} in
    Nyoom)
      action="Installing"
      [ -d ${HOME}/.config/nvim-Nyoom ] && action="Updating"
      printf "\n${action} Nyoom Neovim configuration"
      lazyman ${darg} -C https://github.com/nyoom-engineering/nyoom.nvim.git \
        -N nvim-Nyoom ${quietflag} -z ${yesflag}
      show_alias "nvim-Nyoom"
      ;;
    *)
      usage
      ;;
    esac
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
  if [ -x "${INSTNVIM}" ]; then
    "${INSTNVIM}" -a $darg $head $brew $yes
    [ -f "${LMANDIR}/.initialized" ] && {
      echo "__extra_tools__=1" >>"${LMANDIR}"/.initialized
    }
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
  [ "$abstract" ] && abstractdir="$name"
  [ "$basicide" ] && basicidedir="$name"
  [ "$ecovim" ] && ecovimdir="$name"
  [ "$kickstart" ] && kickstartdir="$name"
  [ "$lazyman" ] && LAZYMAN="$name"
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
    ndir="$LAZYMAN"
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
    [ "${all}" ] && [ "${neovim}" == "${LAZYMAN}" ] && continue
    remove_config "$neovim"
  done
  [ "${all}" ] && {
    cat "${NVIMDIRS}" | while read nvimdir; do
      [ "${nvimdir}" == "${LAZYMAN}" ] && continue
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
  neovimdir=("${LAZYMAN}")
  [ -f "${LMANDIR}/.initialized" ] && interactive=1
}
if [ -d "${LMANDIR}" ]; then
  [ "$branch" ] && {
    git -C "${LMANDIR}" checkout "$branch" >/dev/null 2>&1
  }
  [ -d "${HOME}/.local/share/${LAZYMAN}" ] || interactive=
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
  add_nvimdirs_entry "${LAZYMAN}"
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
  if [ -x "${INSTNVIM}" ]; then
    "${INSTNVIM}" $darg $head $brew $yes
    have_nvim=$(type -p nvim)
    [ "$have_nvim" ] || {
      printf "\nERROR: cannot locate neovim."
      printf "\nHomebrew install failure, manual debug required."
      printf "\n\t'brew update && lazyman -d'."
      printf "\nNeovim 0.9 or later required. Install and retry. Exiting.\n"
      brief_usage
    }
  else
    printf "\n${INSTNVIM} not executable"
    printf "\nPlease check the Lazyman installation and retry this install script\n"
    brief_usage
  fi

  # Append sourcing of .lazymanrc to shell initialization files
  if [ -f "${LZYMANRC}" ]; then
    for shinit in bashrc zshrc; do
      [ -f "${HOME}/.$shinit" ] || continue
      grep lazymanrc "${HOME}/.$shinit" >/dev/null && continue
      COMM="# Source the Lazyman shell initialization for aliases and nvims selector"
      echo "$COMM" >>"${HOME}/.$shinit"
      SHCK="# shellcheck source=.config/${LAZYMAN}/.lazymanrc"
      echo "$SHCK" >>"${HOME}/.$shinit"
      TEST_SRC="[ -f ~/.config/${LAZYMAN}/.lazymanrc ] &&"
      SOURCE="source ~/.config/${LAZYMAN}/.lazymanrc"
      echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
    done
    # Append sourcing of .nvimsbind to shell initialization files
    [ -f "${HOME}/.config/${LAZYMAN}"/.nvimsbind ] && {
      for shinit in bashrc zshrc; do
        [ -f "${HOME}/.$shinit" ] || continue
        grep nvimsbind "${HOME}/.$shinit" >/dev/null && continue
        COMM="# Source the Lazyman .nvimsbind for nvims key binding"
        echo "$COMM" >>"${HOME}/.$shinit"
        SHCK="# shellcheck source=.config/${LAZYMAN}/.nvimsbind"
        echo "$SHCK" >>"${HOME}/.$shinit"
        TEST_SRC="[ -f ~/.config/${LAZYMAN}/.nvimsbind ] &&"
        SOURCE="source ~/.config/${LAZYMAN}/.nvimsbind"
        echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
      done
    }
  else
    printf "\nWARNING: missing ${LZYMANRC}"
    printf "\nReinstall Lazyman with:"
    printf "\n\tlazyman -R -N ${LAZYMAN}"
    printf "\n\tlazyman\n"
  fi
}

# Source the Lazyman shell initialization for aliases and nvims selector
# shellcheck source=~/.config/nvim-Lazyman/.lazymanrc
[ -f "${LZYMANRC}" ] && source "${LZYMANRC}"
BREW_EXE=
set_brew
[ "$BREW_EXE" ] && eval "$("$BREW_EXE" shellenv)"

[ "${all}" ] && printf "\nCloning Neovim configuration repositories ..."
[ "$abstract" ] && {
  clone_repo Abstract Abstract-IDE/Abstract "$abstractdir"
}
[ "$astronvim" ] && {
  install_astronvim "${astronvimdir}" "https://github.com/doctorfree/astronvim"
}
[ "$basicide" ] && {
  clone_repo BasicIde LunarVim/nvim-basic-ide "$basicidedir"
}
[ "$ecovim" ] && {
  clone_repo Ecovim ecosse3/nvim "$ecovimdir"
}
[ "$kickstart" ] && {
  clone_repo Kickstart doctorfree/kickstart.nvim "$kickstartdir"
}
[ "$lazyvim" ] && {
  clone_repo LazyVim LazyVim/starter "$lazyvimdir"
}
[ "$lunarvim" ] && {
  init_lvim "${lunarvimdir}"
  [ "$quiet" ] || {
    printf "done"
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
  # Replace references to /lvim/ with /$lunarvimdir/
  fix_lvim_dir "${lunarvimdir}"
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
  clone_repo pde alpha2phi/neovim-pde "$pdedir"
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
[ "${customastro}" ] && {
  if [ "$custom_url" ]; then
    install_astronvim "${neovimdir[0]}" "${custom_url}"
    custom_url=
  else
    printf "\nThe -J argument requires an accompanying -C url. Exiting."
    brief_usage
  fi
}
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
      [ "${neovimdir[0]}" == "nvim-Daniel" ] ||
        [ "${neovimdir[0]}" == "nvim-JustinLvim" ] ||
        [ "${neovimdir[0]}" == "nvim-LvimAdib" ] ||
        [ "${neovimdir[0]}" == "nvim-Shuvro" ] ||
        [ "${neovimdir[0]}" == "nvim-LunarIde" ] && {
        init_lvim "${neovimdir[0]}"
        mv ${HOME}/.config/${neovimdir[0]} /tmp/lvim$$
      }
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
      [ "${neovimdir[0]}" == "nvim-Daniel" ] ||
        [ "${neovimdir[0]}" == "nvim-JustinLvim" ] ||
        [ "${neovimdir[0]}" == "nvim-LvimAdib" ] ||
        [ "${neovimdir[0]}" == "nvim-Shuvro" ] ||
        [ "${neovimdir[0]}" == "nvim-LunarIde" ] && {
        [ -f ${HOME}/.config/${neovimdir[0]}/init.lua ] || {
          cp /tmp/lvim$$/init.lua ${HOME}/.config/${neovimdir[0]}
        }
        [ -d ${HOME}/.config/${neovimdir[0]}/snapshots ] || {
          cp -a /tmp/lvim$$/snapshots ${HOME}/.config/${neovimdir[0]}
        }
        [ -d ${HOME}/.config/${neovimdir[0]}/utils ] || {
          cp -a /tmp/lvim$$/utils ${HOME}/.config/${neovimdir[0]}
        }
        [ -d ${HOME}/.config/${neovimdir[0]}/lua/lvim ] || {
          cp -a /tmp/lvim$$/lua/lvim ${HOME}/.config/${neovimdir[0]}/lua
        }
        rm -rf /tmp/lvim$$
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
apply_patch "${neovimdir[0]}"

[ "${fix_help}" ] && {
  fix_help_file "${HOME}/.config/${patchdir}/${fix_help}"
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
  [ -f "${LZYMANRC}" ] && source "${LZYMANRC}"
  if ! typeset -f nvims >/dev/null 2>&1; then
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
      [ "$all" ] && export NVIM_APPNAME="${LAZYMAN}"
      [ "${skipthis}" ] || {
        if [ -f "${LZYMANRC}" ]; then
          source "${LZYMANRC}"
          runconfig ${NVIM_APPNAME}
        else
          nvim
        fi
      }
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
    [ -d "$HOME"/.local/share/man/man5 ] || mkdir -p "$HOME"/.local/share/man/man5
    [ -f "${LMANDIR}"/man/man1/lazyman.1 ] && {
      cp "${LMANDIR}"/man/man1/lazyman.1 "$HOME"/.local/share/man/man1/lazyman.1
      chmod 644 "$HOME"/.local/share/man/man1/lazyman.1
    }
    [ -f "${LMANDIR}"/man/man1/nvims.1 ] && {
      cp "${LMANDIR}"/man/man1/nvims.1 "$HOME"/.local/share/man/man1/nvims.1
      chmod 644 "$HOME"/.local/share/man/man1/nvims.1
    }
    [ -f "${LMANDIR}"/man/man5/lazyman-keymaps.5 ] && {
      cp "${LMANDIR}"/man/man5/lazyman-keymaps.5 "$HOME"/.local/share/man/man5/lazyman-keymaps.5
      chmod 644 "$HOME"/.local/share/man/man5/lazyman-keymaps.5
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
            if [ "$menu" == "lidemenu" ]; then
              ${LZYIDE}
              exitstatus=$?
            else
              if [ "$menu" == "wdevmenu" ]; then
                ${WEBDEV}
                exitstatus=$?
              else
                show_main_menu
              fi
            fi
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
