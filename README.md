## Neovim lazy config

My Neovim configuration using Lua, Lazy, and Mason.

## Table of Contents

- [Installation](#installation)
    - [Quickstart](#quickstart)
    - [Neovim 0.9 and later](#neovim-09-and-later)
    - [Neovim 0.8 and earlier](#neovim-08-and-earlier)
- [Notes](#notes)
    - [Mason](#mason)
    - [Health check](#health-check)
    - [Symbolic links](#symbolic-links)
    - [Shell initialization setup](#shell-initialization-setup)
    - [Using aliases](#using-aliases)
- [Neovim install](#neovim-install)

### Installation

#### Quickstart

This one-liner will install and initialize `nvim-lazy` on all versions of Neovim.

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazy/main/install.sh | bash
```

The convenience script to install and initialize `nvim-lazy` is provided at
[install.sh](install.sh). The automated install and initialization performed
by the above `curl` command executes the following on your system:

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
```

If you do not wish to use the above quick start method then manual installation
and initialization is described below.

Neovim 0.8 and earlier users, see the [Neovim 0.8](#neovim-08-and-earlier)
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

#### Mason

The first time `nvim` is executed Mason will install several packages
required by the new Neovim configuration. Please be patient.

#### Health check

After installing and initializing the Neovim configuration, perform a health
check while in Neovim with `:checkhealth`. Examine any warnings or errors and
perform any necessary remedial actions such as installing missing packages
or resolving keymap conflicts.

#### Symbolic links

The `NVIM_APPNAME` procedure described above allows you to keep any existing
`~/.config/nvim` and install multiple Neovim configurations, each in its own
separate `~/.config/$NVIM_APPNAME` folder. Note, however, that if you create
a symbolic link from `~/.config/$NVIM_APPNAME` to `~/.config/nvim` with the
intention of using the `nvim-lazy` configuration without need of `NVIM_APPNAME`
then you will also need to symlink `~/.local/share/$NVIM_APPNAME` and
`~/.local/state/$NVIM_APPNAME`.

#### Shell initialization setup

**[Important Note:]** If `nvim-lazy` is installed and initialized using the
`NVIM_APPNAME` environment variable as described above then it is
important to add the setting and export of this variable to your shell's
initialization file (e.g. `.bashrc` for Bash users, `.zshrc` for Zsh users).
Add the line `export NVIM_APPNAME="nvim-lazy"` to your shell initialization
and re-login or source the initialization file. If this is not done then
subsequent invocations of `nvim` will attempt to use `~/.config/nvim` rather
than `~/.config/nvim-lazy`.

#### Using aliases

In addition to exporting NVIM_APPNAME in your shell initialization file, you
may wish to create aliases to execute with the various Neovim configurations
you have installed. For example, aliases could be created to use Neovim
configurations installed in `~/.config/nvim-python` and `~/.config/nvim-work`
as follows:

```bash
alias vip='function _vip(){ export NVIM_APPNAME="nvim-python"; nvim $* };_vip'
alias viw='function _viw(){ export NVIM_APPNAME="nvim-work"; nvim $* };_viw'
```

After sourcing these aliases in your shell, to invoke Neovim with the Python
configuration run `vip filename.py` and to invoke Neovim with your Work config
run `viw proposal.md`.

An example `~/.aliases` file might include:

```bash
command -v nvim > /dev/null && {
  alias vi='nvim'
  [ -d $HOME/.config/nvim-lazy ] && {
    alias vil='function _vil(){ export NVIM_APPNAME="nvim-lazy"; nvim $* };_vil'
  }
  [ -d $HOME/.config/nvim-multi ] && {
    alias mvim='function _mvim(){ export NVIM_APPNAME="nvim-multi"; nvim $* };_mvim'
  }
  [ -d $HOME/.config/nvim-LazyVim ] && {
    alias lvim='function _lvim(){ export NVIM_APPNAME="nvim-LazyVim"; nvim $* };_lvim'
  }
}
```

### Neovim install

A convenience script to build and install Neovim is provided at
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

This can be executed (as a user with `sudo` privilege) with:

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazy/main/install_neovim.sh | bash
```

Homebrew users on Linux or macOS can install Neovim with:

```bash
brew install --HEAD neovim
```
