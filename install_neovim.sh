#!/bin/bash

git clone https://github.com/neovim/neovim.git ~/.config/nvim/neovim

cd ~/.config/nvim/neovim

# git reset --hard bf9ad5db962509f3434726b7ad84d31d002fb8a3

sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/

make CMAKE_BUILD_TYPE=RelWithDebInfo

sudo make install

sudo rm -rf ~/.config/nvim/neovim
