#!/usr/bin/env bash
#
# lazyman - install, initialize, manage, and explore multiple Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>, Spring 2023
#
# shellcheck disable=SC1090,SC2001,SC2002,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2076,SC2126

LAZYMAN="lazyman/Lazyman"
LMANDIR="${HOME}/.config/${LAZYMAN}"
OMANDIR="${HOME}/.config/nvim-Lazyman"
NVIMDIRS="${LMANDIR}/.nvimdirs"
OVIMDIRS="${OMANDIR}/.nvimdirs"
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
FONTDIR="${SCRIPTSD}/figlet-fonts"
# LOLCAT="lolcat --animate --speed=70.0"
LOLCAT="lolcat"
BOLD=$(tput bold 2>/dev/null)
NORM=$(tput sgr0 2>/dev/null)
LINE=$(tput smul 2>/dev/null)

prompt_continue() {
  printf "\nPress <Enter> to continue ... "
  read -r yn
}

USEGUI=
if [ -f "${CONFIGRC}" ]; then
  source "${CONFIGRC}"
else
  [ -f "${LMANDIR}/.initialized" ] && {
    printf "\n\nERROR: Missing ${CONFIGRC}"
    printf "\n\tReinstall Lazyman\n"
    prompt_continue
  }
fi
SPDIR="${HOME}/.SpaceVim.d"
# Timeout length for nvim headless execution
timeout=120
# Array with font names
fonts=("Epic" "Fire Font-k" "Graceful" "Script" "Shadow" "Slant" "Small" "Speed" "Standard")
cfginst=1
cfgpart=
cfginstalled=0
showinstalled=1

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-E config] [-e]"
  printf "\n   [-f path] [-F menu] [-g] [-i group] [-j] [-k] [-l] [-m] [-M] [-s]"
  printf "\n   [-S] [-v] [-n] [-o] [-O name] [-p] [-P] [-q] [-Q] [-h] [-H] [-I] [-J]"
  printf "\n   [-L lang] [-rR] [-C url] [-D subdir] [-N nvimdir] [-G] [-tT] [-U]"
  printf "\n   [-V url] [-w conf] [-W] [-x conf] [-X] [-y] [-Y] [-z] [-Z] [-K conf] [-u]"
  printf "\n   [health] [info] [init] [install [bob]] [migrate] [open] [remove] [search] [status] [usage]"
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
  printf "\n    -O 'name' indicates set Lazyman configuration to namespace 'name'"
  printf "\n       'name' can be one of: free onno toggle"
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
  printf "\n    -Y indicates use the following arguments as 'name'/'value' to set Lazyman config"
  printf "\n       For example: lazyman -Y theme kanagawa"
  printf "\n       If the 'name' argument is 'get' then the current value is returned"
  printf "\n    -z indicates do not run nvim after initialization"
  printf "\n    -Z indicates do not install Homebrew, Neovim, or any other tools"
  printf "\n    -K 'conf' indicates install 'conf' in development unsupported config"
  printf "\n    -u displays this usage message and exits"
  printf "\n    'health' generate and display a health check for a configuration"
  printf "\n    'info' open an information page for a configuration in the default browser"
  printf "\n    'init' initialize specified Neovim configuration and exit"
  printf "\n    'install' fuzzy search and select configuration to install"
  printf "\n    'install bob' install the Bob Neovim version manager"
  printf "\n    'migrate' move v3 or earlier installed configurations to v4 location"
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
      ps -ef | grep nvim | grep headless | grep -v grep | while read l
      do
        pid=$(echo "$l" | awk ' { print $2 } ')
        kill ${pid}
      done
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

add_nvimdirs_entry() {
  ndir="$1"
  nvim_dirs="${NVIMDIRS}"
  [ "$2" ] && nvim_dirs="$2"
  if [ -f "${nvim_dirs}" ]; then
    grep ^"$ndir"$ "${nvim_dirs}" >/dev/null || {
      echo "$ndir" >>"${nvim_dirs}"
    }
  else
    [ -d "${LMANDIR}" ] && {
      echo "$ndir" >"${nvim_dirs}"
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
  [ "$quiet" ] || printf "\nCloning and initializing LunarVim"
  [ "$tellme" ] || {
    curl -s ${LVIM_INSTALL} >/tmp/lvim-install$$.sh
    chmod 755 /tmp/lvim-install$$.sh
    [ -x $HOME/.local/bin/lvim ] || {
      [ -f ${LMANDIR}/scripts/lvim ] && {
        if [ "${lvimdir}" == "lazyman/LunarVim" ]; then
          cp ${LMANDIR}/scripts/lvim $HOME/.local/bin/lvim
        else
          cat ${LMANDIR}/scripts/lvim |
            sed -e "s%lazyman/LunarVim%${lvimdir}%" >$HOME/.local/bin/lvim
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

  [ "${neodir}" == "lazyman/Nyoom" ] && {
    [ -x ${HOME}/.config/lazyman/Nyoom/bin/nyoom ] && {
      if [ "${debug}" ]; then
        ${HOME}/.config/lazyman/Nyoom/bin/nyoom install
        ${HOME}/.config/lazyman/Nyoom/bin/nyoom sync
      else
        ${HOME}/.config/lazyman/Nyoom/bin/nyoom install >/dev/null 2>&1
        ${HOME}/.config/lazyman/Nyoom/bin/nyoom sync >/dev/null 2>&1
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
  [ "${neodir}" == "lazyman/LunarIde" ] ||
    [ "${neodir}" == "lazyman/Shuvro" ] && {
    [ -x ${JAVADBUG} ] && {
      [ "$quiet" ] || printf "\nInstalled Java debug packages"
      if [ "$debug" ]; then
        ${JAVADBUG} "${neodir}"
      else
        ${JAVADBUG} "${neodir}" >/dev/null 2>&1
      fi
    }
  }
  [ "${neodir}" == "${lunarvimdir}" ] ||
    [ "${neodir}" == "lazyman/JustinLvim" ] ||
    [ "${neodir}" == "lazyman/LunarIde" ] ||
    [ "${neodir}" == "lazyman/LvimAdib" ] ||
    [ "${neodir}" == "lazyman/Shuvro" ] ||
    [ "${neodir}" == "lazyman/Daniel" ] && fix_lvim_dir "${neodir}"

  [ "${plug}" ] && {
    PLUG="${HOME}/.local/share/${neodir}/site/autoload/plug.vim"
    [ -d "${PLUG}" ] || {
      [ "$quiet" ] || {
        printf "\nCopying plug.vim to"
        printf "\n\t${PLUG}"
      }
      [ "$tellme" ] || {
        sh -c "curl -fLo ${PLUG} --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" \
          >/dev/null 2>&1
      }
    }
  }

  skipthis=
  if [ "${neodir}" == "lazyman/Webdev" ]; then
    [ -x ${WEBDEV} ] && ${WEBDEV} -i
    custom_url=
  else
    [ "${neodir}" == "lazyman/LazyIde" ] && {
      [ -x ${LZYIDE} ] && ${LZYIDE} -i
      custom_url=
    }
  fi
  [ "${custom_url}" ] && {
    [ "${neodir}" == "lazyman/JustinOhMy" ] || {
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
  }

  [ "${skipthis}" ] || {
    if [ "$debug" ]; then
      cfgnam=$(basename "${neodir}")
      LOG="${LMANDIR}/logs/${cfgnam}"
      [ "$quiet" ] || {
        printf "\nInitializing configuration in debug mode."
        printf "\nLogging output in ${LMANDIR}/logs/${cfgnam}"
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
              [ "${neodir}" == "lazyman/Daniel" ] ||
              [ "${neodir}" == "lazyman/JustinLvim" ] ||
              [ "${neodir}" == "lazyman/LvimAdib" ] ||
              [ "${neodir}" == "lazyman/Shuvro" ] ||
              [ "${neodir}" == "lazyman/LunarIde" ] && {
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
                [ "${neodir}" == "lazyman/Nyoom" ] || {
                  xtimeout ${timeout} nvim --headless -c 'set nomore' "+Lazy! sync" +qa >>${LOG} 2>&1
                  [ "${neodir}" == "${nvchaddir}" ] ||
                    [ "${neodir}" == "lazyman/Cpp" ] ||
                    [ "${neodir}" == "lazyman/Go" ] ||
                    [ "${neodir}" == "lazyman/LazyIde" ] ||
                    [ "${neodir}" == "lazyman/Rust" ] ||
                    [ "${neodir}" == "lazyman/Python" ] && {
                    xtimeout ${timeout} nvim --headless "+MasonInstallAll" +qa >>${LOG} 2>&1
                  }
                  [ "${neodir}" == "lazyman/2k" ] && {
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
      [ "$quiet" ] || printf "\n"
      calc_elapsed
      printf "\nInitialization elapsed time = ${ELAPSED}\n"
    else
      [ "$quiet" ] || printf "\nInitializing configuration"
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
              [ "${neodir}" == "lazyman/LvimAdib" ] ||
              [ "${neodir}" == "lazyman/Shuvro" ] ||
              [ "${neodir}" == "lazyman/Daniel" ] ||
              [ "${neodir}" == "lazyman/JustinLvim" ] ||
              [ "${neodir}" == "lazyman/LunarIde" ] && {
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
                [ "${neodir}" == "lazyman/Nyoom" ] || {
                  xtimeout ${timeout} nvim --headless -c 'set nomore' \
                    "+Lazy! sync" +qa >/dev/null 2>&1
                  [ "${neodir}" == "${nvchaddir}" ] ||
                    [ "${neodir}" == "lazyman/Cpp" ] ||
                    [ "${neodir}" == "lazyman/Go" ] ||
                    [ "${neodir}" == "lazyman/LazyIde" ] ||
                    [ "${neodir}" == "lazyman/Rust" ] ||
                    [ "${neodir}" == "lazyman/Python" ] && {
                    xtimeout ${timeout} nvim --headless \
                      "+MasonInstallAll" +qa >/dev/null 2>&1
                  }
                  [ "${neodir}" == "lazyman/2k" ] && {
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
      [ "$quiet" ] || printf "\n"
    fi
  }
  [ "${neodir}" == "${magicvimdir}" ] && packer=${oldpack}
  [ "${neodir}" == "${LAZYMAN}" ] && {
    [ -f "${LMANDIR}/.initialized" ] || {
      touch "${LMANDIR}/.initialized"
    }
    [ "${migrated}" ] && {
      # Add the migrated configs to .nvimdirs
      [ -f /tmp/nvdirs$$ ] && {
        cat /tmp/nvdirs$$ | while read nvimdir; do
          [ "${nvimdir}" == "lazyman/Lazyman" ] && continue
          add_nvimdirs_entry "${nvimdir}"
        done
        rm -f /tmp/nvdirs$$
      }
      # Remove old v3 or earlier Lazyman config dir
      [ -d "${OMANDIR}" ] && {
        rm -rf "${OMANDIR}"
      }
    }
  }
  [ "${neodir}" == "${LAZYMAN}" ] || [ "${neodir}" == "${minivimdir}" ] && {
    packer=${oldpack}
    plug=${oldplug}
  }
}

move_config() {
  ndir="$1"
  [ "${ndir}" == "nvim" ] && return
  newdir=$(echo "${ndir}" | sed -e "s/nvim-//")
  newdir="lazyman/${newdir}"
  [ -d "${HOME}/.config/$ndir" ] && {
    if [ -d "${HOME}/.config/$newdir" ]
    then
      [ "$quiet" ] || {
        printf "\nRemoving existing ${ndir} config at ${HOME}/.config/${ndir}"
      }
      [ "$tellme" ] || {
        rm -rf "${HOME}/.config/$ndir"
      }
    else
      [ "$quiet" ] || {
        printf "\nMoving existing ${ndir} config at ${HOME}/.config/${ndir}"
      }
      [ "$tellme" ] || {
        mv "${HOME}/.config/$ndir" "${HOME}/.config/$newdir"
      }
    fi
  }
  [ "$quiet" ] || {
    printf "\nRemoving any ${ndir} config backups"
  }
  [ "$tellme" ] || {
    rm -rf "${HOME}/.config/$ndir"-bak*
    rm -rf "${HOME}/.config/$ndir".old
  }

  [ -d "${HOME}/.local/share/$ndir" ] && {
    if [ -d "${HOME}/.local/share/$newdir" ]
    then
      [ "$quiet" ] || {
        printf "\nRemoving existing ${ndir} plugins at ${HOME}/.local/share/${ndir}"
      }
      [ "$tellme" ] || {
        rm -rf "${HOME}/.local/share/$ndir"
      }
    else
      [ "$quiet" ] || {
        printf "\nMoving existing ${ndir} plugins at ${HOME}/.local/share/${ndir}"
      }
      [ "$tellme" ] || {
        mv "${HOME}/.local/share/$ndir" "${HOME}/.local/share/$newdir"
      }
    fi
  }
  [ "$quiet" ] || {
    printf "\nRemoving any ${ndir} plugins backups"
  }
  [ "$tellme" ] || {
    rm -rf "${HOME}/.local/share/$ndir"-bak*
    rm -rf "${HOME}/.local/share/$ndir".old
  }

  [ -d "${HOME}/.local/state/$ndir" ] && {
    if [ -d "${HOME}/.local/state/$newdir" ]
    then
      [ "$quiet" ] || {
        printf "\nRemoving existing ${ndir} state at ${HOME}/.local/state/${ndir}"
      }
      [ "$tellme" ] || {
        rm -rf "${HOME}/.local/state/$ndir"
      }
    else
      [ "$quiet" ] || {
        printf "\nMoving existing ${ndir} state at ${HOME}/.local/state/${ndir}"
      }
      [ "$tellme" ] || {
        mv "${HOME}/.local/state/$ndir" "${HOME}/.local/state/$newdir"
      }
    fi
  }
  [ "$quiet" ] || {
    printf "\nRemoving any ${ndir} state backups"
  }
  [ "$tellme" ] || {
    rm -rf "${HOME}/.local/state/$ndir"-bak*
    rm -rf "${HOME}/.local/state/$ndir".old
  }

  [ -d "${HOME}/.cache/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} cache at ${HOME}/.cache/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.cache/$ndir"
    }
  }
  [ "$quiet" ] || {
    printf "\nRemoving any ${ndir} cache backups"
  }
  [ "$tellme" ] || {
    rm -rf "${HOME}/.cache/$ndir"-bak*
    rm -rf "${HOME}/.cache/$ndir".old
  }
  [ "$tellme" ] || {
    add_nvimdirs_entry "$newdir" /tmp/nvdirs$$
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
  [ -d "${HOME}/.config/${ndir}" ] || {
    [ -d "${HOME}/.config/lazyman/${ndir}" ] && ndir="lazyman/${ndir}"
  }
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
  [ "${nopatch}" ] || {
    [ -f "${LMANDIR}"/scripts/patches/${patchdir}.patch ] || {
      patchdir=$(echo "${patchdir}" | sed -e "s%lazyman/%%")
    }
    [ -f "${LMANDIR}"/scripts/patches/${patchdir}.patch ] && {
      [ -x "${LMANDIR}"/scripts/patch_config.sh ] && {
        "${LMANDIR}"/scripts/patch_config.sh "${patchdir}"
      }
    }
  }
}

update_config() {
  ndir="$1"
  GITDIR=".config/${ndir}"
  [ -d "${HOME}/${GITDIR}" ] || {
    [ -d "${HOME}/.config/lazyman/${ndir}" ] && {
      ndir="lazyman/${ndir}"
      GITDIR=".config/${ndir}"
    }
  }
  [ -d "${HOME}/${GITDIR}" ] && {
    printf "\nUpdating existing ${ndir} config at ${HOME}/${GITDIR}"
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
    [ "${ndir}" == "lazyman/Cpp" ] ||
    [ "${ndir}" == "lazyman/Go" ] ||
    [ "${ndir}" == "lazyman/Rust" ] ||
    [ "${ndir}" == "lazyman/Python" ] ||
    [ "${customastro}" ] && {
      if [ "${ndir}" == "${astronvimdir}" ] || [ "${customastro}" ]; then
        cdir="lua/user"
      else
        cdir="lua/custom"
      fi
      [ -d "${HOME}/${GITDIR}/${cdir}" ] && {
        printf "\nUpdating existing add-on config at ${HOME}/.config/${ndir}/${cdir}"
        [ "$tellme" ] || {
          git -C "${HOME}/${GITDIR}/${cdir}" stash >/dev/null 2>&1
          git -C "${HOME}/${GITDIR}"/${cdir} reset --hard >/dev/null 2>&1
          git -C "${HOME}/${GITDIR}"/${cdir} pull >/dev/null 2>&1
        }
      }
    }
    [ "${ndir}" == "${spacevimdir}" ] && {
      [ -d "${SPDIR}"/.git ] && {
        printf "\nUpdating existing SpaceVim add-on config at ${SPDIR}"
        [ "$tellme" ] || {
          git -C "${SPDIR}" stash >/dev/null 2>&1
          git -C "${SPDIR}" reset --hard >/dev/null 2>&1
          git -C "${SPDIR}" pull >/dev/null 2>&1
        }
      }
    }
    [ "${ndir}" == "${minivimdir}" ] && {
      git -C "${HOME}/${GITDIR}" submodule update \
        --remote --init --recursive >/dev/null 2>&1
    }
    [ "${ndir}" == "${LAZYMAN}" ] || fix_nvim_dir "${ndir}"
    [ "${ndir}" == "${lunarvimdir}" ] ||
      [ "${ndir}" == "lazyman/LunarIde" ] ||
      [ "${ndir}" == "lazyman/LvimAdib" ] ||
      [ "${ndir}" == "lazyman/Shuvro" ] ||
      [ "${ndir}" == "lazyman/JustinLvim" ] ||
      [ "${ndir}" == "lazyman/Daniel" ] && fix_lvim_dir "${ndir}"
    apply_patch "${ndir}"
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
      printf "\n\t${HOME}/.config/${repodest}"
    }
    [ "$tellme" ] || {
      git clone \
        https://github.com/"$repourl" \
        "${HOME}/.config/${repodest}" >/dev/null 2>&1
      add_nvimdirs_entry "$repodest"
      # Replace references to /nvim/ with /$repodest/
      fix_nvim_dir "${repodest}"
    }
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
  [ "${USE_FONT}" ] || USE_FONT="Standard"
  if [ "${have_lolcat}" ]; then
    figlet -c -d "${FONTDIR}" -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | ${LOLCAT}
  else
    figlet -c -d "${FONTDIR}" -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null
  fi
}

# git_status [-q] [-r] config_dir
#   -q indicates return short status string, one of:
#     "Up-to-date"
#     "Updates available"
#     "Local changes"
#     "Diverged"
#   -r indicates rich-cli rather than echo/printf (only if no -q)
git_status() {
  query=
  rich=
  [ "$1" == "-q" ] && {
    query=1
    shift
  }
  [ "$1" == "-r" ] && {
    rich=1
    shift
  }
  gpath="$1"
  tpath=$(echo "${gpath}" | sed -e "s%${HOME}%~%")
  git -C "${gpath}" remote update >/dev/null 2>&1
  UPSTREAM=${2:-'@{u}'}
  LOCAL=$(git -C "${gpath}" rev-parse @)
  REMOTE=$(git -C "${gpath}" rev-parse "$UPSTREAM")
  BASE=$(git -C "${gpath}" merge-base @ "$UPSTREAM")

  if [ $LOCAL = $REMOTE ]; then
    if [ "${query}" ]; then
      echo "Up-to-date"
    else
      if [ "${rich}" ]; then
        printf "  %-45s" "${tpath}"
        rich "  [b green]Up-to-date [/]" -p
      else
        printf "\n  %-45s  Up-to-date " "${tpath}"
      fi
    fi
  elif [ $LOCAL = $BASE ]; then
    if [ "${query}" ]; then
      echo "Updates available"
    else
      if [ "${rich}" ]; then
        printf "  %-45s" "${tpath}"
        rich "  [b yellow]Updates available[/]" -p
      else
        printf "\n  %-45s  Updates available" "${tpath}"
      fi
      if [ "${rich}" ]; then
        rich "    Update with: [b cyan]lazyman -U -N ${neovim}[/]" -p
      else
        printf "\n    Update with: lazyman -U -N ${neovim}"
      fi
    fi
  elif [ $REMOTE = $BASE ]; then
    if [ "${query}" ]; then
      echo "Local changes"
    else
      if [ "${rich}" ]; then
        printf "  %-45s" "${tpath}"
        rich "  [b orange]Local changes to tracked files[/]" -p
      else
        printf "\n  %-45s  Local changes to tracked files" "${tpath}"
      fi
      if [ "${rich}" ]; then
        rich "    Backup any local changes prior to running [b cyan]lazyman -U -N ${neovim}[/]" -p
      else
        printf "\n    Backup any local changes prior to running 'lazyman -U -N ${neovim}'"
      fi
    fi
  else
    if [ "${query}" ]; then
      echo "Diverged"
    else
      if [ "${rich}" ]; then
        printf "  %-45s" "${tpath}"
        rich "  [b red]Appears to have diverged[/]" -p
      else
        printf "\n  %-45s  Appears to have diverged" "${tpath}"
      fi
      if [ "${rich}" ]; then
        rich "    Backup any local changes prior to running [b cyan]lazyman -U -N ${neovim}[/]" -p
      else
        printf "\n    Backup any local changes prior to running 'lazyman -U -N ${neovim}'"
      fi
    fi
  fi
}

list_installed() {
  items=()
  [ -f "${LZYMANRC}" ] && {
    source "${LZYMANRC}"
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    installed=()
    for neovim in ${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}; do
      if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
        installed+=("${neovim}")
      fi
    done
    numins=${#installed[@]}
    if [ ${numins} -gt 0 ]; then
      printf "\n\n${numins} installed Lazyman Neovim configurations\n"
      installed=()
      for neovim in ${BASECFGS}; do
        if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
          installed+=("${neovim}")
        fi
      done
      numins=${#installed[@]}
      [ ${numins} -gt 0 ] && {
        printf "\n  ${numins} installed Base Neovim configurations:\n\n  "
        linelen=0
        for conf in "${installed[@]}"; do
          printf "${conf}  "
          nvsz=${#conf}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n  "
            linelen=0
          }
        done
        printf "\n"
      }
      installed=()
      for neovim in ${LANGUCFGS}; do
        if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
          installed+=("${neovim}")
        fi
      done
      numins=${#installed[@]}
      [ ${numins} -gt 0 ] && {
        printf "\n  ${numins} installed Language Neovim configurations:\n\n  "
        linelen=0
        for conf in "${installed[@]}"; do
          printf "${conf}  "
          nvsz=${#conf}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n  "
            linelen=0
          }
        done
        printf "\n"
      }
      installed=()
      for neovim in ${PRSNLCFGS}; do
        if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
          installed+=("${neovim}")
        fi
      done
      numins=${#installed[@]}
      [ ${numins} -gt 0 ] && {
        printf "\n  ${numins} installed Personal Neovim configurations:\n\n  "
        linelen=0
        for conf in "${installed[@]}"; do
          printf "${conf}  "
          nvsz=${#conf}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n  "
            linelen=0
          }
        done
        printf "\n"
      }
      installed=()
      for neovim in ${STARTCFGS}; do
        if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
          installed+=("${neovim}")
        fi
      done
      numins=${#installed[@]}
      [ ${numins} -gt 0 ] && {
        printf "\n  ${numins} installed Starter Neovim configurations:\n\n  "
        linelen=0
        for conf in "${installed[@]}"; do
          printf "${conf}  "
          nvsz=${#conf}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n  "
            linelen=0
          }
        done
        printf "\n"
      }
    else
      printf "\n\nNo supported Lazyman Neovim configurations are installed."
    fi
  }
  printf "\n"
}

set_uninstalled() {
  allbase=
  numinst=0
  for neovim in ${BASECFGS}; do
    if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
      uninstalled+=("${neovim}")
      ((numinst++))
    fi
  done
  [ ${numinst} -gt 1 ] && allbase=1
  alllang=
  numinst=0
  for neovim in ${LANGUCFGS}; do
    if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
      uninstalled+=("${neovim}")
      ((numinst++))
    fi
  done
  [ ${numinst} -gt 1 ] && alllang=1
  allpers=
  numinst=0
  for neovim in ${PRSNLCFGS}; do
    if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
      uninstalled+=("${neovim}")
      ((numinst++))
    fi
  done
  [ ${numinst} -gt 1 ] && allpers=1
  allstar=
  numinst=0
  for neovim in ${STARTCFGS}; do
    if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
      uninstalled+=("${neovim}")
      ((numinst++))
    fi
  done
  [ ${numinst} -gt 1 ] && allstar=1
}

list_uninstalled() {
  items=()
  [ -f "${LZYMANRC}" ] && {
    source "${LZYMANRC}"
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    uninstalled=()
    for neovim in ${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}; do
      if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
        uninstalled+=("${neovim}")
      fi
    done
    numunins=${#uninstalled[@]}
    if [ ${numunins} -gt 0 ]; then
      printf "\n\n${numunins} uninstalled Lazyman Neovim configurations\n"
      uninstalled=()
      for neovim in ${BASECFGS}; do
        if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
          uninstalled+=("${neovim}")
        fi
      done
      numunins=${#uninstalled[@]}
      [ ${numunins} -gt 0 ] && {
        printf "\n  ${numunins} uninstalled Base Neovim configurations:\n\n  "
        linelen=0
        for conf in "${uninstalled[@]}"; do
          printf "${conf}  "
          nvsz=${#conf}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n  "
            linelen=0
          }
        done
        printf "\n"
      }
      uninstalled=()
      for neovim in ${LANGUCFGS}; do
        if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
          uninstalled+=("${neovim}")
        fi
      done
      numunins=${#uninstalled[@]}
      [ ${numunins} -gt 0 ] && {
        printf "\n  ${numunins} uninstalled Language Neovim configurations:\n\n  "
        linelen=0
        for conf in "${uninstalled[@]}"; do
          printf "${conf}  "
          nvsz=${#conf}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n  "
            linelen=0
          }
        done
        printf "\n"
      }
      uninstalled=()
      for neovim in ${PRSNLCFGS}; do
        if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
          uninstalled+=("${neovim}")
        fi
      done
      numunins=${#uninstalled[@]}
      [ ${numunins} -gt 0 ] && {
        printf "\n  ${numunins} uninstalled Personal Neovim configurations:\n\n  "
        linelen=0
        for conf in "${uninstalled[@]}"; do
          printf "${conf}  "
          nvsz=${#conf}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n  "
            linelen=0
          }
        done
        printf "\n"
      }
      uninstalled=()
      for neovim in ${STARTCFGS}; do
        if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
          uninstalled+=("${neovim}")
        fi
      done
      numunins=${#uninstalled[@]}
      [ ${numunins} -gt 0 ] && {
        printf "\n  ${numunins} uninstalled Starter Neovim configurations:\n\n  "
        linelen=0
        for conf in "${uninstalled[@]}"; do
          printf "${conf}  "
          nvsz=${#conf}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 50 ] && {
            printf "\n  "
            linelen=0
          }
        done
        printf "\n"
      }
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
    nvimconf=$(echo "${checkdir}" | sed -e "s%^lazyman/%%")
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
  use_local=
  infourl="https://lazyman.dev/info/${nviminfo}.html"
  have_curl=$(type -p curl)
  if [ "${have_curl}" ]
  then
    curl --head --silent --fail ${infourl} > /dev/null 2>&1 || {
      infourl="${LMANDIR}/info/html/${nviminfo}.html"
      use_local=1
    }
  else
    have_wget=$(type -p wget)
    if [ "${have_wget}" ]
    then
      wget --spider ${PAGE} 2>/dev/null || {
        infourl="${LMANDIR}/info/html/${nviminfo}.html"
        use_local=1
      }
    else
      infourl="${LMANDIR}/info/html/${nviminfo}.html"
      use_local=1
    fi
  fi
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
    [ "${use_local}" ] && {
      [ -d "${HOME}/tmp" ] || mkdir -p "${HOME}/tmp"
      [ -d "${HOME}/tmp/lazyman_html" ] || mkdir "${HOME}/tmp/lazyman_html"
      cp "${LMANDIR}/info/html/${nviminfo}.html" "${HOME}/tmp/lazyman_html"
      infourl="${HOME}/tmp/lazyman_html/${nviminfo}.html"
    }
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
  if [ "${checkdir}" == "select" ]
  then
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
        lazyman -N "lazyman/${choice}" info
      fi
    }
  else
    nvimconf=$(echo "${checkdir}" | sed -e "s%lazyman/%%")
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
  fi
}

check_updates() {
  use_rich=
  [ "$1" == "rich" ] && use_rich=1
  [ -f "${LZYMANRC}" ] && {
    source "${LZYMANRC}"
  }
  readarray -t sorted < <(printf '%s\0' "${ndirs[@]}" | sort -z | xargs -0n1)
  for neovim in "${sorted[@]}"; do
    configpath="${HOME}/.config/${neovim}"
    twiddlpath="~/.config/${neovim}"
    if [ -d "${configpath}/.git" ]; then
      # Check if updates are available
      if [ "${use_rich}" ]; then
        git_status -r "${configpath}"
      else
        git_status "${configpath}"
      fi
    else
      if [ -d "${configpath}" ]; then
        if [ "${use_rich}" ]; then
          printf "  %-45s" "${twiddlpath}"
          rich "  [b yellow]Not a git repository[/]" -p
        else
          printf "\n  %-45s  Not a git repository" "${twiddlpath}"
        fi
      else
        if [ "${use_rich}" ]; then
          printf "  %-45s" "${twiddlpath}"
          rich "  [b red]Config folder not found![/]" -p
        else
          printf "\n  %-45s  Config folder not found!" "${twiddlpath}"
        fi
      fi
    fi
    [ "${neovim}" == "${spacevimdir}" ] && {
      tdir="~/.SpaceVim.d"
      if [ -d "${SPDIR}" ]; then
        if [ -d "${SPDIR}/.git" ]; then
          # Check if updates are available
          if [ "${use_rich}" ]; then
            git_status -r "${SPDIR}"
          else
            git_status "${SPDIR}"
          fi
        else
          if [ "${use_rich}" ]; then
            printf "  %-45s" "${tdir}"
            rich "  [b yellow]Not a git repository[/]" -p
          else
            printf "\n  %-45s  Not a git repository" "${tdir}"
          fi
        fi
      else
        if [ "${use_rich}" ]; then
          printf "  %-45s" "${tdir}"
          rich "  [b red]Custom config folder not found[/]" -p
        else
          printf "\n  %-45s  Custom config folder not found" "${tdir}"
        fi
      fi
    }
    [ "${neovim}" == "${astronvimdir}" ] ||
    [ "${neovim}" == "${nvchaddir}" ] ||
    [ "${ndir}" == "lazyman/Cpp" ] ||
    [ "${ndir}" == "lazyman/Go" ] ||
    [ "${ndir}" == "lazyman/Rust" ] ||
    [ "${neovim}" == "lazyman/Python" ] ||
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
          if [ "${use_rich}" ]; then
            git_status -r "${configpath}/${cdir}"
          else
            git_status "${configpath}/${cdir}"
          fi
        else
          if [ "${use_rich}" ]; then
            printf "  %-45s" "${tdir}"
            rich "  [b yellow]Not a git repository[/]" -p
          else
            printf "\n  %-45s  Not a git repository" "${tdir}"
          fi
        fi
      else
        if [ "${use_rich}" ]; then
          printf "  %-45s" "${tdir}"
          rich "  [b red]Custom config folder not found[/]" -p
        else
          printf "\n  %-45s  Custom config folder not found" "${tdir}"
        fi
      fi
    }
  done
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
    if [[ " ${sorted[*]} " =~ " lazyman/${neovim} " ]]; then
      ((binst++))
    fi
    ((btots++))
  done
  linst=0
  ltots=0
  for neovim in ${LANGUCFGS}; do
    if [[ " ${sorted[*]} " =~ " lazyman/${neovim} " ]]; then
      ((linst++))
    fi
    ((ltots++))
  done
  pinst=0
  ptots=0
  for neovim in ${PRSNLCFGS}; do
    if [[ " ${sorted[*]} " =~ " lazyman/${neovim} " ]]; then
      ((pinst++))
    fi
    ((ptots++))
  done
  sinst=0
  stots=0
  for neovim in ${STARTCFGS}; do
    if [[ " ${sorted[*]} " =~ " lazyman/${neovim} " ]]; then
      ((sinst++))
    fi
    ((stots++))
  done
  printf "\n  %-8s  Base Neovim configurations installed" "${binst}/${btots}"
  printf "\n  %-8s  Language Neovim configurations installed" "${linst}/${ltots}"
  printf "\n  %-8s  Personal Neovim configurations installed" "${pinst}/${ptots}"
  printf "\n  %-8s  Starter Neovim configurations installed\n" "${sinst}/${stots}\n"
  ainst=0
  atots=0
  for neovim in ${ASTROCFGS}; do
    if [[ " ${sorted[*]} " =~ " lazyman/${neovim} " ]]; then
      ((ainst++))
    fi
    ((atots++))
  done
  vinst=0
  vtots=0
  for neovim in ${LAZYVIMCFGS}; do
    if [[ " ${sorted[*]} " =~ " lazyman/${neovim} " ]]; then
      ((vinst++))
    fi
    ((vtots++))
  done
  uinst=0
  utots=0
  for neovim in ${LUNARVIMCFGS}; do
    if [[ " ${sorted[*]} " =~ " lazyman/${neovim} " ]]; then
      ((uinst++))
    fi
    ((utots++))
  done
  ninst=0
  ntots=0
  for neovim in ${NVCHADCFGS}; do
    if [[ " ${sorted[*]} " =~ " lazyman/${neovim} " ]]; then
      ((ninst++))
    fi
    ((ntots++))
  done
  printf "\n  %-8s  AstroNvim Neovim configurations installed" "${ainst}/${atots}"
  printf "\n  %-8s  LazyVim Neovim configurations installed" "${vinst}/${vtots}"
  printf "\n  %-8s  LunarVim Neovim configurations installed" "${uinst}/${utots}"
  printf "\n  %-8s  NvChad Neovim configurations installed\n" "${ninst}/${ntots}"
  check_updates
  list_uninstalled
}

install_astronvim() {
  base_dir="$1"
  user_url="$2"
  clone_repo AstroNvim AstroNvim/AstroNvim "$base_dir"
  [ "$quiet" ] || {
    printf "\nAdding user configuration into"
    printf "\n\t${HOME}/.config/${base_dir}/lua/user"
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
}

install_bob() {
  if [ -x "${LMANDIR}/scripts/install_bob.sh" ]; then
    "${LMANDIR}"/scripts/install_bob.sh
  else
    if command -v "cargo" >/dev/null 2>&1; then
      printf "\n\tInstalling bob with cargo ..."
      cargo install bob >/dev/null 2>&1
      printf " done\n"
    else
      printf "\n\tCannot locate cargo. Skipping installation of bob.\n"
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
}

install_all() {
  printf "\n\nInstalling all Lazyman Neovim configurations\n"
  printf "\nInstalling all Lazyman 'Base' Neovim configurations\n"
  lazyman ${darg} -B -y -z -Q -q
  lazyman ${darg} -L all -y -z -Q -q
  lazyman ${darg} -W -y -z -Q -q
  lazyman ${darg} -X -y -z -Q -q
}

install_config() {
  confname="$1"

  case ${confname} in
  "All Supported Configs")
    install_all
    ;;
  "All Base Configs")
    lazyman ${darg} -B -y -z -Q -q
    ;;
  "All Language Configs")
    lazyman ${darg} -L all -y -z -Q -q
    ;;
  "All Personal Configs")
    lazyman ${darg} -W -y -z -Q -q
    ;;
  "All Starter Configs")
    lazyman ${darg} -X -y -z -Q -q
    ;;
  "All AstroNvim Configs")
    lazyman ${darg} -i astronvim -y -z -Q -q
    ;;
  "All LazyVim Configs")
    lazyman ${darg} -i lazyvim -y -z -Q -q
    ;;
  "All NvChad Configs")
    lazyman ${darg} -i nvchad -y -z -Q -q
    ;;
  "All LunarVim Configs")
    lazyman ${darg} -i lunarvim -y -z -Q -q
    ;;
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
  AlanVim | Allaman | CatNvim | Cpp | Go | Go2one | LunarIde | Insis | Knvim | LaTeX | LazyIde | LvimIde | Magidc | Nv | NV-IDE | Orange | Python | Rust | SaleVim | Shuvro | Webdev)
    lazyman ${darg} -L ${confname} -z -y -Q -q
    ;;
  2k | AstroNvimStart | Barebones | Basic | Modern | pde | CodeArt | Cosmic | Ember | Fennel | JustinOhMy | Kabin | Lamia | Micah | Normal | NvPak | HardHacker | Rohit | Scratch | SingleFile | StartBase | Opinion | StartLsp | StartMason | Modular | BasicLsp | BasicMason | Extralight | LspCmp | Minimal)
    lazyman ${darg} -x ${confname} -z -y -Q -q
    ;;
  Adib | Artur | ONNO | Charles | Craftzdog | Dillon | Daniel | JustinNvim | JustinLvim | Kodo | LamarVim | Lukas | LvimAdib | Maddison | Metis | Roiz | OnMyWay | Optixal | Plug | Kristijan | Heiker | Simple | Beethoven | Brain | Elianiva | Elijah | Enrique | J4de | Josean | Orhun | Primeagen | Rafi | Slydragonn | Spider | Traap | Wuelner | xero | Xiao)
    lazyman ${darg} -w ${confname} -z -y -Q -q
    ;;
  *)
    printf "\nUnsupported Neovim configuration!"
    printf "\nSkipping installation and initialization of ${confname}\n"
    ;;
  esac
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
  set_uninstalled
  numunins=${#uninstalled[@]}
  if [ ${numunins} -gt 0 ]; then
    [ "${allbase}" ] && uninstalled+=("All Base Configs")
    [ "${alllang}" ] && uninstalled+=("All Language Configs")
    [ "${allpers}" ] && uninstalled+=("All Personal Configs")
    [ "${allstar}" ] && uninstalled+=("All Starter Configs")
    [ ${numunins} -gt 2 ] && uninstalled+=("All Supported Configs")
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
      if [ -d "${HOME}/.config/lazyman/${neocfg}" ]; then
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
    lazyman -N "lazyman/${infocfg}" info
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
  nveropts+=("Quit (q)")
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
    "Quit"*,* | *,"Quit"* | "quit"*,* | *,"quit"* | "q",* | *,"q")
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
  printf "\nKeywords include: ${BOLD}help, info, install, open, remove, search, update${NORM}"
  printf "\nAll shortcuts have single key support:"
  printf "\n  'h' = help, 'I' = info, 'i' = install, 'o' = open, 'q' = quit"
  printf "\n  'r' = remove, 's' = search, 'u' = update, 'c' = Lazyman Config menu"
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
    options=()
    get_config_str "${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}"
    totalitems=${totalcfg}
    ((totalitems++))
    if [ "${cfginst}" ]; then
      iushort="update"
    else
      options+=("Install All        ${configstr}")
      iushort="install"
    fi
    if [ "${have_rich}" ]; then
      rich "[b magenta]${numitems}/${totalitems}[/] [b green]Lazyman Neovim ${confword}[/] [b magenta]installed[/]" -p -c
    else
      printf "\n${numitems}/${totalitems} Lazyman Neovim configurations installed:\n"
    fi

    PS3="${BOLD}Enter a choice (number, shortcut, or text, 'h' help): ${NORM}"
    get_config_str "${BASECFGS}"
    base_partial=${cfgpart}
    base_installed=${cfginst}
    base_num_installed=${cfginstalled}
    total_base_cfg=${totalcfg}
    [ "${base_installed}" ] || options+=("Install Base       ${configstr}")
    get_config_str "${LANGUCFGS}"
    lang_partial=${cfgpart}
    lang_installed=${cfginst}
    lang_num_installed=${cfginstalled}
    total_lang_cfg=${totalcfg}
    [ "${lang_installed}" ] || options+=("Install Languages  ${configstr}")
    get_config_str "${PRSNLCFGS}"
    prsnl_partial=${cfgpart}
    prsnl_installed=${cfginst}
    prsnl_num_installed=${cfginstalled}
    total_prsnl_cfg=${totalcfg}
    [ "${prsnl_installed}" ] || options+=("Install Personals  ${configstr}")
    get_config_str "${STARTCFGS}"
    start_partial=${cfgpart}
    start_installed=${cfginst}
    start_num_installed=${cfginstalled}
    total_start_cfg=${totalcfg}
    [ "${start_installed}" ] || options+=("Install Starters   ${configstr}")
    get_config_str "${ASTROCFGS}"
    astro_partial=${cfgpart}
    astro_installed=${cfginst}
    astro_num_installed=${cfginstalled}
    total_astro_cfg=${totalcfg}
    [ "${astro_installed}" ] || options+=("Install AstroNvims ${configstr}")
    get_config_str "${LAZYVIMCFGS}"
    lzyvm_partial=${cfgpart}
    lzyvm_installed=${cfginst}
    lzyvm_num_installed=${cfginstalled}
    total_lzyvm_cfg=${totalcfg}
    [ "${lzyvm_installed}" ] || options+=("Install LazyVims   ${configstr}")
    get_config_str "${LUNARVIMCFGS}"
    lunar_partial=${cfgpart}
    lunar_installed=${cfginst}
    lunar_num_installed=${cfginstalled}
    total_lunar_cfg=${totalcfg}
    [ "${lunar_installed}" ] || options+=("Install LunarVims  ${configstr}")
    get_config_str "${NVCHADCFGS}"
    nvchd_partial=${cfgpart}
    nvchd_installed=${cfginst}
    nvchd_num_installed=${cfginstalled}
    total_nvchd_cfg=${totalcfg}
    [ "${nvchd_installed}" ] || options+=("Install NvChads    ${configstr}")
    uninstalled=()
    if [ "${have_fzf}" ]; then
      set_uninstalled
      numunins=${#uninstalled[@]}
      [ ${numunins} -gt 0 ] && {
        options+=("Select and Install")
        options+=("Install from Category")
      }
      [ "${allbase}" ] && uninstalled+=("All Base Configs")
      [ "${alllang}" ] && uninstalled+=("All Language Configs")
      [ "${allpers}" ] && uninstalled+=("All Personal Configs")
      [ "${allstar}" ] && uninstalled+=("All Starter Configs")
      [ ${numunins} -gt 2 ] && uninstalled+=("All Supported Configs")
    else
      printf "\n\nConfiguration selection requires fzf but fzf is not found."
      printf "\nInstall fzf with 'lazyman -I' and verify fzf is in your PATH."
      prompt_continue
    fi
    if [ "${USEGUI}" ]; then
      if [ "${have_neovide}" ]; then
        if typeset -f neovides >/dev/null 2>&1; then
          [ ${numitems} -gt 0 ] && {
            if [ ${numitems} -gt 1 ]; then
              options+=("Select and Open")
              options+=("Open from Category")
            else
              options+=("Open Lazyman Config")
            fi
          }
        else
          options+=("Open Neovide")
          if typeset -f nvims >/dev/null 2>&1; then
            USEGUI=
            use_gui="neovim"
            [ ${numitems} -gt 0 ] && {
              if [ ${numitems} -gt 1 ]; then
                options+=("Select and Open")
                options+=("Open from Category")
              else
                options+=("Open Lazyman Config")
              fi
            }
          fi
        fi
      else
        USEGUI=
        use_gui="neovim"
        options+=("Install Neovide")
        if typeset -f nvims >/dev/null 2>&1; then
          [ ${numitems} -gt 0 ] && {
            if [ ${numitems} -gt 1 ]; then
              options+=("Select and Open")
              options+=("Open from Category")
            else
              options+=("Open Lazyman Config")
            fi
          }
        fi
      fi
    else
      [ "${have_neovide}" ] || {
        USEGUI=
        use_gui="neovim"
        options+=("Install Neovide")
      }
      if typeset -f nvims >/dev/null 2>&1; then
        [ ${numitems} -gt 0 ] && {
          if [ ${numitems} -gt 1 ]; then
            options+=("Select and Open")
            options+=("Open from Category")
          else
            options+=("Open Lazyman Config")
          fi
        }
      fi
    fi

    if [ "${iushort}" == "update" ]; then
      shortcuts="help/h info/I open/o search/s update/u"
    else
      shortcuts="help/h info/I install/i open/o search/s update/u"
    fi
    [ ${numitems} -gt 1 ] && {
      options+=("Select and Remove")
      options+=("Remove Category")
      options+=("Select and Update")
      options+=("Update Category")
      if [ "${iushort}" == "update" ]; then
        shortcuts="help/h info/I open/o remove/r search/s update/u"
      else
        shortcuts="help/h info/I install/i open/o remove/r search/s update/u"
      fi
    }
    instcats=
    instcons=
    color="yellow"
    mark="✗"
    [ "${base_partial}" ] && {
      color="cyan"
      mark="÷"
    }
    [ "${base_installed}" ] && {
      color="green"
      mark=""
    }
    if [ "${have_rich}" ]; then
      instcats="[b magenta]${base_num_installed}/${total_base_cfg}[/] [b ${color}]Base ${mark} [/]"
    else
      instcats="${base_num_installed}/${total_base_cfg} Base ${mark} "
    fi
    color="yellow"
    mark="✗"
    [ "${lang_partial}" ] && {
      color="cyan"
      mark="÷"
    }
    [ "${lang_installed}" ] && {
      color="green"
      mark=""
    }
    if [ "${have_rich}" ]; then
      instcats="${instcats}[b magenta]${lang_num_installed}/${total_lang_cfg}[/] [b ${color}]Languages ${mark} [/]"
    else
      instcats="${instcats}${lang_num_installed}/${total_lang_cfg} Languages ${mark} "
    fi
    color="yellow"
    mark="✗"
    [ "${prsnl_partial}" ] && {
      color="cyan"
      mark="÷"
    }
    [ "${prsnl_installed}" ] && {
      color="green"
      mark=""
    }
    if [ "${have_rich}" ]; then
      instcats="${instcats}[b magenta]${prsnl_num_installed}/${total_prsnl_cfg}[/] [b ${color}]Personals ${mark} [/]"
    else
      instcats="${instcats}${prsnl_num_installed}/${total_prsnl_cfg} Personals ${mark} "
    fi
    color="yellow"
    mark="✗"
    [ "${start_partial}" ] && {
      color="cyan"
      mark="÷"
    }
    [ "${start_installed}" ] && {
      color="green"
      mark=""
    }
    if [ "${have_rich}" ]; then
      instcats="${instcats}[b magenta]${start_num_installed}/${total_start_cfg}[/] [b ${color}]Starters ${mark}[/]"
    else
      instcats="${instcats}${start_num_installed}/${total_start_cfg} Starters ${mark}"
    fi
    custom_configs=("${sorted[@]}")
    for nvim_name in Lazyman ${BASECFGS} ${LANGUCFGS} ${PRSNLCFGS} ${STARTCFGS}; do
      # remove all the supported configs from the installed configs array
      for i in "${!custom_configs[@]}"; do
        if [[ ${custom_configs[i]} = $nvim_name ]]; then
          unset 'custom_configs[i]'
        fi
      done
    done
    numcustom=${#custom_configs[@]}
    [ ${numcustom} -gt 0 ] && {
      mark=""
      if [ "${have_rich}" ]; then
        instcats="${instcats} [b magenta]${numcustom}[/] [b green]Custom ${mark}[/]"
      else
        instcats="${instcats} ${numcustom} Custom ${mark}"
      fi
    }
    color="yellow"
    mark="✗"
    [ "${astro_partial}" ] && {
      color="cyan"
      mark="÷"
    }
    [ "${astro_installed}" ] && {
      color="green"
      mark=""
    }
    if [ "${have_rich}" ]; then
      instcons="[b magenta]${astro_num_installed}/${total_astro_cfg}[/] [b ${color}]AstroNvims ${mark} [/]"
    else
      instcons="${astro_num_installed}/${total_astro_cfg} AstroNvims ${mark} "
    fi
    color="yellow"
    mark="✗"
    [ "${lzyvm_partial}" ] && {
      color="cyan"
      mark="÷"
    }
    [ "${lzyvm_installed}" ] && {
      color="green"
      mark=""
    }
    if [ "${have_rich}" ]; then
      instcons="${instcons}[b magenta]${lzyvm_num_installed}/${total_lzyvm_cfg}[/] [b ${color}]LazyVims ${mark} [/]"
    else
      instcons="${instcons}${lzyvm_num_installed}/${total_lzyvm_cfg} LazyVims ${mark} "
    fi
    color="yellow"
    mark="✗"
    [ "${lunar_partial}" ] && {
      color="cyan"
      mark="÷"
    }
    [ "${lunar_installed}" ] && {
      color="green"
      mark=""
    }
    if [ "${have_rich}" ]; then
      instcons="${instcons}[b magenta]${lunar_num_installed}/${total_lunar_cfg}[/] [b ${color}]LunarVims ${mark} [/]"
    else
      instcons="${instcons}${lunar_num_installed}/${total_lunar_cfg} LunarVims ${mark} "
    fi
    color="yellow"
    mark="✗"
    [ "${nvchd_partial}" ] && {
      color="cyan"
      mark="÷"
    }
    [ "${nvchd_installed}" ] && {
      color="green"
      mark=""
    }
    if [ "${have_rich}" ]; then
      instcons="${instcons}[b magenta]${nvchd_num_installed}/${total_nvchd_cfg}[/] [b ${color}]NvChads ${mark} [/]"
    else
      instcons="${instcons}${nvchd_num_installed}/${total_nvchd_cfg} NvChads ${mark} "
    fi
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
    have_bob=$(type -p bob)
    [ "${have_bob}" ] || {
      options+=("Install Bob")
      options+=(" What is Bob?")
    }
    options+=("Config Info" "Health Check" "Plugin Search")
    numnvim=$(ps -ef | grep ' nvim ' | grep -v grep | wc -l)
    [ ${numnvim} -gt 0 ] && {
      [ -x ${KILLNVIM} ] && options+=("Kill All Nvim")
    }
    options+=("Lazyman Config")
    [ -f ${HOME}/.config/lazyman/LazyIde/lua/configuration.lua ] && {
      options+=("LazyIde Config")
    }
    [ -f ${HOME}/.config/lazyman/Webdev/lua/configuration.lua ] && {
      options+=("Webdev Config")
    }
    options+=("Lazyman Manual" "Status Report" "Check for Updates")
    [ "${have_brew}" ] && {
      options+=("Homebrew Upgrade")
    }
    if [ "${debug}" ]; then
      options+=("Debug Mode [on]")
    else
      options+=("Debug Mode [off]")
    fi
    [ "${have_bob}" ] && {
      used=$(bob list | grep Used | awk ' { print $2 } ')
      options+=("Neovim Ver [${used}]")
    }
    if [ "${have_neovide}" ]; then
      options+=("Toggle UI [${use_gui}]")
    fi
    options+=("Quit (q)")

    if [ ${showinstalled} -gt 0 ]; then
      neovims=""
      leader="[b green]"
      linelen=0
     [ "${have_rich}" ] || printf "  "
      for neovim in "${sorted[@]}"; do
        if [ "${have_rich}" ]; then
          neovims="${neovims} ${leader}${neovim}[/]"
          if [ "${leader}" == "[b green]" ]; then
            leader="[b magenta]"
          else
            leader="[b green]"
          fi
        else
          printf "${neovim}  "
          nvsz=${#neovim}
          linelen=$((linelen + nvsz + 2))
          [ ${linelen} -gt 74 ] && {
            printf "\n  "
            linelen=0
          }
        fi
      done
      [ "${have_rich}" ] && rich "${neovims}" -p -a rounded -c -C -w 78
    fi
    [ "${instcats}" ] && {
      if [ "${have_rich}" ]; then
        rich "[b green]${instcats}[/]" -p -c
      else
        printf "\nInstalled categories: ${BOLD}${instcats}${NORM} 🌝"
      fi
    }
    [ "${instcons}" ] && {
      if [ "${have_rich}" ]; then
        rich "[b green]${instcons}[/]" -p -c
      else
        printf "\nInstalled types:      ${BOLD}${instcons}${NORM} 🌝"
      fi
    }
    printf "\n"
    if [ "${have_rich}" ]; then
      rich "[b cyan]Selection shortcuts: [/] [b yellow]${shortcuts}[/]" -p
    else
      printf "\nSelection shortcuts:  ${BOLD}${shortcuts}${NORM}\n"
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
      "Install from Category",* | *,"Install from Category")
        choices=()
        [ "${base_installed}" ] || choices+=("Select/Install from Base")
        [ "${lang_installed}" ] || choices+=("Select/Install from Languages")
        [ "${prsnl_installed}" ] || choices+=("Select/Install from Personals")
        [ "${start_installed}" ] || choices+=("Select/Install from Starters")
        [ "${astro_installed}" ] || choices+=("Select/Install from AstroNvims")
        [ "${lzyvm_installed}" ] || choices+=("Select/Install from LazyVims")
        [ "${lunar_installed}" ] || choices+=("Select/Install from LunarVims")
        [ "${nvchd_installed}" ] || choices+=("Select/Install from NvChads")
        [ "${iushort}" == "update" ] || choices+=("Select/Install from All")
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select configuration category to install from  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          case "${choice}" in
            "Select/Install from Base")
              bchoices=("All Base Configs")
              for neovim in ${BASECFGS}; do
                if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  bchoices+=("${neovim}")
                fi
              done
              bchoice=$(printf "%s\n" "${bchoices[@]}" | fzf --prompt=" Select Base Neovim Config to Install  " --layout=reverse --border --exit-0)
              if [[ " ${bchoices[*]} " =~ " ${bchoice} " ]]; then
                install_config "${bchoice}"
              fi
              ;;
            "Select/Install from Languages")
              lchoices=("All Language Configs")
              for neovim in ${LANGUCFGS}; do
                if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  lchoices+=("${neovim}")
                fi
              done
              lchoice=$(printf "%s\n" "${lchoices[@]}" | fzf --prompt=" Select Language Neovim Config to Install  " --layout=reverse --border --exit-0)
              if [[ " ${lchoices[*]} " =~ " ${lchoice} " ]]; then
                install_config "${lchoice}"
              fi
              ;;
            "Select/Install from Personals")
              pchoices=("All Personal Configs")
              for neovim in ${PRSNLCFGS}; do
                if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  pchoices+=("${neovim}")
                fi
              done
              pchoice=$(printf "%s\n" "${pchoices[@]}" | fzf --prompt=" Select Personal Neovim Config to Install  " --layout=reverse --border --exit-0)
              if [[ " ${pchoices[*]} " =~ " ${pchoice} " ]]; then
                install_config "${pchoice}"
              fi
              ;;
            "Select/Install from Starters")
              schoices=("All Starter Configs")
              for neovim in ${STARTCFGS}; do
                if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  schoices+=("${neovim}")
                fi
              done
              schoice=$(printf "%s\n" "${schoices[@]}" | fzf --prompt=" Select Starter Neovim Config to Install  " --layout=reverse --border --exit-0)
              if [[ " ${schoices[*]} " =~ " ${schoice} " ]]; then
                install_config "${schoice}"
              fi
              ;;
            "Select/Install from AstroNvims")
              achoices=("All AstroNvim Configs")
              for neovim in ${ASTROCFGS}; do
                if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  achoices+=("${neovim}")
                fi
              done
              achoice=$(printf "%s\n" "${achoices[@]}" | fzf --prompt=" Select AstroNvim Neovim Config to Install  " --layout=reverse --border --exit-0)
              if [[ " ${achoices[*]} " =~ " ${achoice} " ]]; then
                install_config "${achoice}"
              fi
              ;;
            "Select/Install from NvChads")
              nchoices=("All NvChad Configs")
              for neovim in ${NVCHADCFGS}; do
                if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  nchoices+=("${neovim}")
                fi
              done
              nchoice=$(printf "%s\n" "${nchoices[@]}" | fzf --prompt=" Select NvChad Neovim Config to Install  " --layout=reverse --border --exit-0)
              if [[ " ${nchoices[*]} " =~ " ${nchoice} " ]]; then
                install_config "${nchoice}"
              fi
              ;;
            "Select/Install from LazyVims")
              zchoices=("All LazyVim Configs")
              for neovim in ${LAZYVIMCFGS}; do
                if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  zchoices+=("${neovim}")
                fi
              done
              zchoice=$(printf "%s\n" "${zchoices[@]}" | fzf --prompt=" Select LazyVim Neovim Config to Install  " --layout=reverse --border --exit-0)
              if [[ " ${zchoices[*]} " =~ " ${zchoice} " ]]; then
                install_config "${zchoice}"
              fi
              ;;
            "Select/Install from LunarVims")
              vchoices=("All LunarVim Configs")
              for neovim in ${LUNARVIMCFGS}; do
                if [[ ! " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  vchoices+=("${neovim}")
                fi
              done
              vchoice=$(printf "%s\n" "${vchoices[@]}" | fzf --prompt=" Select LunarVim Neovim Config to Install  " --layout=reverse --border --exit-0)
              if [[ " ${vchoices[*]} " =~ " ${vchoice} " ]]; then
                install_config "${vchoice}"
              fi
              ;;
            "Select/Install from All")
              [ ${numunins} -gt 0 ] && {
                allchoice=$(printf "%s\n" "${uninstalled[@]}" | fzf --prompt=" Install Neovim Configuration  " --layout=reverse --border --exit-0)
                [ "${allchoice}" ] && install_config "${allchoice}"
              }
              ;;
          esac
        fi
        break
        ;;
      "Select and Install"*,* | *,"Select and Install"* | "install",* | *,"install" | "Install",* | *,"Install"| "i",* | *,"i")
        [ ${numunins} -gt 0 ] && {
          choice=$(printf "%s\n" "${uninstalled[@]}" | fzf --prompt=" Install Neovim Configuration  " --layout=reverse --border --exit-0)
          [ "${choice}" ] && install_config "${choice}"
        }
        break
        ;;
      "Select and Update"*,* | *,"Select and Update"* | "update",* | *,"update" | "Update",* | *,"Update" | "u",* | *,"u")
        choice=$(printf "%s\n" "${sorted[@]}" | fzf --prompt=" Update Neovim Config  " --layout=reverse --border --exit-0)
        [ "${choice}" ] && update_config "${choice}"
        break
        ;;
      "Open from Category",* | *,"Open from Category")
        choices=()
        [ "${base_partial}" ] && choices+=("Select and Open from Base")
        [ "${lang_partial}" ] && choices+=("Select and Open from Languages")
        [ "${prsnl_partial}" ] && choices+=("Select and Open from Personals")
        [ "${start_partial}" ] && choices+=("Select and Open from Starters")
        [ "${astro_partial}" ] && choices+=("Select and Open from AstroNvims")
        [ "${lzyvm_partial}" ] && choices+=("Select and Open from LazyVims")
        [ "${lunar_partial}" ] && choices+=("Select and Open from LunarVims")
        [ "${nvchd_partial}" ] && choices+=("Select and Open from NvChads")
        [ "${iushort}" == "update" ] || choices+=("Select and Open from All")
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select configuration category to open from  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          case "${choice}" in
            "Select and Open from Base")
              choices=()
              for neovim in ${BASECFGS}; do
                if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  choices+=("${neovim}")
                fi
              done
              choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Base Neovim Config to Open  " --layout=reverse --border --exit-0)
              if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
                if [ "${USEGUI}" ]; then
                  runconfig "lazyman/${choice}" "neovide"
                else
                  runconfig "lazyman/${choice}"
                fi
              fi
              ;;
            "Select and Open from Languages")
              choices=()
              for neovim in ${LANGUCFGS}; do
                if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  choices+=("${neovim}")
                fi
              done
              choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Language Neovim Config to Open  " --layout=reverse --border --exit-0)
              if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
                if [ "${USEGUI}" ]; then
                  runconfig "lazyman/${choice}" "neovide"
                else
                  runconfig "lazyman/${choice}"
                fi
              fi
              ;;
            "Select and Open from Personals")
              choices=()
              for neovim in ${PRSNLCFGS}; do
                if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  choices+=("${neovim}")
                fi
              done
              choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Personal Neovim Config to Open  " --layout=reverse --border --exit-0)
              if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
                if [ "${USEGUI}" ]; then
                  runconfig "lazyman/${choice}" "neovide"
                else
                  runconfig "lazyman/${choice}"
                fi
              fi
              ;;
            "Select and Open from Starters")
              choices=()
              for neovim in ${STARTCFGS}; do
                if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  choices+=("${neovim}")
                fi
              done
              choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Starter Neovim Config to Open  " --layout=reverse --border --exit-0)
              if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
                if [ "${USEGUI}" ]; then
                  runconfig "lazyman/${choice}" "neovide"
                else
                  runconfig "lazyman/${choice}"
                fi
              fi
              ;;
            "Select and Open from AstroNvims")
              choices=()
              for neovim in ${ASTROCFGS}; do
                if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  choices+=("${neovim}")
                fi
              done
              choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select AstroNvim Neovim Config to Open  " --layout=reverse --border --exit-0)
              if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
                if [ "${USEGUI}" ]; then
                  runconfig "lazyman/${choice}" "neovide"
                else
                  runconfig "lazyman/${choice}"
                fi
              fi
              ;;
            "Select and Open from NvChads")
              choices=()
              for neovim in ${NVCHADCFGS}; do
                if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  choices+=("${neovim}")
                fi
              done
              choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select NvChad Neovim Config to Open  " --layout=reverse --border --exit-0)
              if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
                if [ "${USEGUI}" ]; then
                  runconfig "lazyman/${choice}" "neovide"
                else
                  runconfig "lazyman/${choice}"
                fi
              fi
              ;;
            "Select and Open from LazyVims")
              choices=()
              for neovim in ${LAZYVIMCFGS}; do
                if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  choices+=("${neovim}")
                fi
              done
              choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select LazyVim Neovim Config to Open  " --layout=reverse --border --exit-0)
              if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
                if [ "${USEGUI}" ]; then
                  runconfig "lazyman/${choice}" "neovide"
                else
                  runconfig "lazyman/${choice}"
                fi
              fi
              ;;
            "Select and Open from LunarVims")
              choices=()
              for neovim in ${LUNARVIMCFGS}; do
                if [[ " ${sorted[*]} " =~ " ${neovim} " ]]; then
                  choices+=("${neovim}")
                fi
              done
              choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select LunarVim Neovim Config to Open  " --layout=reverse --border --exit-0)
              if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
                if [ "${USEGUI}" ]; then
                  runconfig "lazyman/${choice}" "neovide"
                else
                  runconfig "lazyman/${choice}"
                fi
              fi
              ;;
            "Select and Open from All")
              if [ "${USEGUI}" ]; then
                neovides
              else
                nvims
              fi
              ;;
	  esac
	fi
	break
	;;
      "Open Lazyman"*,* | *,"Open Lazyman"*)
        if [ "${USEGUI}" ]; then
          NVIM_APPNAME="lazyman/Lazyman" neovide
        else
          NVIM_APPNAME="lazyman/Lazyman" nvim
        fi
        break
        ;;
      "Select and Open"*,* | *,"Select and Open"* | "open",* | *,"open" | "Open",* | *,"Open" | "o",* | *,"o")
        tput reset
        if [ "${USEGUI}" ]; then
          neovides
        else
          nvims
        fi
        break
        ;;
      "Select and Remove"*,* | *,"Select and Remove"* | "remove",* | *,"remove" | "Remove",* | *,"Remove" | "r",* | *,"r")
        if [ "${USEGUI}" ]; then
          neovides -R
        else
          nvims -R
        fi
        break
        ;;
      "Remove Category"*,* | *,"Remove Category"*)
        choices=()
        [ "${base_partial}" ] && choices+=("Remove Base")
        [ "${lang_partial}" ] && choices+=("Remove Languages")
        [ "${prsnl_partial}" ] && choices+=("Remove Personals")
        [ "${start_partial}" ] && choices+=("Remove Starters")
        [ "${astro_partial}" ] && choices+=("Remove AstroNvims")
        [ "${lunar_partial}" ] && choices+=("Remove LunarVims")
        [ "${lzyvm_partial}" ] && choices+=("Remove LazyVims")
        [ "${nvchd_partial}" ] && choices+=("Remove NvChads")
        numndirs=${#ndirs[@]}
        [ ${numndirs} -gt 1 ] && {
          choices+=("Remove All")
        }
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select configuration category to remove  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          case "${choice}" in
            "Remove Base")
              printf "\nRemoving all Lazyman 'Base' Neovim configurations\n"
              lazyman -R -B -y
              ;;
            "Remove Languages")
              printf "\nRemoving all Lazyman 'Language' Neovim configurations\n"
              lazyman -R -L all -y
              ;;
            "Remove Personals")
              printf "\nRemoving all Lazyman 'Personal' Neovim configurations\n"
              lazyman -R -W -y
              ;;
            "Remove Starters")
              printf "\nRemoving all Lazyman 'Starter' Neovim configurations\n"
              lazyman -R -X -y
              ;;
            "Remove AstroNvims")
              printf "\nRemoving all Lazyman 'AstroNvim' Neovim configurations\n"
              lazyman -R -i astronvim -y
              ;;
            "Remove NvChads")
              printf "\nRemoving all Lazyman 'NvChad' Neovim configurations\n"
              lazyman -R -i nvchad -y
              ;;
            "Remove LazyVims")
              printf "\nRemoving all Lazyman 'LazyVim' Neovim configurations\n"
              lazyman -R -i lazyvim -y
              ;;
            "Remove LunarVims")
              printf "\nRemoving all Lazyman 'LunarVim' Neovim configurations\n"
              lazyman -R -i lunarvim -y
              ;;
            "Remove All")
              printf "\nRemoving all Lazyman Neovim configurations\n"
              for ndirm in "${ndirs[@]}"; do
                [ "${ndirm}" == "${LAZYMAN}" ] && continue
                [ "${ndirm}" == "nvim" ] && continue
                lazyman -R -N ${ndirm} -y
              done
              ;;
          esac
        fi
        break
        ;;
      "Update Category"*,* | *,"Update Category"*)
        choices=()
        [ "${base_partial}" ] && choices+=("Update Base")
        [ "${lang_partial}" ] && choices+=("Update Languages")
        [ "${prsnl_partial}" ] && choices+=("Update Personals")
        [ "${start_partial}" ] && choices+=("Update Starters")
        [ "${astro_partial}" ] && choices+=("Update AstroNvims")
        [ "${lunar_partial}" ] && choices+=("Update LunarVims")
        [ "${lzyvm_partial}" ] && choices+=("Update LazyVims")
        [ "${nvchd_partial}" ] && choices+=("Update NvChads")
        numndirs=${#ndirs[@]}
        [ ${numndirs} -gt 1 ] && {
          choices+=("Update All")
        }
        choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select configuration category to update  " --layout=reverse --border --exit-0)
        if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
          case "${choice}" in
            "Update Base")
              printf "\nUpdating all Lazyman 'Base' Neovim configurations\n"
              lazyman ${darg} -B -y -z -Q -q -U
              ;;
            "Update Languages")
              lazyman ${darg} -L all -y -z -Q -q -U
              ;;
            "Update Personals")
              lazyman ${darg} -W -y -z -Q -q -U
              ;;
            "Update Starters")
              lazyman ${darg} -X -y -z -Q -q -U
              ;;
            "Update AstroNvims")
              lazyman ${darg} -i astronvim -y -z -Q -q -U
              ;;
            "Update NvChads")
              lazyman ${darg} -i nvchad -y -z -Q -q -U
              ;;
            "Update LazyVims")
              lazyman ${darg} -i lazyvim -y -z -Q -q -U
              ;;
            "Update LunarVims")
              lazyman ${darg} -i lunarvim -y -z -Q -q -U
              ;;
            "Update All")
              printf "\nUpdating all Lazyman Neovim configurations\n"
              printf "\nUpdating all Lazyman 'Base' Neovim configurations\n"
              lazyman ${darg} -B -y -z -Q -q -U
              lazyman ${darg} -L all -y -z -Q -q -U
              lazyman ${darg} -W -y -z -Q -q -U
              lazyman ${darg} -X -y -z -Q -q -U
              ;;
          esac
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
      "Install AstroNvims"*,* | *,"Install AstroNvims"*)
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
        install_all
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
        install_bob
        prompt_continue
        break
        ;;
      "Initialize Lazyman"*,* | *,"Initialize Lazyman"*)
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
        if [ -d "${HOME}/.config/lazyman/${nvimconf}" ]; then
          if [ "${USEGUI}" ]; then
            runconfig "lazyman/${nvimconf}" "neovide"
          else
            runconfig "lazyman/${nvimconf}"
          fi
        else
          if [ -d "${HOME}/.config/${nvimconf}" ]; then
            if [ "${USEGUI}" ]; then
              runconfig "lazyman/${nvimconf}" "neovide"
            else
              runconfig "lazyman/${nvimconf}"
            fi
          else
            printf "\nCannot locate ${nvimconf} Neovim configuration\n"
            prompt_continue
          fi
        fi
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
      "Config Info",* | *,"Config Info" | "info",* | *,"info" | "Info",* | *,"Info" | "I",* | *,"I")
        show_info select
        break
        ;;
      "Plugin Search",* | *,"Plugin Search" | "search"*,* | *,"search"* | "Search"*,* | *,"Search"* | "s",* | *,"s")
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
          lazyman -N "lazyman/${choice}" health
        fi
        break
        ;;
      "Kill All"*,* | *,"Kill All"*)
        ${KILLNVIM}
        break
        ;;
      "Lazyman Config",* | *,"Lazyman Config" | "c",* | *,"c")
        confmenu=1
        break
        ;;
      "LazyIde Config",* | *,"LazyIde Config" | "L",* | *,"L")
        [ -f ${HOME}/.config/lazyman/LazyIde/lua/configuration.lua ] && lidemenu=1
        break
        ;;
      "Webdev Config",* | *,"Webdev Config" | "W",* | *,"W")
        [ -f ${HOME}/.config/lazyman/Webdev/lua/configuration.lua ] && wdevmenu=1
        break
        ;;
      "Check for Updates",* | *,"Check for Updates")
        printf "\nChecking for available updates to Lazyman installed configs\n\n"
        if [ "${have_rich}" ]; then
          check_updates rich
        else
          check_updates
          printf "\n"
        fi
        prompt_continue
        break
        ;;
      "Status Report",* | *,"Status Report")
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
      "Quit"*,* | *,"Quit"* | "quit"*,* | *,"quit"* | "q",* | *,"q")
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
  cfginstalled=0
  totalcfg=0
  for cfg in ${CFGS}; do
    ((totalcfg++))
    inst=
    for bdir in "${sorted[@]}"; do
      [[ $cfg == "$bdir" ]] && {
        ((cfginstalled++))
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

migrate_configs() {
  if [ -f ${OVIMDIRS} ]
  then
    numold=$(grep -v nvim-Lazyman ${OVIMDIRS} | grep -v ^$ | wc -l)
  else
    numold=0
  fi
  [ ${numold} -gt 0 ] && {
    migrate=
    printf "\nLazyman version 4 introduced a new Neovim configuration location:"
    printf "\n\t${HOME}/.config/lazyman/<configuration name>/\n"
    printf "\n${numold} previously installed configurations detected."
    printf "\nThese can be migrated to the new configuration location.\n"
    while true; do
      read -r -p "Migrate ${numold} configurations ? (y/n) " yn
      case $yn in
      [Yy]*)
        migrate=1
        break
        ;;
      [Nn]*)
        printf "\nSkipping migration"
        printf "\nTo migrate these configurations later, run 'lazyman migrate'\n"
        prompt_continue
        break
        ;;
      *)
        printf "\nPlease answer yes or no.\n"
        ;;
      esac
    done
    [ "${migrate}" ] && {
      [ -d "${HOME}/.config/lazyman" ] || mkdir -p "${HOME}/.config/lazyman"
      [ -d "${HOME}/.local/share/lazyman" ] || mkdir -p "${HOME}/.local/share/lazyman"
      [ -d "${HOME}/.local/state/lazyman" ] || mkdir -p "${HOME}/.local/state/lazyman"
      cat "${OVIMDIRS}" | while read nvimdir; do
        [ "${nvimdir}" == "nvim-Lazyman" ] && continue
        move_config "$nvimdir"
      done
      migrated=1
    }
  }
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
astronvimdir="lazyman/AstroNvimPlus"
abstractdir="lazyman/Abstract"
basicdir="lazyman/Basic"
basicidedir="lazyman/BasicIde"
ecovimdir="lazyman/Ecovim"
kickstartdir="lazyman/Kickstart"
lazyvimdir="lazyman/LazyVim"
lunarvimdir="lazyman/LunarVim"
minivimdir="lazyman/Mini"
moderndir="lazyman/Modern"
pdedir="lazyman/pde"
penguinvimdir="lazyman/Penguin"
latexvimdir="lazyman/LaTeX"
fix_latex="lua/user/treesitter.lua"
menu="main"
setconf=
nopatch=
nvchaddir="lazyman/NvChad"
spacevimdir="lazyman/SpaceVim"
magicvimdir="lazyman/MagicVim"
basenvimdirs=("$lazyvimdir" "$magicvimdir" "$spacevimdir" "$ecovimdir" "$astronvimdir" "$nvchaddir" "$lunarvimdir" "$abstractdir" "$penguinvimdir" "$basicidedir")
neovimdir=()
[ $# -eq 1 ] && {
  [ "$1" == "-F" ] && set -- "$@" 'config'
  [ "$1" == "-U" ] && neovimdir=("${LAZYMAN}")
}
while getopts "9aAb:BcC:dD:eE:f:F:gGhHi:IjJkK:lL:mMnN:oO:pPqQrRsStTUvV:w:Wx:XyYzZu" flag; do
  case $flag in
  9)
    nopatch=1
    ;;
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
  O)
    namespace="$OPTARG"
    case ${namespace} in
      free|Free|FREE)
        ${SUBMENUS} -s namespace free
        ;;
      onno|Onno|ONNO)
        ${SUBMENUS} -s namespace onno
        ;;
      toggle|Toggle)
        ${SUBMENUS} -t namespace
        ;;
      *)
        printf "\nUnsupported namespace: ${namespace}"
        printf "\nSupported namespaces: free onno\n"
        brief_usage
        ;;
    esac
    exit 0
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
    echo "${name}" | grep lazyman/ > /dev/null || name="lazyman/$OPTARG"
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
  Y)
    setconf=1
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

if [ "${debug}" ]
then
  if [ "${nopatch}" ]
  then
    darg="-9 -d"
  else
    darg="-d"
  fi
else
  if [ "${nopatch}" ]
  then
    darg="-9"
  else
    darg=
  fi
fi

[ "${setconf}" ] && {
  ${SUBMENUS} -s "$1" "$2"
  exit 0
}

[ "$1" == "init" ] && {
  initdir="${LAZYMAN}"
  [ "$name" ] && initdir="$name"
  init_neovim ${initdir}
  exit 0
}

[ "$1" == "install" ] && {
  if [ "$2" == "bob" ]
  then
    install_bob
  else
    select_install
  fi
  exit 0
}

[ "$1" == "migrate" ] && {
  migrated=
  migrate_configs
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
  checkdir="select"
  [ "$name" ] && checkdir="$name"
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

[ "${all}" ] && {
  [ "${nvimbase}" ] || {
    # Install or Update all base configs
    neovimdir=()
    ignoredir=()
    for base_dir in "${basenvimdirs[@]}"; do
      if [ -d "${HOME}/.config/${base_dir}" ]; then
        if [ "${update}" ]; then
          neovimdir+=("${base_dir}")
        else
          ignoredir+=("${base_dir}")
        fi
      else
        if [ "${update}" ]; then
          ignoredir+=("${base_dir}")
        else
          neovimdir+=("${base_dir}")
        fi
      fi
    done
    for base_dir in "${ignoredir[@]}"; do
      case "${base_dir}" in
        ${lazyvimdir})
          lazyvim=
          ;;
        ${magicvimdir})
          magicvim=
          ;;
        ${spacevimdir})
          spacevim=
          ;;
        ${ecovimdir})
          ecovim=
          ;;
        ${astronvimdir})
          astronvim=
          ;;
        ${nvchaddir})
          nvchad=
          ;;
        ${lunarvimdir})
          lunarvim=
          ;;
        ${abstractdir})
          abstract=
          ;;
        ${penguinvimdir})
          penguinvim=
          ;;
        ${basicidedir})
          basicide=
          ;;
        *)
          printf "\nUnknown Base configuration: ${base_dir}\n"
          ;;
      esac
    done
  }
}

getok() {
  okdir="$1"
  if [ -d "${HOME}/.config/${okdir}" ]; then
    if [ "${update}" ]; then
      echo "ok"
    else
      echo "no"
    fi
  else
    if [ "${update}" ]; then
      echo "no"
    else
      echo "ok"
    fi
  fi
}

install_remove() {
  cfg="$1"
  if [ "$remove" ]; then
    remove_config "lazyman/${cfg}"
  else
    [ -d "${HOME}/.config/lazyman/${cfg}" ] || install_config ${cfg}
  fi
}

[ "${instcfgs}" ] && {
  case ${instcfgs} in
  LazyVim | lazyvim)
    if [ "$remove" ]; then
      printf "\nRemoving installed LazyVim configurations\n"
    else
      printf "\nInstalling LazyVim configurations\n"
    fi
    for nvimconfig in ${LAZYVIMCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  AstroNvim | Astronvim | astronvim)
    if [ "$remove" ]; then
      printf "\nRemoving installed AstroNvim configurations\n"
    else
      printf "\nInstalling AstroNvim configurations\n"
    fi
    for nvimconfig in ${ASTROCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  Kickstart | kickstart)
    if [ "$remove" ]; then
      printf "\nRemoving installed Kickstart configurations\n"
    else
      printf "\nInstalling Kickstart configurations\n"
    fi
    for nvimconfig in ${KICKSTARTCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  LunarVim | lunarvim)
    if [ "$remove" ]; then
      printf "\nRemoving installed LunarVim configurations\n"
    else
      printf "\nInstalling LunarVim configurations\n"
    fi
    for nvimconfig in ${LUNARVIMCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  NvChad | Nvchad | nvchad)
    if [ "$remove" ]; then
      printf "\nRemoving installed NvChad configurations\n"
    else
      printf "\nInstalling NvChad configurations\n"
    fi
    for nvimconfig in ${NVCHADCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  Packer | packer)
    if [ "$remove" ]; then
      printf "\nRemoving installed Packer based configurations\n"
    else
      printf "\nInstalling Packer based configurations\n"
    fi
    for nvimconfig in ${PACKERCFGS}; do
      install_remove "${nvimconfig}"
    done
    ;;
  Plug | plug)
    if [ "$remove" ]; then
      printf "\nRemoving installed Plug based configurations\n"
    else
      printf "\nInstalling Plug based configurations\n"
    fi
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
        remove_config "lazyman/${neovim}"
      done
    else
      remove_config "lazyman/${nvimlang}"
    fi
  else
    yesflag="-Q"
    [ "${proceed}" ] && yesflag="-Q -y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${update}" ]; then
      action="Updating"
      yesflag="${yesflag} -U"
    else
      action="Installing"
    fi
    if [ "${nvimlang}" == "all" ]; then
      printf "\n${action} all Language Neovim configurations."
      [ "$(getok lazyman/AlanVim)" == "ok" ] && {
        printf "\n${action} AlanVim Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/alanRizzo/dot-files \
          -D nvim -N lazyman/AlanVim -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Allaman)" == "ok" ] && {
        printf "\n${action} Allaman Neovim configuration"
        lazyman ${darg} -C https://github.com/Allaman/nvim \
          -N lazyman/Allaman ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/CatNvim)" == "ok" ] && {
        printf "\n${action} CatNvim Neovim configuration"
        lazyman ${darg} -C https://github.com/nullchilly/CatNvim \
          -N lazyman/CatNvim ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Cpp)" == "ok" ] && {
        printf "\n${action} Cpp Neovim configuration"
        lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-cpp \
          -b main -N lazyman/Cpp ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Go)" == "ok" ] && {
        printf "\n${action} Go Neovim configuration"
        lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-go-config \
          -b main -N lazyman/Go ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Go2one)" == "ok" ] && {
        printf "\n${action} Go2one Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/leoluz/go2one \
          -D nvim -N lazyman/Go2one -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/LazyIde)" == "ok" ] && {
        printf "\n${action} LazyIde Neovim configuration"
        lazyman ${darg} -C https://github.com/doctorfree/nvim-LazyIde \
          -N lazyman/LazyIde ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/LunarIde)" == "ok" ] && {
        printf "\n${action} LunarIde Neovim configuration"
        lazyman ${darg} -C https://github.com/doctorfree/lvim-Christian \
          -N lazyman/LunarIde ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Insis)" == "ok" ] && {
        printf "\n${action} Insis Neovim configuration"
        lazyman ${darg} -C https://github.com/nshen/InsisVim \
          -N lazyman/Insis -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Knvim)" == "ok" ] && {
        printf "\n${action} Knvim Neovim configuration"
        lazyman ${darg} -C https://github.com/knmac/knvim \
          -N lazyman/Knvim ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/LaTeX)" == "ok" ] && {
        printf "\n${action} LaTeX Neovim configuration"
        lazyman ${darg} -C https://github.com/benbrastmckie/.config -D nvim \
          -N lazyman/LaTeX -f "${fix_latex}" -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/LvimIde)" == "ok" ] && {
        printf "\n${action} LvimIde Neovim configuration"
        lazyman ${darg} -C https://github.com/lvim-tech/lvim \
          -N lazyman/LvimIde ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Magidc)" == "ok" ] && {
        printf "\n${action} Magidc Neovim configuration"
        lazyman ${darg} -C https://github.com/magidc/nvim-config \
          -N lazyman/Magidc ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Nv)" == "ok" ] && {
        printf "\n${action} Nv Neovim configuration"
        lazyman ${darg} -C https://github.com/appelgriebsch/Nv \
          -N lazyman/Nv ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/NV-IDE)" == "ok" ] && {
        printf "\n${action} NV-IDE Neovim configuration"
        lazyman ${darg} -C https://github.com/crivotz/nv-ide \
          -N lazyman/NV-IDE ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Orange)" == "ok" ] && {
        printf "\n${action} Orange Neovim configuration"
        lazyman ${darg} -C https://github.com/bitterteasweetorange/nvim \
          -N lazyman/Orange ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Python)" == "ok" ] && {
        printf "\n${action} Python Neovim configuration"
        lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-python \
          -b main -N lazyman/Python ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Rust)" == "ok" ] && {
        printf "\n${action} Rust Neovim configuration"
        lazyman ${darg} -V https://github.com/dreamsofcode-io/neovim-rust \
          -b main -N lazyman/Rust ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/SaleVim)" == "ok" ] && {
        printf "\n${action} SaleVim Neovim configuration"
        lazyman ${darg} -C https://github.com/igorcguedes/SaleVim \
          -N lazyman/SaleVim -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Shuvro)" == "ok" ] && {
        printf "\n${action} Shuvro Neovim configuration"
        lazyman ${darg} -b custom -C https://github.com/shuvro/lvim \
          -N lazyman/Shuvro ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Webdev)" == "ok" ] && {
        printf "\n${action} Webdev Neovim configuration"
        lazyman ${darg} -C https://github.com/doctorfree/nvim-webdev \
          -N lazyman/Webdev ${quietflag} -z ${yesflag}
      }
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
      Insis)
        lang_url="-C https://github.com/nshen/InsisVim"
        lang_opt="-P"
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
      Orange)
        lang_url="-C https://github.com/bitterteasweetorange/nvim"
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
      [ "$(getok lazyman/${nvimlang})" == "ok" ] && {
        printf "\n${action} ${nvimlang} Language Neovim configuration"
        lazyman ${darg} ${lang_url} -N lazyman/${nvimlang} ${lang_dir} \
          ${lang_opt} ${help_opt} ${quietflag} ${runflag} ${yesflag}
      }
    fi
  fi
}

[ "$nvimprsnl" ] && {
  if [ "$remove" ]; then
    if [ "${nvimprsnl}" == "all" ]; then
      for neovim in ${PRSNLCFGS}; do
        remove_config "lazyman/${neovim}"
      done
    else
      remove_config "lazyman/${nvimprsnl}"
    fi
  else
    yesflag="-Q"
    [ "${proceed}" ] && yesflag="-Q -y"
    quietflag=
    [ "${quiet}" ] && quietflag="-q"
    if [ "${update}" ]; then
      action="Updating"
      yesflag="${yesflag} -U"
    else
      action="Installing"
    fi
    if [ "${nvimprsnl}" == "all" ]; then
      printf "\n${action} all Personal Neovim configurations."
      [ "$(getok lazyman/Mini)" == "ok" ] && {
        printf "\n${action} Mini Neovim configuration"
        lazyman ${darg} -M ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Charles)" == "ok" ] && {
        printf "\n${action} Charles Neovim configuration"
        lazyman ${darg} -C https://github.com/CharlesChiuGit/nvimdots.lua \
          -N lazyman/Charles ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Craftzdog)" == "ok" ] && {
        printf "\n${action} Craftzdog Neovim configuration"
        lazyman ${darg} -C https://github.com/craftzdog/dotfiles-public \
          -D .config/nvim -N lazyman/Craftzdog -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Daniel)" == "ok" ] && {
        printf "\n${action} Daniel Neovim configuration"
        lazyman ${darg} -C https://github.com/daniel-vera-g/lvim \
          -N lazyman/Daniel ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Dillon)" == "ok" ] && {
        printf "\n${action} Dillon Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/dmmulroy/dotfiles \
          -D .config/nvim -N lazyman/Dillon -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/JustinLvim)" == "ok" ] && {
        printf "\n${action} JustinLvim Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/justinsgithub/dotfiles \
          -D lunarvim/.config/lvim -N lazyman/JustinLvim ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/JustinNvim)" == "ok" ] && {
        printf "\n${action} JustinNvim Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/justinsgithub/dotfiles \
          -D neovim/.config/nvim -N lazyman/JustinNvim ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Kodo)" == "ok" ] && {
        printf "\n${action} Kodo Neovim configuration"
        lazyman ${darg} -C https://github.com/chadcat7/kodo \
          -N lazyman/Kodo ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/LamarVim)" == "ok" ] && {
        printf "\n${action} LamarVim Neovim configuration"
        lazyman ${darg} -C https://github.com/Lamarcke/dotfiles \
          -D .config/nvim -N lazyman/LamarVim -b main ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Lukas)" == "ok" ] && {
        printf "\n${action} Lukas Neovim configuration"
        lazyman ${darg} -C https://github.com/lukas-reineke/dotfiles \
          -D vim -N lazyman/Lukas -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/LvimAdib)" == "ok" ] && {
        printf "\n${action} LvimAdib Neovim configuration"
        lazyman ${darg} -C https://github.com/adibhanna/lvim-config \
          -N lazyman/LvimAdib ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Maddison)" == "ok" ] && {
        printf "\n${action} Maddison Neovim configuration"
        lazyman ${darg} -C https://github.com/b0o/nvim-conf \
          -N lazyman/Maddison ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Metis)" == "ok" ] && {
        printf "\n${action} Metis Neovim configuration"
        lazyman ${darg} -C https://github.com/metis-os/pwnvim \
          -N lazyman/Metis ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Orhun)" == "ok" ] && {
        printf "\n${action} Orhun Neovim configuration"
        lazyman ${darg} -C https://github.com/orhun/dotfiles -J \
          -D nvim/.config/nvim/lua/user -N lazyman/Orhun ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Spider)" == "ok" ] && {
        printf "\n${action} Spider Neovim configuration"
        lazyman ${darg} -C https://github.com/fearless-spider/FSAstroNvim \
          -N lazyman/Spider ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Adib)" == "ok" ] && {
        printf "\n${action} Adib Neovim configuration"
        lazyman ${darg} -C https://github.com/adibhanna/nvim \
          -N lazyman/Adib ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/ONNO)" == "ok" ] && {
        printf "\n${action} ONNO Neovim configuration"
        lazyman ${darg} -C https://github.com/loctvl842/nvim -N lazyman/ONNO \
          -G ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/OnMyWay)" == "ok" ] && {
        printf "\n${action} OnMyWay Neovim configuration"
        lazyman ${darg} -C https://github.com/RchrdAlv/NvimOnMy_way \
          -N lazyman/OnMyWay -p ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Optixal)" == "ok" ] && {
        printf "\n${action} Optixal Neovim configuration"
        lazyman ${darg} -C https://github.com/Optixal/neovim-init.vim \
          -N lazyman/Optixal -p ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Kristijan)" == "ok" ] && {
        printf "\n${action} Kristijan Neovim configuration"
        lazyman ${darg} -C https://github.com/kristijanhusak/neovim-config \
          -D nvim -N lazyman/Kristijan ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Heiker)" == "ok" ] && {
        printf "\n${action} VonHeikemen Neovim configuration"
        lazyman ${darg} -C https://github.com/VonHeikemen/dotfiles \
          -D my-configs/neovim -N lazyman/Heiker ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Roiz)" == "ok" ] && {
        printf "\n${action} Roiz Neovim configuration"
        lazyman ${darg} -C https://github.com/MrRoiz/rnvim \
          -N lazyman/Roiz ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Simple)" == "ok" ] && {
        printf "\n${action} Simple Neovim configuration"
        lazyman ${darg} -C https://github.com/anthdm/.nvim \
          -N lazyman/Simple -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Artur)" == "ok" ] && {
        printf "\n${action} Artur Neovim configuration"
        lazyman ${darg} -C https://github.com/arturgoms/nvim \
          -N lazyman/Artur ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Beethoven)" == "ok" ] && {
        printf "\n${action} Beethoven Neovim configuration"
        lazyman ${darg} -C https://github.com/Elteoremadebeethoven/nvim-config \
          -N lazyman/Beethoven ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Brain)" == "ok" ] && {
        printf "\n${action} Brain Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/brainfucksec/neovim-lua \
          -N lazyman/Brain -D nvim ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Elianiva)" == "ok" ] && {
        printf "\n${action} Elianiva Neovim configuration"
        lazyman ${darg} -C https://github.com/elianiva/dotfiles \
          -D nvim/.config/nvim -N lazyman/Elianiva ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Elijah)" == "ok" ] && {
        printf "\n${action} Elijah Neovim configuration"
        lazyman ${darg} -C https://github.com/elijahmanor/dotfiles \
          -D nvim/.config/nvim -N lazyman/Elijah ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Enrique)" == "ok" ] && {
        printf "\n${action} Enrique Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/kiyov09/dotfiles \
          -D .config/nvim -N lazyman/Enrique -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/J4de)" == "ok" ] && {
        printf "\n${action} J4de Neovim configuration"
        lazyman ${darg} -C https://codeberg.org/j4de/nvim \
          -N lazyman/J4de ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Josean)" == "ok" ] && {
        printf "\n${action} Josean Neovim configuration"
        lazyman ${darg} -C https://github.com/josean-dev/dev-environment-files \
          -b main -D .config/nvim -N lazyman/Josean -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Primeagen)" == "ok" ] && {
        printf "\n${action} Primeagen Neovim configuration"
        lazyman ${darg} -C https://github.com/ThePrimeagen/init.lua \
          -N lazyman/Primeagen -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Rafi)" == "ok" ] && {
        printf "\n${action} Rafi Neovim configuration"
        lazyman ${darg} -C https://github.com/rafi/vim-config \
          -N lazyman/Rafi ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Slydragonn)" == "ok" ] && {
        printf "\n${action} Slydragonn Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/slydragonn/dotfiles \
          -D '.config/nvim' -N lazyman/Slydragonn -P ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Traap)" == "ok" ] && {
        printf "\n${action} Traap Neovim configuration"
        lazyman ${darg} -C https://github.com/Traap/nvim \
          -N lazyman/Traap ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Wuelner)" == "ok" ] && {
        printf "\n${action} Wuelner Neovim configuration"
        lazyman ${darg} -C https://github.com/wuelnerdotexe/nvim \
          -N lazyman/Wuelner ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/xero)" == "ok" ] && {
        printf "\n${action} xero Neovim configuration"
        lazyman ${darg} -b main -C https://github.com/xero/dotfiles \
          -D neovim/.config/nvim -N lazyman/xero ${quietflag} -z ${yesflag}
      }
      [ "$(getok lazyman/Xiao)" == "ok" ] && {
        printf "\n${action} Xiao Neovim configuration"
        lazyman ${darg} -C https://github.com/onichandame/nvim-config \
          -N lazyman/Xiao ${quietflag} -z ${yesflag}
      }
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
      Beethoven)
        prsnl_url="https://github.com/Elteoremadebeethoven/nvim-config"
        ;;
      Brain)
        prsnl_url="https://github.com/brainfucksec/neovim-lua"
        prsnl_dir="-D nvim"
        ;;
      Elianiva)
        prsnl_url="https://github.com/elianiva/dotfiles"
        prsnl_dir="-D nvim/.config/nvim"
        ;;
      Elijah)
        prsnl_url="https://github.com/elijahmanor/dotfiles"
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
      Primeagen)
        prsnl_url="https://github.com/ThePrimeagen/init.lua"
        prsnl_opt="-P"
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
      Wuelner)
        prsnl_url="https://github.com/wuelnerdotexe/nvim"
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
      JustinLvim)
        prsnl_url="https://github.com/justinsgithub/dotfiles"
        prsnl_opt="-b main"
        prsnl_dir="-D lunarvim/.config/lvim"
        ;;
      JustinNvim)
        prsnl_url="https://github.com/justinsgithub/dotfiles"
        prsnl_opt="-b main"
        prsnl_dir="-D neovim/.config/nvim"
        ;;
      Kodo)
        prsnl_url="https://github.com/chadcat7/kodo"
        ;;
      LamarVim)
        prsnl_url="https://github.com/Lamarcke/dotfiles"
        prsnl_opt="-b main"
        prsnl_dir="-D .config/nvim"
        ;;
      Lukas)
        prsnl_url="https://github.com/lukas-reineke/dotfiles"
        prsnl_opt="-P"
        prsnl_dir="-D vim"
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
        prsnl_opt="-G"
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
      Kristijan)
        prsnl_url="https://github.com/kristijanhusak/neovim-config"
        prsnl_dir="-D nvim"
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
      [ "$(getok lazyman/${nvimprsnl})" == "ok" ] && {
        printf "\n${action} ${nvimprsnl} Personal Neovim configuration"
        lazyman ${darg} -C ${prsnl_url} -N lazyman/${nvimprsnl} ${prsnl_dir} \
          ${prsnl_opt} ${help_opt} ${quietflag} ${runflag} ${yesflag}
      }
    fi
  fi
}

[ "$nvimstarter" ] && {
  if [ "$remove" ]; then
    if [ "${nvimstarter}" == "all" ]; then
      for neovim in ${STARTCFGS}; do
        remove_config "lazyman/${neovim}"
      done
    else
      remove_config "lazyman/${nvimstarter}"
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
        [ -d ${HOME}/.config/lazyman/${neovim} ] && action="Updating"
        printf "\n${action} nvim-starter ${neovim} Neovim configuration"
        lazyman ${darg} -C https://github.com/VonHeikemen/nvim-starter \
          -N lazyman/${neovim} -b ${startbranch} ${quietflag} -z ${yesflag}
      done
      action="Installing"
      [ -d ${HOME}/.config/lazyman/2k ] && action="Updating"
      printf "\n${action} nvim2k Neovim configuration"
      lazyman ${darg} -C https://github.com/2KAbhishek/nvim2k \
        -N lazyman/2k ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/AstroNvimStart ] && action="Updating"
      printf "\n${action} AstroNvimStart Neovim configuration"
      lazyman ${darg} -C https://github.com/doctorfree/AstroNvimStart \
        -J -N lazyman/AstroNvimStart ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Barebones ] && action="Updating"
      printf "\n${action} Barebones Neovim configuration"
      lazyman ${darg} -C https://github.com/Traap/barebones \
        -N lazyman/Barebones ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Basic ] && action="Updating"
      printf "\n${action} Basic Neovim configuration"
      lazyman ${darg} -C https://github.com/NvChad/basic-config \
        -N lazyman/Basic ${quietflag} -z ${yesflag}
      updflag=
      [ -d ${HOME}/.config/lazyman/Kickstart ] && updflag="-U"
      lazyman ${darg} -k ${quietflag} -z ${yesflag} ${updflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/CodeArt ] && action="Updating"
      printf "\n${action} CodeArt Neovim configuration"
      lazyman ${darg} -C https://github.com/artart222/CodeArt \
        -N lazyman/CodeArt -P ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Cosmic ] && action="Updating"
      printf "\n${action} Cosmic Neovim configuration"
      updcosmic=
      lazyman ${darg} -C https://github.com/CosmicNvim/CosmicNvim \
        -N lazyman/Cosmic ${quietflag} -z ${yesflag}
      CMICDIR="${HOME}"/.config/lazyman/Cosmic/lua/cosmic/config
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
        lazyman ${darg} -N lazyman/Cosmic -U ${quietflag} -z ${yesflag}
      }
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Ember ] && action="Updating"
      printf "\n${action} Ember Neovim configuration"
      lazyman ${darg} -b main -C https://github.com/danlikestocode/embervim \
        -D nvim -N lazyman/Ember ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Fennel ] && action="Updating"
      printf "\n${action} Fennel Neovim configuration"
      lazyman ${darg} -C https://github.com/jhchabran/nvim-config \
        -N lazyman/Fennel -P ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/JustinOhMy ] && action="Updating"
      printf "\n${action} JustinOhMy Neovim configuration"
      lazyman ${darg} -C https://github.com/justinsgithub/Oh-My-LazyVim \
        -N lazyman/JustinOhMy ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Micah ] && action="Updating"
      printf "\n${action} Micah Neovim configuration"
      lazyman ${darg} -C https://code.mehalter.com/AstroNvim_user \
        -J -N lazyman/Micah ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Kabin ] && action="Updating"
      printf "\n${action} Kabin Neovim configuration"
      lazyman ${darg} -C https://github.com/kabinspace/AstroNvim_user \
        -J -N lazyman/Kabin ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Lamia ] && action="Updating"
      printf "\n${action} Lamia Neovim configuration"
      lazyman ${darg} -C https://github.com/A-Lamia/AstroNvim-conf \
        -J -N lazyman/Lamia ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Normal ] && action="Updating"
      printf "\n${action} Normal Neovim configuration"
      lazyman ${darg} -C https://github.com/NormalNvim/NormalNvim \
        -N lazyman/Normal ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/NvPak ] && action="Updating"
      printf "\n${action} NvPak Neovim configuration"
      lazyman ${darg} -C https://github.com/Pakrohk-DotFiles/NvPak.git \
        -N lazyman/NvPak ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/HardHacker ] && action="Updating"
      printf "\n${action} HardHacker Neovim configuration"
      lazyman ${darg} -C https://github.com/hardhackerlabs/oh-my-nvim \
        -N lazyman/HardHacker ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Modern ] && action="Updating"
      printf "\n${action} Modern Neovim configuration"
      lazyman ${darg} -C https://github.com/alpha2phi/modern-neovim \
        -N lazyman/Modern ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/pde ] && action="Updating"
      printf "\n${action} PDE Neovim configuration"
      lazyman ${darg} -C https://github.com/alpha2phi/neovim-pde \
        -N lazyman/pde ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Rohit ] && action="Updating"
      printf "\n${action} Rohit Neovim configuration"
      lazyman ${darg} -C https://github.com/rohit-kumar-j/nvim \
        -N lazyman/Rohit ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/Scratch ] && action="Updating"
      printf "\n${action} Scratch Neovim configuration"
      lazyman ${darg} -C https://github.com/ngscheurich/nvim-from-scratch \
        -N lazyman/Scratch ${quietflag} -z ${yesflag}
      action="Installing"
      [ -d ${HOME}/.config/lazyman/SingleFile ] && action="Updating"
      printf "\n${action} SingleFile Neovim configuration"
      lazyman ${darg} -C https://github.com/creativenull/nvim-oneconfig \
        -N lazyman/SingleFile -P ${quietflag} -z ${yesflag}
    else
      start_url=
      start_dir=
      start_opt=
      help_opt=
      runflag=
      finish=1
      [ "${runvim}" ] || runflag="-z"
      case ${nvimstarter} in
      2k)
        start_url="https://github.com/2KAbhishek/nvim2k"
        ;;
      AstroNvimStart)
        start_url="https://github.com/doctorfree/AstroNvimStart"
        start_opt="-J"
        ;;
      Barebones)
        start_url="https://github.com/Traap/barebones"
        ;;
      Basic)
        start_url="https://github.com/NvChad/basic-config"
        ;;
      Kickstart)
        action="Installing"
        [ -d ${HOME}/.config/lazyman/${nvimstarter} ] && action="Updating"
        printf "\n${action} ${nvimstarter} Neovim configuration"
        lazyman ${darg} -k ${quietflag} -z ${yesflag}
        finish=
        ;;
      CodeArt)
        start_url="https://github.com/artart222/CodeArt"
        start_opt="-P"
        ;;
      Cosmic)
        action="Installing"
        [ -d ${HOME}/.config/lazyman/${nvimstarter} ] && action="Updating"
        printf "\n${action} ${nvimstarter} Neovim configuration"
        updcosmic=
        lazyman ${darg} -C https://github.com/CosmicNvim/CosmicNvim \
          -N lazyman/Cosmic ${quietflag} -z ${yesflag}
        CMICDIR="${HOME}"/.config/lazyman/Cosmic/lua/cosmic/config
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
          lazyman ${darg} -N lazyman/Cosmic -U ${quietflag} -z ${yesflag}
        }
        finish=
        ;;
      Ember)
        start_url="https://github.com/danlikestocode/embervim"
        start_dir="-D nvim"
        start_opt="-b main"
        ;;
      Fennel)
        start_url="https://github.com/jhchabran/nvim-config"
        start_opt="-P"
        ;;
      JustinOhMy)
        start_url="https://github.com/justinsgithub/Oh-My-LazyVim"
        ;;
      Kabin)
        start_url="https://github.com/kabinspace/AstroNvim_user"
        start_opt="-J"
        ;;
      Micah)
        start_url="https://code.mehalter.com/AstroNvim_user"
        start_opt="-J"
        ;;
      Lamia)
        start_url="https://github.com/A-Lamia/AstroNvim-conf"
        start_opt="-J"
        ;;
      Normal)
        start_url="https://github.com/NormalNvim/NormalNvim"
        ;;
      NvPak)
        start_url="https://github.com/Pakrohk-DotFiles/NvPak.git"
        ;;
      HardHacker)
        start_url="https://github.com/hardhackerlabs/oh-my-nvim"
        ;;
      Modern)
        start_url="https://github.com/alpha2phi/modern-neovim"
        ;;
      pde)
        start_url="https://github.com/alpha2phi/neovim-pde"
        ;;
      Rohit)
        start_url="https://github.com/rohit-kumar-j/nvim"
        ;;
      Scratch)
        start_url="https://github.com/ngscheurich/nvim-from-scratch"
        ;;
      SingleFile)
        start_url="https://github.com/creativenull/nvim-oneconfig"
        start_opt="-P"
        ;;
      *)
        startbranch=
        set_starter_branch "${nvimstarter}"
        [ "${startbranch}" ] || usage
        start_url="https://github.com/VonHeikemen/nvim-starter"
        start_opt="-b ${startbranch}"
        ;;
      esac
      [ "${finish}" ] && {
        action="Installing"
        [ -d ${HOME}/.config/lazyman/${nvimstarter} ] && action="Updating"
        printf "\n${action} ${nvimstarter} Neovim configuration"
        lazyman ${darg} -C ${start_url} -N lazyman/${nvimstarter} ${start_dir} \
          ${start_opt} ${help_opt} ${quietflag} ${runflag} ${yesflag}
      }
    fi
  fi
  printf "\n"
}

[ "$nvimsupport" ] && {
  if [ "$remove" ]; then
    remove_config "lazyman/${nvimsupport}"
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
      [ -d ${HOME}/.config/lazyman/Nyoom ] && action="Updating"
      printf "\n${action} Nyoom Neovim configuration"
      lazyman ${darg} -C https://github.com/nyoom-engineering/nyoom.nvim.git \
        -N lazyman/Nyoom ${quietflag} -z ${yesflag}
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
    echo "$ndir" | grep lazyman/ > /dev/null || ndir="lazyman/$invoke"
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
migrated=
[ -f "${LMANDIR}/.initialized" ] || {
  [ -f "${OMANDIR}/.initialized" ] && {
    # An initialized earlier Lazyman install has been found. Migrate configs.
    migrate_configs
  }
}
numvimdirs=${#neovimdir[@]}
[ ${numvimdirs} -eq 0 ] && {
  neovimdir=("${LAZYMAN}")
  [ -f "${LMANDIR}/.initialized" ] && interactive=1
}
if [ -d "${LMANDIR}" ]; then
  git -C "${LMANDIR}" checkout sub >/dev/null 2>&1
  #[ "$branch" ] && {
  #  git -C "${LMANDIR}" checkout "$branch" >/dev/null 2>&1
  #}
  [ -d "${HOME}/.local/share/${LAZYMAN}" ] || interactive=
  [ -f "${LMANDIR}/.initialized" ] && instnvim=
else
  [ "$quiet" ] || {
    printf "\nCloning ${LAZYMAN} configuration into"
    printf "\n\t${LMANDIR}"
  }
  [ "$tellme" ] || {
    git clone https://github.com/doctorfree/nvim-lazyman \
      "${LMANDIR}" >/dev/null 2>&1
    git -C "${LMANDIR}" checkout sub >/dev/null 2>&1
    #[ "$branch" ] && {
    #  git -C "${LMANDIR}" checkout "$branch" >/dev/null 2>&1
    #}
  }
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
    printf "\n\t${HOME}/.config/${lunarvimdir}/lua/user"
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
}
[ "$magicvim" ] && {
  [ -d "${HOME}/.config/$magicvimdir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning MagicVim configuration into"
      printf "\n\t${HOME}/.config/${magicvimdir}"
    }
    [ "$tellme" ] || {
      git clone \
        https://gitlab.com/GitMaster210/magicvim \
        "${HOME}/.config/${magicvimdir}" >/dev/null 2>&1
      add_nvimdirs_entry "$magicvimdir"
      # Replace references to /nvim/ with /$magicvimdir/
      fix_nvim_dir "${magicvimdir}"
    }
  }
}
[ "$minivim" ] && {
  [ -d "${HOME}/.config/$minivimdir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning Mini configuration into"
      printf "\n\t${HOME}/.config/${minivimdir}"
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
  }
}
[ "$nvchad" ] && {
  [ -d "${HOME}/.config/$nvchaddir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning NvChad configuration into"
      printf "\n\t${HOME}/.config/${nvchaddir}"
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
      printf "\n\t${HOME}/.config/${nvchaddir}/lua/custom"
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
      printf "\n\t${SPDIR}"
    }
    [ "$tellme" ] || {
      [ -d "${HOME}"/.vim_backups ] || mkdir -p "${HOME}"/.vim_backups
      git clone https://github.com/doctorfree/spacevim "${SPDIR}" >/dev/null 2>&1
    }
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
    [ "$quiet" ] || {
      printf "\nThe directory ${HOME}/.config/${neovimdir[0]} already exists"
    }
  else
    [ "$quiet" ] || {
      printf "\nCloning ${custom_url} into"
      printf "\n\t${HOME}/.config/${neovimdir[0]}"
    }
    [ "$tellme" ] || {
      [ "${neovimdir[0]}" == "lazyman/Daniel" ] ||
        [ "${neovimdir[0]}" == "lazyman/JustinLvim" ] ||
        [ "${neovimdir[0]}" == "lazyman/LvimAdib" ] ||
        [ "${neovimdir[0]}" == "lazyman/Shuvro" ] ||
        [ "${neovimdir[0]}" == "lazyman/LunarIde" ] && {
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
      [ "${neovimdir[0]}" == "lazyman/Daniel" ] ||
        [ "${neovimdir[0]}" == "lazyman/JustinLvim" ] ||
        [ "${neovimdir[0]}" == "lazyman/LvimAdib" ] ||
        [ "${neovimdir[0]}" == "lazyman/Shuvro" ] ||
        [ "${neovimdir[0]}" == "lazyman/LunarIde" ] && {
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
  fi
}
[ "$nvchadcustom" ] && {
  if [ -d "${HOME}/.config/${neovimdir[0]}" ]; then
    [ "$quiet" ] || {
      printf "\nThe directory ${HOME}/.config/${neovimdir[0]} already exists"
    }
  else
    [ "$quiet" ] || {
      printf "\nCloning ${nvchadcustom} into"
      printf "\n\t${HOME}/.config/${neovimdir[0]}"
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
  printf "\n"
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
