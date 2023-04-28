#!/usr/bin/env bash

[ -d "$HOME/src" ] || mkdir -p "$HOME/src"
git clone https://github.com/neovim/neovim.git "$HOME/src/neovim"
cd "$HOME/src/neovim" || exit 1
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
sudo rm -rf "$HOME/src/neovim"
