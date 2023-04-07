## Lazyman Release Notes

All that is needed to bootstrap `nvim-Lazyman` is the [lazyman.sh](https://github.com/doctorfree/nvim-lazyman/releases/download/v1.0.2r3/lazyman.sh) script. Download and execute to get started.

The Lazyman project can be used to install, initialize, manage, and explore multiple Neovim configurations. Several popular Neovim configurations are supported including:

- [AstroNvim](https://astronvim.com)
- [Kickstart](https://github.com/nvim-lua/kickstart.nvim)
- [LazyVim](https://github.com/LazyVim/LazyVim).
- [LunarVim](https://github.com/LunarVim/LunarVim)
- [MagicVim](https://gitlab.com/GitMaster210/magicvim)
- [NvChad](https://nvchad.com/)
- [SpaceVim](https://spacevim.org)

In addition, Lazyman installs and initializes the Lazyman Neovim configuration, a richly configured Neovim environment using Lua, Lazy, and Mason to support highlighting, completion, diagnostics, and more for many programming languages.

The installation and initialization of Neovim configurations are placed in separate directories and managed using the `NVIM_APPNAME` environment variable.

The `lazyman` command is installed as `~/.local/bin/lazyman` and can be used to install, initialize, remove, and manage multiple Neovim configurations.

- [Installation](#installation)
  - [Bootstrap](#bootstrap)
  - [Postinstall](#postinstall)
  - [Manual installation](#manual-installation)
    - [Neovim 0.9 and later](#neovim-09-and-later)
    - [Neovim 0.8 and earlier](#neovim-08-and-earlier)
- [Supported configurations](#supported-configurations)
- [Removal](#removal)

## Installation

The Lazyman installation process consists of three steps:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
$HOME/.config/nvim-Lazyman/lazyman.sh -I
```

These steps:

1. Download the Lazyman Neovim configuration
1. Initialize the Lazyman Neovim configuration which:
   1. Installs Homebrew if not already installed
   1. Installs the latest version of Neovim if not already installed
   1. Installs and initializes configured Neovim plugins
1. Installs language servers and tools for coding diagnostics (optional)

Lazyman uses [Homebrew](https://brew.sh) to install Neovim if there is not already Neovim 0.9 or later installed and in the execution path. In addition, Lazyman uses Homebrew to install Neovim dependencies, language servers, and tools. The Homebrew install of Neovim compiles the current version of Neovim from source to ensure we have the necessary capabilities. This process can be time consuming.

### Bootstrap

To bootstrap the Lazyman Neovim configuration manager, the `lazyman.sh` script must be downloaded and executed. The download can be performed with `git`, `curl`, `wget`, copy/paste, or [download the release artifact](https://github.com/doctorfree/nvim-lazyman/releases/download/v1.0.2r3/lazyman.sh).

The recommended bootstrap procedure is with `git`:

Clone the repository with `git` and execute `lazyman.sh`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

Alternatively, download the `lazyman.sh` script and execute it. For example, with `curl`:

```bash
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazyman/main/lazyman.sh > /tmp/lazyman.sh
chmod 755 /tmp/lazyman.sh
/tmp/lazyman.sh
rm -f /tmp/lazyman.sh
```

Once the `lazyman.sh` script has been downloaded and executed, subsequent Lazyman operations can be performed with the `lazyman` command found in `~/.local/bin/lazyman`. The manual page can be viewed with `man lazyman`.

If you do not wish to use this automated installation and initialization method then manual installation and initialization is described below. Manual installation and initialization may be preferred by those who do not wish to upgrade Neovim to the latest version or by those who do not wish to use Homebrew.

Neovim 0.8 and earlier users, see the [Neovim 0.8](#neovim-08-and-earlier) section below for manual installation and initialization of `nvim-Lazyman`.

Neovim 0.9 and later users, see the [Neovim 0.9](#neovim-09-and-later) section below for manual installation and initialization of `nvim-Lazyman`.

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable to control where Neovim looks for its configuration.

### Postinstall

The Lazyman bootstrap process ensures the latest version of Neovim is installed but does not install language servers and tools necessary for coding diagnostics. To install these tools, execute:

```bash
lazyman -I
```

### Manual installation

If you do not wish to use the automated installation and initialization provided by the `lazyman.sh` script, manual installation and initialization can be performed. Check the version of the installed Neovim with:

```bash
nvim --version
```

Follow the manual installation procedure for your version of Neovim. Manual installation of Lazyman will not install language servers or tools. Mason will take care of some of this for you but a manual installation should be accompanied by a manual upgrade of Neovim and installation of desired language servers and tools. You're on your own but you can always just run `lazyman` to perform an automated install and upgrade followed by `lazyman -I` to install language servers and tools.

#### Neovim 0.9 and later

In Neovim 0.9 and later there is a new feature enabling control of the Neovim configuration location through the `NVIM_APPNAME` environment variable. For example, `export NVIM_APPNAME="nvim-Lazyman"` in your shell would make `nvim` look for its configuration in `~/.config/nvim-Lazyman` rather than `~/.config/nvim`. This new feature can be used to easily switch between Neovim configurations.

If you wish to use this repository in conjunction with a setup utilizing the `NVIM_APPNAME` feature then the manual installation process can be performed by:

- Backup any pre-existing `nvim-Lazyman` config folder

```bash
[ -d $HOME/.config/nvim-Lazyman ] && {
  echo "Backing up existing nvim-Lazyman config as $HOME/.config/nvim-Lazyman-bak$$"
  mv $HOME/.config/nvim-Lazyman $HOME/.config/nvim-Lazyman-bak$$
}
```

- Clone the `nvim-lazyman` Neovim configuration repository and initialize Neovim

```bash
echo "Cloning nvim-lazyman configuration into $HOME/.config/nvim-Lazyman"
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
export NVIM_APPNAME="nvim-Lazyman"
nvim --headless "+Lazy! sync" +qa
nvim
```

#### Neovim 0.8 and earlier

**[Note:]** Lazyman bootstrap will install the latest version of Neovim even if an older version is already installed. A manual install of Lazyman will not upgrade Neovim. Neovim 0.8 and earlier does not support some of the features Lazyman provides.

Users of Neovim 0.8 and earlier can manually install and initialize `nvim-Lazyman` following these instructions:

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

## Supported configurations

After installing and initializing `lazyman`, additional Neovim configurations can be installed and initialized using the `lazyman` command.

Currently the following Neovim configurations are supported:

- [nvim-Lazyman](https://github.com/doctorfree/nvim-lazyman)
  - See the [Installation section](#installation) above
  - Install and initialize with `lazyman -i`
- [AstroNvim](https://astronvim.com)
  - Install and initialize with `lazyman -a`
  - An example [AstroNvim community]() plugins configuration is added
- [Kickstart](https://github.com/nvim-lua/kickstart.nvim)
  - Install and initialize with `lazyman -k`
- [LazyVim](https://github.com/LazyVim/LazyVim)
  - The [LazyVim starter](https://github.com/LazyVim/starter) configuration
  - Install and initialize with `lazyman -l`
- [LunarVim](https://github.com/LunarVim/LunarVim)
  - Does not use the LunarVim installer script, installs in `~/.config/nvim-LunarVim`
  - Install and initialize with `lazyman -v`
- [MagicVim](https://gitlab.com/GitMaster210/magicvim)
  - Uses Packer plugin manager, installs in `~/.config/nvim-MagicVim`
  - Install and initialize with `lazyman -M`
- [NvChad](https://nvchad.com)
  - The [NvChad example](https://github.com/NvChad/example_config) configuration
  - Install and initialize with `lazyman -c`
- [SpaceVim](https://spacevim.org)
  - Does not use the SpaceVim installer script, installs in `~/.config/nvim-SpaceVim`
  - Install and initialize with `lazyman -s`

Run `lazyman` without any arguments to view an interactive menu system.

## Removal

The [lazyman](lazyman.sh) command can be used to remove previously installed Neovim configurations with the `-r` command line option. For example, to remove a previously installed `LazyVim` configuration, its initialized plugins, state, and cache, execute the following command:

```bash
lazyman -l -R
```

To remove the `nvim-Lazyman` configuration and associated plugins, state, and cache:

```bash
lazyman -R -N nvim-Lazyman
```

All `lazyman` operations can be performed as a dry run with `-n`. For example, to see which `LazyVim` folders would be removed without removing any:

```bash
lazyman -n -l -R
```
