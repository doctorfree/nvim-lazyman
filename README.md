## Neovim lazy config

My Neovim configuration using Lua, Lazy, and Mason.

### Installation

Backup any existing Neovim configuration, state, and installed plugins:

```bash
[ -d $HOME/.config/nvim ] && {
  echo "Backing up Neovim config as $HOME/.config/nvim-bak$$"
  mv $HOME/.config/nvim $HOME/.config/nvim-bak$$
}
[ -d $HOME/.local/state/nvim ] && {
  echo "Backing up Neovim state as $HOME/.local/state/nvim-bak$$"
  mv $HOME/.local/state/nvim $HOME/.local/state/nvim-bak$$
}
[ -d $HOME/.local/share/nvim ] && {
  echo "Backing up Neovim installed plugins as $HOME/.local/share/nvim-bak$$"
  mv $HOME/.local/share/nvim $HOME/.local/share/nvim-bak$$
}
```

Clone the `nvim-lazy` Neovim configuration repository and initialize Neovim:

```bash
git clone https://github.com/doctorfree/nvim-lazy $HOME/.config/nvim
$HOME/.config/nvim/lazy.sh install
nvim
```

Mason will install several packages required by the new Neovim configuration.

After installing and initializing the Neovim configuration, perform a health
check while in Neovim with `:checkhealth`. Examine any warnings or errors and
perform any necessary remedial actions such as installing missing packages
or resolving keymap conflicts.
