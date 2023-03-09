#!/bin/bash
#
# install.sh - install and initialize the nvim-lazy neovim configuration

have_git=$(type -p git)
have_nvim=$(type -p nvim)
[ "${have_git}" ] || {
  echo "Install script requires git but git not found"
  echo "Please install git and retry this install script"
  exit 1
}
[ "${have_nvim}" ] || {
  echo "Install script requires neovim but nvim not found"
  echo "Please install neovim and retry this install script"
  exit 1
}

nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')

if (( $(echo "$nvim_version < 0.9 " |bc -l) )); then
  nvimdir="nvim"
else
  nvimdir="nvim-lazy"
  export NVIM_APPNAME="nvim-lazy"
fi

[ -d $HOME/.config/${nvimdir} ] && {
  echo "Backing up existing ${nvimdir} config as $HOME/.config/${nvimdir}-bak$$"
  mv $HOME/.config/${nvimdir} $HOME/.config/${nvimdir}-bak$$
}

[ -d $HOME/.local/share/${nvimdir} ] && {
  echo "Backing up existing ${nvimdir} plugins as $HOME/.local/share/${nvimdir}-bak$$"
  mv $HOME/.local/share/${nvimdir} $HOME/.local/share/${nvimdir}-bak$$
}

[ -d $HOME/.local/state/${nvimdir} ] && {
  echo "Backing up existing ${nvimdir} state as $HOME/.local/state/${nvimdir}-bak$$"
  mv $HOME/.local/state/${nvimdir} $HOME/.local/state/${nvimdir}-bak$$
}

printf "\nCloning nvim-lazy configuration into $HOME/.config/${nvimdir} ... "
git clone \
  https://github.com/doctorfree/nvim-lazy $HOME/.config/${nvimdir} > /dev/null 2>&1
printf "done"
printf "\nInitializing newly installed neovim configuration ... "
$HOME/.config/${nvimdir}/lazy.sh install > /dev/null 2>&1
printf "done\n"
[ "${nvimdir}" == "nvim-lazy" ] && {
  printf "\nAdd the following line to your .bashrc or .zshrc shell initialization:"
  printf '\n\texport NVIM_APPNAME="nvim-lazy"\n'
}

nvim
