## Neovim lazy config

My Neovim configuration using Lua, Lazy, and Mason.

### Installation

```shell
[ -d $HOME/.config/nvim ] && mv $HOME/.config/nvim $HOME/.config/nvim-bak$$
git clone https://github.com/doctorfree/nvim-lazy $HOME/.config/nvim
[ -d $HOME/.local/share/nvim ] && mv $HOME/.local/share/nvim $HOME/.local/share/nvim-bak$$
$HOME/.config/nvim/lazy.sh install
nvim
```
