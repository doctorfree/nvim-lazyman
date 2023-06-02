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
LINE=$(tput smul 2>/dev/null)

PLEASE="Please enter your choice"
USEGUI=
BASECFGS="Abstract AstroNvim BasicIde Ecovim LazyVim LunarVim NvChad Penguin SpaceVim MagicVim"
PRSNLCFGS="Mini Ember Knvim Roiz Fennel Adib Optixal Plug Heiker Simple ONNO LaTeX"
MINIMCFGS="Extralight Minimal StartBase Opinion StartLsp StartMason Modular"
STARTCFGS="Basic Kickstart NvPak HardHacker Modern PDE ${MINIMCFGS}"
CUSTMCFGS="AlanVim Brain Charles CodeArt Cosmic Elianiva Magidc Nv SaleVim Slydragonn"
SPDIR="${HOME}/.SpaceVim.d"
# Timeout length for nvim headless execution
timeout=120
# Array with font names
fonts=("slant" "shadow" "small" "script" "standard")
# Supported themes
themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" "tundra"
        "onedarkpro" "everforest" "monokai-pro")
# Themes with styles
styled_themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin"
               "onedarkpro" "monokai-pro")

all_lsp_servers=("bashls" "cssmodules_ls" "denols" "dockerls" "eslint" "gopls"
                 "graphql" "html" "jdtls" "jsonls" "julials" "ltex" "lua_ls"
                 "marksman" "pylsp" "pyright" "sqlls" "tailwindcss" "texlab"
                 "tsserver" "vimls" "yamlls")
have_ccls=$(type -p ccls)
[ "${have_ccls}" ] && all_lsp_servers+=("ccls")
have_clangd=$(type -p clangd)
[ "${have_clangd}" ] && all_lsp_servers+=("clangd")

all_formatters=("actionlint" "goimports" "golangci-lint" "gofumpt"
                "google-java-format" "latexindent" "markdownlint"
                "prettier" "sql-formatter" "shellcheck" "shfmt"
                "stylua" "tflint" "yamllint")
have_beautysh=$(type -p beautysh)
[ "${have_beautysh}" ] && all_formatters+=("beautysh")
have_black=$(type -p black)
[ "${have_black}" ] && all_formatters+=("black")
have_ruff=$(type -p ruff)
[ "${have_ruff}" ] && all_formatters+=("ruff")

lsp_enabled_table=()
for_enabled_table=()

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-e] [-E config]"
  printf "\n   [-f path] [-F menu] [-g] [-i] [-j] [-k] [-l] [-m] [-M] [-s] [-S] [-v]"
  printf "\n   [-n] [-o] [-p] [-P] [-q] [-Q] [-h] [-H] [-I] [-L cmd] [-rR] [-C url]"
  printf "\n   [-D subdir] [-N nvimdir] [-G] [-tT] [-U] [-w conf] [-W] [-x conf]"
  printf "\n   [-X] [-y] [-Y] [-z] [-Z] [-u] [install] [open] [remove] [status]"
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
  printf "\n    -L 'cmd' specifies a Lazy command to run in the selected configuration"
  printf "\n    -r indicates remove the previously installed configuration"
  printf "\n    -R indicates remove previously installed configuration and backups"
  printf "\n    -C 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n    -N 'nvimdir' specifies the folder name to use for the config given by -C"
  printf "\n    -t indicates list all installed Lazyman Neovim configurations"
  printf "\n    -T indicates list all uninstalled Lazyman Neovim configurations"
  printf "\n    -U indicates update an existing configuration"
  printf "\n    -w 'conf' indicates install and initialize Personal 'conf' config"
  printf "\n       'conf' can be one of:"
  printf "\n           'Mini' 'Knvim' 'Roiz' 'Fennel' 'Ember' 'ONNO'"
  printf "\n           'Adib' 'Optixal' 'Plug' 'Simple' 'Heiker' 'LaTeX'"
  printf "\n    -W indicates install and initialize all 'Personal' Neovim configurations"
  printf "\n    -x 'conf' indicates install and initialize nvim-starter 'conf' config"
  printf "\n       'conf' can be one of 'Basic' 'Kickstart' 'NvPak'"
  printf "\n       'Extralight' 'Opinion' 'StartLsp' 'StartMason' 'Minimal'"
  printf "\n       'Modular' 'HardHacker' 'Modern' 'PDE' 'StartBase'"
  printf "\n    -X indicates install and initialize all 'Starter' configs"
  printf "\n    -y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n    -Y indicates install and initialize all 'Custom' configs"
  printf "\n    -z indicates do not run nvim after initialization"
  printf "\n    -Z indicates do not install Homebrew, Neovim, or any other tools"
  printf "\n    -u displays this usage message and exits"
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
        xtimeout ${timeout} nvim \
          --headless -c 'autocmd User PackerComplete quitall' -c "Packer${comm}"
      else
        if [ "$plug" ]; then
          xtimeout ${timeout} nvim --headless -c \
            'set nomore' -c "Plug${comm}" -c 'qa'
        else
          if [ "$neodir" == "$spacevimdir" ]; then
            xtimeout ${timeout} nvim --headless "+${comm}" +qa
          else
            xtimeout ${timeout} nvim --headless "+Lazy! ${comm}" +qa
          fi
        fi
      fi
    else
      if [ "$packer" ]; then
        xtimeout ${timeout} nvim --headless -c \
          'autocmd User PackerComplete quitall' -c "Packer${comm}" >/dev/null 2>&1
      else
        if [ "$plug" ]; then
          xtimeout ${timeout} nvim --headless -c
          'set nomore' -c "Plug${comm}" -c 'qa' >/dev/null 2>&1
        else
          if [ "$neodir" == "$spacevimdir" ]; then
            xtimeout ${timeout} nvim --headless "+${comm}" +qa >/dev/null 2>&1
          else
            xtimeout ${timeout} nvim --headless "+Lazy! ${comm}" +qa >/dev/null 2>&1
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
  have_julia=$(type -p julia)
  have_composer=$(type -p composer)
  have_rocks=$(type -p luarocks)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)
  have_zoxi=$(type -p zoxide)
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
                [ "${neodir}" == "${nvchaddir}" ] && {
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
                [ "${neodir}" == "${nvchaddir}" ] && {
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

install_custom() {
  allcustom=
  [ "$1" == "all" ] && allcustom=1
  customdir="$1"
  allflags="-q -Q -y -z"

  [ "${allcustom}" ] || [ "${customdir}" == "AlanVim" ] && {
    printf "\nInstalling and initializing the AlanVim Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -b main -C https://github.com/alanRizzo/dot-files \
        -D nvim -N nvim-AlanVim -P ${allflags}
    }
    printf "done"
  }
  [ "${allcustom}" ] || [ "${customdir}" == "Brain" ] && {
    printf "\nInstalling and initializing the Brain Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -b main -C https://github.com/brainfucksec/neovim-lua \
        -N nvim-Brain -D nvim ${allflags}
    }
    printf "done"
  }
  [ "${allcustom}" ] || [ "${customdir}" == "Charles" ] && {
    printf "\nInstalling and initializing the Charles Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -C https://github.com/CharlesChiuGit/nvimdots.lua \
        -N nvim-Charles ${allflags}
    }
    printf "done"
  }
  [ "${allcustom}" ] || [ "${customdir}" == "CodeArt" ] && {
    printf "\nInstalling and initializing the CodeArt Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -C https://github.com/artart222/CodeArt \
        -N nvim-CodeArt -P ${allflags}
    }
    printf "done"
  }
  [ "${allcustom}" ] || [ "${customdir}" == "Elianiva" ] && {
    printf "\nInstalling and initializing the Elianiva Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -C https://github.com/elianiva/dotfiles \
        -D nvim/.config/nvim -N nvim-Elianiva ${allflags}
    }
    printf "done"
  }
  [ "${allcustom}" ] || [ "${customdir}" == "Magidc" ] && {
    printf "\nInstalling and initializing the Magidc Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -C https://github.com/magidc/nvim-config \
        -N nvim-Magidc ${allflags}
    }
    printf "done"
  }
  [ "${allcustom}" ] || [ "${customdir}" == "Nv" ] && {
    printf "\nInstalling and initializing the Nv Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -C https://github.com/appelgriebsch/Nv \
        -N nvim-Nv ${allflags}
    }
    printf "done"
  }
  [ "${allcustom}" ] || [ "${customdir}" == "SaleVim" ] && {
    printf "\nInstalling and initializing the SaleVim Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -C https://github.com/igorcguedes/SaleVim \
        -N nvim-SaleVim -P ${allflags}
    }
    printf "done"
  }
  [ "${allcustom}" ] || [ "${customdir}" == "Slydragonn" ] && {
    printf "\nInstalling and initializing the Slydragonn Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -b main -C https://github.com/slydragonn/dotfiles \
        -D '.config/nvim' -N nvim-Slydragonn -P ${allflags}
    }
    printf "done"
  }
  [ "${allcustom}" ] || [ "${customdir}" == "Cosmic" ] && {
    printf "\nInstalling and initializing the CosmicNvim Neovim configuration ... "
    [ "$tellme" ] || {
      lazyman ${darg} -C https://github.com/CosmicNvim/CosmicNvim \
        -N nvim-Cosmic ${allflags}
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
    }
    printf "done"
  }
}

remove_custom() {
  allcustom=
  [ "$1" == "all" ] && allcustom=1
  customdir="$1"

  if [ "${allcustom}" ]
  then
    for custom in ${CUSTMCFGS}
    do
      lazyman -R -N nvim-${custom} -y
    done
  else
    lazyman -R -N nvim-${customdir} -y
  fi
}

update_custom() {
  allcustom=
  [ "$1" == "all" ] && allcustom=1
  customdir="$1"

  if [ "${allcustom}" ]
  then
    for custom in ${CUSTMCFGS}
    do
      lazyman ${darg} -U -N nvim-${custom} -y
    done
  else
    lazyman ${darg} -U -N nvim-${customdir} -y
  fi
}

update_config() {
  ndir="$1"
  GITDIR=".config/${ndir}"
  # [ "${ndir}" == "${lunarvimdir}" ] && GITDIR=".local/share/${lunarvimdir}/lvim"
  [ -d "${HOME}/${GITDIR}" ] && {
    [ "$quiet" ] || {
      printf "\nUpdating existing ${ndir} config at ${HOME}/${GITDIR} ..."
    }
    [ "$tellme" ] || {
      [ "${ndir}" == "${lazymandir}" ] && {
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
        fi
        rm -f /tmp/lazyconf$$
        set_chat_gpt
        set_code_explain
        set_ranger_float
        set_waka_opt
        prompt_continue
      }
      [ -d "${HOME}"/.local/bin ] || mkdir -p "${HOME}"/.local/bin
      [ -f "${LMANDIR}"/lazyman.sh ] && {
        cp "${LMANDIR}"/lazyman.sh "${HOME}"/.local/bin/lazyman
        chmod 755 "${HOME}"/.local/bin/lazyman
      }
    }
    [ "${ndir}" == "${astronvimdir}" ] || [ "${ndir}" == "${nvchaddir}" ] && {
      if [ "${ndir}" == "${astronvimdir}" ]; then
        cdir="lua/user"
      else
        cdir="lua/custom"
      fi
      [ -d "${HOME}/${GITDIR}/${cdir}" ] && {
        [ "$quiet" ] || {
          printf "\nUpdating existing add-on config at ${HOME}/.config/${ndir}/${cdir} ..."
        }
        [ "$tellme" ] || {
          git -C "${HOME}/${GITDIR}/${cdir}" stash >/dev/null 2>&1
          git -C "${HOME}/${GITDIR}"/${cdir} reset --hard >/dev/null 2>&1
          git -C "${HOME}/${GITDIR}"/${cdir} pull >/dev/null 2>&1
        }
        [ "$quiet" ] || {
          printf " done"
        }
      }
    }
    [ "${ndir}" == "${spacevimdir}" ] && {
      [ -d "${SPDIR}"/.git ] && {
        [ "$quiet" ] || {
          printf "\nUpdating existing SpaceVim add-on config at ${SPDIR} ..."
        }
        [ "$tellme" ] || {
          git -C "${SPDIR}" stash >/dev/null 2>&1
          git -C "${SPDIR}" reset --hard >/dev/null 2>&1
          git -C "${SPDIR}" pull >/dev/null 2>&1
        }
        [ "$quiet" ] || {
          printf " done"
        }
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
    for neovim in ${BASECFGS} ${PRSNLCFGS} ${STARTCFGS} ${CUSTMCFGS}; do
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
    for neovim in ${BASECFGS} ${PRSNLCFGS} ${STARTCFGS} ${CUSTMCFGS}; do
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
    [ "${neovim}" == "${astronvimdir}" ] || [ "${neovim}" == "${nvchaddir}" ] && {
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

get_conf_table() {
  confname="$1"
  if [ "${confname}" == "lsp_servers" ]; then
    lsp_enabled_table=()
    while read -r val; do
      lsp_enabled_table+=("$val")
    done < <(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
    enable_ccls=$(get_conf_value enable_ccls)
    if [ "${enable_ccls}" == "true" ]; then
      lsp_enabled_table+=("ccls")
    fi
    enable_clangd=$(get_conf_value enable_clangd)
    if [ "${enable_clangd}" == "true" ]; then
      lsp_enabled_table+=("clangd")
    fi
  else
    if [ "${confname}" == "formatters_linters" ]; then
      for_enabled_table=()
      while read -r val; do
        for_enabled_table+=("$val")
      done < <(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
      while read -r val; do
        for_enabled_table+=("$val")
      done < <(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} "external_formatters" 2>&1)
    fi
  fi
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

set_conf_table() {
  marker="$1"
  confval="$2"
  action="$3"
  case ${confval} in
    ccls)
      case ${action} in
        disable)
          set_conf_value "enable_ccls" "false"
          ;;
        enable)
          set_conf_value "enable_ccls" "true"
          ;;
      esac
      ;;
    clangd)
      case ${action} in
        disable)
          set_conf_value "enable_clangd" "false"
          ;;
        enable)
          set_conf_value "enable_clangd" "true"
          ;;
      esac
      ;;
    *)
      grep "${marker}" "${NVIMCONF}" | grep "${confval}" >/dev/null && {
        case ${action} in
          disable)
            cat "${NVIMCONF}" \
              | sed -e "s/  \"${confval}\",[[:space:]]\+--[[:space:]]\+${marker}/  -- \"${confval}\", -- ${marker}/" >/tmp/nvim$$
            ;;
          enable)
            cat "${NVIMCONF}" \
              | sed -e "s/-- \"${confval}\",[[:space:]]\+--[[:space:]]\+${marker}/\"${confval}\", -- ${marker}/" >/tmp/nvim$$
            ;;
        esac
        cp /tmp/nvim$$ "${NVIMCONF}"
        rm -f /tmp/nvim$$
      }
      ;;
  esac
}

set_ranger_float() {
  have_ranger=$(type -p ranger)
  [ "${have_ranger}" ] || {
    ranger_float=$(get_conf_value enable_ranger_float)
    [ "${ranger_float}" == "true" ] && {
      set_conf_value "enable_ranger_float" "false"
    }
  }
}

set_waka_opt() {
  waka="false"
  [ -f "${HOME}"/.wakatime.cfg ] && {
    grep api_key "${HOME}"/.wakatime.cfg >/dev/null && waka="true"
  }
  set_conf_value "enable_wakatime" "${waka}"
}

set_chat_gpt() {
  if [ "$OPENAI_API_KEY" ]; then
    openai="true"
  else
    openai="false"
  fi
  set_conf_value "enable_chatgpt" "${openai}"
}

set_code_explain() {
  if [ -f "${HOME}/.codeexplain/model.bin" ]; then
    pyver=$(check_python_version)
    if [ "${pyver}" == "OK" ]
    then
      set_conf_value "enable_codeexplain" "true"
    else
      set_conf_value "enable_codeexplain" "false"
    fi
  else
    set_conf_value "enable_codeexplain" "false"
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
    Basic)
      lazyman ${darg} -x Basic -z -y -Q -q
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
    Modern)
      lazyman ${darg} -x Modern -z -y -Q -q
      ;;
    PDE)
      lazyman ${darg} -x PDE -z -y -Q -q
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
    Adib)
      lazyman ${darg} -w Adib -z -y -Q -q
      ;;
    ONNO)
      lazyman ${darg} -w ONNO -z -y -Q -q
      ;;
    LaTeX)
      lazyman ${darg} -w LaTeX -z -y -Q -q
      ;;
    Ember)
      lazyman ${darg} -w Ember -z -y -Q -q
      ;;
    Knvim)
      lazyman ${darg} -w Knvim -z -y -Q -q
      ;;
    Roiz)
      lazyman ${darg} -w Roiz -z -y -Q -q
      ;;
    Fennel)
      lazyman ${darg} -w Fennel -z -y -Q -q
      ;;
    NvPak)
      lazyman ${darg} -x NvPak -z -y -Q -q
      ;;
    HardHacker)
      lazyman ${darg} -x HardHacker -z -y -Q -q
      ;;
    Optixal)
      lazyman ${darg} -w Optixal -z -y -Q -q
      ;;
    Plug)
      lazyman ${darg} -w Plug -z -y -Q -q
      ;;
    Heiker)
      lazyman ${darg} -w Heiker -z -y -Q -q
      ;;
    Minimal)
      lazyman ${darg} -x Minimal -z -y -Q -q
      ;;
    Simple)
      lazyman ${darg} -w Simple -z -y -Q -q
      ;;
    StartBase)
      lazyman ${darg} -x StartBase -z -y -Q -q
      ;;
    Opinion)
      lazyman ${darg} -x Opinion -z -y -Q -q
      ;;
    StartLsp)
      lazyman ${darg} -x StartLsp -z -y -Q -q
      ;;
    StartMason)
      lazyman ${darg} -x StartMason -z -y -Q -q
      ;;
    Modular)
      lazyman ${darg} -x Modular -z -y -Q -q
      ;;
    Extralight)
      lazyman ${darg} -x Extralight -z -y -Q -q
      ;;
    AlanVim|Brain|Charles|CodeArt|Cosmic|Elianiva|Magidc|Nv|SaleVim|Slydragonn)
      install_custom "${confname}"
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
  for neovim in ${BASECFGS} ${PRSNLCFGS} ${STARTCFGS} ${CUSTMCFGS}; do
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
      if [ "${have_rich}" ]; then
        rich "[cyan]Select Theme Style[/cyan]" -p -a rounded -c -C
      else
        [ "${have_figlet}" ] && show_figlet "Style"
      fi
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
      if [ "${have_rich}" ]; then
        rich "[cyan]Select Theme[/cyan]" -p -a rounded -c -C
      else
        [ "${have_figlet}" ] && show_figlet "Theme"
      fi
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

show_plug_help() {
  if [ "${have_rich}" ]; then
    rich "[cyan]Lazyman Plugins Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tLazyman Plugins Menu Help\n"
  fi
  printf "\nEnable and disable installed Neovim plugins and plugin configuration."
  printf "\nEnabled plugins and plugin configurations are indicated with a []"
  printf "\nDisabled plugins and plugin configurations are indicated with a [✗]\n"
  printf "\nSettings in this menu only effect the Lazyman Neovim configuration in:"
  printf "\n\t${HOME}/.config/nvim-Lazyman\n"
  prompt_continue
}

show_plugin_menu() {
  set_haves
  pluginit=
  while true; do
    mainmenu=
    confmenu=
    lspmenu=
    formenu=
    versmenu=
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install Lazyman"
      prompt_continue
      mainmenu=1
      break
    }
    [ "$debug" ] || tput reset
    if [ "${have_rich}" ]; then
      rich "[b cyan]Lazyman Plugins Configuration Menu[/]" -p -a rounded -c -C
      rich "[b green]Manage the Neovim plugins enabled in[/] [b yellow]~/.config/nvim-Lazyman[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "Plugins"
    fi
    printf '\n'
    media_backend=$(get_conf_value media_backend)
    use_media_backend="${media_backend}"
    session_manager=$(get_conf_value session_manager)
    use_session_manager="${session_manager}"
    file_tree=$(get_conf_value file_tree)
    use_neotree="${file_tree}"
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
    enable_codeexplain=$(get_conf_value enable_codeexplain)
    if [ "${enable_codeexplain}" == "true" ]; then
      use_codeexplain=""
    else
      use_codeexplain="✗"
    fi
    enable_rainbow2=$(get_conf_value enable_rainbow2)
    if [ "${enable_rainbow2}" == "true" ]; then
      use_rainbow2=""
    else
      use_rainbow2="✗"
    fi
    enable_surround=$(get_conf_value enable_surround)
    if [ "${enable_surround}" == "true" ]; then
      use_surround=""
    else
      use_surround="✗"
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
    enable_lualine_lsp_progress=$(get_conf_value enable_lualine_lsp_progress)
    if [ "${enable_lualine_lsp_progress}" == "true" ]; then
      use_lualine_lsp_progress=""
    else
      use_lualine_lsp_progress="✗"
    fi
    enable_terminal=$(get_conf_value enable_terminal)
    if [ "${enable_terminal}" == "true" ]; then
      use_terminal=""
    else
      use_terminal="✗"
    fi
    enable_toggleterm=$(get_conf_value enable_toggleterm)
    if [ "${enable_toggleterm}" == "true" ]; then
      use_toggleterm=""
    else
      use_toggleterm="✗"
    fi
    enable_wakatime=$(get_conf_value enable_wakatime)
    if [ "${enable_wakatime}" == "true" ]; then
      use_wakatime=""
    else
      use_wakatime="✗"
    fi
    enable_asciiart=$(get_conf_value enable_asciiart)
    if [ "${enable_asciiart}" == "true" ]; then
      use_asciiart=""
    else
      use_asciiart="✗"
    fi
    enable_cheatsheet=$(get_conf_value enable_cheatsheet)
    if [ "${enable_cheatsheet}" == "true" ]; then
      use_cheatsheet=""
    else
      use_cheatsheet="✗"
    fi
    enable_hop=$(get_conf_value enable_hop)
    if [ "${enable_hop}" == "true" ]; then
      use_hop=""
    else
      use_hop="✗"
    fi
    enable_ranger=$(get_conf_value enable_ranger_float)
    if [ "${enable_ranger}" == "true" ]; then
      use_ranger=""
    else
      use_ranger="✗"
    fi
    enable_coding=$(get_conf_value enable_coding)
    if [ "${enable_coding}" == "true" ]; then
      use_coding=""
    else
      use_coding="✗"
    fi
    enable_compile=$(get_conf_value enable_compile)
    if [ "${enable_compile}" == "true" ]; then
      use_compile=""
    else
      use_compile="✗"
    fi
    enable_bbye=$(get_conf_value enable_bbye)
    if [ "${enable_bbye}" == "true" ]; then
      use_bbye=""
    else
      use_bbye="✗"
    fi
    enable_startuptime=$(get_conf_value enable_startuptime)
    if [ "${enable_startuptime}" == "true" ]; then
      use_startuptime=""
    else
      use_startuptime="✗"
    fi
    enable_dressing=$(get_conf_value enable_dressing)
    if [ "${enable_dressing}" == "true" ]; then
      use_dressing=""
    else
      use_dressing="✗"
    fi
    enable_games=$(get_conf_value enable_games)
    if [ "${enable_games}" == "true" ]; then
      use_games=""
    else
      use_games="✗"
    fi
    enable_multi_cursor=$(get_conf_value enable_multi_cursor)
    if [ "${enable_multi_cursor}" == "true" ]; then
      use_multi_cursor=""
    else
      use_multi_cursor="✗"
    fi
    enable_renamer=$(get_conf_value enable_renamer)
    if [ "${enable_renamer}" == "true" ]; then
      use_renamer=""
    else
      use_renamer="✗"
    fi
    use_dash=$(get_conf_value dashboard)
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
    enable_screensaver=$(get_conf_value enable_screensaver)
    use_screensaver="${enable_screensaver}"
    screensaver_timeout=$(get_conf_value screensaver_timeout)
    use_timeout="${screensaver_timeout}"
    indentline_style=$(get_conf_value indentline_style)
    use_indentline="${indentline_style}"
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    options+=("Ascii Art     [${use_asciiart}]")
    options+=("Bdelete cmd   [${use_bbye}]")
    options+=("Bookmarks     [${use_bookmarks}]")
    options+=("ChatGPT       [${use_chatgpt}]")
    pyver=$(check_python_version)
    [ "${pyver}" == "OK" ] && {
      options+=("GPT4ALL       [${use_codeexplain}]")
    }
    [ -f "${HOME}/.codeexplain/model.bin" ] && {
      options+=(" Remove GPT model")
    }
    options+=("Cheatsheets   [${use_cheatsheet}]")
    options+=("Enable coding [${use_coding}]")
    options+=("Compile & Run [${use_compile}]")
    options+=("Dashboard [${use_dash}]")
    if [ "${use_dash}" == "alpha" ]; then
      options+=(" Alpha Header [${use_dashboard_header}]")
      options+=(" Recent Files [${use_dashboard_recent_files}]")
      options+=(" Quick Links  [${use_dashboard_quick_links}]")
    fi
    options+=("Dressing UI   [${use_dressing}]")
    options+=("Fancy Icons   [${use_fancy}]")
    options+=("File Tree [${use_neotree}]")
    options+=("Enable Games  [${use_games}]")
    options+=("Enable Hop    [${use_hop}]")
    options+=("Enable IDE    [${use_ide}]")
    options+=("Indentline [${use_indentline}]")
    options+=("Media Backend [${use_media_backend}]")
    options+=("Multi Cursor  [${use_multi_cursor}]")
    options+=("Navigator     [${use_navigator}]")
    options+=("Noice UI      [${use_noice}]")
    options+=("Picker        [${use_picker}]")
    options+=("Project       [${use_project}]")
    options+=("Rainbow 2     [${use_rainbow2}]")
    options+=("Enable Ranger [${use_ranger}]")
    options+=("Enable Rename [${use_renamer}]")
    options+=("Screensaver [${use_screensaver}]")
    [ "${use_screensaver}" == "none" ] || {
      options+=(" Timeout    [${use_timeout}]")
    }
    options+=("Session [${use_session_manager}]")
    options+=("Smooth Scroll [${use_smooth_scrolling}]")
    options+=("StartupTime   [${use_startuptime}]")
    options+=("Surround      [${use_surround}]")
    options+=("Terminal      [${use_terminal}]")
    options+=("Toggle Term   [${use_toggleterm}]")
    options+=("WakaTime      [${use_wakatime}]")
    options+=("Wilder Menus  [${use_wilder}]")
    options+=("Winbar LSP    [${use_lualine_lsp_progress}]")
    options+=("Disable All")
    options+=("Enable All")
    [ -f ${CONFBACK} ] && {
      diff ${CONFBACK} ${NVIMCONF} >/dev/null || options+=("Reset to Defaults")
    }
    [ -d "${LMANDIR}" ] && options+=("Open Lazyman")
    options+=("Formatters")
    options+=("LSP Servers")
    have_bob=$(type -p bob)
    [ "${have_bob}" ] && {
      used=$(bob list | grep Used | awk ' { print $2 } ')
      options+=("Neovim Ver [${used}]")
    }
    options+=("Config Menu")
    options+=("Main Menu")
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || tput reset
          show_plug_help
          break
          ;;
        "Media"*,* | *,"Media"*)
          choices=("none" "catimg" "chafa" "jp2a" "ueberzug" "viu")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Telescope Media Backend  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            set_conf_value "media_backend" "${choice}"
            pluginit=1
          fi
          break
          ;;
        "Session"*,* | *,"Session"*)
          choices=("Persistence" "Possession" "None")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Session Manager  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${choice}" == "Possession" ]; then
              set_conf_value "session_manager" "possession"
            else
              if [ "${choice}" == "Persistence" ]; then
                set_conf_value "session_manager" "persistence"
              else
                if [ "${choice}" == "None" ]; then
                  set_conf_value "session_manager" "none"
                fi
              fi
            fi
            pluginit=1
          fi
          break
          ;;
        "File"*,* | *,"File"*)
          choices=("Neotree" "Nvimtree" "None")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim File Tree  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            if [ "${choice}" == "Neotree" ]; then
              set_conf_value "file_tree" "neo-tree"
            else
              if [ "${choice}" == "Nvimtree" ]; then
                set_conf_value "file_tree" "nvim-tree"
              else
                if [ "${choice}" == "None" ]; then
                  set_conf_value "file_tree" "none"
                fi
              fi
            fi
            pluginit=1
          fi
          break
          ;;
        "Noice"*,* | *,"Noice"*)
          if [ "${enable_noice}" == "true" ]; then
            set_conf_value "enable_noice" "false"
          else
            set_conf_value "enable_noice" "true"
          fi
          pluginit=1
          break
          ;;
        "ChatGPT"*,* | *,"ChatGPT"*)
          if [ "${enable_chatgpt}" == "true" ]; then
            set_conf_value "enable_chatgpt" "false"
            pluginit=1
          else
            if [ "$OPENAI_API_KEY" ]; then
              set_conf_value "enable_chatgpt" "true"
              pluginit=1
            else
              printf "\nThe OPENAI_API_KEY environment variable must be set"
              printf "\nbefore enabling the ChatGPT plugin."
              prompt_continue
            fi
          fi
          break
          ;;
        " Remove GPT"*,* | *," Remove GPT"*)
          rm -f "${HOME}/.codeexplain/model.bin"
          for models in "${HOME}"/.codeexplain/*
          do
            [ "${models}" == "${HOME}/.codeexplain/*" ] && {
              rmdir "${HOME}/.codeexplain"
            }
          done
          set_conf_value "enable_codeexplain" "false"
          pluginit=1
          break
          ;;
        "GPT4ALL"*,* | *,"GPT4ALL"*)
          if [ "${enable_codeexplain}" == "true" ]; then
            set_conf_value "enable_codeexplain" "false"
          else
            if [ -f "${HOME}/.codeexplain/model.bin" ]; then
              set_conf_value "enable_codeexplain" "true"
            else
              [ -x ${LMANDIR}/scripts/gpt4all.sh ] || {
                printf "\n${LMANDIR}/scripts/gpt4all.sh not executable"
                printf "\nUnable to enable the codeexplain.nvim plugin."
                printf "\nPlease check the Lazyman installation."
                prompt_continue
              }
              printf "\nThe GPT4ALL model must be downloaded before"
              printf "\nenabling the codeexplain.nvim GPT4ALL plugin."
              printf "\nThe model is 3.5GB, located in your HOME directory."
              printf "\nWould you like to download the GPT4ALL model?\n"
              while true; do
                read -r -p "Download GPT4ALL model (no API key required) ? (y/n) " yn
                case $yn in
                  [Yy]*)
                    printf "\nDownloading large file, please be patient ..."
                    ${LMANDIR}/scripts/gpt4all.sh
                    if [ -f "${HOME}/.codeexplain/model.bin" ]; then
                      printf " done\n"
                      set_conf_value "enable_codeexplain" "true"
                    else
                      printf "\nDownload failed. Unable to enable plugin."
                      prompt_continue
                    fi
                    break
                    ;;
                  [Nn]*)
                    break
                    ;;
                  *)
                    printf "\nPlease answer yes or no.\n"
                    ;;
                esac
              done
            fi
          fi
          pluginit=1
          break
          ;;
        "Rainbow"*,* | *,"Rainbow"*)
          if [ "${enable_rainbow2}" == "true" ]; then
            set_conf_value "enable_rainbow2" "false"
          else
            set_conf_value "enable_rainbow2" "true"
          fi
          pluginit=1
          break
          ;;
        "Surround"*,* | *,"Surround"*)
          if [ "${enable_surround}" == "true" ]; then
            set_conf_value "enable_surround" "false"
          else
            set_conf_value "enable_surround" "true"
          fi
          pluginit=1
          break
          ;;
        "Fancy"*,* | *,"Fancy"*)
          if [ "${enable_fancy}" == "true" ]; then
            set_conf_value "enable_fancy" "false"
          else
            set_conf_value "enable_fancy" "true"
          fi
          pluginit=1
          break
          ;;
        "Wilder"*,* | *,"Wilder"*)
          if [ "${enable_wilder}" == "true" ]; then
            set_conf_value "enable_wilder" "false"
          else
            set_conf_value "enable_wilder" "true"
          fi
          pluginit=1
          break
          ;;
        "Winbar LSP"*,* | *,"Winbar LSP"*)
          if [ "${enable_lualine_lsp_progress}" == "true" ]; then
            set_conf_value "enable_lualine_lsp_progress" "false"
          else
            set_conf_value "enable_lualine_lsp_progress" "true"
          fi
          pluginit=1
          break
          ;;
        "Terminal"*,* | *,"Terminal"*)
          if [ "${enable_terminal}" == "true" ]; then
            set_conf_value "enable_terminal" "false"
          else
            set_conf_value "enable_terminal" "true"
          fi
          pluginit=1
          break
          ;;
        "Toggle Term"*,* | *,"Toggle Term"*)
          if [ "${enable_toggleterm}" == "true" ]; then
            set_conf_value "enable_toggleterm" "false"
          else
            set_conf_value "enable_toggleterm" "true"
          fi
          pluginit=1
          break
          ;;
        "WakaTime"*,* | *,"WakaTime"*)
          if [ "${enable_wakatime}" == "true" ]; then
            set_conf_value "enable_wakatime" "false"
          else
            if [ -f "${HOME}"/.wakatime.cfg ]; then
              set_conf_value "enable_wakatime" "true"
            else
              printf "\nIt appears you do not have a configured WakaTime API key."
              printf "\nWould you like to proceed with enabling WakaTime?\n"
              while true; do
                read -r -p "Enable WakaTime (API key required) ? (y/n) " yn
                case $yn in
                  [Yy]*)
                    set_conf_value "enable_wakatime" "true"
                    break
                    ;;
                  [Nn]*)
                    break
                    ;;
                  *)
                    printf "\nPlease answer yes or no.\n"
                    ;;
                esac
              done
            fi
          fi
          pluginit=1
          break
          ;;
        "Ascii Art"*,* | *,"Ascii Art"*)
          if [ "${enable_asciiart}" == "true" ]; then
            set_conf_value "enable_asciiart" "false"
          else
            set_conf_value "enable_asciiart" "true"
          fi
          pluginit=1
          break
          ;;
        "Cheatsheets"*,* | *,"Cheatsheets"*)
          if [ "${enable_cheatsheet}" == "true" ]; then
            set_conf_value "enable_cheatsheet" "false"
          else
            set_conf_value "enable_cheatsheet" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable Hop"*,* | *,"Enable Hop"*)
          if [ "${enable_hop}" == "true" ]; then
            set_conf_value "enable_hop" "false"
          else
            set_conf_value "enable_hop" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable Ranger"*,* | *,"Enable Ranger"*)
          if [ "${enable_ranger}" == "true" ]; then
            set_conf_value "enable_ranger_float" "false"
          else
            set_conf_value "enable_ranger_float" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable coding"*,* | *,"Enable coding"*)
          if [ "${enable_coding}" == "true" ]; then
            printf "\n\nDisabling coding will disable LSP servers and several"
            printf "\nplugins providing coding and diagnostics features."
            printf "\nThis will create an editing environment for non-programmers."
            printf "\nIndividual features can be re-enabled using these menus.\n"
            while true; do
              read -r -p "Proceed with disabling coding features? (y/n) " yn
              case $yn in
                [Yy]*)
                  set_conf_value "enable_coding" "false"
                  for lsp in "${all_lsp_servers[@]}"; do
                    set_conf_table "LSP_SERVERS" "${lsp}" "disable"
                  done
                  break
                  ;;
                [Nn]*)
                  printf "\nSkipping disabling coding features\n"
                  break
                  ;;
                *)
                  printf "\nPlease answer yes or no.\n"
                  ;;
              esac
            done
          else
            set_conf_value "enable_coding" "true"
            for lsp in "${all_lsp_servers[@]}"; do
              set_conf_table "LSP_SERVERS" "${lsp}" "enable"
            done
          fi
          pluginit=1
          break
          ;;
        "Compile"*,* | *,"Compile"*)
          if [ "${enable_compile}" == "true" ]; then
            set_conf_value "enable_compile" "false"
          else
            set_conf_value "enable_compile" "true"
          fi
          pluginit=1
          break
          ;;
        "Multi Cursor"*,* | *,"Multi Cursor"*)
          if [ "${enable_multi_cursor}" == "true" ]; then
            set_conf_value "enable_multi_cursor" "false"
          else
            set_conf_value "enable_multi_cursor" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable Rename"*,* | *,"Enable Rename"*)
          if [ "${enable_renamer}" == "true" ]; then
            set_conf_value "enable_renamer" "false"
          else
            set_conf_value "enable_renamer" "true"
          fi
          pluginit=1
          break
          ;;
        "Bdelete"*,* | *,"Bdelete"*)
          if [ "${enable_bbye}" == "true" ]; then
            set_conf_value "enable_bbye" "false"
          else
            set_conf_value "enable_bbye" "true"
          fi
          pluginit=1
          break
          ;;
        "StartupTime"*,* | *,"StartupTime"*)
          if [ "${enable_startuptime}" == "true" ]; then
            set_conf_value "enable_startuptime" "false"
          else
            set_conf_value "enable_startuptime" "true"
          fi
          pluginit=1
          break
          ;;
        "Dressing"*,* | *,"Dressing"*)
          if [ "${enable_dressing}" == "true" ]; then
            set_conf_value "enable_dressing" "false"
          else
            set_conf_value "enable_dressing" "true"
          fi
          pluginit=1
          break
          ;;
        "Enable Games"*,* | *,"Enable Games"*)
          if [ "${enable_games}" == "true" ]; then
            set_conf_value "enable_games" "false"
          else
            set_conf_value "enable_games" "true"
          fi
          pluginit=1
          break
          ;;
        "Dashboard"*,* | *,"Dashboard"*)
          choices=("alpha" "dash" "mini" "none")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Dashboard  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            [ "${choice}" == "${use_dash}" ] || {
              set_conf_value "dashboard" "${choice}"
              pluginit=1
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
          pluginit=1
          break
          ;;
        "Enable IDE"*,* | *,"Enable IDE"*)
          if [ "${enable_ide}" == "true" ]; then
            set_conf_value "enable_ide" "false"
          else
            set_conf_value "enable_ide" "true"
          fi
          pluginit=1
          break
          ;;
        "Navigator"*,* | *,"Navigator"*)
          if [ "${enable_navigator}" == "true" ]; then
            set_conf_value "enable_navigator" "false"
          else
            set_conf_value "enable_navigator" "true"
          fi
          pluginit=1
          break
          ;;
        "Project"*,* | *,"Project"*)
          if [ "${enable_project}" == "true" ]; then
            set_conf_value "enable_project" "false"
          else
            set_conf_value "enable_project" "true"
          fi
          pluginit=1
          break
          ;;
        "Picker"*,* | *,"Picker"*)
          if [ "${enable_picker}" == "true" ]; then
            set_conf_value "enable_picker" "false"
          else
            set_conf_value "enable_picker" "true"
          fi
          pluginit=1
          break
          ;;
        "Smooth Scroll"*,* | *,"Smooth Scroll"*)
          if [ "${enable_smooth_scrolling}" == "true" ]; then
            set_conf_value "enable_smooth_scrolling" "false"
          else
            set_conf_value "enable_smooth_scrolling" "true"
          fi
          pluginit=1
          break
          ;;
        " Recent Files"*,* | *," Recent Files"*)
          choices=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Number of Recent Files  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${dashboard_recent_files}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "dashboard_recent_files" "${choice}"
              pluginit=1
            fi
          }
          break
          ;;
        " Alpha Header"*,* | *," Alpha Header"*)
          if [ "${enable_dashboard_header}" == "true" ]; then
            set_conf_value "enable_dashboard_header" "false"
          else
            set_conf_value "enable_dashboard_header" "true"
          fi
          pluginit=1
          break
          ;;
        " Quick Links"*,* | *," Quick Links"*)
          if [ "${enable_dashboard_quick_links}" == "true" ]; then
            set_conf_value "enable_dashboard_quick_links" "false"
          else
            set_conf_value "enable_dashboard_quick_links" "true"
          fi
          pluginit=1
          break
          ;;
        "Screensaver"*,* | *,"Screensaver"*)
          choices=("epilepsy" "leaves" "snow" "spring" "stars" "summer" "treadmill" "vanish" "xmas" "drop" "zone" "random" "none")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Screensaver  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            set_conf_value "enable_screensaver" "${choice}"
            pluginit=1
          fi
          break
          ;;
        " Timeout"*,* | *," Timeout"*)
          choices=("1" "2" "3" "4" "5" "10" "15" "30" "45")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Screensaver Timeout in Minutes  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${screensaver_timeout}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "screensaver_timeout" "${choice}"
              pluginit=1
            fi
          }
          break
          ;;
        "Indentline"*,* | *,"Indentline"*)
          choices=("background" "colored" "context" "listchars" "simple" "none")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Indentline Style  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${use_indentline}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "indentline_style" "${choice}"
              pluginit=1
            fi
          }
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          set_conf_value "dashboard" "none"
          set_conf_value "file_tree" "none"
          set_conf_value "media_backend" "none"
          set_conf_value "session_manager" "none"
          set_conf_value "enable_noice" "false"
          set_conf_value "enable_chatgpt" "false"
          set_conf_value "enable_codeexplain" "false"
          set_conf_value "enable_rainbow2" "false"
          set_conf_value "enable_surround" "false"
          set_conf_value "enable_fancy" "false"
          set_conf_value "enable_wilder" "false"
          set_conf_value "enable_lualine_lsp_progress" "false"
          set_conf_value "enable_terminal" "false"
          set_conf_value "enable_toggleterm" "false"
          set_conf_value "enable_wakatime" "false"
          set_conf_value "enable_asciiart" "false"
          set_conf_value "enable_cheatsheet" "false"
          set_conf_value "enable_coding" "false"
          set_conf_value "enable_compile" "false"
          set_conf_value "enable_dressing" "false"
          set_conf_value "enable_hop" "false"
          set_conf_value "enable_ranger_float" "false"
          set_conf_value "enable_renamer" "false"
          set_conf_value "enable_multi_cursor" "false"
          set_conf_value "enable_bbye" "false"
          set_conf_value "enable_startuptime" "false"
          set_conf_value "enable_games" "false"
          set_conf_value "enable_bookmarks" "false"
          set_conf_value "enable_ide" "false"
          set_conf_value "enable_navigator" "false"
          set_conf_value "enable_project" "false"
          set_conf_value "enable_picker" "false"
          set_conf_value "enable_smooth_scrolling" "false"
          set_conf_value "enable_dashboard_header" "false"
          set_conf_value "enable_dashboard_quick_links" "false"
          set_conf_value "enable_screensaver" "none"
          set_conf_value "indentline_style" "none"
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          set_conf_value "dashboard" "dash"
          set_conf_value "file_tree" "neo-tree"
          set_conf_value "media_backend" "jp2a"
          set_conf_value "session_manager" "possession"
          set_conf_value "enable_noice" "true"
          set_conf_value "enable_chatgpt" "true"
          [ -f "${HOME}/.codeexplain/model.bin" ] && {
            pyver=$(check_python_version)
            [ "${pyver}" == "OK" ] && {
              set_conf_value "enable_codeexplain" "true"
            }
          }
          set_conf_value "enable_rainbow2" "true"
          set_conf_value "enable_surround" "true"
          set_conf_value "enable_fancy" "true"
          set_conf_value "enable_wilder" "true"
          set_conf_value "enable_lualine_lsp_progress" "true"
          set_conf_value "enable_terminal" "true"
          set_conf_value "enable_toggleterm" "true"
          [ -f "${HOME}"/.wakatime.cfg ] && set_conf_value "enable_wakatime" "true"
          set_conf_value "enable_asciiart" "true"
          set_conf_value "enable_cheatsheet" "true"
          set_conf_value "enable_coding" "true"
          set_conf_value "enable_compile" "true"
          set_conf_value "enable_dressing" "true"
          set_conf_value "enable_hop" "true"
          set_conf_value "enable_ranger_float" "true"
          set_conf_value "enable_renamer" "true"
          set_conf_value "enable_multi_cursor" "true"
          set_conf_value "enable_bbye" "true"
          set_conf_value "enable_startuptime" "true"
          set_conf_value "enable_games" "true"
          set_conf_value "enable_bookmarks" "true"
          set_conf_value "enable_ide" "true"
          set_conf_value "enable_navigator" "true"
          set_conf_value "enable_project" "true"
          set_conf_value "enable_picker" "true"
          set_conf_value "enable_smooth_scrolling" "true"
          set_conf_value "enable_dashboard_header" "true"
          set_conf_value "enable_dashboard_quick_links" "true"
          set_conf_value "enable_screensaver" "random"
          set_conf_value "indentline_style" "colored"
          set_conf_value "list" "true"
          pluginit=1
          break
          ;;
        "Reset"*,* | *,"Reset"*)
          [ -f ${CONFBACK} ] && {
            cp ${CONFBACK} ${NVIMCONF}
            set_chat_gpt
            set_code_explain
            set_ranger_float
            set_waka_opt
            pluginit=1
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
        "Neovim Ver"*,* | *,"Neovim Ver"*)
          versmenu=1
          break
          ;;
        "Config Menu"*,* | *,"Config Menu"*)
          confmenu=1
          break 2
          ;;
        "Formatters"*,* | *,"Formatters"*)
          formenu=1
          break 2
          ;;
        "LSP Servers"*,* | *,"LSP Servers"*)
          lspmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          mainmenu=1
          break 2
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          [ "${pluginit}" ] && init_neovim nvim-Lazyman
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
        *,*)
          printf "\nNo matching menu item located."
          printf "\nSelection out of range or malformed."
          prompt_continue
          break
          ;;
      esac
      REPLY=
    done
    [ "${versmenu}" ] && show_vers_menu
  done
  [ "${pluginit}" ] && init_neovim nvim-Lazyman
  [ "${confmenu}" ] && show_conf_menu
  [ "${mainmenu}" ] && show_main_menu
  [ "${lspmenu}" ] && show_lsp_menu
  [ "${formenu}" ] && show_formlint_menu
}

show_lsp_help() {
  if [ "${have_rich}" ]; then
    rich "[cyan]Lazyman LSP Servers Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tLazyman LSP Servers Menu Help\n"
  fi
  printf "\nEnable and disable installed Neovim language servers."
  printf "\nEnabled language servers are indicated with a []"
  printf "\nDisabled language servers are indicated with a [✗]\n"
  printf "\nThe Language Server Protocol (LSP) is an open protocol for use between"
  printf "\nsource code editors or integrated development environments (IDEs) and"
  printf "\nservers that provide programming language-specific features like code"
  printf "\ncompletion, syntax highlighting and marking of warnings and errors,"
  printf "\nas well as refactoring routines.\n"
  printf "\nSettings in this menu only effect the Lazyman Neovim configuration in:"
  printf "\n\t${HOME}/.config/nvim-Lazyman\n"
  prompt_continue
}

show_lsp_menu() {
  set_haves
  pluginit=
  while true; do
    mainmenu=
    confmenu=
    plugmenu=
    formmenu=
    versmenu=
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install Lazyman"
      prompt_continue
      mainmenu=1
      break
    }
    [ "$debug" ] || tput reset
    if [ "${have_rich}" ]; then
      rich "[cyan]Lazyman LSP Servers Menu[/cyan]" -p -a rounded -c -C
      rich "[b green]Enable/Disable LSP servers used by[/] [b yellow]~/.config/nvim-Lazyman[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "LSP Menu"
    fi
    printf '\n'
    get_conf_table lsp_servers
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    readarray -t lsp_sorted < <(printf '%s\0' "${all_lsp_servers[@]}" | sort -z | xargs -0n1)
    for lsp in "${lsp_sorted[@]}"; do
      len=${#lsp}
      numsp=$((14 - len))
      [ ${numsp} -lt 0 ] && numsp=0
      longlsp="${lsp}"
      while [ ${numsp} -gt 0 ]; do
        longlsp="${longlsp} "
        ((numsp -= 1))
      done
      if echo "${lsp_enabled_table[@]}" | grep -qw "$lsp" >/dev/null; then
        options+=("${longlsp} []")
      else
        options+=("${longlsp} [✗]")
      fi
    done
    options+=("Disable All")
    options+=("Enable All")
    options+=("Formatters Menu")
    options+=("Plugins Menu")
    have_bob=$(type -p bob)
    [ "${have_bob}" ] && {
      used=$(bob list | grep Used | awk ' { print $2 } ')
      options+=("Neovim Ver [${used}]")
    }
    options+=("Config Menu")
    options+=("Main Menu")
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || tput reset
          show_lsp_help
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          for lsp in "${all_lsp_servers[@]}"; do
            set_conf_table "LSP_SERVERS" "${lsp}" "disable"
          done
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          for lsp in "${all_lsp_servers[@]}"; do
            set_conf_table "LSP_SERVERS" "${lsp}" "enable"
          done
          pluginit=1
          break
          ;;
        "Formatters Menu"*,* | *,"Formatters Menu"*)
          formmenu=1
          break 2
          ;;
        "Neovim Ver"*,* | *,"Neovim Ver"*)
          versmenu=1
          break
          ;;
        "Config Menu"*,* | *,"Config Menu"*)
          confmenu=1
          break 2
          ;;
        "Plugins Menu"*,* | *,"Plugins Menu"*)
          plugmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          mainmenu=1
          break 2
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          [ "${pluginit}" ] && init_neovim nvim-Lazyman
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
        *,*)
          enable=
          if [ "${opt}" ]; then
            lspname=$(echo "${opt}" | awk ' { print $1 } ')
          else
            lspname=$(echo "${REPLY}" | awk ' { print $1 } ')
          fi
          grep "LSP_SERVERS" "${NVIMCONF}" | grep "\-\- \"${lspname}" >/dev/null && enable=1
          if [ "${enable}" ]; then
            set_conf_table "LSP_SERVERS" "${lspname}" "enable"
          else
            set_conf_table "LSP_SERVERS" "${lspname}" "disable"
          fi
          pluginit=1
          break
          ;;
      esac
      REPLY=
    done
    [ "${versmenu}" ] && show_vers_menu
  done
  [ "${pluginit}" ] && init_neovim nvim-Lazyman
  [ "${mainmenu}" ] && show_main_menu
  [ "${confmenu}" ] && show_conf_menu
  [ "${plugmenu}" ] && show_plugin_menu
  [ "${formmenu}" ] && show_formlint_menu
}

show_form_help() {
  if [ "${have_rich}" ]; then
    rich "[cyan]Lazyman Formatters and Linters Menu Help[/cyan]" -p -a rounded -c -C
  else
    printf "\n\tLazyman Formatters and Linters Menu Help\n"
  fi
  printf "\nEnable and disable installed Neovim formatters and linters."
  printf "\nEnabled formatters and linters are indicated with a []"
  printf "\nDisabled formatters and linters are indicated with a [✗]\n"
  printf "\nThese tools perform code formatting, static code analysis, and flag"
  printf "\nprogramming errors, bugs, stylistic errors and suspicious constructs.\n"
  printf "\nSettings in this menu only effect the Lazyman Neovim configuration in:"
  printf "\n\t${HOME}/.config/nvim-Lazyman\n"
  prompt_continue
}

show_formlint_menu() {
  set_haves
  pluginit=
  while true; do
    mainmenu=
    confmenu=
    plugmenu=
    lspsmenu=
    versmenu=
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install Lazyman"
      prompt_continue
      mainmenu=1
      break
    }
    [ "$debug" ] || tput reset
    if [ "${have_rich}" ]; then
      rich "[cyan]Lazyman Formatters and Linters Menu[/cyan]" -p -a rounded -c -C
      rich "[b green]Enable/Disable formatters and linters used by[/] [b yellow]~/.config/nvim-Lazyman[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "Formatters"
    fi
    printf '\n'
    get_conf_table formatters_linters
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    readarray -t form_sorted < <(printf '%s\0' "${all_formatters[@]}" | sort -z | xargs -0n1)
    for form in "${form_sorted[@]}"; do
      len=${#form}
      numsp=$((19 - len))
      [ ${numsp} -lt 0 ] && numsp=0
      longform="${form}"
      while [ ${numsp} -gt 0 ]; do
        longform="${longform} "
        ((numsp -= 1))
      done
      if echo "${for_enabled_table[@]}" | grep -qw "$form" >/dev/null; then
        options+=("${longform} []")
      else
        options+=("${longform} [✗]")
      fi
    done
    options+=("Disable All")
    options+=("Enable All")
    options+=("LSP Servers Menu")
    options+=("Plugins Menu")
    have_bob=$(type -p bob)
    [ "${have_bob}" ] && {
      used=$(bob list | grep Used | awk ' { print $2 } ')
      options+=("Neovim Ver [${used}]")
    }
    options+=("Config Menu")
    options+=("Main Menu")
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          [ "$debug" ] || tput reset
          show_form_help
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          for form in "${all_formatters[@]}"; do
            set_conf_table "FORMATTERS_LINTERS" "${form}" "disable"
          done
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          for form in "${all_formatters[@]}"; do
            set_conf_table "FORMATTERS_LINTERS" "${form}" "enable"
          done
          pluginit=1
          break
          ;;
        "LSP Servers"*,* | *,"LSP Servers"*)
          lspsmenu=1
          break 2
          ;;
        "Plugins Menu"*,* | *,"Plugins Menu"*)
          plugmenu=1
          break 2
          ;;
        "Neovim Ver"*,* | *,"Neovim Ver"*)
          versmenu=1
          break
          ;;
        "Config Menu"*,* | *,"Config Menu"*)
          confmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          mainmenu=1
          break 2
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          [ "${pluginit}" ] && init_neovim nvim-Lazyman
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
        *,*)
          enable=
          if [ "${opt}" ]; then
            forname=$(echo "${opt}" | awk ' { print $1 } ')
          else
            forname=$(echo "${REPLY}" | awk ' { print $1 } ')
          fi
          grep "FORMATTERS_LINTERS" "${NVIMCONF}" | grep "\-\- \"${forname}" >/dev/null && enable=1
          if [ "${enable}" ]; then
            set_conf_table "FORMATTERS_LINTERS" "${forname}" "enable"
          else
            set_conf_table "FORMATTERS_LINTERS" "${forname}" "disable"
          fi
          pluginit=1
          break
          ;;
      esac
      REPLY=
    done
    [ "${versmenu}" ] && show_vers_menu
  done
  [ "${pluginit}" ] && init_neovim nvim-Lazyman
  [ "${mainmenu}" ] && show_main_menu
  [ "${confmenu}" ] && show_conf_menu
  [ "${plugmenu}" ] && show_plugin_menu
  [ "${lspsmenu}" ] && show_lsp_menu
}

show_conf_menu() {
  set_haves
  pluginit=
  while true; do
    mainmenu=
    plugmenu=
    lspmenu=
    formenu=
    versmenu=
    [ -f ${GET_CONF} ] || {
      printf "\n\nWARNING: missing ${GET_CONF}"
      printf "\nUnable to modify configuration from this menu"
      printf "\nYou may need to update or re-install Lazyman"
      prompt_continue
      mainmenu=1
      break
    }
    [ "$debug" ] || tput reset
    if [ "${have_rich}" ]; then
      rich "[b cyan]Lazyman Configuration Menu[/]" -p -a rounded -c -C
      rich "[b green]Manage the Neovim configuration in[/] [b yellow]~/.config/nvim-Lazyman[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "Config"
    fi
    printf '\n'
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
    enable_global_statusline=$(get_conf_value global_statusline)
    if [ "${enable_global_statusline}" == "true" ]; then
      use_global_statusline=""
    else
      use_global_statusline="✗"
    fi
    showtabline=$(get_conf_value showtabline)
    use_showtabline="${showtabline}"
    enable_list=$(get_conf_value list)
    if [ "${enable_list}" == "true" ]; then
      use_list=""
    else
      use_list="✗"
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
    options+=("Diagnostics [${use_show_diagnostics}]")
    options+=("Theme [${use_theme}]")
    if [[ " ${styled_themes[*]} " =~ " ${use_theme} " ]]; then
      options+=(" Style [${use_theme_style}]")
    fi
    options+=(" Transparency [${use_transparent}]")
    options+=("Leader        [${use_mapleader}]")
    options+=("Local Leader  [${use_maplocalleader}]")
    options+=("Number Lines  [${use_number}]")
    options+=("Relative Nums [${use_relative_number}]")
    options+=("List Chars    [${use_list}]")
    options+=("Global Status [${use_global_statusline}]")
    options+=("Status Line   [${use_statusline}]")
    options+=("Tab Line      [${use_tabline}]")
    options+=(" Showtabline  [${use_showtabline}]")
    options+=("Winbar        [${use_winbar}]")
    options+=("Semantic HL   [${use_semantic_highlighting}]")
    options+=("Convert SemHL [${convert_semantic_highlighting}]")
    options+=("Disable All")
    options+=("Enable All")
    options+=("Minimal Config")
    [ -f ${CONFBACK} ] && {
      diff ${CONFBACK} ${NVIMCONF} >/dev/null || options+=("Reset to Defaults")
    }
    have_bob=$(type -p bob)
    [ "${have_bob}" ] && {
      used=$(bob list | grep Used | awk ' { print $2 } ')
      options+=("Neovim Ver [${used}]")
    }
    [ -d "${LMANDIR}" ] && options+=("Open Lazyman")
    options+=("Formatters")
    options+=("LSP Servers")
    options+=("Plugins Menu")
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
          pluginit=1
          break
          ;;
        "Tab Line"*,* | *,"Tab Line"*)
          if [ "${enable_tabline}" == "true" ]; then
            set_conf_value "enable_tabline" "false"
          else
            set_conf_value "enable_tabline" "true"
          fi
          pluginit=1
          break
          ;;
        "Winbar"*,* | *,"Winbar"*)
          if [ "${enable_winbar}" == "true" ]; then
            set_conf_value "enable_winbar" "false"
          else
            set_conf_value "enable_winbar" "true"
          fi
          pluginit=1
          break
          ;;
        " Style"*,* | *," Style"*)
          select_theme_style ${theme}
          break
          ;;
        "Theme"*,* | *,"Theme"*)
          select_theme ${theme}
          pluginit=1
          break
          ;;
        " Transparency"*,* | *," Transparency"*)
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
        "Global Status"*,* | *,"Global Status"*)
          if [ "${enable_global_statusline}" == "true" ]; then
            set_conf_value "global_statusline" "false"
          else
            set_conf_value "global_statusline" "true"
          fi
          break
          ;;
        " Showtabline"*,* | *," Showtabline"*)
          choices=("0" "1" "2")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Show tabline (0=never, 1=multiple tabs, 2=always)  " --layout=reverse --border --exit-0)
          [ "${choice}" == "${showtabline}" ] || {
            if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
              set_conf_value "showtabline" "${choice}"
            fi
          }
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
        "Minimal Config"*,* | *,"Minimal Config"*)
          set_conf_value "global_statusline" "false"
          set_conf_value "enable_statusline" "false"
          set_conf_value "enable_tabline" "false"
          set_conf_value "showtabline" "0"
          set_conf_value "enable_winbar" "false"
          set_conf_value "show_diagnostics" "none"
          set_conf_value "enable_semantic_highlighting" "false"
          set_conf_value "convert_semantic_highlighting" "false"
          set_conf_value "media_backend" "none"
          set_conf_value "enable_chatgpt" "false"
          set_conf_value "enable_codeexplain" "false"
          set_conf_value "enable_rainbow2" "false"
          set_conf_value "enable_surround" "false"
          set_conf_value "enable_fancy" "false"
          set_conf_value "enable_wilder" "false"
          set_conf_value "enable_lualine_lsp_progress" "false"
          set_conf_value "enable_wakatime" "false"
          set_conf_value "enable_asciiart" "false"
          set_conf_value "enable_coding" "false"
          set_conf_value "enable_compile" "false"
          set_conf_value "enable_dressing" "false"
          set_conf_value "enable_hop" "false"
          set_conf_value "enable_ranger_float" "false"
          set_conf_value "enable_renamer" "false"
          set_conf_value "enable_multi_cursor" "false"
          set_conf_value "enable_bbye" "false"
          set_conf_value "enable_startuptime" "false"
          set_conf_value "enable_games" "false"
          set_conf_value "enable_bookmarks" "false"
          set_conf_value "enable_ide" "false"
          set_conf_value "enable_navigator" "false"
          set_conf_value "enable_project" "false"
          set_conf_value "enable_picker" "false"
          set_conf_value "enable_dashboard_header" "false"
          set_conf_value "enable_screensaver" "none"
          for lsp in "${all_lsp_servers[@]}"; do
            set_conf_table "LSP_SERVERS" "${lsp}" "disable"
          done
          for form in "${all_formatters[@]}"; do
            set_conf_table "FORMATTERS_LINTERS" "${form}" "disable"
          done
          pluginit=1
          break
          ;;
        "Disable All"*,* | *,"Disable All"*)
          set_conf_value "number" "false"
          set_conf_value "relative_number" "false"
          set_conf_value "global_statusline" "false"
          set_conf_value "enable_statusline" "false"
          set_conf_value "enable_tabline" "false"
          set_conf_value "showtabline" "0"
          set_conf_value "enable_winbar" "false"
          set_conf_value "enable_transparent" "false"
          set_conf_value "show_diagnostics" "none"
          set_conf_value "enable_semantic_highlighting" "false"
          set_conf_value "convert_semantic_highlighting" "false"
          set_conf_value "list" "false"
          pluginit=1
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          set_conf_value "number" "true"
          set_conf_value "relative_number" "true"
          set_conf_value "global_statusline" "true"
          set_conf_value "enable_statusline" "true"
          set_conf_value "enable_tabline" "true"
          set_conf_value "showtabline" "2"
          set_conf_value "enable_winbar" "true"
          set_conf_value "enable_transparent" "true"
          set_conf_value "show_diagnostics" "popup"
          set_conf_value "enable_semantic_highlighting" "true"
          set_conf_value "convert_semantic_highlighting" "true"
          set_conf_value "list" "true"
          pluginit=1
          break
          ;;
        "Reset"*,* | *,"Reset"*)
          [ -f ${CONFBACK} ] && {
            cp ${CONFBACK} ${NVIMCONF}
            set_chat_gpt
            set_code_explain
            set_ranger_float
            set_waka_opt
            pluginit=1
          }
          break
          ;;
        "Neovim Ver"*,* | *,"Neovim Ver"*)
          versmenu=1
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
        "Formatters"*,* | *,"Formatters"*)
          formenu=1
          break 2
          ;;
        "LSP Servers"*,* | *,"LSP Servers"*)
          lspmenu=1
          break 2
          ;;
        "Plugins Menu"*,* | *,"Plugins Menu"*)
          plugmenu=1
          break 2
          ;;
        "Main Menu"*,* | *,"Main Menu"*)
          mainmenu=1
          break 2
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          [ "${pluginit}" ] && init_neovim nvim-Lazyman
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
        *,*)
          printf "\nNo matching menu item located."
          printf "\nSelection out of range or malformed."
          prompt_continue
          break
          ;;
      esac
      REPLY=
    done
    [ "${versmenu}" ] && show_vers_menu
  done
  [ "${pluginit}" ] && init_neovim nvim-Lazyman
  [ "${mainmenu}" ] && show_main_menu
  [ "${plugmenu}" ] && show_plugin_menu
  [ "${lspmenu}" ] && show_lsp_menu
  [ "${formenu}" ] && show_formlint_menu
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
    get_config_str "${CUSTMCFGS}"
    custm_partial=${partial}
    custm_installed=${installed}
    if [ "${custm_installed}" ]
    then
      options+=("Update Custom     ${configstr}")
    else
      options+=("Install Custom    ${configstr}")
    fi
    installed=1
    partial=
    get_config_str "${BASECFGS} ${PRSNLCFGS} ${STARTCFGS} ${CUSTMCFGS}"
    if [ "${installed}" ]
    then
      options+=("Update All        ${configstr}")
    else
      options+=("Install All       ${configstr}")
    fi
    uninstalled=()
    if [ "${have_fzf}" ]
    then
      for neovim in ${BASECFGS} ${PRSNLCFGS} ${STARTCFGS} ${CUSTMCFGS}; do
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
    [ "${prsnl_installed}" ] || options+=("Select/Inst Personal")
    [ "${start_installed}" ] || options+=("Select/Inst Starter")
    [ "${custm_installed}" ] || options+=("Select/Inst Custom")
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
    [ "${prsnl_partial}" ] && options+=("Select/Open Personal")
    [ "${start_partial}" ] && options+=("Select/Open Starter")
    [ "${custm_partial}" ] && options+=("Select/Open Custom")

    [ ${numitems} -gt 1 ] && options+=("Select and Remove")
    [ "${base_partial}" ] && options+=("Select/Remove Base")
    [ "${prsnl_partial}" ] && options+=("Select/Rem Personal")
    [ "${start_partial}" ] && options+=("Select/Rem Starter")
    [ "${custm_partial}" ] && options+=("Select/Remove Custom")
    [ "${base_partial}" ] && options+=("Remove Base")
    [ "${prsnl_partial}" ] && options+=("Remove Personals")
    [ "${start_partial}" ] && options+=("Remove Starters")
    [ "${custm_partial}" ] && options+=("Remove Custom")
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
        "Select/Inst Custom"*,* | *,"Select/Inst Custom"*)
          choices=()
          for neovim in ${CUSTMCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Custom Neovim Config to Install  " --layout=reverse --border --exit-0)
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
        "Select/Open Custom"*,* | *,"Select/Open Custom"*)
          choices=()
          for neovim in ${CUSTMCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Custom Neovim Config to Open  " --layout=reverse --border --exit-0)
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
        "Select/Remove Custom"*,* | *,"Select/Remove Custom"*)
          choices=()
          for neovim in ${CUSTMCFGS}; do
            basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
            if [[ " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
              choices+=("${basenvdir}")
            fi
          done
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Select Custom Neovim Config to Remove  " --layout=reverse --border --exit-0)
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
          printf "\nInstalling all Lazyman 'Base' Neovim configurations\n"
          lazyman ${darg} -B -y -z -Q
          break
          ;;
        "Install Personal"*,* | *,"Install Personal"*)
          printf "\nInstalling all Lazyman 'Personal' Neovim configurations\n"
          lazyman ${darg} -W -y -z -Q -q
          break
          ;;
        "Install Starter"*,* | *,"Install Starter"*)
          printf "\nInstalling all Lazyman 'Starter' Neovim configurations\n"
          lazyman ${darg} -X -y -z -Q -q
          break
          ;;
        "Install Custom"*,* | *,"Install Custom"*)
          printf "\nInstalling all Lazyman 'Custom' Neovim configurations\n"
          install_custom all
          break
          ;;
        "Install All"*,* | *,"Install All"*)
          printf "\nInstalling all Lazyman Neovim configurations\n"
          lazyman ${darg} -A -y -z -Q -q
          break
          ;;
        "Update Base"*,* | *,"Update Base"*)
          printf "\nUpdating all Lazyman 'Base' Neovim configurations\n"
          lazyman ${darg} -B -y -z -Q -U
          break
          ;;
        "Update Personal"*,* | *,"Update Personal"*)
          printf "\nUpdating all Lazyman 'Personal' Neovim configurations\n"
          lazyman ${darg} -W -y -z -Q -q -U
          break
          ;;
        "Update Starter"*,* | *,"Update Starter"*)
          printf "\nUpdating all Lazyman 'Starter' Neovim configurations\n"
          lazyman ${darg} -X -y -z -Q -q -U
          break
          ;;
        "Update Custom"*,* | *,"Update Custom"*)
          printf "\nUpdating all Lazyman 'Custom' Neovim configurations\n"
          update_custom all
          break
          ;;
        "Update All"*,* | *,"Update All"*)
          printf "\nUpdating all Lazyman Neovim configurations\n"
          lazyman ${darg} -A -y -z -Q -q -U
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
        "Remove Custom"*,* | *,"Remove Custom"*)
          printf "\nRemoving all Lazyman 'Custom' Neovim configurations\n"
          remove_custom all
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
        "Lazyman Config",* | *,"Lazyman Config")
          confmenu=1
          break 2
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
    [ "${versmenu}" ] && show_vers_menu
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
command=
brew=
debug=
darg=
head=
fix_help=
invoke=
confmenu=
langservers=
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
nvimcustom=
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
[ $# -eq 1 ] && [ "$1" == "-F" ] && set -- "$@" 'config'
while getopts "aAb:BcdD:eE:f:F:gGhHiIjklmMnL:opPqQrRsStTUC:N:vw:Wx:XyYzZu" flag; do
  case $flag in
    a)
      astronvim=1
      neovimdir=("$astronvimdir")
      ;;
    A)
      all=1
      nvimcustom=1
      nvimprsnl="all"
      nvimstarter="all"
      astronvim=1
      abstract=1
      basicide=1
      ecovim=1
      lazyvim=1
      lunarvim=1
      magicvim=1
      nvchad=1
      penguinvim=1
      spacevim=1
      neovimdir=("${basenvimdirs[@]}")
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
      nv=1
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
      command="$OPTARG"
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
    v)
      lunarvim=1
      neovimdir=("$lunarvimdir")
      ;;
    w)
      nvimprsnl="$OPTARG"
      ;;
    W)
      nvimprsnl="all"
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
    Y)
      nvimcustom=1
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

[ "$nvimcustom" ] && {
  if [ "$remove" ]; then
    remove_custom all
  else
    if [ "${update}" ]
    then
      update_custom all
    else
      install_custom all
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
      action="Installing"
      [ -d ${HOME}/.config/nvim-Mini ] && action="Updating"
      printf "\n${action} Mini Neovim configuration ..."
      lazyman ${darg} -M ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Mini"
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
      [ -d ${HOME}/.config/nvim-LaTeX ] && action="Updating"
      printf "\n${action} LaTeX Neovim configuration ..."
      lazyman ${darg} -C https://github.com/benbrastmckie/.config -D nvim \
        -N nvim-LaTeX -f "${fix_latex}" -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-LaTeX"
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
      printf " done\n"
      show_alias "nvim-Roiz"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Simple ] && action="Updating"
      printf "\n${action} Simple Neovim configuration ..."
      lazyman ${darg} -C https://github.com/anthdm/.nvim \
        -N nvim-Simple -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Simple"
    else
      prsnl_url=
      prsnl_dir=
      prsnl_opt=
      help_opt=
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimprsnl} in
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
        LaTeX)
          prsnl_url="https://github.com/benbrastmckie/.config"
          prsnl_opt="-P"
          prsnl_dir="-D nvim"
          help_opt="-f ${fix_latex}"
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
      action="Installing"
      [ -d ${HOME}/.config/nvim-Kickstart ] && action="Updating"
      printf "\n${action} Kickstart Neovim configuration ..."
      lazyman ${darg} -k ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Kickstart"
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
  exit 0
}

[ "$command" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && neovimdir=("$NVIM_APPNAME")
  }
  for neovim in "${neovimdir[@]}"; do
    run_command "$neovim" "$command"
  done
  exit 0
}

[ "$update" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && neovimdir=("$NVIM_APPNAME")
  }
  for neovim in "${neovimdir[@]}"; do
    update_config "$neovim"
    [ "$tellme" ] || init_neovim "$neovim"
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

# Enable ChatGPT plugin if OPENAI_API_KEY set
set_chat_gpt
# Enable Code Explain plugin if model has been downloaded
set_code_explain
# Disable ranger float plugin if ranger not found
set_ranger_float
# Enable WakaTime plugin if api_key set in .wakatime.cfg
set_waka_opt

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

for neovim in "${neovimdir[@]}"; do
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
[ "$custom_url" ] && {
  if [ -d "${HOME}/.config/${neovimdir[0]}" ]; then
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
      add_nvimdirs_entry "${neovimdir[0]}"
    }
    [ "$quiet" ] || printf "done"
  fi
}

[ "${fix_help}" ] && {
  fix_help_file "${HOME}/.config/${neovimdir[0]}/${fix_help}"
}

[ "${interactive}" ] || {
  for neovim in "${neovimdir[@]}"; do
    [ "$quiet" ] || {
      pm="$pmgr"
      [ "$neovim" == "$spacevimdir" ] && pm="SP"
      [ "$neovim" == "$magicvimdir" ] && pm="Packer"
      printf "\nInitializing ${neovim} Neovim configuration with ${pm}"
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

[ "${interactive}" ] && {
  if [ "$menu" ]; then
    if [ "$menu" == "confmenu" ]; then
      show_conf_menu
    else
      if [ "$menu" == "plugmenu" ]; then
        show_plugin_menu
      else
        if [ "$menu" == "lspmenu" ]; then
          show_lsp_menu
        else
          if [ "$menu" == "formenu" ]; then
            show_formlint_menu
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

exit 0
