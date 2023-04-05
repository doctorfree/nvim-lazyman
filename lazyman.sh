#!/bin/bash
#
# lazyman - install, initialize, manage, and explore multiple Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>
#
# shellcheck disable=SC2001,SC2002,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2076

LAZYMAN="nvim-Lazyman"
LMANDIR="${HOME}/.config/${LAZYMAN}"
NVIMDIRS="${LMANDIR}/.nvimdirs"
LOLCAT="lolcat --animate --speed=70.0"
BOLD=$(tput bold 2>/dev/null)
NORM=$(tput sgr0 2>/dev/null)
PLEASE="Please enter your"
FIG_TEXT="Lazyman"
# Array with font names
fonts=("sblood" "lean" "sblood" "slant" "shadow" "speed" "small" "script" "standard")

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-e config] [-i] [-k]"
  printf "\n       [-l] [-m] [-s] [-S] [-v] [-n] [-p] [-P] [-q] [-I] [-L cmd]"
  printf "\n       [-rR] [-C url] [-D subdir] [-N nvimdir] [-U] [-y] [-z] [-Z] [-u]"
  exit 1
}

usage() {
  printf "\nUsage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-e config] [-i] [-k]"
  printf "\n       [-l] [-m] [-s] [-S] [-v] [-n] [-p] [-P] [-q] [-I] [-L cmd]"
  printf "\n       [-rR] [-C url] [-D subdir] [-N nvimdir] [-U] [-y] [-z] [-Z] [-u]"
  printf "\nWhere:"
  printf "\n    -A indicates install all supported Neovim configurations"
  printf "\n    -a indicates install and initialize AstroNvim Neovim configuration"
  printf "\n    -b 'branch' specifies an ${LAZYMAN} git branch to checkout"
  printf "\n    -c indicates install and initialize NvChad Neovim configuration"
  printf "\n    -d indicates debug mode"
  printf "\n    -e 'config' execute 'nvim' with 'config' Neovim configuration"
  printf "\n       'config' can be one of:"
  printf "\n           'lazyman', 'astronvim', 'kickstart', 'magicvim',"
  printf "\n           'nvchad', 'lazyvim', 'lunarvim', 'spacevim'"
  printf "\n       or any Neovim configuration directory in '~/.config'"
  printf "\n           (e.g. 'lazyman -e lazyvim foo.lua')"
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
  printf "\n    -I indicates install language servers and tools for coding diagnostics"
  printf "\n    -L 'cmd' specifies a Lazy command to run in the selected configuration"
  printf "\n    -r indicates remove the previously installed configuration"
  printf "\n    -R indicates remove previously installed configuration and backups"
  printf "\n    -C 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n    -N 'nvimdir' specifies the folder name to use for the config given by -C"
  printf "\n    -U indicates update an existing configuration"
  printf "\n    -y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n    -z indicates do not run nvim after initialization"
  printf "\n    -Z indicates install several unsupported but cool Neovim configurations"
  printf "\n    -u displays this usage message and exits"
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
  [ "$neodir" == "$lazymandir" ] && {
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
  [ "$neodir" == "$lazymandir" ] && {
    packer=${oldpack}
    plug=${oldplug}
  }
}

init_neovim() {
  neodir="$1"
  [ "$neodir" == "$lazymandir" ] && {
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
          nvim --headless "+Lazy! sync" +qa >/dev/null 2>&1
        fi
      fi
    fi
    [ -d "${HOME}/.config/${neodir}/doc" ] && {
      nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa >/dev/null 2>&1
    }
  fi
  [ "$neodir" == "$magicvimdir" ] && packer=${oldpack}
  [ "$neodir" == "$lazymandir" ] && {
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
    }
  }
  [ "$tellme" ] || {
    remove_nvimdirs_entry "$ndir"
  }
}

update_config() {
  ndir="$1"
  [ -d "${HOME}/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nUpdating existing ${ndir} config at ${HOME}/.config/${ndir} ..."
    }
    [ "$tellme" ] || {
      git -C "${HOME}/.config/$ndir" stash >/dev/null 2>&1
      git -C "${HOME}/.config/$ndir" pull >/dev/null 2>&1
      git -C "${HOME}/.config/$ndir" stash pop >/dev/null 2>&1
    }
    [ "$quiet" ] || {
      printf " done"
    }
    add_nvimdirs_entry "$ndir"
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
        git -C "${HOME}/.config/$ndir/$cdir" pull >/dev/null 2>&1
        git -C "${HOME}/.config/$ndir/$cdir" stash pop >/dev/null 2>&1
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
    BREW_EXE=
  else
    BREW_EXE="${HOMEBREW_HOME}/bin/brew"
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

show_menu() {
  have_cargo=$(type -p cargo)
  have_neovide=$(type -p neovide)
  have_figlet=$(type -p figlet)
  have_tscli=$(type -p tree-sitter)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)
  have_xclip=$(type -p xclip)

  while true; do
    clear
    [ "${have_figlet}" ] && show_figlet
    items=()
    showinstalled=1
    if [ -f "${LMANDIR}"/.lazymanrc ]; then
      source "${LMANDIR}"/.lazymanrc
    else
      if [ "${have_rich}" ]; then
        rich "[bold red]WARNING[/]: missing [b yellow]${LMANDIR}/.lazymanrc[/]
  reinstall Lazyman with:
    [bold green]lazyman -R -N nvim-Lazyman[/]
  followed by:
    [bold green]lazyman[/]" -p -a rounded -c
      else
        printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
        printf "\nReinstall Lazyman with:"
        printf "\n\tlazyman -R -N nvim-Lazyman"
        printf "\n\tlazyman\n"
      fi
      showinstalled=
    fi
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    numitems=${#sorted[@]}
    confword="configurations"
    [ ${numitems} -eq 1 ] && confword="configuration"
    if [ "${have_rich}" ]; then
      rich "[b magenta]${numitems}[/] [b green]Lazyman Neovim ${confword}[/] [b magenta]installed[/]" -p -c
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
        rich "${neovims}" -p -a rounded -c -C -w 70
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

    PS3="${BOLD}${PLEASE} choice (numeric or text, 'h' for help): ${NORM}"
    options=()
    if alias nvims >/dev/null 2>&1; then
      [ ${numitems} -gt 1 ] && options+=("Select Config")
    fi
    options+=("Install Configs")
    options+=("Install More Configs")
    [[ "${have_figlet}" && "${have_tscli}" && "${have_xclip}" ]] || {
      options+=("Install Tools")
    }
    [ "${have_cargo}" ] && {
      [ "${have_neovide}" ] || options+=("Install Neovide GUI")
    }
    options+=("Remove All Configs")
    for neovim in "${suppnvimdirs[@]}"; do
      nvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
      if [[ ! " ${sorted[*]} " =~ " ${nvdir} " ]]; then
        options+=("Install ${nvdir}")
      fi
    done
    for neovim in "${sorted[@]}"; do
      options+=("Open ${neovim}")
    done
    [ "${have_neovide}" ] && options+=("Open Neovide GUI")
    for neovim in "${sorted[@]}"; do
      options+=("Remove ${neovim}")
    done
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          clear
          printf "\n"
          man lazyman
          break
          ;;
        "Select"*,* | *,"Select"* | "select"*,* | *,"select"*)
          nvimselect
          break
          ;;
        "Install Configs"*,* | *,"Install Configs"*)
          lazyman -A -z -y
          break
          ;;
        "Install More"*,* | *,"Install More"*)
          lazyman -Z -z -y
          break
          ;;
        "Install Tools"*,* | *,"Install Tools"*)
          lazyman -I
          have_figlet=$(type -p figlet)
          have_tscli=$(type -p tree-sitter)
          have_xclip=$(type -p xclip)
          have_lolcat=$(type -p lolcat)
          break
          ;;
        "Install Neovide"*,* | *,"Install Neovide"*)
          printf "\nInstalling Neovide GUI, please be patient ... "
          cargo install --git https://github.com/neovide/neovide >/dev/null 2>&1
          printf "done\n"
          have_neovide=$(type -p neovide)
          ;;
        "Install "*,* | *,"Install "*)
          nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          case ${nvimconf} in
            AstroNvim)
              lazyman -a -z -y
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
          esac
          break
          ;;
        "Open Neovide"*,* | *,"Open Neovide"*)
          NVIM_APPNAME="nvim-Lazyman" neovide &
          break
          ;;
        "Open "*,* | *,"Open "*)
          nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          if [ -d "${HOME}/.config/nvim-${nvimconf}" ]; then
            NVIM_APPNAME="nvim-${nvimconf}" nvim
          else
            if [ -d "${HOME}/.config/${nvimconf}" ]; then
              NVIM_APPNAME="${nvimconf}" nvim
            else
              printf "\nCannot locate ${nvimconf} Neovim configuration\n"
              printf "\nPress Enter to continue\n"
              read -r yn
            fi
          fi
          break
          ;;
        "Remove All Configs",* | *,"Remove All Configs")
          lazyman -R -A -y
          lazyman -R -Z -y
          break
          ;;
        "Remove "*,* | *,"Remove "*)
          nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          if [ -d "${HOME}/.config/nvim-${nvimconf}" ]; then
            lazyman -R -N nvim-${nvimconf}
          else
            if [ -d "${HOME}/.config/${nvimconf}" ]; then
              lazyman -R -N ${nvimconf}
            else
              remove_nvimdirs_entry nvim-${nvimconf}
            fi
          fi
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
}

all=
branch=
subdir=
command=
debug=
invoke=
langservers=
tellme=
astronvim=
kickstart=
lazyman=
lazyvim=
lunarvim=
magicvim=
nvchad=
spacevim=
plug=
packer=
proceed=
quiet=
remove=
removeall=
runvim=1
select=
update=
url=
unsupported=
name=
pmgr="Lazy"
# Supported Neovim configurations
# "AstroNvim" "Kickstart" "LazyVim" "LunarVim" "NvChad" "SpaceVim" "MagicVim"
# Neovim configurations still being tested, not yet supported
# "Nv" "Abstract" "Allaman" "Fennel" "NvPak"" "Optixal" "Plug"
lazymandir="${LAZYMAN}"
astronvimdir="nvim-AstroNvim"
kickstartdir="nvim-Kickstart"
lazyvimdir="nvim-LazyVim"
lunarvimdir="nvim-LunarVim"
nvchaddir="nvim-NvChad"
spacevimdir="nvim-SpaceVim"
magicvimdir="nvim-MagicVim"
suppnvimdirs=("$lazymandir" "$lazyvimdir" "$magicvimdir" "$spacevimdir" "$kickstartdir" "$astronvimdir" "$nvchaddir" "$lunarvimdir")
nvimdir=()
while getopts "aAb:cdD:e:iIklmnL:pPqrRsSUC:N:vyzZu" flag; do
  case $flag in
    a)
      astronvim=1
      nvimdir=("$astronvimdir")
      ;;
    A)
      all=1
      astronvim=1
      kickstart=1
      lazyman=1
      lazyvim=1
      lunarvim=1
      magicvim=1
      nvchad=1
      spacevim=1
      nvimdir=("${suppnvimdirs[@]}")
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
      invoke="$OPTARG"
      ;;
    i)
      lazyman=1
      nvimdir=("$lazymandir")
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
    y)
      proceed=1
      ;;
    z)
      runvim=
      ;;
    Z)
      unsupported=1
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

[ "$select" ] && {
  if [ -f "${LMANDIR}"/.lazymanrc ]; then
    source "${LMANDIR}"/.lazymanrc
  else
    printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
    printf "\nReinstall Lazyman with:"
    printf "\n\tlazyman -R -N nvim-Lazyman"
    printf "\n\tlazyman\n"
  fi
  if alias nvims >/dev/null 2>&1; then
    nvimselect "$@"
  fi
  exit 0
}

[ "$unsupported" ] && {
  if [ "$remove" ]; then
    for neovim in Nv Abstract Allaman Fennel NvPak Optixal Plug; do
      remove_config "nvim-${neovim}"
    done
  else
    yesflag=
    [ "${proceed}" ] && yesflag="-y"
    printf "\nInstalling/updating Nv Neovim configuration ..."
    lazyman -C https://github.com/appelgriebsch/Nv \
      -N nvim-Nv -q -z ${yesflag}
    printf " done"
    printf "\nInstalling/updating Abstract Neovim configuration ..."
    lazyman -C https://github.com/Abstract-IDE/Abstract \
      -N nvim-Abstract -P -q -z ${yesflag}
    printf " done"
    printf "\nInstalling/updating Fennel Neovim configuration ..."
    lazyman -C https://github.com/jhchabran/nvim-config \
      -N nvim-Fennel -P -q -z ${yesflag}
    printf " done"
    printf "\nInstalling/updating NvPak Neovim configuration ..."
    lazyman -C https://github.com/Pakrohk-DotFiles/NvPak.git \
      -N nvim-NvPak -q -z ${yesflag}
    printf " done"
    printf "\nInstalling/updating Optixal Neovim configuration ..."
    lazyman -C https://github.com/Optixal/neovim-init.vim \
      -N nvim-Optixal -p -q -z ${yesflag}
    printf " done"
    printf "\nInstalling/updating Plug Neovim configuration ..."
    lazyman -C https://github.com/doctorfree/nvim-plug \
      -N nvim-Plug -p -q -z ${yesflag}
    printf " done"
    printf "\nInstalling/updating Allaman Neovim configuration ..."
    lazyman -C https://github.com/Allaman/nvim \
      -N nvim-Allaman -q -z ${yesflag}
    printf " done\n"
  fi
  exit 0
}

[ "$langservers" ] && {
  if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]; then
    "${HOME}/.config/$lazymandir"/scripts/install_neovim.sh -l "$debug"
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
# This breaks subsequent '-e' invocations for that config
[ "$name" ] && {
  numvim=0
  [ "$astronvim" ] && numvim=$((numvim + 1))
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
      printf "\n\tThis will make it incompatible with '-e <config>' in subsequent runs\n"
    }
    [ "$proceed" ] || {
      printf "\nDo you wish to proceed with this non-standard initialization?"
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
  printf "\nLazyman requires git but git not found"
  printf "\nPlease install git and retry this lazyman command\n"
  brief_usage
}

interactive=
numvimdirs=${#nvimdir[@]}
[ ${numvimdirs} -eq 0 ] && {
  nvimdir=("${lazymandir}")
  interactive=1
  runvim=
}
if [ -d "${HOME}/.config/$lazymandir" ]; then
  [ "$branch" ] && {
    git -C "${HOME}/.config/$lazymandir" checkout "$branch" >/dev/null 2>&1
  }
else
  [ "$quiet" ] || {
    printf "\nCloning ${LAZYMAN} configuration into"
    printf "\n\t${HOME}/.config/${lazymandir} ... "
  }
  [ "$tellme" ] || {
    git clone https://github.com/doctorfree/nvim-lazyman \
      "${HOME}/.config/$lazymandir" >/dev/null 2>&1
    [ "$branch" ] && {
      git -C "${HOME}/.config/$lazymandir" checkout "$branch" >/dev/null 2>&1
    }
  }
  [ "$quiet" ] || printf "done"
  interactive=
  runvim=1
fi
# Always make sure nvim-Lazyman is in .nvimdirs
[ "$tellme" ] || {
  add_nvimdirs_entry "$lazymandir"
}

# Append sourcing of .lazymanrc to shell initialization files
if [ -f "${LMANDIR}"/.lazymanrc ]; then
  for shinit in bashrc zshrc; do
    [ -f "${HOME}/.$shinit" ] || continue
    grep lazymanrc "${HOME}/.$shinit" >/dev/null && continue
    COMM="# Source the Lazyman shell initialization for aliases and nvims selector"
    echo "$COMM" >>"${HOME}/.$shinit"
    TEST_SRC="[ -f ~/.config/${LAZYMAN}/.lazymanrc ] &&"
    SOURCE="source ~/.config/${LAZYMAN}/.lazymanrc"
    echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
  done
  # Append sourcing of .nvimsbind to shell initialization files
  [ -f "${HOME}/.config/$lazymandir"/.nvimsbind ] && {
    for shinit in bashrc zshrc; do
      [ -f "${HOME}/.$shinit" ] || continue
      grep nvimsbind "${HOME}/.$shinit" >/dev/null && continue
      COMM="# Source the Lazyman shell initialization for nvims key binding"
      echo "$COMM" >>"${HOME}/.$shinit"
      TEST_SRC="[ -f ~/.config/${LAZYMAN}/.nvimsbind ] &&"
      SOURCE="source ~/.config/${LAZYMAN}/.nvimsbind"
      echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
    done
  }
else
  printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
  printf "\nReinstall Lazyman with:"
  printf "\n\tlazyman -R -N nvim-Lazyman"
  printf "\n\tlazyman\n"
fi

# Enable ChatGPT plugin if OPENAI_API_KEY set
[ "$OPENAI_API_KEY" ] && {
  NVIMCONF="${HOME}/.config/${lazymandir}/lua/configuration.lua"
  grep 'conf.enable_chatgpt' "$NVIMCONF" >/dev/null && {
    cat "$NVIMCONF" \
      | sed -e "s/conf.enable_chatgpt.*/conf.enable_chatgpt = true/" >/tmp/nvim$$
    cp /tmp/nvim$$ "$NVIMCONF"
    rm -f /tmp/nvim$$
  }
}

if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]; then
  "${HOME}/.config/$lazymandir"/scripts/install_neovim.sh "$debug"
  BREW_EXE=
  set_brew
  [ "$BREW_EXE" ] && eval "$("$BREW_EXE" shellenv)"
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

for neovim in "${nvimdir[@]}"; do
  [ "$neovim" == "$lazymandir" ] && continue
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
      update_config "$astronvimdir"/lua/user
    else
      git clone https://github.com/doctorfree/astronvim \
        "${HOME}/.config/$astronvimdir"/lua/user >/dev/null 2>&1
    fi
  }
  [ "$quiet" ] || printf "done"
}
[ "$kickstart" ] && {
  clone_repo Kickstart nvim-lua/kickstart.nvim.git "$kickstartdir"
}
[ "$lazyvim" ] && {
  clone_repo LazyVim LazyVim/starter "$lazyvimdir"
}
[ "$lunarvim" ] && {
  clone_repo LunarVim LunarVim/LunarVim "$lunarvimdir"
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
      update_config "$nvchaddir"/lua/custom
    else
      git clone https://github.com/doctorfree/NvChad-custom \
        "${HOME}/.config/$nvchaddir"/lua/custom >/dev/null 2>&1
      # rm -rf ${HOME}/.config/${nvchaddir}/lua/custom/.git
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
      fi
      add_nvimdirs_entry "${nvimdir[0]}"
    }
    [ "$quiet" ] || printf "done"
  fi
}

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]; then
  [ "$tellme" ] || ulimit -n 4096
else
  [ "$tellme" ] || ulimit -n "$hardlimit"
fi

[ "$interactive" ] || {
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

[ "$quiet" ] || [ "$interactive" ] || {
  printf "\n\nTo use this lazyman installed Neovim configuration as the default,"
  printf "\nadd a line like the following to your .bashrc or .zshrc:\n"
  if [ "$all" ]; then
    printf '\n\texport NVIM_APPNAME="nvim-Lazyman"\n'
  else
    printf "\n\texport NVIM_APPNAME=\"${nvimdir[0]}\"\n"
  fi
  printf "\nTo easily switch between lazyman installed Neovim configurations,"
  printf "\nshell aliases and the 'nvims' command have been created for you."
  [ -f "${LMANDIR}"/.lazymanrc ] && source "${LMANDIR}"/.lazymanrc
  if ! alias nvims >/dev/null 2>&1; then
    printf "\nTo activate these aliases and the 'nvims' Neovim config switcher,"
    printf "\nlogout and login or issue the following command:"
    printf "\n\tsource ~/.config/${LAZYMAN}/.lazymanrc"
  fi
  printf "\nAn alias for this Lazyman configuration can be created with:"
  if [ "$all" ]; then
    printf "\n\n\talias lnvim='NVIM_APPNAME=nvim-Lazyman nvim'"
  elif [ "$astronvim" ]; then
    printf "\n\n\talias avim='NVIM_APPNAME=nvim-AstroNvim nvim'"
  elif [ "$kickstart" ]; then
    printf "\n\n\talias kvim='NVIM_APPNAME=nvim-Kickstart nvim'"
  elif [ "$lazyman" ]; then
    printf "\n\n\talias lmvim='NVIM_APPNAME=nvim-Lazyman nvim'"
  elif [ "$lazyvim" ]; then
    printf "\n\n\talias lvim='NVIM_APPNAME=nvim-LazyVim nvim'"
  elif [ "$lunarvim" ]; then
    printf "\n\n\talias lvim='NVIM_APPNAME=nvim-LunarVim nvim'"
  elif [ "$spacevim" ]; then
    printf "\n\n\talias svim='NVIM_APPNAME=nvim-SpaceVim nvim'"
  elif [ "$nvchad" ]; then
    printf "\n\n\talias cvim='NVIM_APPNAME=nvim-NvChad nvim'"
  elif [ "$magicvim" ]; then
    printf "\n\n\talias mvim='NVIM_APPNAME=nvim-MagicVim nvim'"
  else
    printf "\n\n\talias lmvim=\"NVIM_APPNAME=${nvimdir[0]} nvim\""
  fi
}
[ "$quiet" ] || {
  printf "\n\nRun 'lazyman' with no arguments for an interactive menu system\n\n"
}

[ "$tellme" ] || {
  [ "$runvim" ] && {
    [ "$all" ] && export NVIM_APPNAME="$lazymandir"
    nvim
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

[ "$interactive" ] && show_menu
