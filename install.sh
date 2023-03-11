#!/bin/bash
#
# install.sh - install and initialize Lazy Neovim configurations

usage() {
  printf "\nUsage: install.sh [-l] [-m] [-n] [-r] [-u]"
  printf "\nWhere:"
  printf "\n\t-l indicates install and initialize LazyVim"
  printf "\n\t-m indicates install and initialize nvim-multi"
  printf "\n\t-n indicates dry run, don't actually do anything, just printf's"
  printf "\n\t-r indicates remove the previously installed configuration"
  printf "\n\t-u displays this usage message and exits"
  printf "\nWithout arguments install and initialize nvim-lazyman\n\n"
  exit 1
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

tellme=
lazyvim=
multivim=
remove=
lazymandir="nvim-lazyman"
nvimdir="${lazymandir}"
while getopts "lmnru" flag; do
    case $flag in
        l)
            lazyvim=1
            nvimdir="nvim-LazyVim"
            ;;
        m)
            multivim=1
            nvimdir="nvim-multi"
            ;;
        n)
            tellme=1
            ;;
        r)
            remove=1
            ;;
        u)
            usage
            ;;
    esac
done

[ "${remove}" ] && {
  [ "${nvimdir}" ] || {
    echo "Something went wrong. Exiting."
    usage
  }
  printf "\nYou have requested removal of the Neovim configuration at:"
  printf "\n\t$HOME/.config/${nvimdir}\n"
  printf "\nConfirm removal of the Neovim ${nvimdir} configuration\n"
  while true
  do
    read -p "Remove ${nvimdir} ? (y/n) " yn
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
  [ -d $HOME/.config/${nvimdir} ] && {
    echo "Removing existing ${nvimdir} config at $HOME/.config/${nvimdir}"
    [ "${tellme}" ] || {
      rm -rf $HOME/.config/${nvimdir}
    }
  }

  [ -d $HOME/.local/share/${nvimdir} ] && {
    echo "Removing existing ${nvimdir} plugins at $HOME/.local/share/${nvimdir}"
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/share/${nvimdir}
    }
  }

  [ -d $HOME/.local/state/${nvimdir} ] && {
    echo "Removing existing ${nvimdir} state at $HOME/.local/state/${nvimdir}"
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/state/${nvimdir}
    }
  }
  [ -d $HOME/.cache/${nvimdir} ] && {
    echo "Removing existing ${nvimdir} cache at $HOME/.cache/${nvimdir}"
    [ "${tellme}" ] || {
      rm -rf $HOME/.cache/${nvimdir}
    }
  }
  exit 0
}

nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')

if (( $(echo "$nvim_version < 0.9 " |bc -l) )); then
  nvimdir="nvim"
else
  export NVIM_APPNAME="${nvimdir}"
fi

[ -d $HOME/.config/${nvimdir} ] && {
  echo "Backing up existing ${nvimdir} config as $HOME/.config/${nvimdir}-bak$$"
  [ "${tellme}" ] || {
    mv $HOME/.config/${nvimdir} $HOME/.config/${nvimdir}-bak$$
  }
}

[ -d $HOME/.local/share/${nvimdir} ] && {
  echo "Backing up existing ${nvimdir} plugins as $HOME/.local/share/${nvimdir}-bak$$"
  [ "${tellme}" ] || {
    mv $HOME/.local/share/${nvimdir} $HOME/.local/share/${nvimdir}-bak$$
  }
}

[ -d $HOME/.local/state/${nvimdir} ] && {
  echo "Backing up existing ${nvimdir} state as $HOME/.local/state/${nvimdir}-bak$$"
  [ "${tellme}" ] || {
    mv $HOME/.local/state/${nvimdir} $HOME/.local/state/${nvimdir}-bak$$
  }
}
[ -d $HOME/.cache/${nvimdir} ] && {
  echo "Backing up existing ${nvimdir} cache as $HOME/.cache/${nvimdir}-bak$$"
  [ "${tellme}" ] || {
    mv $HOME/.cache/${nvimdir} $HOME/.cache/${nvimdir}-bak$$
  }
}

[ "${lazyvim}" ] && {
  printf "\nCloning LazyVim starter configuration into $HOME/.config/${nvimdir} ... "
  [ "${tellme}" ] || {
    git clone \
      https://github.com/LazyVim/starter $HOME/.config/${nvimdir} > /dev/null 2>&1
  }
  printf "done"
}
[ "${multivim}" ] && {
  printf "\nCloning nvim-multi configuration into $HOME/.config/${nvimdir} ... "
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-multi $HOME/.config/${nvimdir} > /dev/null 2>&1
  }
  printf "done"
}
[ -d $HOME/.config/${lazymandir} ] || {
  printf "\nCloning nvim-lazyman configuration into $HOME/.config/${lazymandir} ... "
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-lazyman $HOME/.config/${lazymandir} > /dev/null 2>&1
  }
  printf "done"
}
printf "\nInitializing newly installed ${nvimdir} Neovim configuration ... "
[ "${tellme}" ] || {
  nvim --headless "+Lazy! install" +qa > /dev/null 2>&1
  nvim --headless "+Lazy! update" +qa > /dev/null 2>&1
  nvim --headless "+Lazy! sync" +qa > /dev/null 2>&1
}
printf "done\n"
# Not yet working
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
