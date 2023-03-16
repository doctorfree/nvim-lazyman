## Neovim lazy configuration manager

The Lazyman project can be used to install, initialize, and manage multiple
Neovim configurations. Several popular Neovim configurations are supported
including [AstroNvim](https://astronvim.com), [NvChad](https://nvchad.com/),
[Kickstart](https://github.com/nvim-lua/kickstart.nvim), and
[LazyVim](https://github.com/LazyVim/LazyVim).

In addition, Lazyman installs and initializes the Lazyman Neovim configuration,
a richly configured Neovim environment using Lua, Lazy, and Mason to support
highlighting, completion, diagnostics, and more for many programming languages.

The installation and initialization of Neovim configurations are placed in
separate directories and managed using the `NVIM_APPNAME` environment variable.

The `lazyman` command is installed as `~/.local/bin/lazyman` and can be used
to install, initialize, remove, and manage multiple Neovim configuratons.

## Table of Contents

- [Installation](#installation)
  - [Bootstrap](#bootstrap)
  - [Postinstall](#postinstall)
  - [Manual installation](#manual-installation)
    - [Neovim 0.9 and later](#neovim-09-and-later)
    - [Neovim 0.8 and earlier](#neovim-08-and-earlier)
- [Supported configurations](#supported-configurations)
  - [Unsupported configurations](#unsupported-configurations)
- [Motivation](#motivation)
- [Usage](#usage)
  - [Manual](#manual)
- [Notes](#notes)
  - [Mason](#mason)
  - [Health check](#health-check)
  - [Symbolic links](#symbolic-links)
  - [Shell initialization setup](#shell-initialization-setup)
  - [Using aliases](#using-aliases)
- [Neovim install](#neovim-install)
- [Removal](#removal)
- [Appendix](#appendix)

### Installation

The Lazyman installation process consists of three steps:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-lazyman
$HOME/.config/nvim-lazyman/lazyman.sh
$HOME/.config/nvim-lazyman/lazyman.sh -I
```

These steps:

1. Download the Lazyman Neovim configuration
1. Initialize the Lazyman Neovim configuration which:
   1. Installs Homebrew if not already installed
   1. Installs the latest version of Neovim if not already installed
   1. Installs and initializes configured Neovim plugins
1. Installs language servers and tools for coding diagnostics (optional)

Lazyman uses [Homebrew](https://brew.sh) to install Neovim if there is not
already Neovim 0.9 or later installed and in the execution path.
In addition, Lazyman uses Homebrew to install Neovim dependencies,
language servers, and tools. The Homebrew install of Neovim compiles
the current version of Neovim from source to ensure we have the
necessary capabilities. This process can be time consuming.

See the [Appendix section](#appendix) below to examine the
[lazyman command](lazyman.sh) and associated
[Neovim install script](scripts/neovim.sh).

#### Bootstrap

To bootstrap the Lazyman Neovim configuration manager, the `lazyman.sh` script
must be downloaded and executed. The download can be performed with `git`,
`curl`, `wget`, or a copy/paste.

The recommended bootstrap procedure is with `git`:

Clone the repository with `git` and execute `lazyman.sh`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-lazyman
$HOME/.config/nvim-lazyman/lazyman.sh
```

Alternatively, download the `lazyman.sh` script and execute it.
For example, with `curl`:

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazyman/main/lazyman.sh > /tmp/lazyman.sh
chmod 755 /tmp/lazyman.sh
/tmp/lazyman.sh
rm -f /tmp/lazyman.sh
```

Once the `lazyman.sh` script has been downloaded and executed, subsequent
Lazyman operations can be performed with the `lazyman` command found in
`~/.local/bin/lazyman`. The manual page can be viewed with `man lazyman`.

See the [Appendix section](#appendix) below to examine the
[lazyman command](lazyman.sh) and associated
[Neovim install script](scripts/neovim.sh).

If you do not wish to use this automated installation and initialization
method then manual installation and initialization is described below.
Manual installation and initialization may be preferred by those who
do not wish to upgrade Neovim to the latest version or by those who
do not wish to use Homebrew.

Neovim 0.8 and earlier users, see the [Neovim 0.8](#neovim-08-and-earlier)
section below for manual installation and initialization of `nvim-lazyman`.

Neovim 0.9 and later users, see the [Neovim 0.9](#neovim-09-and-later)
section below for manual installation and initialization of `nvim-lazyman`.

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable
to control where Neovim looks for its configuration.

#### Postinstall

The Lazyman bootstrap process ensures the latest version of Neovim is
installed but does not install language servers and tools necessary
for coding diagnostics. To install these tools, execute:

```bash
lazyman -I
```

#### Manual installation

If you do not wish to use the automated installation and initialization
provided by the `lazyman.sh` script, manual installation and initialization
can be performed. Check the version of the installed Neovim with:

```bash
nvim --version
```

Follow the manual installation procedure for your version of Neovim.
Manual installation of Lazyman will not install language servers or
tools. Mason will take care of some of this for you but a manual
installation should be accompanied by a manual upgrade of Neovim
and installation of desired language servers and tools. You're on
your own but you can always just run `lazyman` to perform an
automated install and upgrade followed by `lazyman -I` to install
language servers and tools.

##### Neovim 0.9 and later

In Neovim 0.9 and later there is a new feature enabling control of the
Neovim configuration location through the `NVIM_APPNAME` environment
variable. For example, `export NVIM_APPNAME="nvim-lazyman"` in your shell
would make `nvim` look for its configuration in `~/.config/nvim-lazyman`
rather than `~/.config/nvim`. This new feature can be used to easily
switch between Neovim configurations.

If you wish to use this repository in conjunction with a setup utilizing the
`NVIM_APPNAME` feature then the manual installation process can be performed by:

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
nvim --headless "+Lazy! sync" +qa
nvim
```

##### Neovim 0.8 and earlier

**[Note:]** Lazyman bootstrap will install the latest version of
Neovim even if an older version is already installed. A manual install
of Lazyman will not upgrade Neovim. Neovim 0.8 and earlier does not
support some of the features Lazyman provides.

Users of Neovim 0.8 and earlier can manually install and initialize
`nvim-lazyman` following these instructions:

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
nvim --headless "+Lazy! sync" +qa
nvim
```

### Supported configurations

After installing and initializing `lazyman`, additional Neovim configurations
can be installed and initialized using the `lazyman` command.

Currently the following Neovim configurations are supported:

- [nvim-lazyman](https://github.com/doctorfree/nvim-lazyman)
  - See the [Installation section](#installation) above
- [AstroNvim](https://astronvim.com)
  - Install and initialize with `lazyman -a`
  - An example [AstroNvim community]() plugins configuration is added
- [Kickstart](https://github.com/nvim-lua/kickstart.nvim)
  - Install and initialize with `lazyman -k`
- [LazyVim](https://github.com/LazyVim/LazyVim)
  - The [LazyVim starter](https://github.com/LazyVim/starter) configuration
  - Install and initialize with `lazyman -l`
- [NvChad](https://nvchad.com)
  - The [NvChad example](https://github.com/NvChad/example_config) configuration
  - Install and initialize with `lazyman -c`
- [nvim-multi](https://github.com/doctorfree/nvim-multi)
  - Multiple Neovim configurations included in a single repository
  - Install and initialize with `lazyman -m`

#### Unsupported configurations

To install and initialize a Neovim configuration not supported out-of-the-box
by Lazyman, use the `-C url` and `-N nvimdir` options to `lazyman`. After the
installation and initialization completes, set the `NVIM_APPNAME`
environment variable to use the newly created Neovim configuration:

```bash
export NVIM_APPNAME="<nvimdir>"
```

where `<nvimdir>` is the argument provided to `-N` above.

Unsupported Neovim configurations can be installed and initialized in this
manner but there are often errors and issues such as an initialization
process that Lazyman does not yet support. However, you may find it useful
or interesting to explore, resolve errors and issues, and contribute to the
ever expanding set of Lazyman supported Neovim configurations.

Feel free to open an issue at
https://github.com/doctorfree/nvim-lazyman/issues to help tackle any problems
installing or initializing Neovim configurations with Lazyman.

### Motivation

I'm a lazy man. I wanted to try out a bunch of nifty looking Neovim
configurations but I didn't want to spend a lot of time setting each
of them up and managing them. Instead, I spent a lot of time writing
an install/initialize/manage tool I could use: `lazyman`.

Although the primary motivation for creating this project was to provide
an easy way to try out various Neovim configurations, `lazyman` can be used
to setup and manage Neovim configurations tailored for specific purposes.
A Neovim configuration for work, one for school, one for Python development,
another for git repository maintenance and markdown editing, one with language
servers and debugging tools, one for your mom.

It's also pretty interesting and educational to see how some of these
**Neovim Wizards** setup their configurations.

### Usage

The [lazyman.sh](lazyman.sh) script is located in `~/.config/nvim-lazyman`.
It installs itself as `$HOME/.local/bin/lazyman`. If `$HOME/.local/bin` is
in your execution `PATH` then `lazyman` can be executed from the command
line as simply `lazyman`. The manual page can be viewed with `man lazyman`.

The `lazyman` command can be used to install and initialize multiple Neovim
configurations. For example, to install and initialize the LazyVim starter
configuration execute the command `lazyman -l`. To install and initialize
all supported Lazyman Neovim configuratons execute `lazyman -A`. To update
a previously installed Lazyman Neovim configuration execute
`lazyman -U -N <nvimdir>` or `lazyman -U -A` to update all configurations.

To remove a Lazyman Neovim configuration execute `lazyman -r -N <nvimdir>`.
To remove the configuration and all its backups, `lazyman -R -N <nvimdir>`.
To remove all installed Lazyman Neovim configurations and their backups
without being prompted to proceed, execute `lazyman -A -R -y`.

The usage message for `lazyman`:

```
Usage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-k] [-l] [-m] [-n] [-P] [-q]
               [-I] [-L cmd] [-rR] [-C url] [-N nvimdir] [-U] [-y] [-u]
Where:
	-A indicates install all supported Neovim configurations
	-a indicates install and initialize AstroNvim
	-b 'branch' specifies an nvim-lazyman git branch to checkout
	-c indicates install and initialize NvChad
	-d indicates debug mode
	-k indicates install and initialize Kickstart
	-l indicates install and initialize LazyVim
	-m indicates install and initialize nvim-multi
	-n indicates dry run, don't actually do anything, just printf's
	-p indicates use Packer rather than Lazy to initialize
	-q indicates quiet install
	-I indicates install language servers and tools for coding diagnostics
	-L 'cmd' specifies a Lazy command to run in the selected configuration
	-r indicates remove the previously installed configuration
	-R indicates remove previously installed configuration and backups
	-C 'url' specifies a URL to a Neovim configuration git repository
	-N 'nvimdir' specifies the folder name to use for the config given by -C
	-U indicates update an existing configuration
	-y indicates do not prompt, answer 'yes' to any prompt
	-u displays this usage message and exits
Commands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'
Without arguments lazyman installs and initializes nvim-lazyman
```

#### Manual

The `lazyman` bootstrap process installs a `lazyman` manual page in
`~/.local/share/man/man1/lazyman.1`. This man page includes a synopsis
of the `lazyman` command line options, a brief description of its use,
a description of each command line option, and several example invocations.

The `lazyman` manual page can be viewed with `man lazyman`.

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
    alias lmvim='function _lmvim(){ export NVIM_APPNAME="nvim-lazyman"; nvim $* };_lmvim'
  }
  [ -d $HOME/.config/nvim-astro ] && {
    alias avim='function _avim(){ export NVIM_APPNAME="nvim-astro"; nvim $* };_avim'
  }
  [ -d $HOME/.config/nvim-multi ] && {
    alias mvim='function _mvim(){ export NVIM_APPNAME="nvim-multi"; nvim $* };_mvim'
  }
  [ -d $HOME/.config/nvim-LazyVim ] && {
    alias lvim='function _lvim(){ export NVIM_APPNAME="nvim-LazyVim"; nvim $* };_lvim'
  }
  [ -d $HOME/.config/nvim-kickstart ] && {
    alias kvim='function _kvim(){ export NVIM_APPNAME="nvim-kickstart"; nvim $* };_kvim'
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

The [lazyman.sh](lazyman.sh) script can be used to remove previously installed
Neovim configurations with the `-r` command line option. For example, to remove
a previously installed `LazyVim` configuration, its initialized plugins, state,
and cache, execute the following command:

```bash
$HOME/.config/nvim-lazyman/lazyman.sh -l -r
```

To remove the `nvim-lazyman` configuration and associated plugins, state, and cache:

```bash
$HOME/.config/nvim-lazyman/lazyman.sh -r
```

All `lazyman.sh` operations can be performed as a dry run with `-n`. For
example, to see which `LazyVim` folders would be removed without removing any:

```bash
$HOME/.config/nvim-lazyman/lazyman.sh -n -l -r
```

### Appendix

The convenience script to install and initialize `nvim-lazyman` is provided at
[lazyman.sh](lazyman.sh). The automated install and initialization performed
by `lazyman.sh` executes the following on your system:

<details><summary>View the lazyman.sh script</summary>

```bash
#!/bin/bash
#
# lazyman - install, initialize, and manage Lazy Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>
#
# shellcheck disable=SC2001,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059

usage() {
  printf "\nUsage: lazyman [-A] [-a] [-b branch] [-d] [-k] [-l] [-m] [-n] [-P] [-q]"
  printf "\n               [-I] [-L cmd] [-rR] [-C url] [-N nvimdir] [-U] [-y] [-u]"
  printf "\nWhere:"
  printf "\n\t-A indicates install all supported Neovim configurations"
  printf "\n\t-a indicates install and initialize AstroNvim"
  printf "\n\t-b 'branch' specifies an nvim-lazyman git branch to checkout"
  printf "\n\t-d indicates debug mode"
  printf "\n\t-k indicates install and initialize Kickstart"
  printf "\n\t-l indicates install and initialize LazyVim"
  printf "\n\t-m indicates install and initialize nvim-multi"
  printf "\n\t-n indicates dry run, don't actually do anything, just printf's"
  printf "\n\t-p indicates use Packer rather than Lazy to initialize"
  printf "\n\t-q indicates quiet install"
  printf "\n\t-I indicates install language servers and tools for coding diagnostics"
  printf "\n\t-L 'cmd' specifies a Lazy command to run in the selected configuration"
  printf "\n\t-r indicates remove the previously installed configuration"
  printf "\n\t-R indicates remove previously installed configuration and backups"
  printf "\n\t-C 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n\t-N 'nvimdir' specifies the folder name to use for the config given by -C"
  printf "\n\t-U indicates update an existing configuration"
  printf "\n\t-y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n\t-u displays this usage message and exits"
  printf "\nCommands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'"
  printf "\nWithout arguments lazyman installs and initializes nvim-lazyman\n"
  exit 1
}

create_backups() {
  ndir="$1"
  [ -d ${HOME}/.config/${ndir} ] && {
    [ "${quiet}" ] || {
    echo "Backing up existing ${ndir} config as ${HOME}/.config/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv ${HOME}/.config/${ndir} ${HOME}/.config/${ndir}-bak$$
    }
  }

  [ -d ${HOME}/.local/share/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} plugins as ${HOME}/.local/share/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv ${HOME}/.local/share/${ndir} ${HOME}/.local/share/${ndir}-bak$$
    }
  }

  [ -d ${HOME}/.local/state/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} state as ${HOME}/.local/state/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv ${HOME}/.local/state/${ndir} ${HOME}/.local/state/${ndir}-bak$$
    }
  }
  [ -d ${HOME}/.cache/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} cache as ${HOME}/.cache/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv ${HOME}/.cache/${ndir} ${HOME}/.cache/${ndir}-bak$$
    }
  }
}

run_command() {
  neodir="$1"
	comm="$2"
  export NVIM_APPNAME="${neodir}"
  [ "${tellme}" ] || {
    if [ "${debug}" ]
    then
      if [ "${packer}" ]
      then
        nvim --headless "+Packer${comm}" +qa
      else
        nvim --headless "+Lazy! ${comm}" +qa
      fi
    else
      if [ "${packer}" ]
      then
        nvim --headless "+Packer${comm}" +qa > /dev/null 2>&1
      else
        nvim --headless "+Lazy! ${comm}" +qa > /dev/null 2>&1
      fi
    fi
  }
}

init_neovim() {
  neodir="$1"
  export NVIM_APPNAME="${neodir}"
  [ "${tellme}" ] || {
    if [ "${debug}" ]
    then
      if [ "${packer}" ]
      then
        nvim --headless "+PackerSync" +qa
        nvim --headless "+PackerInstall" +qa
      else
        nvim --headless "+Lazy! sync" +qa
        nvim --headless "+Lazy! update" +qa
        nvim --headless "+Lazy! install" +qa
      fi
    else
      if [ "${packer}" ]
      then
        nvim --headless "+PackerSync" +qa > /dev/null 2>&1
        nvim --headless "+PackerInstall" +qa > /dev/null 2>&1
      else
        nvim --headless "+Lazy! sync" +qa > /dev/null 2>&1
        nvim --headless "+Lazy! update" +qa > /dev/null 2>&1
        nvim --headless "+Lazy! install" +qa > /dev/null 2>&1
      fi
    fi
    # nvim -c "checkhealth" -c 'qa' > /dev/null 2>&1
  }
}

remove_config() {
  ndir="$1"
  [ "${proceed}" ] || {
    printf "\nYou have requested removal of the Neovim configuration at:"
    printf "\n\t${HOME}/.config/${ndir}\n"
    printf "\nConfirm removal of the Neovim ${ndir} configuration\n"
    while true
    do
      read -p "Remove ${ndir} ? (y/n) " yn
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

  [ -d ${HOME}/.config/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.config/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} config backups"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.config/${ndir}-bak*
    }
  }

  [ -d ${HOME}/.local/share/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} plugins at ${HOME}/.local/share/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.local/share/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} plugins backups"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.local/share/${ndir}-bak*
    }
  }

  [ -d ${HOME}/.local/state/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} state at ${HOME}/.local/state/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.local/state/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} state backups"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.local/state/${ndir}-bak*
    }
  }

  [ -d ${HOME}/.cache/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} cache at ${HOME}/.cache/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.cache/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} cache backups"
    }
    [ "${tellme}" ] || {
      rm -rf ${HOME}/.cache/${ndir}-bak*
    }
  }
}

lazy_command() {
  ndir="$1"
	comm="$2"
  [ -d ${HOME}/.config/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Running 'Lazy ${comm}' in ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "${tellme}" ] || {
      init_neovim "${ndir}"
    }
  }
}

update_config() {
  ndir="$1"
  [ -d ${HOME}/.config/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Updating existing ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "${tellme}" ] || {
      git -C ${HOME}/.config/${ndir} pull > /dev/null 2>&1
      init_neovim "${ndir}"
    }
  }
}

set_brew() {
  if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]
  then
    HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
  else
    if [ -x /usr/local/bin/brew ]
    then
      HOMEBREW_HOME="/usr/local"
    else
      if [ -x /opt/homebrew/bin/brew ]
      then
        HOMEBREW_HOME="/opt/homebrew"
      else
        HOMEBREW_HOME=
      fi
    fi
  fi
  if [ "${HOMEBREW_HOME}" ]
  then
    BREW_EXE=
  else
    BREW_EXE="${HOMEBREW_HOME}/bin/brew"
  fi
}

all=
branch=
command=
debug=
langservers=
tellme=
astronvim=
kickstart=
lazyvim=
multivim=
packer=
proceed=
quiet=
remove=
removeall=
update=
url=
name=
lazymandir="nvim-lazyman"
astronvimdir="nvim-astro"
kickstartdir="nvim-kickstart"
lazyvimdir="nvim-LazyVim"
multidir="nvim-multi"
nvimdir="${lazymandir}"
while getopts "aAb:dIklmnL:PqrRUC:N:yu" flag; do
    case $flag in
        a)
            astronvim=1
            nvimdir="${astronvimdir}"
            ;;
        A)
            all=1
            astronvim=1
            kickstart=1
            lazyvim=1
            multivim=1
            nvimdir="${lazymandir} ${lazyvimdir} ${multidir} \
                     ${kickstartdir} ${astronvimdir}"
            ;;
        b)
            branch="${OPTARG}"
            ;;
        d)
            debug="-d"
            ;;
        I)
            langservers=1
            ;;
        k)
            kickstart=1
            nvimdir="${kickstartdir}"
            ;;
        l)
            lazyvim=1
            nvimdir="${lazyvimdir}"
            ;;
        L)
            command="${OPTARG}"
            ;;
        m)
            multivim=1
            nvimdir="${multidir}"
            ;;
        n)
            tellme=1
            ;;
        P)
            packer=1
            ;;
        q)
            quiet=1
            ;;
        r)
            remove=1
            ;;
        R)
            remove=1
            removeall=1
            ;;
        C)
            url="${OPTARG}"
            ;;
        N)
            name="${OPTARG}"
            ;;
        U)
            update=1
            ;;
        y)
            proceed=1
            ;;
        u)
            usage
            ;;
        *)
					  echo "Unrecognized option. Exiting."
            usage
            ;;
    esac
done

[ "${langservers}" ] && {
  if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]
  then
    ${HOME}/.config/${lazymandir}/scripts/install_neovim.sh ${debug} -l
	  exit 0
	fi
	exit 1
}

[ "${name}" ] && nvimdir="${name}"
[ "${url}" ] && {
  [ "${name}" ] || {
    echo "ERROR: '-C url' must be accompanied with '-N nvimdir'"
    usage
  }
}

[ "${nvimdir}" ] || {
  echo "Something went wrong, nvimdir not set. Exiting."
  usage
}

[ "${remove}" ] && {
  for neovim in ${nvimdir}
  do
    remove_config ${neovim}
  done
  exit 0
}

[ "${command}" ] && {
  [ "${all}" ] || [ "${name}" ] || {
    [ "${NVIM_APPNAME}" ] && nvimdir="${NVIM_APPNAME}"
  }
  for neovim in ${nvimdir}
  do
    run_command ${neovim} ${command}
  done
  exit 0
}

[ "${update}" ] && {
  [ "${all}" ] || [ "${name}" ] || {
    [ "${NVIM_APPNAME}" ] && nvimdir="${NVIM_APPNAME}"
  }
  for neovim in ${nvimdir}
  do
    update_config ${neovim}
  done
  exit 0
}

have_git=$(type -p git)
[ "${have_git}" ] || {
  echo "Lazyman requires git but git not found"
  echo "Please install git and retry this lazyman command"
  usage
}

if [ -d ${HOME}/.config/${lazymandir} ]
then
  git -C ${HOME}/.config/${lazymandir} pull > /dev/null 2>&1
  [ "${branch}" ] && {
    git -C ${HOME}/.config/${lazymandir} checkout ${branch} > /dev/null 2>&1
  }
else
  [ "${quiet}" ] || {
    printf "\nCloning nvim-lazyman configuration into ${HOME}/.config/${lazymandir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-lazyman ${HOME}/.config/${lazymandir} > /dev/null 2>&1
    [ "${branch}" ] && {
      git -C ${HOME}/.config/${lazymandir} checkout ${branch} > /dev/null 2>&1
    }
  }
  [ "${quiet}" ] || printf "done\n"
fi

if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]
then
  ${HOME}/.config/${lazymandir}/scripts/install_neovim.sh ${debug}
  BREW_EXE=
  set_brew
  [ "${BREW_EXE}" ] && eval "$(${BREW_EXE} shellenv)"
  have_nvim=$(type -p nvim)
  [ "${have_nvim}" ] || {
    echo "ERROR: cannot locate neovim"
    echo "Install neovim and retry this install script"
    usage
  }
else
  echo "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh not executable"
  echo "Please check the Lazyman installation and retry this install script"
  usage
fi

for neovim in ${nvimdir}
do
  [ "${neovim}" == "${lazymandir}" ] && continue
  create_backups ${neovim}
done

[ "${astronvim}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning AstroNvim configuration into ${HOME}/.config/${astronvimdir} ... "
  }
  [ "${tellme}" ] || {
    git clone https://github.com/AstroNvim/AstroNvim \
              ${HOME}/.config/${astronvimdir} > /dev/null 2>&1
    [ "${quiet}" ] || {
      printf "\nAdding user configuration into ${HOME}/.config/${astronvimdir}/lua/user ... "
    }
    git clone https://github.com/doctorfree/astronvim \
              ${HOME}/.config/${astronvimdir}/lua/user > /dev/null 2>&1
  }
  [ "${quiet}" ] || printf "done"
}
[ "${kickstart}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning Kickstart configuration into ${HOME}/.config/${kickstartdir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/nvim-lua/kickstart.nvim.git \
      ${HOME}/.config/${kickstartdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${kickstartdir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}
[ "${lazyvim}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning LazyVim starter configuration into ${HOME}/.config/${lazyvimdir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/LazyVim/starter ${HOME}/.config/${lazyvimdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${lazyvimdir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}
[ "${multivim}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning nvim-multi configuration into ${HOME}/.config/${multidir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-multi ${HOME}/.config/${multidir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${multidir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}
[ "${url}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning ${url} into ${HOME}/.config/${nvimdir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      ${url} ${HOME}/.config/${nvimdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${nvimdir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}

[ "${packer}" ] && {
  PACKER="${HOME}/.local/share/${nvimdir}/site/pack/packer/start/packer.nvim"
  [ -d "${PACKER}" ] || {
    git clone --depth 1 https://github.com/wbthomason/packer.nvim "${PACKER}"
  }
}

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
if [ ${hardlimit} -gt 4096 ]
then
  [ "${tellme}" ] || ulimit -n 4096
else
  [ "${tellme}" ] || ulimit -n ${hardlimit}
fi

for neovim in ${nvimdir}
do
  [ "${quiet}" ] || {
    printf "\n\nInitializing newly installed ${neovim} Neovim configuration ... "
  }
  init_neovim "${neovim}"
  [ "${quiet}" ] || printf "done\n"
done

[ "${tellme}" ] || ulimit -n ${currlimit}

lazyinst=
if [ -f ${HOME}/.local/bin/lazyman ]
then
  [ -f ${HOME}/.config/nvim-lazyman/lazyman.sh ] && {
    diff ${HOME}/.config/nvim-lazyman/lazyman.sh ${HOME}/.local/bin/lazyman > /dev/null || lazyinst=1
  }
else
  lazyinst=1
fi
[ "${lazyinst}" ] && {
  [ "${quiet}" ] || {
    echo "Installing lazyman command in ${HOME}/.local/bin"
    echo ""
    echo "Use ${HOME}/.local/bin/lazyman to explore Lazy Neovim configurations."
    echo "Review the lazyman usage message with:"
    printf "\n\t${HOME}/.local/bin/lazyman -u\n"
  }
}

maninst=
if [ -f ${HOME}/.local/share/man/man1/lazyman.1 ]
then
  [ -f ${HOME}/.config/nvim-lazyman/man/man1/lazyman.1 ] && {
    diff ${HOME}/.config/nvim-lazyman/man/man1/lazyman.1 ${HOME}/.local/share/man/man1/lazyman.1 > /dev/null || maninst=1
  }
else
  maninst=1
fi
[ "${maninst}" ] && {
  [ "${quiet}" ] || {
    echo "Installing lazyman command in ${HOME}/.local/bin"
    echo ""
    echo "Use ${HOME}/.local/bin/lazyman to explore Lazy Neovim configurations."
    echo "Review the lazyman usage message with:"
    printf "\n\t${HOME}/.local/bin/lazyman -u\n"
  }
}

[ "${quiet}" ] || {
  printf "\nTo use this lazyman installed Neovim configuration as the default,"
  printf "\nadd a line like the following to your .bashrc or .zshrc:\n"
  if [ "${all}" ]
  then
    printf '\n\texport NVIM_APPNAME="nvim-lazyman"\n'
  else
    printf "\n\texport NVIM_APPNAME=\"${nvimdir}\"\n"
  fi
  printf "\nTo easily switch between lazyman installed Neovim configurations,"
  printf "\ncreate an alias for each configuration similar to the following:"
  if [ "${all}" ]
  then
    printf "\n\nalias lnvim='function _nvim(){ export NVIM_APPNAME=\"nvim-lazyman\"; nvim \$\* };_nvim'"
  elif [ "${astronvim}" ]
  then
    printf "\n\nalias avim='function _avim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_avim'"
  elif [ "${kickstart}" ]
  then
    printf "\n\nalias kvim='function _kvim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_kvim'"
  elif [ "${lazyvim}" ]
  then
    printf "\n\nalias lvim='function _lvim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_lvim'"
  elif [ "${multivim}" ]
  then
    printf "\n\nalias mvim='function _mvim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_mvim'"
  else
    printf "\n\nalias lmvim='function _lmvim(){ export NVIM_APPNAME=\"${nvimdir}\"; nvim \$\* };_lmvim'"
  fi
}
printf "\n\n"

[ "${tellme}" ] || {
  [ "${all}" ] && export NVIM_APPNAME="${lazymandir}"
  nvim
}

[ "${lazyinst}" ] && {
  [ "${tellme}" ] || {
    [ -d ${HOME}/.local/bin ] || mkdir -p ${HOME}/.local/bin
    [ -f ${HOME}/.config/nvim-lazyman/lazyman.sh ] && {
      cp ${HOME}/.config/nvim-lazyman/lazyman.sh ${HOME}/.local/bin/lazyman
      chmod 755 ${HOME}/.local/bin/lazyman
    }
  }
}
[ "${maninst}" ] && {
  [ "${tellme}" ] || {
    [ -d ${HOME}/.local/share/man ] || mkdir -p ${HOME}/.local/share/man
    [ -d ${HOME}/.local/share/man/man1 ] || mkdir -p ${HOME}/.local/share/man/man1
    [ -f ${HOME}/.config/nvim-lazyman/man/man1/lazyman.1 ] && {
      cp ${HOME}/.config/nvim-lazyman/man/man1/lazyman.1 ${HOME}/.local/share/man/man1/lazyman.1
      chmod 644 ${HOME}/.local/share/man/man1/lazyman.1
    }
  }
}
```

</details>

The `lazyman` command checks for a current version of Neovim and, if not found
or if the existing version is less than 0.9, invokes the `install_neovim.sh`
script to install Neovim, dependencies, language servers, and tools.

The automated Neovim install performed by
[install_neovim.sh](scripts/install_neovim.sh)
executes the following on your system:

<details><summary>View the install_neovim.sh script</summary>

```bash
#!/bin/bash
#
# Copyright (C) 2023 Ronald Record <ronaldrecord@gmail.com>
# Copyright (C) 2022 Michael Peter <michaeljohannpeter@gmail.com>
#
# Install Neovim and all dependencies for the Neovim config at:
#     https://github.com/doctorfree/nvim-lazyman
#
# shellcheck disable=SC2001,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059

DOC_HOMEBREW="https://docs.brew.sh"
BREW_EXE="brew"
export PATH=${HOME}/.local/bin:${PATH}

abort () {
  printf "\nERROR: %s\n" "$@" >&2
  exit 1
}

log () {
  [ "${quiet}" ] || {
    printf "\n\t%s" "$@"
  }
}

check_prerequisites () {
  if [ -z "${BASH_VERSION:-}" ]; then
    abort "Bash is required to interpret this script."
  fi

  if [[ $EUID -eq 0 ]]; then
    abort "Script must not be run as root user"
  fi

  arch=$(uname -m)
  if [[ $arch =~ "arm" || $arch =~ "aarch64" ]]; then
    abort "Only amd64/x86_64 is supported"
  fi
}

install_homebrew () {
  if ! command -v brew >/dev/null 2>&1; then
    [ "${debug}" ] && START_SECONDS=$(date +%s)
    log "Installing Homebrew ..."
    BREW_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
    have_curl=$(type -p curl)
    [ "${have_curl}" ] || abort "The curl command could not be located."
    curl -fsSL "${BREW_URL}" > /tmp/brew-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/brew-$$.sh
      curl -kfsSL "${BREW_URL}" > /tmp/brew-$$.sh
    }
    [ -f /tmp/brew-$$.sh ] || abort "Brew install script download failed"
    chmod 755 /tmp/brew-$$.sh
    NONINTERACTIVE=1 /bin/bash -c "/tmp/brew-$$.sh" > /dev/null 2>&1
    rm -f /tmp/brew-$$.sh
    export HOMEBREW_NO_INSTALL_CLEANUP=1
    export HOMEBREW_NO_ENV_HINTS=1
    export HOMEBREW_NO_AUTO_UPDATE=1
    [ "${quiet}" ] || printf " done"
    if [ -f ${HOME}/.profile ]
    then
      BASHINIT="${HOME}/.profile"
    else
      if [ -f ${HOME}/.bashrc ]
      then
        BASHINIT="${HOME}/.bashrc"
      else
        BASHINIT="${HOME}/.profile"
      fi
    fi
    if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]
    then
      HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
      BREW_EXE="${HOMEBREW_HOME}/bin/brew"
    else
      if [ -x /usr/local/bin/brew ]
      then
        HOMEBREW_HOME="/usr/local"
        BREW_EXE="${HOMEBREW_HOME}/bin/brew"
      else
        if [ -x /opt/homebrew/bin/brew ]
        then
          HOMEBREW_HOME="/opt/homebrew"
          BREW_EXE="${HOMEBREW_HOME}/bin/brew"
        else
          abort "Homebrew brew executable could not be located"
        fi
      fi
    fi

    if [ -f "${BASHINIT}" ]
    then
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "${BASHINIT}" > /dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
        echo 'fi' >> "${BASHINIT}"
      }
      grep "eval \"\$(zoxide init" "${BASHINIT}" > /dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >> "${BASHINIT}"
        echo '  eval "$(zoxide init bash)"' >> "${BASHINIT}"
        echo 'fi' >> "${BASHINIT}"
      }
    else
      echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" > "${BASHINIT}"
      echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${BASHINIT}"
      echo 'fi' >> "${BASHINIT}"
      echo 'if command -v zoxide > /dev/null; then' >> "${BASHINIT}"
      echo '  eval "$(zoxide init bash)"' >> "${BASHINIT}"
      echo 'fi' >> "${BASHINIT}"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "${HOME}/.zshrc" > /dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >> "${HOME}/.zshrc"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >> "${HOME}/.zshrc"
        echo 'fi' >> "${HOME}/.zshrc"
      }
      grep "eval \"\$(zoxide init" "${HOME}/.zshrc" > /dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >> "${HOME}/.zshrc"
        echo '  eval "$(zoxide init zsh)"' >> "${HOME}/.zshrc"
        echo 'fi' >> "${HOME}/.zshrc"
      }
    }
    eval "$(${BREW_EXE} shellenv)"
    have_brew=`type -p brew`
    [ "${have_brew}" ] && BREW_EXE="brew"
    [ "${debug}" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nHomebrew install elapsed time = ${ELAPSED}\n"
    }
    [ "${HOMEBREW_HOME}" ] || {
      brewpath=$(command -v brew)
      if [ $? -eq 0 ]
      then
        HOMEBREW_HOME=`dirname ${brewpath} | sed -e "s%/bin$%%"`
      else
        HOMEBREW_HOME="Unknown"
      fi
    }
    log "Homebrew installed in ${HOMEBREW_HOME}"
    log "See ${DOC_HOMEBREW}"
  fi
}

brew_install() {
	brewpkg="$1"
  if command -v ${brewpkg} >/dev/null 2>&1
	then
    log "Using previously installed ${brewpkg} ..."
	else
    log "Installing ${brewpkg} ..."
    [ "${debug}" ] && START_SECONDS=$(date +%s)
    ${BREW_EXE} install --quiet ${brewpkg} > /dev/null 2>&1
    [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet ${pkg} > /dev/null 2>&1
    if [ "${debug}" ]
    then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf " elapsed time = %s${ELAPSED}"
    fi
	fi
  [ "${quiet}" ] || printf " done"
}

install_neovim_dependencies () {
  [ "${quiet}" ] || printf "\nInstalling dependencies"
  PKGS="git curl tar unzip lazygit fd fzf xclip zoxide"
  for pkg in ${PKGS}
  do
		brew_install "${pkg}"
  done
  if command -v rg >/dev/null 2>&1
	then
    log "Using previously installed ripgrep ... done"
	else
	  brew_install ripgrep
	fi
  [ "${quiet}" ] || printf "\nDone"
}

install_neovim_head () {
  log "Compiling and installing Neovim, please be patient ..."
  if [ "${debug}" ]
  then
    START_SECONDS=$(date +%s)
  fi
  ${BREW_EXE} install -q --HEAD neovim > /dev/null 2>&1
  if [ "${debug}" ]
  then
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
    ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
    printf "\nInstall Neovim HEAD elapsed time = %s${ELAPSED}\n"
  fi
  [ "${quiet}" ] || printf " done"
}

check_python () {
  brew_path=$(command -v brew)
  brew_dir=$(dirname ${brew_path})
  if [ -x ${brew_dir}/python3 ]
  then
    PYTHON="${brew_dir}/python3"
  else
    PYTHON=$(command -v python3)
  fi
}

# Brew doesn't create a python symlink so we do so here
link_python () {
  python3_path=$(command -v python3)
  [ "${python3_path}" ] && {
    python_dir=`dirname ${python3_path}`
    if [ -w ${python_dir} ]
    then
      rm -f ${python_dir}/python
      ln -s ${python_dir}/python3 ${python_dir}/python
    else
      sudo rm -f ${python_dir}/python
      sudo ln -s ${python_dir}/python3 ${python_dir}/python
    fi
  }
}

install_language_servers() {
  [ "${quiet}" ] || printf "\nInstalling language servers and tools"
  have_npm=$(type -p npm)
  [ "${have_npm}" ] && {
    [ "${debug}" ] && START_SECONDS=$(date +%s)
	  for pkg in awk-language-server cssmodules-language-server eslint_d \
							 vim-language-server dockerfile-language-server-nodejs
		do
      if command -v ${pkg} >/dev/null 2>&1
	    then
        [ "${quiet}" ] || log "Using previously installed ${pkg} ..."
	    else
        [ "${quiet}" ] || log "Installing ${pkg} ..."
        npm i -g ${pkg} > /dev/null 2>&1
        [ "${quiet}" ] || printf " done"
			fi
		done
    [ "${debug}" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$(( FINISH_SECONDS - START_SECONDS ))
      ELAPSED=`eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
      printf "\nNpm tools install elapsed time = %s${ELAPSED}\n"
    }
  }
  # brew installed language servers
  for server in pyright vscode-langservers-extracted
  do
		brew_install "${server}"
  done
  if command -v tsserver >/dev/null 2>&1
	then
    log "Using previously installed typescript ... done"
	else
	  brew_install typescript
	fi
  for server in ansible bash haskell sql lua typescript yaml
  do
		brew_install "${server}-language-server"
  done

	brew_install ccls
  ${BREW_EXE} link --overwrite --quiet ccls > /dev/null 2>&1

  for pkg in golangci-lint jdtls marksman rust-analyzer shellcheck \
             taplo texlab stylua eslint prettier terraform black shfmt \
             yarn julia composer php deno
  do
		brew_install "${pkg}"
  done

  [ "${PYTHON}" ] && {
    ${PYTHON} -m pip install cmake-language-server > /dev/null 2>&1
    ${PYTHON} -m pip install python-lsp-server > /dev/null 2>&1
  }
  if command -v go >/dev/null 2>&1; then
    go install golang.org/x/tools/gopls@latest > /dev/null 2>&1
  fi
  [ "${quiet}" ] || printf "\nDone"
}

install_tools() {
  [ "${quiet}" ] || printf "\nInstalling Python dependencies"
  check_python
  [ "${PYTHON}" ] || {
    # Could not find Python, install with Homebrew
    log 'Installing Python with Homebrew ...'
    ${BREW_EXE} install --quiet python > /dev/null 2>&1
    [ $? -eq 0 ] || ${BREW_EXE} link --overwrite --quiet python > /dev/null 2>&1
    link_python
    check_python
    [ "${quiet}" ] || printf " done"
  }
  [ "${PYTHON}" ] && {
    log 'Upgrading pip, setuptools, wheel, doq, and pynvim ...'
    ${PYTHON} -m pip install --upgrade pip > /dev/null 2>&1
    ${PYTHON} -m pip install --upgrade setuptools > /dev/null 2>&1
    ${PYTHON} -m pip install wheel > /dev/null 2>&1
    ${PYTHON} -m pip install pynvim doq > /dev/null 2>&1
    [ "${quiet}" ] || printf " done"
  }
  [ "${quiet}" ] || printf "\nDone"

  [ "${quiet}" ] || printf "\nInstalling npm, treesitter, and cargo dependencies"
  have_npm=$(type -p npm)
  [ "${have_npm}" ] && {
    log "Installing Neovim npm package ..."
    npm i -g neovim > /dev/null 2>&1
    [ "${quiet}" ] || printf " done"

    log "Installing the icon font for Visual Studio Code ..."
    npm i -g @vscode/codicons > /dev/null 2>&1
    [ "${quiet}" ] || printf " done"
  }

	brew_install tree-sitter
  if command -v tree-sitter >/dev/null 2>&1; then
    tree-sitter init-config > /dev/null 2>&1
  fi

  if command -v cargo >/dev/null 2>&1; then
    cargo install rnix-lsp > /dev/null 2>&1
  fi

  GHUC="https://raw.githubusercontent.com"
  JETB_URL="${GHUC}/JetBrains/JetBrainsMono/master/install_manual.sh"
  [ "${quiet}" ] || printf "\n\tInstalling JetBrains Mono font ... "
  curl -fsSL "${JETB_URL}" > /tmp/jetb-$$.sh
  [ $? -eq 0 ] || {
    rm -f /tmp/jetb-$$.sh
    curl -kfsSL "${JETB_URL}" > /tmp/jetb-$$.sh
  }
  [ -f /tmp/jetb-$$.sh ] && {
    chmod 755 /tmp/jetb-$$.sh
    /bin/bash -c "/tmp/jetb-$$.sh" > /dev/null 2>&1
    rm -f /tmp/jetb-$$.sh
  }
  [ "${quiet}" ] || printf "done\nDone\n"
}

main () {
  if [ "${lang_tools}" ]
  then
    install_homebrew
    install_neovim_dependencies
    install_language_servers
    install_tools
  else
    check_prerequisites
    if command -v nvim >/dev/null 2>&1; then
      nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')
      if (( $(echo "$nvim_version < 0.9 " |bc -l) )); then
        log "Currently installed Neovim is less than version 0.9"
        [ "${nvim_head}" ] && {
          install_homebrew
          log "Installing latest Neovim version with Homebrew"
          install_neovim_head
        }
      fi
    else
      install_homebrew
      log "Neovim not found, installing Neovim with Homebrew"
      if [ "${nvim_head}" ]
      then
        install_neovim_head
      else
        brew_install neovim
      fi
    fi
  fi
}

nvim_head=1
quiet=
debug=
lang_tools=

while getopts "dhlq" flag; do
  case $flag in
    d)
        debug=1
        ;;
    h)
        nvim_head=
        ;;
    l)
        lang_tools=1
        ;;
    q)
        quiet=1
        ;;
    *)
        ;;
  esac
done

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
if [ ${hardlimit} -gt 4096 ]
then
  ulimit -n 4096
else
  ulimit -n ${hardlimit}
fi

[ "${debug}" ] && MAIN_START_SECONDS=$(date +%s)

main

[ "${debug}" ] && {
  MAIN_FINISH_SECONDS=$(date +%s)
  MAIN_ELAPSECS=$(( MAIN_FINISH_SECONDS - MAIN_START_SECONDS ))
  MAIN_ELAPSED=`eval "echo $(date -ud "@$MAIN_ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')"`
  printf "\nTotal elapsed time = %s${MAIN_ELAPSED}\n"
}

ulimit -n ${currlimit}
```
