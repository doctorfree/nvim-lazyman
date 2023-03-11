## Neovim lazy configuration manager

This repository includes my Neovim configuration using Lua, Lazy, and Mason.
In addition, it can be used to install, initialize, and/or remove multiple
Lazy Neovim configurations.

When used in conjunction with Neovim 0.9 or later the installation and
initialization of Neovim configurations are placed in separate directories
and managed using the `NVIM_APPNAME` environment variable.

Currently only these Neovim configurations are supported:

- [nvim-lazyman](https://github.com/doctorfree/nvim-lazyman)
    - This Neovim configuration
    - Installed by default
- [nvim-multi](https://github.com/doctorfree/nvim-multi)
    - Multiple Neovim configurations included in a single repository
    - Install and initialize with `~/.config/nvim-lazyman/install.sh -m`
- [LazyVim](https://github.com/LazyVim/LazyVim)
    - The [LazyVim starter](https://github.com/LazyVim/starter) configuration
    - Install and initialize with `~/.config/nvim-lazyman/install.sh -l`

Additional Lazy Neovim configurations will be added over time.

## Table of Contents

- [Installation](#installation)
    - [Quickstart](#quickstart)
    - [Neovim 0.9 and later](#neovim-09-and-later)
    - [Neovim 0.8 and earlier](#neovim-08-and-earlier)
- [Usage](#usage)
- [Notes](#notes)
    - [Mason](#mason)
    - [Health check](#health-check)
    - [Symbolic links](#symbolic-links)
    - [Shell initialization setup](#shell-initialization-setup)
    - [Using aliases](#using-aliases)
- [Neovim install](#neovim-install)
- [Removal](#removal)

### Installation

#### Quickstart

This one-liner will install and initialize `nvim-lazyman` on all versions of Neovim.

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazyman/main/install.sh | bash
```

The convenience script to install and initialize `nvim-lazyman` is provided at
[install.sh](install.sh). The automated install and initialization performed
by the above `curl` command executes the following on your system:

<details><summary>View the install.sh script</summary>

```bash
#!/bin/bash
#
# install.sh - install and initialize Lazy Neovim configurations

usage() {
  printf "\nUsage: install.sh [-l] [-m] [-n] [-r] [-y] [-u]"
  printf "\nWhere:"
  printf "\n\t-l indicates install and initialize LazyVim"
  printf "\n\t-m indicates install and initialize nvim-multi"
  printf "\n\t-n indicates dry run, don't actually do anything, just printf's"
  printf "\n\t-r indicates remove the previously installed configuration"
  printf "\n\t-y indicates do not prompt, answer 'yes' to any prompt"
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
proceed=
remove=
lazymandir="nvim-lazyman"
nvimdir="${lazymandir}"
while getopts "lmnryu" flag; do
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
        y)
            proceed=1
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
  [ "${proceed}" ] || {
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
  }
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
```

</details>

If you do not wish to use the above quick start method then manual installation
and initialization is described below.

Neovim 0.8 and earlier users, see the [Neovim 0.8](#neovim-08-and-earlier)
section below for installation and initialization of `nvim-lazyman`.

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable
to control where Neovim looks for its configuration.

#### Neovim 0.9 and later

In Neovim 0.9 and later there is a new feature enabling control of the
Neovim configuration location through the `NVIM_APPNAME` environment
variable. For example, `export NVIM_APPNAME="nvim-lazyman"` in your shell
would make `nvim` look for its configuration in `~/.config/nvim-lazyman`
rather than `~/.config/nvim`. This new feature can be used to easily
switch between Neovim configurations.

If you wish to use this repository in conjunction with a setup utilizing the
`NVIM_APPNAME` feature then the installation process can be performed by:

- Backup any pre-existing `nvim-lazyman` config folder

```bash
[ -d $HOME/.config/nvim-lazyman ] && {
  echo "Backing up existing nvim-lazyman config as $HOME/.config/nvim-lazyman-bak$$"
  mv $HOME/.config/nvim-lazyman $HOME/.config/nvim-lazyman-bak$$
}
```

- Clone the `nvim-lazyman` Neovim configuration repository and initialize Neovim

```bash
echo "Cloning nvim-lazyman configuration into $HOME/.config/nvim-lazyman"
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-lazyman
export NVIM_APPNAME="nvim-lazyman"
nvim --headless "+Lazy! install" +qa
nvim
```

#### Neovim 0.8 and earlier

Users of Neovim 0.8 and earlier can install and initialize `nvim-lazyman`
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

- Clone the `nvim-lazyman` Neovim configuration repository and initialize Neovim

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim
nvim --headless "+Lazy! install" +qa
nvim
```

### Usage

The [install.sh](install.sh) script is located in `~/.config/nvim-lazyman`.
This script can be used to install and initialize multiple Neovim configurations.
For example, to install and initialize the LazyVim starter configuration
execute the command:

```bash
~/.config/nvim-lazyman/install.sh -l
```

The usage message for `install.sh`:

```
Usage: install.sh [-l] [-m] [-n] [-r] [-y] [-u]
Where:
	-l indicates install and initialize LazyVim
	-m indicates install and initialize nvim-multi
	-n indicates dry run, don't actually do anything, just printf's
	-r indicates remove the previously installed configuration
	-y indicates do not prompt, answer 'yes' to any prompt
	-u displays this usage message and exits
Without arguments install and initialize nvim-lazyman

```

### Notes

#### Mason

The first time `nvim` is executed Mason will install several packages required
by the new Neovim configuration. Please be patient. If you exit Neovim prior
to completion of the Mason installs, it will resume the next session.

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
intention of using the `nvim-lazyman` configuration without need of `NVIM_APPNAME`
then you will also need to symlink `~/.local/share/$NVIM_APPNAME` and
`~/.local/state/$NVIM_APPNAME`.

#### Shell initialization setup

**[Important Note:]** If `nvim-lazyman` is installed and initialized using the
`NVIM_APPNAME` environment variable as described above then it is
important to add the setting and export of this variable to your shell's
initialization file (e.g. `.bashrc` for Bash users, `.zshrc` for Zsh users).
Add the line `export NVIM_APPNAME="nvim-lazyman"` to your shell initialization
and re-login or source the initialization file. If this is not done then
subsequent invocations of `nvim` will attempt to use `~/.config/nvim` rather
than `~/.config/nvim-lazyman`.

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
  [ -d $HOME/.config/nvim-lazyman ] && {
    alias vil='function _vil(){ export NVIM_APPNAME="nvim-lazyman"; nvim $* };_vil'
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
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazyman/main/install_neovim.sh | bash
```

Homebrew users on Linux or macOS can install Neovim with:

```bash
brew install --HEAD neovim
```

### Removal

The [install.sh](install.sh) script can be used to remove previously installed
Neovim configurations with the `-r` command line option. For example, to remove
a previously installed `LazyVim` configuration, its initialized plugins, state,
and cache, execute the following command:

```bash
$HOME/.config/nvim-lazyman/install.sh -l -r
```

To remove the `nvim-lazyman` configuration and associated plugins, state, and cache:

```bash
$HOME/.config/nvim-lazyman/install.sh -r
```

All `install.sh` operations can be performed as a dry run with `-n`. For
example, to see which `LazyVim` folders would be removed without removing any:

```bash
$HOME/.config/nvim-lazyman/install.sh -n -l -r
```
