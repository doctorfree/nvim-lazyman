## Neovim lazy config

My Neovim configuration using Lua, Lazy, and Mason.

## Table of Contents

- [Installation](#installation)
    - [Neovim 0.9 and later](#neovim-0.9-and-later)
    - [Neovim 0.8 and earlier](#neovim-0.8-and-earlier)
- [Notes](#notes)
- [Neovim install](#neovim-install)

### Installation

**[Quickstart]**

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazy/main/install.sh | bash
```

Neovim 0.8 and earlier users, see the [Neovim 0.8](#neovim-0.8-and-earlier)
section below for installation and initialization of `nvim-lazy`.

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable
to control where Neovim looks for its configuration.

#### Neovim 0.9 and later

In Neovim 0.9 and later there is a new feature enabling control of the
Neovim configuration location through the `NVIM_APPNAME` environment
variable. For example, `export NVIM_APPNAME="nvim-lazy"` in your shell
would make `nvim` look for its configuration in `~/.config/nvim-lazy`
rather than `~/.config/nvim`. This new feature can be used to easily
switch between Neovim configurations.

If you wish to use this repository in conjunction with a setup utilizing the
`NVIM_APPNAME` feature then the installation process can be performed by:

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

A convenience script to install and initialize `nvim-lazy` is provided at
[install.sh](install.sh). An automated install and initialization can be
performed by downloading this script and executing it.

```bash
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
```

Installation and initialization can also be accomplished with the single command:

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazy/main/install.sh | bash
```

#### Neovim 0.8 and earlier

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

### Notes

Mason will install several packages required by the new Neovim configuration.

After installing and initializing the Neovim configuration, perform a health
check while in Neovim with `:checkhealth`. Examine any warnings or errors and
perform any necessary remedial actions such as installing missing packages
or resolving keymap conflicts.

This procedure allows you to keep any existing `~/.config/nvim` and install
multiple Neovim configurations, each in its own separate
`~/.config/$NVIM_APPNAME` folder.

**[Important Not:]** If `nvim-lazy` is installed and initialized using the
`NVIM_APPNAME` environment variable as described in this section then it is
important to add the setting and export of this variable to your shell's
initialization file (e.g. `.bashrc` for Bash users, `.zshrc` for Zsh users).
Add the line `export NVIM_APPNAME="nvim-lazy"` to your shell initialization
and re-login or source the initialization file. If this is not done then
subsequent invocations of `nvim` will attempt to use `~/.config/nvim` rather
than `~/.config/nvim-lazy`.

### Neovim install

Note also that a convenience script to install Neovim is provided at
[install_neovim.sh](install_neovim.sh):

```bash
[ -d $HOME/src ] || mkdir -p $HOME/src
git clone https://github.com/neovim/neovim.git $HOME/src/neovim
cd $HOME/neovim
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
sudo rm -rf $HOME/src/neovim
```
