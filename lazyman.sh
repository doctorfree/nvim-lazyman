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
USEGUI=
BASECFGS="Abstract AstroNvim Ecovim LazyVim LunarVim Nv NvChad SpaceVim MagicVim"
PRSNLCFGS="Mini Ember Knvim Roiz Fennel Adib Optixal Plug Heiker Simple"
MINIMCFGS="Minimal StartBase Opinion StartLsp StartMason Modular"
STARTCFGS="Basic Kickstart NvPak ${MINIMCFGS}"
SPDIR="${HOME}/.SpaceVim.d"
# Array with font names
fonts=("lean" "slant" "shadow" "small" "script" "standard")
# Supported themes
themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" "tundra" \
        "onedarkpro" "everforest" "monokai-pro")
# Themes with styles
styled_themes=("nightfox" "tokyonight" "dracula" "kanagawa" "catppuccin" \
               "onedarkpro" "monokai-pro")
all_lsp_servers=("bashls" "cssmodules_ls" "denols" "dockerls" "eslint" "gopls" \
                 "graphql" "html" "jdtls" "jsonls" "julials" "ltex" "lua_ls" \
                 "marksman" "pylsp" "pyright" "sqlls" "tailwindcss" "texlab" \
                 "tsserver" "vimls" "yamlls")
lsp_enabled_table=()

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-e] [-E config]"
  printf "\n   [-F] [-g] [-i] [-j] [-k] [-l] [-m] [-M] [-s] [-S] [-v] [-n] [-p] [-P]"
  printf "\n   [-q] [-h] [-H] [-I] [-L cmd] [-rR] [-C url] [-D subdir] [-N nvimdir]"
  printf "\n   [-T] [-U] [-w conf] [-W] [-x conf] [-X] [-y] [-z] [-Z] [-u] [status]"
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
  printf "\n    -g indicates install and initialize Abstract Neovim configuration"
  printf "\n    -j indicates install and initialize Nv Neovim configuration"
  printf "\n    -k indicates install and initialize Kickstart Neovim configuration"
  printf "\n    -l indicates install and initialize LazyVim Neovim configuration"
  printf "\n    -m indicates install and initialize MagicVim Neovim configuration"
  printf "\n    -M indicates install and initialize Mini Neovim configuration"
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
  printf "\n    -i indicates install language servers and tools for coding diagnostics"
  printf "\n    -I indicates install all language servers and tools for coding diagnostics"
  printf "\n    -L 'cmd' specifies a Lazy command to run in the selected configuration"
  printf "\n    -r indicates remove the previously installed configuration"
  printf "\n    -R indicates remove previously installed configuration and backups"
  printf "\n    -C 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n    -N 'nvimdir' specifies the folder name to use for the config given by -C"
  printf "\n    -T indicates no plugin manager, initialize with :TSUpdate"
  printf "\n    -U indicates update an existing configuration"
  printf "\n    -w 'conf' indicates install and initialize Personal 'conf' config"
  printf "\n       'conf' can be one of:"
  printf "\n           'Mini' 'Knvim' 'Roiz' 'Fennel' 'Ember'"
  printf "\n           'Adib' 'Optixal' 'Plug' 'Simple' 'Heiker'"
  printf "\n    -W indicates install and initialize all 'Personal' Neovim configurations"
  printf "\n    -x 'conf' indicates install and initialize nvim-starter 'conf' config"
  printf "\n       'conf' can be one of:"
  printf "\n           'Basic' 'Kickstart' 'NvPak' 'Minimal' 'StartBase'"
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
  have_julia=$(type -p julia)
  have_composer=$(type -p composer)
  have_rocks=$(type -p luarocks)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)
  have_zoxi=$(type -p zoxide)
}

init_neovim() {
  neodir="$1"
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
    find "${HOME}"/.config/"${neodir}" -type f -print0 | \
         xargs -0 grep wakatime/vim-wakatime > /dev/null && {
      [ -f "${HOME}"/.wakatime.cfg ] && havewaka=1
      wakafile=$(find "${HOME}"/.config/"${neodir}" -type f -print0 | xargs -0 grep wakatime/vim-wakatime | head -1 | awk -F ':' ' { print $1 } ')
      printf "\n\nThe ${neodir} Neovim configuration appears to use the WakaTime metrics plugin."
      printf "\nand cannot be automatically initialized as it requires user interaction."
      if [ "${havewaka}" ]
      then
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
      [ "$quiet" ] || printf "\nInitializing configuration in debug mode ..."
      if [ "${packer}" ]; then
        nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
      else
        if [ "${plug}" ]; then
          nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa'
          nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa'
          nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa'
        else
          if [ "${neodir}" == "${spacevimdir}" ]; then
            nvim --headless "+SPInstall" +qa
            nvim --headless "+UpdateRemotePlugins" +qa
          else
            if [ "${neodir}" == "${lunarvimdir}" ]; then
              export NVIM_APPNAME="nvim-LunarVim"
              export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
              export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
              export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
              export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
            fi
            if [ "${treesitter}" ]
            then
              nvim --headless '+TSUpdate' +qa
            else
              [ "${neodir}" == "${minivimdir}" ] || {
                nvim --headless "+Lazy! sync" +qa
                [ "${neodir}" == "${nvchaddir}" ] && {
                  nvim --headless "+MasonInstallAll" +qa
                }
              }
            fi
          fi
        fi
      fi
      [ -d "${HOME}/.config/${neodir}/doc" ] && {
        nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa
      }
      [ "$quiet" ] || printf " done"
    else
      [ "$quiet" ] || printf "\nInitializing configuration ..."
      if [ "${packer}" ]; then
        nvim --headless -c \
          'autocmd User PackerComplete quitall' -c 'PackerSync' >/dev/null 2>&1
      else
        if [ "${plug}" ]; then
          nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa' >/dev/null 2>&1
          nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa' >/dev/null 2>&1
          nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa' >/dev/null 2>&1
        else
          if [ "${neodir}" == "${spacevimdir}" ]; then
            nvim --headless "+SPInstall" +qa >/dev/null 2>&1
            nvim --headless "+UpdateRemotePlugins" +qa >/dev/null 2>&1
          else
            if [ "${neodir}" == "${lunarvimdir}" ]; then
              export NVIM_APPNAME="nvim-LunarVim"
              export LUNARVIM_RUNTIME_DIR="${HOME}/.local/share/${NVIM_APPNAME}"
              export LUNARVIM_CONFIG_DIR="${HOME}/.config/${NVIM_APPNAME}"
              export LUNARVIM_CACHE_DIR="${HOME}/.cache/${NVIM_APPNAME}"
              export LUNARVIM_BASE_DIR="${HOME}/.config/${NVIM_APPNAME}"
            fi
            if [ "${treesitter}" ]
            then
              nvim --headless '+TSUpdate' +qa >/dev/null 2>&1
            else
              [ "${neodir}" == "${minivimdir}" ] || {
                nvim --headless "+Lazy! sync" +qa >/dev/null 2>&1
                [ "${neodir}" == "${nvchaddir}" ] && {
                  nvim --headless "+MasonInstallAll" +qa >/dev/null 2>&1
                }
              }
            fi
          fi
        fi
      fi
      [ -d "${HOME}/.config/${neodir}/doc" ] && {
        nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa >/dev/null 2>&1
      }
      [ "$quiet" ] || printf " done"
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
  [ "${ndir}" == "${lunarvimdir}" ] && GITDIR=".local/share/${lunarvimdir}/lvim"
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
    add_nvimdirs_entry "${ndir}"
  }
  [ "${ndir}" == "${lazymandir}" ] && {
    [ -f /tmp/lazyconf$$ ] && {
      if grep 'conf.enable_alpha' /tmp/lazyconf$$ > /dev/null
      then
        cp /tmp/lazyconf$$ "${HOME}/${GITDIR}/lua/configuration-prev.lua"
        printf "\n\nThe format of the Lazyman configuration file has changed."
        printf "\nSaving your previous configuration file as:"
        printf "\n\t${HOME}/${GITDIR}/lua/configuration-prev.lua"
        printf "\nRe-apply any customizations to the new config at:"
        printf "\n\t${HOME}/${GITDIR}/lua/configuration.lua"
        printf "\nPress Enter to continue\n"
        read -r yn
      else
        cp /tmp/lazyconf$$ "${HOME}/${GITDIR}/lua/configuration.lua"
      fi
      rm -f /tmp/lazyconf$$
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
  if [ "$1" ]
  then
    FIG_TEXT="$1"
  else
    FIG_TEXT="Lazyman"
  fi
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
  elif [ "$abstract" ]; then
    printf "\n\talias avim='NVIM_APPNAME=nvim-Abstract nvim'"
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
  elif [ "$minivim" ]; then
    printf "\n\talias lvim='NVIM_APPNAME=nvim-Mini nvim'"
  elif [ "$spacevim" ]; then
    printf "\n\talias svim='NVIM_APPNAME=nvim-SpaceVim nvim'"
  elif [ "$nv" ]; then
    printf "\n\talias lvim='NVIM_APPNAME=nvim-Nv nvim'"
  elif [ "$nvchad" ]; then
    printf "\n\talias cvim='NVIM_APPNAME=nvim-NvChad nvim'"
  elif [ "$magicvim" ]; then
    printf "\n\talias mvim='NVIM_APPNAME=nvim-MagicVim nvim'"
  else
    printf "\n\talias lmvim=\"NVIM_APPNAME=${adir} nvim\""
  fi
  printf "\n"
}

get_conf_table() {
  confname="$1"
  lsp_enabled_table=()
  while read -r val
  do
    lsp_enabled_table+=("$val")
  done < <(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
}

get_conf_value() {
  confname="$1"
  confval=$(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
  echo "${confval}"
}

set_conf_table() {
  marker="$1"
  confval="$2"
  action="$3"
  grep "${marker}" "${NVIMCONF}" | grep "${confval}" >/dev/null && {
    case ${action} in
      disable)
        cat "${NVIMCONF}" \
          | sed -e "s/  \"${confval}\", -- ${marker}/  -- \"${confval}\", -- ${marker}/" >/tmp/nvim$$
        ;;
      enable)
        cat "${NVIMCONF}" \
          | sed -e "s/-- \"${confval}\", -- ${marker}/\"${confval}\", -- ${marker}/" >/tmp/nvim$$
        ;;
    esac
    cp /tmp/nvim$$ "${NVIMCONF}"
    rm -f /tmp/nvim$$
  }
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
      lazyman -g -z -y -Q
      ;;
    AstroNvim)
      lazyman -a -z -y -Q
      ;;
    Basic)
      lazyman -x Basic -z -y -Q
      ;;
    Ecovim)
      lazyman -e -z -y -Q
      ;;
    Kickstart)
      lazyman -k -z -y -Q
      ;;
    Lazyman)
      lazyman -i -z -y -Q
      ;;
    LazyVim)
      lazyman -l -z -y -Q
      ;;
    LunarVim)
      lazyman -v -z -y -Q
      ;;
    Mini)
      lazyman -M -z -y -Q
      ;;
    Nv)
      lazyman -j -z -y -Q
      ;;
    NvChad)
      lazyman -c -z -y -Q
      ;;
    SpaceVim)
      lazyman -s -z -y -Q
      ;;
    MagicVim)
      lazyman -m -z -y -Q
      ;;
    Adib)
      lazyman -w Adib -z -y -Q
      ;;
    Ember)
      lazyman -w Ember -z -y -Q
      ;;
    Knvim)
      lazyman -w Knvim -z -y -Q
      ;;
    Roiz)
      lazyman -w Roiz -z -y -Q
      ;;
    Fennel)
      lazyman -w Fennel -z -y -Q
      ;;
    NvPak)
      lazyman -x NvPak -z -y -Q
      ;;
    Optixal)
      lazyman -w Optixal -z -y -Q
      ;;
    Plug)
      lazyman -w Plug -z -y -Q
      ;;
    Heiker)
      lazyman -w Heiker -z -y -Q
      ;;
    Minimal)
      lazyman -x Minimal -z -y -Q
      ;;
    Simple)
      lazyman -w Simple -z -y -Q
      ;;
    StartBase)
      lazyman -x StartBase -z -y -Q
      ;;
    Opinion)
      lazyman -x Opinion -z -y -Q
      ;;
    StartLsp)
      lazyman -x StartLsp -z -y -Q
      ;;
    StartMason)
      lazyman -x StartMason -z -y -Q
      ;;
    Modular)
      lazyman -x Modular -z -y -Q
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
      if [ "${have_rich}" ]
      then
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
      if [ "${have_rich}" ]
      then
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

show_lsp_menu() {
  set_haves
  while true; do
    mainmenu=
    confmenu=
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
    if [ "${have_rich}" ]
    then
      rich "[cyan]Lazyman LSP Servers Menu[/cyan]" -p -a rounded -c -C
      rich "[b green]Enable/Disable LSP servers used by[/] [b yellow]~/.config/nvim-Lazyman[/]" -p -c
    else
      [ "${have_figlet}" ] && show_figlet "LSP Menu"
    fi
    printf '\n'
    get_conf_table lsp_servers
    PS3="${BOLD}${PLEASE} (numeric or text, 'h' for help): ${NORM}"
    options=()
    for lsp in "${all_lsp_servers[@]}"; do
      len=${#lsp}
      numsp=$((14 - len))
      [ ${numsp} -lt 0 ] && numsp=0
      longlsp="${lsp}"
      while [ ${numsp} -gt 0 ]
      do
        longlsp="${longlsp} "
        ((numsp-=1))
      done
      if echo "${lsp_enabled_table[@]}" | grep -qw "$lsp" > /dev/null
      then
        options+=("${longlsp} []")
      else
        options+=("${longlsp} [✗]")
      fi
    done
    options+=("Disable All")
    options+=("Enable All")
    options+=("Config Menu")
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
        "Disable All"*,* | *,"Disable All"*)
          for lsp in "${all_lsp_servers[@]}"; do
            set_conf_table "LSP_SERVERS" "${lsp}" "disable"
          done
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          for lsp in "${all_lsp_servers[@]}"; do
            set_conf_table "LSP_SERVERS" "${lsp}" "enable"
          done
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
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
        *,*)
          enable=
          lspname=$(echo "${opt}" | awk ' { print $1 } ')
          grep "LSP_SERVERS" "${NVIMCONF}" | grep "\-\- \"${lspname}" >/dev/null && enable=1
          if [ "${enable}" ]
          then
            set_conf_table "LSP_SERVERS" "${lspname}" "enable"
          else
            set_conf_table "LSP_SERVERS" "${lspname}" "disable"
          fi
          break
          ;;
      esac
      REPLY=
    done
  done
  [ "${mainmenu}" ] && show_main_menu
  [ "${confmenu}" ] && show_conf_menu
}

show_conf_menu() {
  set_haves
  while true; do
    mainmenu=
    lspmenu=
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
    if [ "${have_rich}" ]
    then
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
    enable_lvimshell=$(get_conf_value enable_lvimshell)
    if [ "${enable_lvimshell}" == "true" ]; then
      use_lvimshell=""
    else
      use_lvimshell="✗"
    fi
    enable_wakatime=$(get_conf_value enable_wakatime)
    if [ "${enable_wakatime}" == "true" ]; then
      use_wakatime=""
    else
      use_wakatime="✗"
    fi
    enable_games=$(get_conf_value enable_games)
    if [ "${enable_games}" == "true" ]; then
      use_games=""
    else
      use_games="✗"
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
    if [ "${use_dash}" == "alpha" ]; then
      options+=("Alpha Header  [${use_dashboard_header}]")
      options+=("Recent Files  [${use_dashboard_recent_files}]")
      options+=("Quick Links   [${use_dashboard_quick_links}]")
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
    options+=("Lvim Shell    [${use_lvimshell}]")
    options+=("WakaTime      [${use_wakatime}]")
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
    options+=("LSP Servers")
    options+=("Disable All")
    options+=("Enable All")
    [ -f ${CONFBACK} ] && {
      diff ${CONFBACK} ${NVIMCONF} >/dev/null || options+=("Reset to Defaults")
    }
    [ -d "${LMANDIR}" ] && options+=("Open Lazyman")
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
        "Lvim Shell"*,* | *,"Lvim Shell"*)
          if [ "${enable_lvimshell}" == "true" ]; then
            set_conf_value "enable_lvimshell" "false"
          else
            set_conf_value "enable_lvimshell" "true"
          fi
          break
          ;;
        "WakaTime"*,* | *,"WakaTime"*)
          if [ "${enable_wakatime}" == "true" ]; then
            set_conf_value "enable_wakatime" "false"
          else
            if [ -f "${HOME}"/.wakatime.cfg ]
            then
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
          choices=("alpha" "dash" "mini" "none")
          choice=$(printf "%s\n" "${choices[@]}" | fzf --prompt=" Neovim Dashboard  " --layout=reverse --border --exit-0)
          if [[ " ${choices[*]} " =~ " ${choice} " ]]; then
            [ "${choice}" == "${use_dash}" ] || {
              set_conf_value "dashboard" "${choice}"
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
        "Disable All"*,* | *,"Disable All"*)
          set_conf_value "dashboard" "none"
          set_conf_value "number" "false"
          set_conf_value "relative_number" "false"
          set_conf_value "enable_statusline" "false"
          set_conf_value "enable_tabline" "false"
          set_conf_value "enable_winbar" "false"
          set_conf_value "enable_transparent" "false"
          set_conf_value "enable_neotree" "false"
          set_conf_value "enable_noice" "false"
          set_conf_value "enable_chatgpt" "false"
          set_conf_value "enable_rainbow2" "false"
          set_conf_value "enable_fancy" "false"
          set_conf_value "enable_wilder" "false"
          set_conf_value "enable_terminal" "false"
          set_conf_value "enable_lvimshell" "false"
          set_conf_value "enable_wakatime" "false"
          set_conf_value "enable_games" "false"
          set_conf_value "enable_bookmarks" "false"
          set_conf_value "enable_ide" "false"
          set_conf_value "enable_navigator" "false"
          set_conf_value "enable_project" "false"
          set_conf_value "enable_picker" "false"
          set_conf_value "enable_smooth_scrolling" "false"
          set_conf_value "enable_dashboard_header" "false"
          set_conf_value "enable_dashboard_quick_links" "false"
          set_conf_value "enable_color_indentline" "false"
          set_conf_value "show_diagnostics" "none"
          set_conf_value "enable_semantic_highlighting" "false"
          set_conf_value "convert_semantic_highlighting" "false"
          set_conf_value "list" "false"
          break
          ;;
        "Enable All"*,* | *,"Enable All"*)
          set_conf_value "dashboard" "dash"
          set_conf_value "number" "true"
          set_conf_value "relative_number" "true"
          set_conf_value "enable_statusline" "true"
          set_conf_value "enable_tabline" "true"
          set_conf_value "enable_winbar" "true"
          set_conf_value "enable_transparent" "true"
          set_conf_value "enable_neotree" "true"
          set_conf_value "enable_noice" "true"
          set_conf_value "enable_chatgpt" "true"
          set_conf_value "enable_rainbow2" "true"
          set_conf_value "enable_fancy" "true"
          set_conf_value "enable_wilder" "true"
          set_conf_value "enable_terminal" "true"
          set_conf_value "enable_lvimshell" "true"
          [ -f "${HOME}"/.wakatime.cfg ] && set_conf_value "enable_wakatime" "true"
          set_conf_value "enable_games" "true"
          set_conf_value "enable_bookmarks" "true"
          set_conf_value "enable_ide" "true"
          set_conf_value "enable_navigator" "true"
          set_conf_value "enable_project" "true"
          set_conf_value "enable_picker" "true"
          set_conf_value "enable_smooth_scrolling" "true"
          set_conf_value "enable_dashboard_header" "true"
          set_conf_value "enable_dashboard_quick_links" "true"
          set_conf_value "enable_color_indentline" "true"
          set_conf_value "show_diagnostics" "popup"
          set_conf_value "enable_semantic_highlighting" "true"
          set_conf_value "convert_semantic_highlighting" "true"
          set_conf_value "list" "true"
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
        "LSP Servers"*,* | *,"LSP Servers"*)
          lspmenu=1
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
  [ "${mainmenu}" ] && show_main_menu
  [ "${lspmenu}" ] && show_lsp_menu
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
    if [ "${have_figlet}" ]
    then
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
    uninstalled=()
    [ "${have_fzf}" ] && {
      for neovim in ${BASECFGS} ${PRSNLCFGS} ${STARTCFGS}; do
        basenvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
        if [[ ! " ${sorted[*]} " =~ " ${basenvdir} " ]]; then
          uninstalled+=("${basenvdir}")
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
    get_config_str "${PRSNLCFGS}"
    prsnl_partial=${partial}
    options+=("Install Personals ${configstr}")
    installed=1
    partial=
    get_config_str "${STARTCFGS}"
    start_partial=${partial}
    options+=("Install Starters ${configstr}")
    installed=1
    partial=
    get_config_str "${BASECFGS} ${PRSNLCFGS} ${STARTCFGS}"
    options+=("Install All ${configstr}")
    [[ "${have_composer}" && "${have_julia}" && "${have_figlet}" && \
       "${have_rocks}" && "${have_tscli}" && "${have_zoxi}" ]] || {
      options+=("Install Tools")
    }
    [ "${base_partial}" ] && options+=("Remove Base")
    [ "${prsnl_partial}" ] && options+=("Remove Personals")
    [ "${start_partial}" ] && options+=("Remove Starters")
    numndirs=${#ndirs[@]}
    [ ${numndirs} -gt 1 ] && {
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
          lazyman -B -y -z -Q
          break
          ;;
        "Install Personal"*,* | *,"Install Personal"*)
          lazyman -W -y -z -Q
          break
          ;;
        "Install Starter"*,* | *,"Install Starter"*)
          lazyman -X -y -z -Q
          break
          ;;
        "Install All"*,* | *,"Install All"*)
          lazyman -A -y -z -Q
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
        "Remove Personal"*,* | *,"Remove Personal"*)
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
          break
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
exitafter=
astronvim=
abstract=
ecovim=
kickstart=
lazyman=
lazyvim=
lunarvim=
minivim=
magicvim=
nv=
nvchad=
nvimprsnl=
nvimstarter=
spacevim=
plug=
packer=
treesitter=
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
ecovimdir="nvim-Ecovim"
kickstartdir="nvim-Kickstart"
lazyvimdir="nvim-LazyVim"
lunarvimdir="nvim-LunarVim"
minivimdir="nvim-Mini"
nvdir="nvim-Nv"
nvchaddir="nvim-NvChad"
spacevimdir="nvim-SpaceVim"
magicvimdir="nvim-MagicVim"
basenvimdirs=("$lazyvimdir" "$magicvimdir" "$spacevimdir" "$ecovimdir" "$astronvimdir" "$nvdir" "$nvchaddir" "$lunarvimdir" "$abstractdir")
neovimdir=()
while getopts "aAb:BcdD:eE:FghHiIjklmMnL:pPqQrRsSTUC:N:vw:Wx:XyzZu" flag; do
  case $flag in
    a)
      astronvim=1
      neovimdir=("$astronvimdir")
      ;;
    A)
      all=1
      nvimprsnl="all"
      nvimstarter="all"
      astronvim=1
      abstract=1
      ecovim=1
      lazyvim=1
      lunarvim=1
      magicvim=1
      nv=1
      nvchad=1
      spacevim=1
      neovimdir=("${basenvimdirs[@]}")
      ;;
    B)
      all=1
      astronvim=1
      abstract=1
      ecovim=1
      lazyvim=1
      lunarvim=1
      magicvim=1
      nv=1
      nvchad=1
      spacevim=1
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
      debug="-d"
      ;;
    e)
      ecovim=1
      neovimdir=("$ecovimdir")
      ;;
    E)
      invoke="$OPTARG"
      ;;
    F)
      confmenu=1
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
      nv=1
      neovimdir=("$nvdir")
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
    S)
      select=1
      ;;
    C)
      custom_url="$OPTARG"
      ;;
    D)
      subdir="$OPTARG"
      ;;
    N)
      name="$OPTARG"
      ;;
    T)
      treesitter=1
      pmgr="Treesitter"
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
      lazyman -M ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Mini"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Ember ] && action="Updating"
      printf "\n${action} Ember Neovim configuration ..."
      lazyman -b main -C https://github.com/danlikestocode/embervim \
        -D nvim -N nvim-Ember ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Ember"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Knvim ] && action="Updating"
      printf "\n${action} Knvim Neovim configuration ..."
      lazyman -b main -C https://github.com/knmac/knvim \
        -N nvim-Knvim ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Knvim"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Fennel ] && action="Updating"
      printf "\n${action} Fennel Neovim configuration ..."
      lazyman -C https://github.com/jhchabran/nvim-config \
        -N nvim-Fennel -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Fennel"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Adib ] && action="Updating"
      printf "\n${action} Adib Neovim configuration ..."
      lazyman -b main -C https://github.com/adibhanna/nvim \
        -N nvim-Adib ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Adib"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Optixal ] && action="Updating"
      printf "\n${action} Optixal Neovim configuration ..."
      lazyman -C https://github.com/Optixal/neovim-init.vim \
        -N nvim-Optixal -p ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Optixal"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Plug ] && action="Updating"
      printf "\n${action} Plug Neovim configuration ..."
      lazyman -C https://github.com/doctorfree/nvim-plug \
        -N nvim-Plug -p ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Plug"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Heiker ] && action="Updating"
      printf "\n${action} VonHeikemen Neovim configuration ..."
      lazyman -C https://github.com/VonHeikemen/dotfiles \
        -D my-configs/neovim -N nvim-Heiker ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Heiker"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Roiz ] && action="Updating"
      printf "\n${action} Roiz Neovim configuration ..."
      lazyman -b main -C https://github.com/MrRoiz/rnvim \
        -N nvim-Roiz ${quietflag} -z ${yesflag}
      printf " done\n"
      show_alias "nvim-Roiz"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Simple ] && action="Updating"
      printf "\n${action} Simple Neovim configuration ..."
      lazyman -C https://github.com/anthdm/.nvim \
        -N nvim-Simple -P ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Simple"
    else
      prsnl_url=
      prsnl_dir=
      prsnl_opt=
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimprsnl} in
        Mini)
          prsnl_url="https://github.com/echasnovski/nvim"
          ;;
        Adib)
          prsnl_url="https://github.com/adibhanna/nvim"
          prsnl_opt="-b main"
          ;;
        Knvim)
          prsnl_url="https://github.com/knmac/knvim"
          prsnl_opt="-b main"
          ;;
        Roiz)
          prsnl_url="https://github.com/MrRoiz/rnvim"
          prsnl_opt="-b main"
          ;;
        Fennel)
          prsnl_url="https://github.com/jhchabran/nvim-config"
          prsnl_opt="-P"
          ;;
        Ember)
          prsnl_url="https://github.com/danlikestocode/embervim"
          prsnl_opt="-b main"
          prsnl_dir="-D nvim"
          ;;
        NvPak)
          prsnl_url="https://github.com/Pakrohk-DotFiles/NvPak.git"
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
          printf "\nPress Enter to continue\n"
          read -r yn
          usage
          ;;
      esac
      action="Installing"
      [ -d ${HOME}/.config/nvim-${nvimprsnl} ] && action="Updating"
      printf "\n${action} ${nvimprsnl} Neovim configuration ..."
      lazyman -C ${prsnl_url} -N nvim-${nvimprsnl} ${prsnl_dir} ${prsnl_opt} \
        ${quietflag} ${runflag} ${yesflag}
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
        lazyman -C https://github.com/VonHeikemen/nvim-starter \
          -N nvim-${neovim} -b ${startbranch} ${quietflag} -z ${yesflag}
        printf " done"
        show_alias "nvim-${neovim}"
      done
      action="Installing"
      [ -d ${HOME}/.config/nvim-Basic ] && action="Updating"
      printf "\n${action} Basic Neovim configuration ..."
      lazyman -C https://github.com/NvChad/basic-config \
        -N nvim-Basic ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Basic"
      action="Installing"
      [ -d ${HOME}/.config/nvim-Kickstart ] && action="Updating"
      printf "\n${action} Kickstart Neovim configuration ..."
      lazyman -k ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-Kickstart"
      action="Installing"
      [ -d ${HOME}/.config/nvim-NvPak ] && action="Updating"
      printf "\n${action} NvPak Neovim configuration ..."
      lazyman -C https://github.com/Pakrohk-DotFiles/NvPak.git \
        -N nvim-NvPak ${quietflag} -z ${yesflag}
      printf " done"
      show_alias "nvim-NvPak"
    else
      runflag=
      [ "${runvim}" ] || runflag="-z"
      case ${nvimstarter} in
        Basic)
          action="Installing"
          [ -d ${HOME}/.config/nvim-Basic ] && action="Updating"
          printf "\n${action} Basic Neovim configuration ..."
          lazyman -C https://github.com/NvChad/basic-config \
            -N nvim-Basic ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-Basic"
          ;;
        Kickstart)
          action="Installing"
          [ -d ${HOME}/.config/nvim-Kickstart ] && action="Updating"
          printf "\n${action} Kickstart Neovim configuration ..."
          lazyman -k ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-Kickstart"
          ;;
        NvPak)
          action="Installing"
          [ -d ${HOME}/.config/nvim-NvPak ] && action="Updating"
          printf "\n${action} NvPak Neovim configuration ..."
          lazyman -C https://github.com/Pakrohk-DotFiles/NvPak.git \
            -N nvim-NvPak ${quietflag} -z ${yesflag}
          printf " done"
          show_alias "nvim-NvPak"
          ;;
        *)
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
    if [ $langservers -eq 2 ]
    then
      "${LMANDIR}"/scripts/install_neovim.sh -a $debug $head $brew $yes
    else
      "${LMANDIR}"/scripts/install_neovim.sh $debug $head $brew $yes
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
  [ "$ecovim" ] && numvim=$((numvim + 1))
  [ "$kickstart" ] && numvim=$((numvim + 1))
  [ "$lazyvim" ] && numvim=$((numvim + 1))
  [ "$lazyman" ] && numvim=$((numvim + 1))
  [ "$lunarvim" ] && numvim=$((numvim + 1))
  [ "$magicvim" ] && numvim=$((numvim + 1))
  [ "$minivim" ] && numvim=$((numvim + 1))
  [ "$nv" ] && numvim=$((numvim + 1))
  [ "$nvchad" ] && numvim=$((numvim + 1))
  [ "$spacevim" ] && numvim=$((numvim + 1))
  [ "$numvim" -gt 1 ] && {
    printf "\nERROR: multiple Neovim configs cannot be used with '-N nvimdir'\n"
    brief_usage
  }
  [ "$astronvim" ] && astronvimdir="$name"
  [ "$abstract" ] && astronvimdir="$name"
  [ "$ecovim" ] && ecovimdir="$name"
  [ "$kickstart" ] && kickstartdir="$name"
  [ "$lazyman" ] && lazymandir="$name"
  [ "$lazyvim" ] && lazyvimdir="$name"
  [ "$lunarvim" ] && lunarvimdir="$name"
  [ "$magicvim" ] && magicvimdir="$name"
  [ "$minivim" ] && minivimdir="$name"
  [ "$nv" ] && nvdir="$name"
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
    abstract)
      ndir="$abstractdir"
      ;;
    basic)
      ndir="$basicdir"
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
  if [ -x "${LMANDIR}/scripts/install_neovim.sh" ]; then
    "${LMANDIR}"/scripts/install_neovim.sh \
      $debug $head $brew $yes
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
[ "$minivim" ] && {
  [ -d "${HOME}/.config/$minivimdir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning Mini configuration into"
      printf "\n\t${HOME}/.config/${minivimdir} ... "
    }
    [ "$tellme" ] || {
      git clone \
        https://github.com/echasnovski/nvim.git \
        "${HOME}/.config/${minivimdir}" >/dev/null 2>&1
      git -C "${HOME}/.config/${minivimdir}" submodule update \
        --init --recursive >/dev/null 2>&1
      add_nvimdirs_entry "$minivimdir"
    }
    [ "$quiet" ] || printf "done"
  }
}
[ "$nv" ] && {
  [ -d "${HOME}/.config/$nvdir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning Nv configuration into"
      printf "\n\t${HOME}/.config/${nvdir} ... "
    }
    [ "$tellme" ] || {
      git clone \
        https://github.com/appelgriebsch/Nv \
        "${HOME}/.config/${nvdir}" >/dev/null 2>&1
      add_nvimdirs_entry "$nvdir"
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
  [ -d "${SPDIR}" ] || {
    [ "$quiet" ] || {
      printf "\nAdding custom SpaceVim configuration into"
      printf "\n\t${SPDIR} ... "
    }
    [ "$tellme" ] || {
      [ -d "${HOME}"/.vim_backups ] || mkdir -p "${HOME}"/.vim_backups
      git clone https://github.com/doctorfree/spacevim "${SPDIR}" > /dev/null 2>&1
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
  if [ "$confmenu" ]; then
    show_conf_menu
  else
    show_main_menu
  fi
}

exit 0
