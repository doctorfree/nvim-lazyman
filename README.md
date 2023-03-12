## Neovim lazy configuration manager

This repository includes my Neovim configuration using Lua, Lazy, and Mason.
In addition, it can be used to install, initialize, and/or remove multiple
Neovim configurations. Several popular Neovim configurations are supported
including [AstroNvim](https://astronvim.com),
[Kickstart](https://github.com/nvim-lua/kickstart.nvim), and
[LazyVim](https://github.com/LazyVim/LazyVim).

When used in conjunction with Neovim 0.9 or later the installation and
initialization of Neovim configurations are placed in separate directories
and managed using the `NVIM_APPNAME` environment variable.

The `lazyman` command is installed as `~/.local/bin/lazyman` and can be used
to install, initialize, remove, and manage multiple configuratons.

## Table of Contents

- [Installation](#installation)
    - [Quickstart](#quickstart)
    - [Neovim 0.9 and later](#neovim-09-and-later)
    - [Neovim 0.8 and earlier](#neovim-08-and-earlier)
- [Supported configurations](#supported-configurations)
    - [Unsupported configurations](#unsupported-configurations)
- [Motivation](#motivation)
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

Clone the repository and execute `install.sh`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-lazyman
$HOME/.config/nvim-lazyman/install.sh
```
Alternatively, download the `install.sh` script and execute it.
For example, with `curl`:

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazyman/main/install.sh > /tmp/install-lazyman.sh
chmod 755 /tmp/install-lazyman.sh
/tmp/install-lazyman.sh
rm -f /tmp/install-lazyman.sh
```

The convenience script to install and initialize `nvim-lazyman` is provided at
[install.sh](install.sh). The automated install and initialization performed
by `install.sh` executes the following on your system:

<details><summary>View the install.sh script</summary>

```bash
#!/bin/bash
#
# lazyman - install and initialize Lazy Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>
#

usage() {
  printf "\nUsage: lazyman [-a] [-b branch] [-k] [-l] [-m] [-n] [-P]"
  printf "\n               [-q] [-rR] [-U url] [-N nvimdir] [-y] [-u]"
  printf "\nWhere:"
  printf "\n\t-a indicates install all supported Neovim configurations"
  printf "\n\t-b 'branch' specifies an nvim-lazyman git branch to checkout"
  printf "\n\t-k indicates install and initialize Kickstart"
  printf "\n\t-l indicates install and initialize LazyVim"
  printf "\n\t-m indicates install and initialize nvim-multi"
  printf "\n\t-n indicates dry run, don't actually do anything, just printf's"
  printf "\n\t-p indicates use Packer rather than Lazy to initialize"
  printf "\n\t-q indicates quiet install"
  printf "\n\t-r indicates remove the previously installed configuration"
  printf "\n\t-R indicates remove previously installed configuration and backups"
  printf "\n\t-U 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n\t-N 'nvimdir' specifies the folder name to use for the config given by -U"
  printf "\n\t-y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n\t-u displays this usage message and exits"
  printf "\nWithout arguments install and initialize nvim-lazyman\n\n"
  exit 1
}

create_backups() {
  ndir="$1"
  [ -d $HOME/.config/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} config as $HOME/.config/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv $HOME/.config/${ndir} $HOME/.config/${ndir}-bak$$
    }
  }

  [ -d $HOME/.local/share/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} plugins as $HOME/.local/share/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv $HOME/.local/share/${ndir} $HOME/.local/share/${ndir}-bak$$
    }
  }

  [ -d $HOME/.local/state/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} state as $HOME/.local/state/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv $HOME/.local/state/${ndir} $HOME/.local/state/${ndir}-bak$$
    }
  }
  [ -d $HOME/.cache/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Backing up existing ${ndir} cache as $HOME/.cache/${ndir}-bak$$"
    }
    [ "${tellme}" ] || {
      mv $HOME/.cache/${ndir} $HOME/.cache/${ndir}-bak$$
    }
  }
}

remove_config() {
  ndir="$1"
  [ "${proceed}" ] || {
    printf "\nYou have requested removal of the Neovim configuration at:"
    printf "\n\t$HOME/.config/${ndir}\n"
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

  [ -d $HOME/.config/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} config at $HOME/.config/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf $HOME/.config/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} config backups"
    }
    [ "${tellme}" ] || {
      rm -rf $HOME/.config/${ndir}-bak*
    }
  }

  [ -d $HOME/.local/share/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} plugins at $HOME/.local/share/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/share/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} plugins backups"
    }
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/share/${ndir}-bak*
    }
  }

  [ -d $HOME/.local/state/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} state at $HOME/.local/state/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/state/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} state backups"
    }
    [ "${tellme}" ] || {
      rm -rf $HOME/.local/state/${ndir}-bak*
    }
  }

  [ -d $HOME/.cache/${ndir} ] && {
    [ "${quiet}" ] || {
      echo "Removing existing ${ndir} cache at $HOME/.cache/${ndir}"
    }
    [ "${tellme}" ] || {
      rm -rf $HOME/.cache/${ndir}
    }
  }
  [ "${removeall}" ] && {
    [ "${quiet}" ] || {
      echo "Removing any ${ndir} cache backups"
    }
    [ "${tellme}" ] || {
      rm -rf $HOME/.cache/${ndir}-bak*
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
        printf "\nHomebrew brew executable could not be located\n"
        usage
      fi
    fi
  fi
  BREW_EXE="${HOMEBREW_HOME}/bin/brew"
}

all=
branch=
debug=
tellme=
lazyvim=
multivim=
packer=
proceed=
quiet=
remove=
removeall=
url=
name=
lazymandir="nvim-lazyman"
kickstartdir="nvim-kickstart"
lazyvimdir="nvim-LazyVim"
multidir="nvim-multi"
nvimdir="${lazymandir}"
while getopts "ab:dklmnPqrRU:N:yu" flag; do
    case $flag in
        a)
            all=1
            lazyvim=1
            multivim=1
            nvimdir="${lazymandir} ${lazyvimdir} ${multidir}"
            ;;
        b)
            branch="${OPTARG}"
            ;;
        d)
            debug="-d"
            ;;
        k)
            kickstart=1
            nvimdir="${kickstartdir}"
            ;;
        l)
            lazyvim=1
            nvimdir="${lazyvimdir}"
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
        U)
            url="${OPTARG}"
            ;;
        N)
            name="${OPTARG}"
            ;;
        y)
            proceed=1
            ;;
        u)
            usage
            ;;
    esac
done

[ "${name}" ] && nvimdir="${name}"
[ "${url}" ] && {
  [ "${name}" ] || {
    echo "ERROR: '-U url' must be accompanied with '-N nvimdir'"
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

[ "${all}" ] && {
    [ "${url}" ] || [ "${lazyvim}" ] || [ "${multivim}" ] || [ "${kickstart}" ] && {
    echo "The -a option cannot be used in conjunction with -U, -k, -l, or -m"
    usage
  }
}

have_git=$(type -p git)
[ "${have_git}" ] || {
  echo "Install script requires git but git not found"
  echo "Please install git and retry this install script"
  usage
}

if [ -d $HOME/.config/${lazymandir} ]
then
  git -C $HOME/.config/${lazymandir} pull > /dev/null 2>&1
  [ "${branch}" ] && {
    git -C $HOME/.config/${lazymandir} checkout ${branch} > /dev/null 2>&1
  }
else
  [ "${quiet}" ] || {
    printf "\nCloning nvim-lazyman configuration into $HOME/.config/${lazymandir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-lazyman $HOME/.config/${lazymandir} > /dev/null 2>&1
    [ "${branch}" ] && {
      git -C $HOME/.config/${lazymandir} checkout ${branch} > /dev/null 2>&1
    }
  }
  [ "${quiet}" ] || printf "done"
fi

have_nvim=$(type -p nvim)
[ "${have_nvim}" ] || {
  [ "${quiet}" ] || {
    printf "\nInstall script requires neovim but nvim not found\n"
  }
  if [ -x ${HOME}/.config/${lazymandir}/scripts/install_neovim.sh ]
  then
    ${HOME}/.config/${lazymandir}/scripts/install_neovim.sh ${debug}
    BREW_EXE=
    set_brew
    [ -x ${BREW_EXE} ] || {
      echo "Homebrew brew executable not in PATH"
      usage
    }
    eval "$(${BREW_EXE} shellenv)"
    have_nvim=$(type -p nvim)
    [ "${have_nvim}" ] || {
      echo "Still cannot find neovim even after Homebrew install"
      echo "Something went wrong, install neovim and retry this install script"
      usage
    }
  else
    echo "Please install neovim and retry this install script"
    usage
  fi
}

nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')

if (( $(echo "$nvim_version < 0.9 " |bc -l) )); then
  [ "${all}" ] && {
    echo "Installation of all supported Neovim configurations is not supported"
    echo "with Neovim version less than 0.9. Exiting without installing."
    usage
  }
  [ "${quiet}" ] || {
    echo "Detected Neovim version ${nvim_version} does not support the"
    echo "NVIM_APPNAME environment variable. To utilize the full functionality"
    echo "of the lazyman Lazy Neovim Manager, upgrade to Neovim 0.9 or later."
  }
  have_appname=
  nvimdir="nvim"
else
  have_appname=1
fi
[ "${have_appname}" ] || {
  [ "${url}" ] || [ "${lazyvim}" ] || [ "${multivim}" ] || [ "${kickstart}" ] || {
    ln -s ${HOME}/.config/${lazymandir} ${HOME}/.config/nvim
  }
}

for neovim in ${nvimdir}
do
  [ "${neovim}" == "${lazymandir}" ] && continue
  create_backups ${neovim}
done

[ "${kickstart}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning Kickstart configuration into $HOME/.config/${kickstartdir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/nvim-lua/kickstart.nvim.git \
      $HOME/.config/${kickstartdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${kickstartdir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}
[ "${lazyvim}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning LazyVim starter configuration into $HOME/.config/${lazyvimdir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/LazyVim/starter $HOME/.config/${lazyvimdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${lazyvimdir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}
[ "${multivim}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning nvim-multi configuration into $HOME/.config/${multidir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      https://github.com/doctorfree/nvim-multi $HOME/.config/${multidir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${multidir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}
[ "${url}" ] && {
  [ "${quiet}" ] || {
    printf "\nCloning ${url} into $HOME/.config/${nvimdir} ... "
  }
  [ "${tellme}" ] || {
    git clone \
      ${url} $HOME/.config/${nvimdir} > /dev/null 2>&1
    [ "${have_appname}" ] || ln -s ${HOME}/.config/${nvimdir} ${HOME}/.config/nvim
  }
  [ "${quiet}" ] || printf "done"
}

[ "${packer}" ] && {
  PACKER="$HOME/.local/share/${nvimdir}/site/pack/packer/start/packer.nvim"
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
    printf "\nInitializing newly installed ${neovim} Neovim configuration ... "
  }
  export NVIM_APPNAME="${neovim}"
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
  [ "${quiet}" ] || {
    printf "done\n"
  }
done

[ "${quiet}" ] || {
  echo "Installing lazyman command in $HOME/.local/bin"
}
[ "${tellme}" ] || {
  [ -d $HOME/.local/bin ] || mkdir -p $HOME/.local/bin
  [ -f $HOME/.config/nvim-lazyman/install.sh ] && {
    cp $HOME/.config/nvim-lazyman/install.sh $HOME/.local/bin/lazyman
    chmod 755 $HOME/.local/bin/lazyman
    [ "${quiet}" ] || {
      echo ""
      echo "Use $HOME/.local/bin/lazyman to explore Lazy Neovim configurations."
      echo "Review the lazyman usage message with:"
      printf "\n\t$HOME/.local/bin/lazyman -u\n"
    }
  }
}

[ "${tellme}" ] || ulimit -n ${currlimit}

[ "${nvimdir}" == "nvim" ] || {
  [ "${quiet}" ] || {
    printf "\nAdd the following line to your .bashrc or .zshrc shell initialization:"
    if [ "${lazyvim}" ]
    then
      printf '\n\texport NVIM_APPNAME="nvim-LazyVim"\n'
    elif [ "${multivim}" ]
    then
      printf '\n\texport NVIM_APPNAME="nvim-multi"\n'
    elif [ "${url}" ]
    then
      printf "\n\texport NVIM_APPNAME=\"${nvimdir}\"\n"
    else
      printf '\n\texport NVIM_APPNAME="nvim-lazyman"\n'
    fi
  }
}
echo ""

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

### Supported configurations

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
- [nvim-multi](https://github.com/doctorfree/nvim-multi)
    - Multiple Neovim configurations included in a single repository
    - Install and initialize with `lazyman -m`

#### Unsupported configurations

To install and initialize a Neovim configuration not supported out-of-the-box
by Lazyman, use the `-U url` and `-N nvimdir` options to `lazyman`.
For example, to install and initialize the Neovim configuration hosted at
https://github.com/chadcat7/kodo execute the command:

```bash
lazyman -U https://github.com/chadcat7/kodo -N nvide
```

After this completes, set `NVIM_APPNAME` to the `-N` option value:

```bash
export NVIM_APPNAME="nvide"
```

As is the case with many Neovim configurations, an error occurs during
initialization and subsequent startup. I was able to get this configuration
to start without error by commenting out a couple of lines in
`~/.config/nvide/lua/ui/dash/init.lua` but this disabled the dashboard.

Similarly, `lazyman -U https://github.com/Allaman/nvim -N nvim-allaman`
initialized and came up with the Neovim dashboard but displays some
message on startup I have not yet figured out how to eliminate.

Unsupported Neovim configurations can be installed and initialized in this
manner but, as you see, there may be issues. Often the issue is not with
the Neovim configuration but simply an installation or initialization
process that Lazyman does not yet support. For example, the excellent
Neovim configuration framework at https://github.com/NvChad/NvChad
includes some user interaction during initialization. I have not yet
figured out how to automate that type of initialization.

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

The [install.sh](install.sh) script is located in `~/.config/nvim-lazyman`.
It installs itself as `$HOME/.local/bin/lazyman`. If `$HOME/.local/bin` is
in your execution `PATH` then `lazyman` can be executed from the command
line as simply `lazyman`.

The `lazyman` command can be used to install and initialize multiple Neovim
configurations. For example, to install and initialize the LazyVim starter
configuration execute the command `lazyman -l`:

The usage message for `lazyman`:

```
Usage: lazyman [-a] [-b branch] [-k] [-l] [-m] [-n] [-P]
               [-q] [-rR] [-U url] [-N nvimdir] [-y] [-u]
Where:
	-a indicates install all supported Neovim configurations
	-b 'branch' specifies an nvim-lazyman git branch to checkout
	-k indicates install and initialize Kickstart
	-l indicates install and initialize LazyVim
	-m indicates install and initialize nvim-multi
	-n indicates dry run, don't actually do anything, just printf's
	-p indicates use Packer rather than Lazy to initialize
	-q indicates quiet install
	-r indicates remove the previously installed configuration
	-R indicates remove previously installed configuration and backups
	-U 'url' specifies a URL to a Neovim configuration git repository
	-N 'nvimdir' specifies the folder name to use for the config given by -U
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
