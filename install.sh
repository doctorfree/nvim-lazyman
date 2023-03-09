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

[ -d $HOME/.config/nvim-lazy ] && {
  echo "Backing up existing nvim-lazy config as $HOME/.config/nvim-lazy-bak$$"
  mv $HOME/.config/nvim-lazy $HOME/.config/nvim-lazy-bak$$
}

[ -d $HOME/.local/share/nvim-lazy ] && {
  echo "Backing up existing nvim-lazy plugins as $HOME/.local/share/nvim-lazy-bak$$"
  mv $HOME/.local/share/nvim-lazy $HOME/.local/share/nvim-lazy-bak$$
}

[ -d $HOME/.local/state/nvim-lazy ] && {
  echo "Backing up existing nvim-lazy state as $HOME/.local/state/nvim-lazy-bak$$"
  mv $HOME/.local/state/nvim-lazy $HOME/.local/state/nvim-lazy-bak$$
}

printf "\nCloning nvim-lazy configuration into $HOME/.config/nvim-lazy ... "
git clone \
  https://github.com/doctorfree/nvim-lazy $HOME/.config/nvim-lazy > /dev/null 2>&1
printf "done"
export NVIM_APPNAME="nvim-lazy"
printf "\nInitializing newly installed neovim configuration ... "
$HOME/.config/nvim-lazy/lazy.sh install > /dev/null 2>&1
printf "done\n"
printf "\nAdd the following line to your .bashrc or .zshrc shell initialization:"
printf '\n\texport NVIM_APPNAME="nvim-lazy"\n'

nvim
