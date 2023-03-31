#!/bin/bash
#
# lazyman - install, initialize, manage, and explore multiple Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>
#
# shellcheck disable=SC2001,SC2002,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-e config] [-k] [-l]"
  printf "\n               [-m] [-s] [-v] [-n] [-p] [-P] [-q] [-I] [-L cmd]"
  printf "\n               [-rR] [-C url] [-N nvimdir] [-U] [-y] [-u]"
  exit 1
}

usage() {
  printf "\nUsage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-e config] [-k] [-l]"
  printf "\n               [-m] [-s] [-v] [-n] [-p] [-P] [-q] [-I] [-L cmd]"
  printf "\n               [-rR] [-C url] [-N nvimdir] [-U] [-y] [-u]"
  printf "\nWhere:"
  printf "\n    -A indicates install all supported Neovim configurations"
  printf "\n    -a indicates install and initialize AstroNvim Neovim configuration"
  printf "\n    -b 'branch' specifies an nvim-lazyman git branch to checkout"
  printf "\n    -c indicates install and initialize NvChad Neovim configuration"
  printf "\n    -d indicates debug mode"
  printf "\n    -e 'config' execute 'nvim' with 'config' Neovim configuration"
  printf "\n       'config' can be one of:"
  printf "\n           'lazyman', 'allaman', astronvim', 'kickstart',"
  printf "\n           'nvchad', lazyvim', 'lunarvim', 'spacevim'"
  printf "\n       or any Neovim configuration directory in '~/.config'"
  printf "\n           (e.g. 'lazyman -e lazyvim foo.lua')"
  printf "\n    -k indicates install and initialize Kickstart Neovim configuration"
  printf "\n    -l indicates install and initialize LazyVim Neovim configuration"
  printf "\n    -m indicates install and initialize Allaman Neovim configuration"
  printf "\n    -s indicates install and initialize SpaceVim Neovim configuration"
  printf "\n    -v indicates install and initialize LunarVim Neovim configuration"
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
  printf "\n    -u displays this usage message and exits"
  printf "\nCommands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'"
  printf "\nWithout arguments lazyman installs and initializes nvim-lazyman\n"
  exit 1
}

create_backups() {
  ndir="$1"
  [ -d "$HOME/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} config as ${HOME}/.config/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "$HOME/.config/$ndir" "$HOME/.config/$ndir-bak$$"
    }
  }

  [ -d "$HOME/.local/share/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} plugins as ${HOME}/.local/share/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "$HOME/.local/share/$ndir" "$HOME/.local/share/$ndir-bak$$"
    }
  }

  [ -d "$HOME/.local/state/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} state as ${HOME}/.local/state/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "$HOME/.local/state/$ndir" "$HOME/.local/state/$ndir-bak$$"
    }
  }
  [ -d "$HOME/.cache/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} cache as ${HOME}/.cache/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "$HOME/.cache/$ndir" "$HOME/.cache/$ndir-bak$$"
    }
  }
}

run_command() {
  neodir="$1"
  comm="$2"
  [ "$tellme" ] || {
    export NVIM_APPNAME="$neodir"
    if [ "$debug" ]
    then
      if [ "$packer" ]
      then
        nvim --headless -c 'autocmd User PackerComplete quitall' -c "Packer${comm}"
      else
        if [ "$plug" ]
        then
          nvim --headless -c 'set nomore' -c "Plug${comm}" -c 'qa'
        else
          if [ "$neodir" == "$spacevimdir" ]
          then
            nvim --headless "+${comm}" +qa
          else
            nvim --headless "+Lazy! ${comm}" +qa
          fi
        fi
      fi
    else
      if [ "$packer" ]
      then
        nvim --headless -c \
          'autocmd User PackerComplete quitall' -c "Packer${comm}" > /dev/null 2>&1
      else
        if [ "$plug" ]
        then
          nvim --headless -c 'set nomore' -c "Plug${comm}" -c 'qa' > /dev/null 2>&1
        else
          if [ "$neodir" == "$spacevimdir" ]
          then
            nvim --headless "+${comm}" +qa > /dev/null 2>&1
          else
            nvim --headless "+Lazy! ${comm}" +qa > /dev/null 2>&1
          fi
        fi
      fi
    fi
  }
}

init_neovim() {
  neodir="$1"
  export NVIM_APPNAME="$neodir"
  if [ "$debug" ]
  then
    if [ "$packer" ]
    then
      nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
    else
      if [ "$plug" ]
      then
        nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa'
        nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa'
        nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa'
      else
        if [ "$neodir" == "$spacevimdir" ]
        then
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
    if [ "$packer" ]
    then
      nvim --headless -c \
        'autocmd User PackerComplete quitall' -c 'PackerSync' > /dev/null 2>&1
    else
      if [ "$plug" ]
      then
        nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa' > /dev/null 2>&1
        nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa' > /dev/null 2>&1
        nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa' > /dev/null 2>&1
      else
        if [ "$neodir" == "$spacevimdir" ]
        then
          nvim --headless "+SPInstall" +qa > /dev/null 2>&1
          nvim --headless "+UpdateRemotePlugins" +qa > /dev/null 2>&1
        else
          nvim --headless "+Lazy! sync" +qa > /dev/null 2>&1
        fi
      fi
    fi
    [ -d "${HOME}/.config/${neodir}/doc" ] && {
      nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa > /dev/null 2>&1
    }
  fi
}

remove_config() {
  ndir="$1"
  [ "$proceed" ] || {
    printf "\nYou have requested removal of the Neovim configuration at:"
    printf "\n\t${HOME}/.config/${ndir}\n"
    printf "\nConfirm removal of the Neovim ${ndir} configuration\n"
    while true
    do
      read -r -p "Remove ${ndir} ? (y/n) " yn
      case $yn in
        [Yy]* )
            break
            ;;
        [Nn]* )
            printf "\nAborting removal and exiting\n"
            exit 0
            ;;
          * ) printf "\nPlease answer yes or no.\n"
            ;;
      esac
    done
  }

  [ -d "$HOME/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "$HOME/.config/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} config backups"
    }
    [ "$tellme" ] || {
      rm -rf "$HOME/.config/$ndir"-bak*
    }
  }

  [ -d "$HOME/.local/share/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} plugins at ${HOME}/.local/share/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "$HOME/.local/share/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} plugins backups"
    }
    [ "$tellme" ] || {
      rm -rf "$HOME/.local/share/$ndir"-bak*
    }
  }

  [ -d "$HOME/.local/state/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} state at ${HOME}/.local/state/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "$HOME/.local/state/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} state backups"
    }
    [ "$tellme" ] || {
      rm -rf "$HOME/.local/state/$ndir"-bak*
    }
  }

  [ -d "$HOME/.cache/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} cache at ${HOME}/.cache/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "$HOME/.cache/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} cache backups"
    }
    [ "$tellme" ] || {
      rm -rf "$HOME/.cache/$ndir"-bak*
    }
  }
}

lazy_command() {
  ndir="$1"
  comm="$2"
  [ -d "$HOME/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRunning 'Lazy ${comm}' in ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "$tellme" ] || {
      init_neovim "$ndir"
    }
  }
}

update_config() {
  ndir="$1"
  [ -d "$HOME/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nUpdating existing ${ndir} config at ${HOME}/.config/${ndir} ..."
    }
    [ "$tellme" ] || {
      git -C "$HOME/.config/$ndir" stash > /dev/null 2>&1
      git -C "$HOME/.config/$ndir" pull > /dev/null 2>&1
      git -C "$HOME/.config/$ndir" stash pop > /dev/null 2>&1
    }
    [ "$quiet" ] || {
      printf " done"
    }
  }
  [ "$ndir" == "$astronvimdir" ] || [ "$ndir" == "$nvchaddir" ] && {
    if [ "$ndir" == "$astronvimdir" ]
    then
      cdir="lua/user"
    else
      cdir="lua/custom"
    fi
    [ -d "$HOME/.config/$ndir/$cdir" ] && {
      [ "$quiet" ] || {
        printf "\nUpdating existing add-on config at ${HOME}/.config/${ndir}/${cdir} ..."
      }
      [ "$tellme" ] || {
        git -C "$HOME/.config/$ndir/$cdir" stash > /dev/null 2>&1
        git -C "$HOME/.config/$ndir/$cdir" pull > /dev/null 2>&1
        git -C "$HOME/.config/$ndir/$cdir" stash pop > /dev/null 2>&1
      }
      [ "$quiet" ] || {
        printf " done"
      }
    }
  }
}

set_brew() {
  if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]
  then
    HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
  else
    if [ -x /usr/local/bin/brew ]
    then
      HOMEBREW_HOME="/usr/local"
    else
      if [ -x /opt/homebrew/bin/brew ]
      then
        HOMEBREW_HOME="/opt/homebrew"
      else
        HOMEBREW_HOME=
      fi
    fi
  fi
  if [ "$HOMEBREW_HOME" ]
  then
    BREW_EXE=
  else
    BREW_EXE="${HOMEBREW_HOME}/bin/brew"
  fi
}

clone_repo() {
  reponame="$1"
  repourl="$2"
  repodest="$3"
  [ -d "$HOME/.config/$repodest" ] || {
    [ "$quiet" ] || {
      printf "\nCloning ${reponame} configuration into ${HOME}/.config/${repodest} ... "
    }
    [ "$tellme" ] || {
      git clone \
          https://github.com/"$repourl" \
          "$HOME/.config/$repodest" > /dev/null 2>&1
    }
    [ "$quiet" ] || printf "done"
  }
}

all=
branch=
command=
debug=
invoke=
langservers=
tellme=
allaman=
astronvim=
kickstart=
lazyvim=
lunarvim=
multivim=
nvchad=
spacevim=
plug=
packer=
proceed=
quiet=
remove=
removeall=
update=
url=
name=
pmgr="Lazy"
lazymandir="nvim-lazyman"
astronvimdir="nvim-AstroNvim"
kickstartdir="nvim-Kickstart"
lazyvimdir="nvim-LazyVim"
lunarvimdir="nvim-LunarVim"
allamandir="nvim-Allaman"
nvchaddir="nvim-NvChad"
spacevimdir="nvim-SpaceVim"
multivimdir="nvim-MultiVim"
nvimdir="$lazymandir"
while getopts "aAb:cde:IklMmnL:pPqrRsUC:N:vyu" flag; do
    case $flag in
        a)
            astronvim=1
            nvimdir="$astronvimdir"
            ;;
        A)
            all=1
            astronvim=1
            allaman=1
            kickstart=1
            lazyvim=1
            lunarvim=1
            multivim=1
            nvchad=1
            spacevim=1
            nvimdir="${lazymandir} ${lazyvimdir} ${multivimdir} \
                     ${allamandir} ${spacevimdir} ${kickstartdir} \
                     ${astronvimdir} ${nvchaddir} ${lunarvimdir}"
            ;;
        b)
            branch="$OPTARG"
            ;;
        c)
            nvchad=1
            nvimdir="$nvchaddir"
            ;;
        d)
            debug="-d"
            ;;
        e)
            invoke="$OPTARG"
            ;;
        I)
            langservers=1
            ;;
        k)
            kickstart=1
            nvimdir="$kickstartdir"
            ;;
        l)
            lazyvim=1
            nvimdir="$lazyvimdir"
            ;;
        L)
            command="$OPTARG"
            ;;
        m)
            allaman=1
            nvimdir="$allamandir"
            ;;
        M)
            multivim=1
            nvimdir="$multivimdir"
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
            nvimdir="$spacevimdir"
            ;;
        C)
            url="$OPTARG"
            ;;
        N)
            name="$OPTARG"
            ;;
        U)
            update=1
            ;;
        v)
            lunarvim=1
            nvimdir="$lunarvimdir"
            ;;
        y)
            proceed=1
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
shift $(( OPTIND - 1 ))

[ "$langservers" ] && {
  if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]
  then
    "$HOME/.config/$lazymandir"/scripts/install_neovim.sh "$debug" -l
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
  [ "$allaman" ] && numvim=$((numvim + 1))
  [ "$kickstart" ] && numvim=$((numvim + 1))
  [ "$lazyvim" ] && numvim=$((numvim + 1))
  [ "$lunarvim" ] && numvim=$((numvim + 1))
  [ "$multivim" ] && numvim=$((numvim + 1))
  [ "$nvchad" ] && numvim=$((numvim + 1))
  [ "$spacevim" ] && numvim=$((numvim + 1))
  [ "$numvim" -gt 1 ] && {
    printf "\nERROR: multiple Neovim configs cannot be used with '-N nvimdir'\n"
    brief_usage
  }
  [ "$astronvim" ] && astronvimdir="$name"
  [ "$allaman" ] && allamandir="$name"
  [ "$kickstart" ] && kickstartdir="$name"
  [ "$lazyvim" ] && lazyvimdir="$name"
  [ "$lunarvim" ] && lunarvimdir="$name"
  [ "$multivim" ] && multivimdir="$name"
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
      while true
      do
        read -r -p "Proceed with config in ${name} ? (y/n) " yn
        case $yn in
          [Yy]* )
            break
            ;;
          [Nn]* )
            printf "\nAborting install and exiting\n"
            exit 0
            ;;
          * ) printf "\nPlease answer yes or no.\n"
            ;;
        esac
      done
    }
  }
}

[ "$invoke" ] && {
  nvimlower=$(echo "$invoke" | tr '[:upper:]' '[:lower:]')
  case "$nvimlower" in
    allaman )
        nvimdir="$allamandir"
        ;;
    astronvim )
        nvimdir="$astronvimdir"
        ;;
    kickstart )
        nvimdir="$kickstartdir"
        ;;
    lazyman )
        nvimdir="$lazymandir"
        ;;
    lazyvim )
        nvimdir="$lazyvimdir"
        ;;
    lunarvim )
        nvimdir="$lunarvimdir"
        ;;
    nvchad )
        nvimdir="$nvchaddir"
        ;;
    multi )
        nvimdir="$multivimdir"
        ;;
    spacevim )
        nvimdir="$spacevimdir"
        ;;
      * )
        nvimdir="$invoke"
        ;;
  esac
  [ -d "${HOME}/.config/${nvimdir}" ] || {
    printf "\nNeovim configuration for ${nvimdir} not found"
    printf "\nExiting\n"
    exit 1
  }
  export NVIM_APPNAME="$nvimdir"
  nvim "$@"
  exit 0
}

[ "$name" ] && nvimdir="$name"
[ "$nvimdir" ] || {
  printf "\nSomething went wrong, nvimdir not set. Exiting.\n"
  brief_usage
}

[ "$remove" ] && {
  for neovim in "${nvimdir[@]}"
  do
    remove_config "$neovim"
  done
  exit 0
}

[ "$command" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && nvimdir="$NVIM_APPNAME"
  }
  for neovim in "${nvimdir[@]}"
  do
    run_command "$neovim" "$command"
  done
  exit 0
}

[ "$update" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && nvimdir="$NVIM_APPNAME"
  }
  for neovim in "${nvimdir[@]}"
  do
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

if [ -d "$HOME/.config/$lazymandir" ]
then
  [ "$branch" ] && {
    git -C "$HOME/.config/$lazymandir" checkout "$branch" > /dev/null 2>&1
  }
else
  [ "$quiet" ] || {
    printf "\nCloning nvim-lazyman configuration into ${HOME}/.config/${lazymandir} ... "
  }
  [ "$tellme" ] || {
    git clone \
      https://github.com/doctorfree/nvim-lazyman "$HOME/.config/$lazymandir" > /dev/null 2>&1
    [ "$branch" ] && {
      git -C "$HOME/.config/$lazymandir" checkout "$branch" > /dev/null 2>&1
    }
  }
  [ "$quiet" ] || printf "done"
fi

# Append sourcing of .lazymanrc to shell initialization files
[ -f "$HOME/.config/$lazymandir"/.lazymanrc ] && {
  for shinit in bashrc zshrc
  do
    [ -f "$HOME/.$shinit" ] || continue
    grep lazymanrc "$HOME/.$shinit" > /dev/null && continue
    COMM="# Source the Lazyman shell initialization for aliases and nvims function"
    echo "$COMM" >> "$HOME/.$shinit"
    TEST_SRC="[ -f ~/.config/nvim-lazyman/.lazymanrc ] &&"
    SOURCE="source ~/.config/nvim-lazyman/.lazymanrc"
    echo "${TEST_SRC} ${SOURCE}" >> "$HOME/.$shinit"
  done
}

# Enable ChatGPT plugin if OPENAI_API_KEY set
[ "$OPENAI_API_KEY" ] && {
  NVIMCONF="${HOME}/.config/${lazymandir}/lua/configuration.lua"
  grep 'conf.enable_chatgpt' "$NVIMCONF" > /dev/null && {
    cat "$NVIMCONF" | sed -e "s/conf.enable_chatgpt.*/conf.enable_chatgpt = true/" > /tmp/nvim$$
    cp /tmp/nvim$$ "$NVIMCONF"
    rm -f /tmp/nvim$$
  }
}

if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]
then
  "$HOME/.config/$lazymandir"/scripts/install_neovim.sh "$debug"
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

for neovim in "${nvimdir[@]}"
do
  [ "$neovim" == "$lazymandir" ] && continue
  [ "$proceed" ] || {
    [ -d "$HOME/.config/$neovim" ] && {
      printf "\nYou have requested installation of the ${neovim} Neovim configuration."
      printf "\nIt appears there is a previously installed Neovim configuration at:"
      printf "\n\t${HOME}/.config/${neovim}\n"
      printf "\nThe existing Neovim configuration can be updated or backed up.\n"
      while true
      do
        read -r -p "Update ${neovim} ? (y/n) " yn
        case $yn in
          [Yy]* )
              update_config "$neovim"
              break
              ;;
          [Nn]* )
              create_backups "$neovim"
              break
              ;;
            * ) echo "Please answer yes or no."
              ;;
        esac
      done
    }
  }
done

[ "$astronvim" ] && {
  clone_repo AstroNvim AstroNvim/AstroNvim "$astronvimdir"
  [ "$quiet" ] || {
    printf "\nAdding user configuration into ${HOME}/.config/${astronvimdir}/lua/user ... "
  }
  [ "$tellme" ] || {
    if [ -d "$HOME/.config/$astronvimdir"/lua/user ]
    then
      update_config "$astronvimdir"/lua/user
    else
      git clone https://github.com/doctorfree/astronvim \
          "$HOME/.config/$astronvimdir"/lua/user > /dev/null 2>&1
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
[ "$allaman" ] && {
  clone_repo Allaman Allaman/nvim "$allamandir"
}
[ "$lunarvim" ] && {
  clone_repo LunarVim LunarVim/LunarVim "$lunarvimdir"
}
[ "$multivim" ] && {
  clone_repo Multi doctorfree/nvim-multi "$multivimdir"
}
[ "$nvchad" ] && {
  [ -d "$HOME/.config/$nvchaddir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning NvChad configuration into ${HOME}/.config/${nvchaddir} ... "
    }
    [ "$tellme" ] || {
      git clone https://github.com/NvChad/NvChad \
                "$HOME/.config/$nvchaddir" --depth 1 > /dev/null 2>&1
    }
    [ "$quiet" ] || {
      printf "\nAdding custom configuration into ${HOME}/.config/${nvchaddir}/lua/custom ... "
    }
  }
  [ "$tellme" ] || {
    if [ -d "$HOME/.config/$nvchaddir"/lua/custom ]
    then
      update_config "$nvchaddir"/lua/custom
    else
      git clone https://github.com/doctorfree/NvChad-custom \
                "$HOME/.config/$nvchaddir"/lua/custom > /dev/null 2>&1
      # rm -rf ${HOME}/.config/${nvchaddir}/lua/custom/.git
    fi
  }
  [ "$quiet" ] || printf "done"
}
[ "$spacevim" ] && {
  clone_repo SpaceVim SpaceVim/SpaceVim "$spacevimdir"
}
[ "$url" ] && {
  [ -d "$HOME/.config/$nvimdir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning ${url} into ${HOME}/.config/${nvimdir} ... "
    }
    [ "$tellme" ] || {
      git clone \
        "$url" "$HOME/.config/$nvimdir" > /dev/null 2>&1
    }
    [ "$quiet" ] || printf "done"
  }
}

[ "$packer" ] && {
  PACKER="${HOME}/.local/share/${nvimdir}/site/pack/packer/start/packer.nvim"
  [ -d "$PACKER" ] || {
    [ "$quiet" ] || {
      printf "\nCloning packer.nvim into ${PACKER} ... "
    }
    [ "$tellme" ] || {
      git clone --depth 1 \
          https://github.com/wbthomason/packer.nvim "$PACKER" > /dev/null 2>&1
    }
    [ "$quiet" ] || printf "done"
  }
}

[ "$plug" ] && {
  PLUG="${HOME}/.local/share/${nvimdir}/site/autoload/plug.vim"
  [ -d "$PLUG" ] || {
    [ "$quiet" ] || {
      printf "\nCopying plug.vim to ${PLUG} ... "
    }
    [ "$tellme" ] || {
      sh -c "curl -fLo ${PLUG} --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" \
        > /dev/null 2>&1
    }
    [ "$quiet" ] || printf "done"
  }
}

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]
then
  [ "$tellme" ] || ulimit -n 4096
else
  [ "$tellme" ] || ulimit -n "$hardlimit"
fi

for neovim in "${nvimdir[@]}"
do
  [ "$quiet" ] || {
    pm="$pmgr"
    [ "$neovim" == "$spacevimdir" ] && pm="SP"
    printf "\nInitializing newly installed ${neovim} Neovim configuration with ${pm} ... "
  }
  [ "$tellme" ] || {
    init_neovim "$neovim"
  }
  [ "$quiet" ] || printf "done"
done

[ "$tellme" ] || ulimit -n "$currlimit"

lazyinst=
if [ -f "$HOME"/.local/bin/lazyman ]
then
  [ -f "$HOME"/.config/nvim-lazyman/lazyman.sh ] && {
    diff "$HOME"/.config/nvim-lazyman/lazyman.sh "$HOME"/.local/bin/lazyman > /dev/null || lazyinst=1
  }
else
  lazyinst=1
fi
[ "$lazyinst" ] && {
  [ "$quiet" ] || {
    printf "\nInstalling lazyman command in ${HOME}/.local/bin"
    printf "\nUse ${HOME}/.local/bin/lazyman to explore Lazy Neovim configurations."
    printf "\nReview the lazyman usage message with:"
    printf "\n\t${HOME}/.local/bin/lazyman -u\n"
  }
}

maninst=
if [ -f "$HOME"/.local/share/man/man1/lazyman.1 ]
then
  [ -f "$HOME"/.config/nvim-lazyman/man/man1/lazyman.1 ] && {
    diff "$HOME"/.config/nvim-lazyman/man/man1/lazyman.1 "$HOME"/.local/share/man/man1/lazyman.1 > /dev/null || maninst=1
  }
else
  maninst=1
fi
[ "$maninst" ] && {
  [ "$quiet" ] || {
    printf "\nInstalling lazyman man page in ${HOME}/.local/share/man/man1/lazyman.1"
    printf "\nView the lazyman man page with:"
    printf "\n\tman lazyman\n"
  }
}

[ "$quiet" ] || {
  printf "\nTo use this lazyman installed Neovim configuration as the default,"
  printf "\nadd a line like the following to your .bashrc or .zshrc:\n"
  if [ "$all" ]
  then
    printf '\n\texport NVIM_APPNAME="nvim-lazyman"\n'
  else
    printf "\n\texport NVIM_APPNAME=\"${nvimdir}\"\n"
  fi
  printf "\nTo easily switch between lazyman installed Neovim configurations,"
  printf "\nshell aliases and the 'nvims' function have been created for you."
  if ! command -v nvims >/dev/null 2>&1; then
    printf "\nTo activate these aliases and the 'nvims' Neovim config switcher,"
    printf "\nlogout and login or issue the following command:"
    printf "\n\tsource ~/.config/nvim-lazyman/.lazymanrc"
  fi
  printf "\nAn alias for this Lazyman configuration can be created with:"
  if [ "$all" ]
  then
    printf "\n\n\talias lnvim='NVIM_APPNAME=nvim-lazyman nvim'"
  elif [ "$astronvim" ]
  then
    printf "\n\n\talias avim='NVIM_APPNAME=nvim-AstroNvim nvim'"
  elif [ "$kickstart" ]
  then
    printf "\n\n\talias kvim='NVIM_APPNAME=nvim-Kickstart nvim'"
  elif [ "$lazyvim" ]
  then
    printf "\n\n\talias lvim='NVIM_APPNAME=nvim-LazyVim nvim'"
  elif [ "$allaman" ]
  then
    printf "\n\n\talias mvim='NVIM_APPNAME=nvim-Allaman nvim'"
  elif [ "$lunarvim" ]
  then
    printf "\n\n\talias lvim='NVIM_APPNAME=nvim-LunarVim nvim'"
  elif [ "$spacevim" ]
  then
    printf "\n\n\talias svim='NVIM_APPNAME=nvim-SpaceVim nvim'"
  elif [ "$nvchad" ]
  then
    printf "\n\n\talias cvim='NVIM_APPNAME=nvim-NvChad nvim'"
  else
    printf "\n\n\talias lmvim=\"NVIM_APPNAME=${nvimdir} nvim\""
  fi
}
printf "\n\n"

[ "$tellme" ] || {
  [ "$all" ] && export NVIM_APPNAME="$lazymandir"
  nvim
}

[ "$lazyinst" ] && {
  [ "$tellme" ] || {
    [ -d "$HOME"/.local/bin ] || mkdir -p "$HOME"/.local/bin
    [ -f "$HOME"/.config/nvim-lazyman/lazyman.sh ] && {
      cp "$HOME"/.config/nvim-lazyman/lazyman.sh "$HOME"/.local/bin/lazyman
      chmod 755 "$HOME"/.local/bin/lazyman
    }
  }
}
[ "$maninst" ] && {
  [ "$tellme" ] || {
    [ -d "$HOME"/.local/share/man ] || mkdir -p "$HOME"/.local/share/man
    [ -d "$HOME"/.local/share/man/man1 ] || mkdir -p "$HOME"/.local/share/man/man1
    [ -f "$HOME"/.config/nvim-lazyman/man/man1/lazyman.1 ] && {
      cp "$HOME"/.config/nvim-lazyman/man/man1/lazyman.1 "$HOME"/.local/share/man/man1/lazyman.1
      chmod 644 "$HOME"/.local/share/man/man1/lazyman.1
    }
  }
}
