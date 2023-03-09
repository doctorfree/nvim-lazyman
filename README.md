## Neovim lazy config

My Neovim configuration using Lua, Lazy, and Mason.

### Installation

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable
to control where Neovim looks for its configuration. See the section
[NVIM_APPNAME](#nvimappname) below for installation and initialization
of `nvim-lazy` using `NVIM_APPNAME`.

Users of Neovim 0.8 and earlier can install and initialize `nvim-lazy`
following these instructions:

- Backup any existing Neovim configuration, state, and installed plugins

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

- Clone the `nvim-lazy` Neovim configuration repository and initialize Neovim

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

### NVIM_APPNAME

In Neovim 0.9 and later there is a new feature enabling control of the
Neovim configuration location through the `NVIM_APPNAME` environment
variable. For example, `export NVIM_APPNAME="nvim-lazy"` in your shell
would make `nvim` look for its configuration in `~/.config/nvim-lazy`
rather than `~/.config/nvim`. This new feature can be used to easily
switch between Neovim configurations.

If you wish to use this repository in conjunction with a setup utilizing the
`NVIM_APPNAME` feature then the installation process described above might
better be performed with something like the following:

- Backup any pre-existing `nvim-lazy` config folder

```bash
[ -d $HOME/.config/nvim-lazy ] && {
  echo "Backing up existing nvim-lazy config as $HOME/.config/nvim-lazy-bak$$"
  mv $HOME/.config/nvim-lazy $HOME/.config/nvim-lazy-bak$$
}
```

- Clone the `nvim-lazy` Neovim configuration repository and initialize Neovim

```bash
echo "Cloning nvim-lazy configuration into $HOME/.config/nvim-lazy"
git clone https://github.com/doctorfree/nvim-lazy $HOME/.config/nvim-lazy
export NVIM_APPNAME="nvim-lazy"
$HOME/.config/nvim-lazy/lazy.sh install
nvim
```

This procedure allows you to keep any existing `~/.config/nvim` and install
multiple Neovim configurations, each in its own separate
`~/.config/$NVIM_APPNAME` folder.
