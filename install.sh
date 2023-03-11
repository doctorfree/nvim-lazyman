#!/bin/bash
#
# install.sh - install and initialize Lazy Neovim configurations
#
# curl -fsS \
#   https://raw.githubusercontent.com/doctorfree/nvim-lazyman/dev/install.sh \
#   | bash

usage() {
  printf "\nUsage: install.sh [-a] [-l] [-m] [-n] [-rR] [-y] [-u]"
  printf "\nWhere:"
  printf "\n\t-a indicates install all supported Neovim configurations"
  printf "\n\t-l indicates install and initialize LazyVim"
  printf "\n\t-m indicates install and initialize nvim-multi"
  printf "\n\t-n indicates dry run, don't actually do anything, just printf's"
  printf "\n\t-r indicates remove the previously installed configuration"
  printf "\n\t-R indicates remove previously installed configuration and backups"
  printf "\n\t-y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n\t-u displays this usage message and exits"
  printf "\nWithout arguments install and initialize nvim-lazyman\n\n"
  exit 1
}

create_backups() {
  ndir="$1"
  [ -d $HOME/.config/${ndir} ] && {
    echo "Backing up existing ${ndir} config as $HOME/.config/${ndir}-bak$$"
    [ "${tellme}" ] || {
      mv $HOME/.config/${ndir} $HOME/.config/${ndir}-bak$$
    }
  }

  [ -d $HOME/.local/share/${ndir} ] && {
    echo "Backing up existing ${ndir} plugins as $HOME/.local/share/${ndir}-bak$$"
    [ "${tellme}" ] || {
      mv $HOME/.local/share/${ndir} $HOME/.local/share/${ndir}-bak$$
    }
  }

  [ -d $HOME/.local/state/${ndir} ] && {
    echo "Backing up existing ${ndir} state as $HOME/.local/state/${ndir}-bak$$"
    [ "${tellme}" ] || {
      mv $HOME/.local/state/${ndir} $HOME/.local/state/${ndir}-bak$$
    }
  }
  [ -d $HOME/.cache/${ndir} ] && {
    echo "Backing up existing ${ndir} cache as $HOME/.cache/${ndir}-bak$$"
    [ "${tellme}" ] || {
      mv $HOME/.cache/${ndir} $HOME/.cache/${ndir}-bak$$
    }
  }
}

remove_config() {
  ndir="$1"
  [ "${proceed}" ] || {
    printf "\nYou have requested removal of the Neovim configuration at:"
    printf "\n\t$HOME/.config/${ndir}\n"
    printf "\nConfirm removal of the Neovim ${ndir} configuration\n"
    while true
    do
      read -p "Remove ${ndir} ? (y/n) " yn
      case $yn in
        [Yy]* )
            break
            ;;
        [Nn]* )
            echo "Aborting removal and exiting"
            exit 0
            ;;
          * ) echo "Please answer yes or no."
            ;;
      esac
    done
  }

  [ -d $HOME/.config/${ndir} ] && {
    echo "Removing existing ${ndir} config at $HOME/.config/${ndir}"
    [ "${tellme}" ] || {
      rm -rf $HOME/.config/${ndir}
    }
  }
  [ "${removeall}" ] && {
    echo "Removing any ${ndir} config backups"
    [ "${tellme}" ] || {
      rm -rf $HOME/.config/${ndir}-bak*
    }
  }

  [ -d $HOME/.local/share/${ndir} ] && {
    echo "Removing existing ${ndir} plugins at $HOME/.local/share/${ndir}"
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/share/${ndir}
    }
  }
  [ "${removeall}" ] && {
    echo "Removing any ${ndir} plugins backups"
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/share/${ndir}-bak*
    }
  }

  [ -d $HOME/.local/state/${ndir} ] && {
    echo "Removing existing ${ndir} state at $HOME/.local/state/${ndir}"
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/state/${ndir}
    }
  }
  [ "${removeall}" ] && {
    echo "Removing any ${ndir} state backups"
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/state/${ndir}-bak*
    }
  }

  [ -d $HOME/.cache/${ndir} ] && {
    echo "Removing existing ${ndir} cache at $HOME/.cache/${ndir}"
    [ "${tellme}" ] || {
      rm -rf $HOME/.cache/${ndir}
    }
  }
  [ "${removeall}" ] && {
    echo "Removing any ${ndir} cache backups"
    [ "${tellme}" ] || {
      rm -rf $HOME/.cache/${ndir}-bak*
    }
  }
}

have_git=$(type -p git)
have_nvim=$(type -p nvim)
[ "${have_git}" ] || {
  echo "Install script requires git but git not found"
  echo "Please install git and retry this install script"
  usage
}
[ "${have_nvim}" ] || {
  echo "Install script requires neovim but nvim not found"
  echo "Please install neovim and retry this install script"
  usage
}

all=
tellme=
lazyvim=
multivim=
proceed=
remove=
removeall=
lazymandir="nvim-lazyman"
lazyvimdir="nvim-LazyVim"
multidir="nvim-multi"
nvimdir="${lazymandir}"
while getopts "almnrRyu" flag; do
    case $flag in
        a)
            all=1
            lazyvim=1
            multivim=1
            nvimdir="${lazymandir} ${lazyvimdir} ${multidir}"
            ;;
        l)
            lazyvim=1
            nvimdir="${lazyvimdir}"
            ;;
        m)
            multivim=1
            nvimdir="${multidir}"
            ;;
        n)
            tellme=1
            ;;
        r)
            remove=1
            ;;
        R)
            remove=1
            removeall=1
            ;;
        y)
            proceed=1
            ;;
        u)
            usage
            ;;
    esac
done

[ "${all}" ] && {
  [ "${lazyvim}" ] || [ "${multivim}" ] && {
    echo "The -a option (all configs) cannot be used in conjunction with -l or -m"
    usage
  }
}

[ "${nvimdir}" ] || {
  echo "Something went wrong. Exiting."
  usage
}

[ "${remove}" ] && {
  for neovim in ${nvimdir}
  do
    remove_config ${neovim}
  done
  exit 0
}

nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')

if (( $(echo "$nvim_version < 0.9 " |bc -l) )); then
  [ "${all}" ] && {
    echo "Installation of all supported Neovim configurations is not supported"
    echo "with Neovim version less than 0.9. Exiting without installing."
    usage
  }
  have_appname=
  nvimdir="nvim"
else
  have_appname=1
fi

for neovim in ${nvimdir}
do
  [ "${neovim}" == "${lazymandir}" ] && continue
  create_backups ${neovim}
done

[ "${lazyvim}" ] && {
  printf "\nCloning LazyVim starter configuration into $HOME/.config/${lazyvimdir} ... "
  [ "${tellme}" ] || {
    git clone \
      https://github.com/LazyVim/starter $HOME/.config/${lazyvimdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${lazyvimdir} ${HOME}/.config/nvim
  }
  printf "done"
}
[ "${multivim}" ] && {
  printf "\nCloning nvim-multi configuration into $HOME/.config/${multidir} ... "
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-multi $HOME/.config/${multidir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${multidir} ${HOME}/.config/nvim
  }
  printf "done"
}
if [ -d $HOME/.config/${lazymandir} ]
then
  git -C $HOME/.config/${lazymandir} pull
else
  printf "\nCloning nvim-lazyman configuration into $HOME/.config/${lazymandir} ... "
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-lazyman $HOME/.config/${lazymandir} > /dev/null 2>&1
    [ "${have_appname}" ] || {
      [ "${lazyvim}" ] || [ "${multivim}" ] || {
        ln -s ${HOME}/.config/${lazymandir} ${HOME}/.config/nvim
      }
    }
  }
  printf "done"
fi

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
if [ ${hardlimit} -gt 4096 ]
then
  [ "${tellme}" ] || ulimit -n 4096
else
  [ "${tellme}" ] || ulimit -n ${hardlimit}
fi

for neovim in ${nvimdir}
do
  printf "\nInitializing newly installed ${neovim} Neovim configuration ... "
  export NVIM_APPNAME="${neovim}"
  [ "${tellme}" ] || {
    nvim --headless "+Lazy! sync" +qa > /dev/null 2>&1
    nvim --headless "+Lazy! update" +qa > /dev/null 2>&1
    nvim --headless "+Lazy! install" +qa > /dev/null 2>&1
  }
  printf "done\n"
done

[ "${tellme}" ] || ulimit -n ${currlimit}

# [ "${nvimdir}" == "nvim-lazyman" ] && {
#   printf "\nCompiling and installing Mason packages, please be patient ... "
#   [ "${tellme}" ] || {
#     nvim --headless -c 'autocmd User MasonUpdateAllComplete quitall' \
#                     -c 'MasonUpdateAll' > /dev/null 2>&1
#   }
#   printf "done\n"
# }
[ "${nvimdir}" == "nvim" ] || {
  printf "\nAdd the following line to your .bashrc or .zshrc shell initialization:"
  if [ "${lazyvim}" ]
  then
    printf '\n\texport NVIM_APPNAME="nvim-LazyVim"\n'
  elif [ "${multivim}" ]
  then
    printf '\n\texport NVIM_APPNAME="nvim-multi"\n'
  else
    printf '\n\texport NVIM_APPNAME="nvim-lazyman"\n'
  fi
}
printf "\n"

[ "${tellme}" ] || nvim
