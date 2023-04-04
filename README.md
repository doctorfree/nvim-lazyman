<h1 align="center">Lazyman Neovim Configuration Manager</h1>

<div align="center"><p>
    <a href="https://github.com/neovim/neovim">
      <img src="https://img.shields.io/badge/Neovim-0.9.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white" alt="Neovim"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/pulse">
      <img src="https://img.shields.io/github/last-commit/doctorfree/nvim-lazyman" alt="Last commit"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/issues">
      <img src="https://img.shields.io/github/issues/doctorfree/nvim.svg?style=flat-square&label=Issues&color=F05F40" alt="Github issues"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/actions/workflows/docker.yml">
      <img src="https://github.com/doctorfree/nvim-lazyman/actions/workflows/docker.yml/badge.svg" alt="CI Status"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/blob/main/LICENSE">
      <img src="https://img.shields.io/github/license/doctorfree/nvim-lazyman?style=flat-square&logo=MIT&label=License" alt="License"/>
    </a>
</p>

The Lazyman Neovim configuration management menu:
<p float="left">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/lazymenu.png" style="width:800px;height:600px;">
</p>

The nvims Neovim configuration fuzzy selector:
<p float="left">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/nvims.png" style="width:250px;height:400px;">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/nvims2.png" style="width:250px;height:400px;">
</p>

</div>

The Lazyman project can be used to install, initialize, and manage multiple
Neovim configurations. Several popular Neovim configurations are supported
including:

- [AstroNvim](https://astronvim.com)
- [Kickstart](https://github.com/nvim-lua/kickstart.nvim)
- [LazyVim](https://github.com/LazyVim/LazyVim).
- [LunarVim](https://github.com/LunarVim/LunarVim)
- [MagicVim](https://gitlab.com/GitMaster210/magicvim)
- [NvChad](https://nvchad.com/)
- [SpaceVim](https://spacevim.org)

In addition, Lazyman installs and initializes the Lazyman Neovim configuration,
a richly configured Neovim environment using Lua, Lazy, and Mason to support
highlighting, completion, diagnostics, and more for many programming languages.

The installation and initialization of Neovim configurations are placed in
separate directories and managed using the `NVIM_APPNAME` environment variable.

The `lazyman` command is installed as `~/.local/bin/lazyman` and can be used
to install, initialize, remove, and manage multiple Neovim configurations.

# Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
  - [Bootstrap](#bootstrap)
  - [Postinstall](#postinstall)
  - [Manual installation](#manual-installation)
    - [Neovim 0.9 and later](#neovim-09-and-later)
    - [Neovim 0.8 and earlier](#neovim-08-and-earlier)
  - [Debugging](#debugging)
- [Supported configurations](#supported-configurations)
  - [Unsupported configurations](#unsupported-configurations)
- [Motivation](#motivation)
  - [Inspiration](#inspiration)
- [Features](#features)
- [Usage](#usage)
  - [Supported plugin managers](#supported-plugin-managers)
  - [Updates](#updates)
  - [Lazyman manual](#lazyman-manual)
  - [Lazyman configuration](#lazyman-configuration)
- [Notes](#notes)
  - [Mason](#mason)
  - [Packer](#packer)
  - [Plug](#plug)
  - [Health check](#health-check)
  - [Symbolic links](#symbolic-links)
  - [Shell initialization setup](#shell-initialization-setup)
  - [The nvims fuzzy selector](#the-nvims-fuzzy-selector)
  - [Using aliases](#using-aliases)
  - [Using lazyman to explore configurations](#using-lazyman-to-explore-configurations)
- [Neovim install](#neovim-install)
- [Removal](#removal)
- [Appendix](#appendix)

## Requirements

The `lazyman` Neovim configuration manager requires Neovim 0.9 which is
currently the nightly build. The `lazyman` installation and initialization
process checks for Neovim 0.9 and, if not found, uses Homebrew to
install the nightly build of Neovim in the isolated Homebrew directory.

Lazyman requires a Unix or Linux operating system, Linux and macOS only,
and the Bash shell.

- Neovim 0.9 (automatically installed if not found)
- Unix/Linux/macOS
- Bash

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

Lazyman uses [Homebrew](https://brew.sh) to install Neovim if there is not
already Neovim 0.9 or later installed and in the execution path.
In addition, Lazyman uses Homebrew to install Neovim dependencies,
language servers, and tools. The Homebrew install of Neovim compiles
the current version of Neovim from source to ensure we have the
necessary capabilities. This process can be time consuming.

See the [Appendix section](#appendix) below to examine the
[lazyman command](lazyman.sh) and associated
[Neovim install script](scripts/neovim.sh).

### Bootstrap

To bootstrap the Lazyman Neovim configuration manager, the `lazyman.sh` script
must be downloaded and executed. The download can be performed with `git`,
`curl`, `wget`, or a copy/paste.

The recommended bootstrap procedure is with `git`:

Clone the repository with `git` and execute `lazyman.sh`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
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
section below for manual installation and initialization of `nvim-Lazyman`.

Neovim 0.9 and later users, see the [Neovim 0.9](#neovim-09-and-later)
section below for manual installation and initialization of `nvim-Lazyman`.

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable
to control where Neovim looks for its configuration.

### Postinstall

The Lazyman bootstrap process ensures the latest version of Neovim is
installed but does not install language servers and tools necessary
for coding diagnostics. To install these tools, execute:

```bash
lazyman -I
```

The installation of these additional tools with `lazyman -I` is optional
but recommended. Without performing this step, the `lazyman` installation
and initialization process can consume up to 1.5G in the Homebrew
folder (depending on whether Neovim needs to be installed). With the
additional `lazyman -I` installation step, up to 5.7G can be consumed.

### Manual installation

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

#### Neovim 0.9 and later

In Neovim 0.9 and later there is a new feature enabling control of the
Neovim configuration location through the `NVIM_APPNAME` environment
variable. For example, `export NVIM_APPNAME="nvim-Lazyman"` in your shell
would make `nvim` look for its configuration in `~/.config/nvim-Lazyman`
rather than `~/.config/nvim`. This new feature can be used to easily
switch between Neovim configurations.

If you wish to use this repository in conjunction with a setup utilizing the
`NVIM_APPNAME` feature then the manual installation process can be performed by:

- Backup any pre-existing `nvim-Lazyman` config folder

```bash
[ -d $HOME/.config/nvim-Lazyman ] && {
  echo "Backing up existing nvim-Lazyman config as $HOME/.config/nvim-Lazyman-bak$$"
  mv $HOME/.config/nvim-Lazyman $HOME/.config/nvim-Lazyman-bak$$
}
```

- Clone the `nvim-Lazyman` Neovim configuration repository and initialize Neovim

```bash
echo "Cloning nvim-Lazyman configuration into $HOME/.config/nvim-Lazyman"
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
export NVIM_APPNAME="nvim-Lazyman"
nvim --headless "+Lazy! sync" +qa
nvim
```

#### Neovim 0.8 and earlier

**[Note:]** Lazyman bootstrap will install the latest version of
Neovim even if an older version is already installed. A manual install
of Lazyman will not upgrade Neovim. Neovim 0.8 and earlier does not
support some of the features Lazyman provides.

Users of Neovim 0.8 and earlier can manually install and initialize
`nvim-Lazyman` following these instructions:

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

- Clone the `nvim-Lazyman` Neovim configuration repository and initialize Neovim

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim
nvim --headless "+Lazy! sync" +qa
nvim
```

### Debugging

The installation process requires Neovim 0.9 or later. If not present the
install script will attempt to compile current Neovim from source. This step
can fail for a variety of reasons. Most typically, the Neovim build failure
is due to missing libraries, header files, or development environment
components. To debug a failed Lazyman installation, first run the install
script in debug mode to try and determine the cause of the failure:

```bash
brew update
lazyman -d
```

The `lazyman -d` command should run the `install_neovim` script in debug mode
and any errors will be displayed. Alternatively, execute the Neovim install
command directly with `brew install --HEAD neovim` and view the output for
errors.

## Supported configurations

After installing and initializing `lazyman`, additional Neovim configurations
can be installed and initialized using the `lazyman` command.

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
  - Install and initialize with `lazyman -m`
- [NvChad](https://nvchad.com)
  - The [NvChad example](https://github.com/NvChad/example_config) configuration
  - Install and initialize with `lazyman -c`
- [SpaceVim](https://spacevim.org)
  - Does not use the SpaceVim installer script, installs in `~/.config/nvim-SpaceVim`
  - Install and initialize with `lazyman -s`

### Unsupported configurations

To install and initialize a Neovim configuration not supported out-of-the-box
by Lazyman, use the `-C url` and `-N nvimdir` options to `lazyman`. After the
installation and initialization completes, set the `NVIM_APPNAME`
environment variable to use the newly created Neovim configuration:

```bash
export NVIM_APPNAME="<nvimdir>"
```

where `<nvimdir>` is the argument provided to `-N` above.

For example, to install and initialize the Lazy based Neovim configuration
hosted at <https://github.com/appelgriebsch/Nv> and place it in `~/.config/nvim-Nv`,
execute the command:

```bash
lazyman -C https://github.com/appelgriebsch/Nv -N nvim-Nv
export NVIM_APPNAME="nvim-Nv"
nvim
```

Sometimes people place their Neovim configuration in a repository subdirectory
along with other configurations in a `dotfiles` repo. To retrieve only the
Neovim configuration subdirectory in such a repository, use the `-b branch`
and `-D subdir` arguments to `lazyman` along with `-C url` and `-N nvimdir`.
If no `-b branch` is provided then the default git branch is assumed to be
`master`. For example, to install and initialize the Neovim configuration
hosted at https://github.com/alanRizzo/dot-files in the subdirectory `nvim`
with default branch `main`, place it in `~/.config/nvim-AlanVim`, and
initialize it with Packer:

```bash
lazyman -b main -C https://github.com/alanRizzo/dot-files -D nvim -N nvim-AlanVim -P
```

Unsupported Neovim configurations can be installed and initialized in this
manner but there are often errors and issues such as an initialization
process that Lazyman does not yet support. However, you may find it useful
or interesting to explore, resolve errors and issues, and contribute to the
ever expanding set of Lazyman supported Neovim configurations.

Feel free to open an issue at
<https://github.com/doctorfree/nvim-lazyman/issues> to help tackle any problems
installing or initializing Neovim configurations with Lazyman.

## Motivation

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

### Inspiration

Lazyman was inspired by several other Neovim distributions and configurations
including:

- [Michael Peter](https://github.com/Allaman/nvim.git)
- [loctvl](https://github.com/loctvl842/nvim.git)
- [Marc Jakobi](https://github.com/mrcjkb/nvim-config.git)
- [LazyVim](https://github.com/LazyVim/LazyVim)
- [LunarVim](https://github.com/LunarVim/LunarVim)
- [NvChad](https://nvchad.github.io/)
- [rayx](https://github.com/ray-x/nvim.git)

Some of these distributions, like the work of Michael Peter, are released
under an MIT license and I was able to copy directly configuration or
initialization code. Others, like the work of Marc Jakobi, are released
under a more restrictive license and I was only able to use these as
reference but still a valuable aid. I copied my own previous work liberally.

Thanks everybody!

## Features

- `lazyman` command to easily install, initialize, manage, and explore multiple Neovim configurations
- support for Lazy, Packer, and vim-plug plugin managers
- automated installation of dependencies, tools, language servers, and Neovim nightly
- richly configured `nvim-Lazyman` Neovim configuration
- interactive menu interface for ease of management
- vimdoc help for `nvim-Lazyman` with `:h nvim-Lazyman`

See the [Usage](#usage) section below for details on `lazyman` command usage.

### General ⚙️

- Package management and plugin configuration via [lazy.nvim](https://github.com/folke/lazy.nvim)
- Easily configure theme, active plugins, and their configuration via [configuration.lua](lua/configuration.lua)
- Preconfigured themes: [catppuccin](https://github.com/catppuccin/nvim), [tokyonight](https://github.com/folke/tokyonight.nvim), [nightfox](https://github.com/EdenEast/nightfox.nvim), [tundra](https://github.com/sam4llis/nvim-tundra), [dracula](https://github.com/Mofiqul/dracula.nvim), [kanagawa](https://github.com/rebelot/kanagawa.nvim), [onedarkpro](https://github.com/olimorris/onedarkpro.nvim), [everforest](https://github.com/neanias/everforest-nvim), [monokai-pro](https://github.com/loctvl842/monokai-pro.nvim)
- Auto-configure ChatGPT (GPT-4) if `OPENAI_API_KEY` is found in the environment using [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim)
  - Uses ChatGPT prompts from [Awesome ChatGPT Prompts](https://github.com/f/awesome-chatgpt-prompts)
- Mnemonic keyboard mappings inspired by [Spacemacs](https://www.spacemacs.org/) via [which-key.nvim](https://github.com/folke/which-key.nvim); no more than three keystrokes for each keybinding
- Replace the UI for messages, cmdline and popupmenu via [noice.nvim](https://github.com/folke/noice.nvim)
- Fully featured status line via [lualine](https://github.com/nvim-lualine/lualine.nvim) and [tabline](https://github.com/kdheepak/tabline.nvim)
- Terminal integration via [nvim-toggleterm.lua](https://github.com/akinsho/nvim-toggleterm.lua)
- Fancy notifications via [nvim-notify](https://github.com/rcarriga/nvim-notify)
- Code diagnostics via [LSP](https://github.com/neovim/nvim-lspconfig)
- Dashboard via [alpha.nvim](https://github.com/goolord/alpha-nvim) with recent files and quick links
- Neovim games for fun and learning ([Sudoku](https://github.com/jim-fx/sudoku.nvim), [Blackjack](https://github.com/alanfortlink/blackjack.nvim), [vim-be-good](https://github.com/ThePrimeagen/vim-be-good) practice basic movements)
- Github actions to publish docker image on Docker Hub, check spelling/syntax, and auto-generate vim help doc (see `.github/workflows/*.yml`)
- Over 90 plugins
- Fast startup < 70 ms 🚀

### Navigation 🧭

- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for all your search needs
- Project management with [Project.nvim](https://github.com/ahmedkhalf/project.nvim)
- File tree navigation/manipulation via [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Better Tmux navigation with your home row via [Navigator.nvim](https://github.com/numToStr/Navigator.nvim)
- Convenient jumping through windows with [nvim-window-picker](https://gitlab.com/s1n7ax/nvim-window-picker)

### Coding 🖥️

- Auto completion powered by [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- Built-in LSP configured via [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig), [mason](https://github.com/williamboman/mason.nvim), and [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
- Debugging for Go and Python via [nvim-dap](https://github.com/mfussenegger/nvim-dap) and friends
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) and [Tresitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) for your syntax needs
- Auto formatting via [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- Excellent Go support via LSP and [go.nvim](https://github.com/ray-x/go.nvim) including sensible keybindings
- Always know where you are in your code via [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- Git integration via [Neogit](https://github.com/TimUntersberger/neogit) and [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- Outlining symbols with [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- Snippets provided by [Luasnip](https://github.com/L3MON4D3/LuaSnip) and [friendly snippets](https://github.com/rafamadriz/friendly-snippets) with autocompletion

## Usage

The [lazyman.sh](lazyman.sh) script is located in `~/.config/nvim-Lazyman`.
It installs itself as `$HOME/.local/bin/lazyman`. If `$HOME/.local/bin` is
in your execution `PATH` then `lazyman` can be executed from the command
line as simply `lazyman`. The manual page can be viewed with `man lazyman`.
Within Neovim the `nvim-Lazyman` help doc can be viewed with `:h nvim-Lazyman`.

The `lazyman` command can be used to install and initialize multiple Neovim
configurations. For example, to install and initialize the LazyVim starter
configuration execute the command `lazyman -l`. To install and initialize
all supported Lazyman Neovim configurations execute `lazyman -A`.

After installing and initializing Neovim configurations with `lazyman`,
easily explore various configurations with the `lazyman -e <config> …`
command. See the
[Using lazyman to explore configurations](#using-lazyman-to-explore-configurations)
section below for details.

To remove a Lazyman Neovim configuration execute `lazyman -r -N <nvimdir>`.
To remove the configuration and all its backups, `lazyman -R -N <nvimdir>`.
To remove all installed Lazyman Neovim configurations and their backups
without being prompted to proceed, execute `lazyman -A -R -y`.

<details><summary>View the lazyman usage message</summary>

```
Usage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-e config] [-i] [-k] [-l]
               [-m] [-s] [-S] [-v] [-n] [-p] [-P] [-q] [-I] [-L cmd]
               [-rR] [-C url] [-N nvimdir] [-U] [-y] [-z] [-Z] [-u]
Where:
    -A indicates install all supported Neovim configurations
    -a indicates install and initialize AstroNvim Neovim configuration
    -b 'branch' specifies an nvim-Lazyman git branch to checkout
    -c indicates install and initialize NvChad Neovim configuration
    -d indicates debug mode
    -e 'config' execute 'nvim' with 'config' Neovim configuration
       'config' can be one of:
           'lazyman', 'astronvim', 'kickstart', 'magicvim',
           'nvchad', 'lazyvim', 'lunarvim', 'spacevim'
       or any Neovim configuration directory in '~/.config'
           (e.g. 'lazyman -e lazyvim foo.lua')
    -i indicates install and initialize Lazyman Neovim configuration
    -k indicates install and initialize Kickstart Neovim configuration
    -l indicates install and initialize LazyVim Neovim configuration
    -m indicates install and initialize MagicVim Neovim configuration
    -s indicates install and initialize SpaceVim Neovim configuration
    -v indicates install and initialize LunarVim Neovim configuration
    -S indicates show Neovim configuration fuzzy selector menu
    -n indicates dry run, don't actually do anything, just printf's
    -p indicates use vim-plug rather than Lazy to initialize
    -P indicates use Packer rather than Lazy to initialize
    -q indicates quiet install
    -I indicates install language servers and tools for coding diagnostics
    -L 'cmd' specifies a Lazy command to run in the selected configuration
    -r indicates remove the previously installed configuration
    -R indicates remove previously installed configuration and backups
    -C 'url' specifies a URL to a Neovim configuration git repository
    -N 'nvimdir' specifies the folder name to use for the config given by -C
    -U indicates update an existing configuration
    -y indicates do not prompt, answer 'yes' to any prompt
    -z indicates do not run nvim after initialization
    -Z indicates install several unsupported but cool Neovim configurations
    -u displays this usage message and exits
Commands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'
Without arguments lazyman installs and initializes nvim-Lazyman
or, if initialized, an interactive menu system is displayed.
```

</details>

### Supported plugin managers

Lazyman currently supports the following Neovim plugin managers:

- [Lazy](https://github.com/folke/lazy.nvim) (lazy.nvim)
- [Packer](https://github.com/wbthomason/packer.nvim) (packer.nvim)
- [Plug](https://github.com/junegunn/vim-plug) (vim-plug)

The SpaceVim bundled plugin manager, **dein**, is supported only for the
SpaceVim install and initialization but Neovim configurations preconfigured
to use the **dein** plugin manager may install and initialize successfully.

Neovim configurations using other plugin managers will likely fail to cleanly
install and initialize using `lazyman`. Support for additional plugin managers
is not currently planned but if you have a need for this feature open an issue.

To install and initialize a Neovim configuration that uses the **Packer** plugin
manager invoke `lazyman` with the `-P` flag. See the [Packer](#packer) section below.

To install and initialize a Neovim configuration that uses the **Plug** plugin
manager invoke `lazyman` with the `-p` flag. See the [Plug](#plug) section below.

### Updates

To update a previously installed Lazyman Neovim configuration execute
`lazyman -U -N <nvimdir>` to update the Neovim configuration in
`~/.config/<nvimdir>`, `lazyman -U -A` to update all configurations,
or `lazyman -U` to update the `nvim-Lazyman` configuration. Updates
retrieve any newly modified files from the respective Github repository
while preserving local modifications. Note, if a file has been modified
both locally and in the repository then it will not be updated and retain
only local modifications.

### Lazyman manual

The `lazyman` bootstrap process installs a `lazyman` manual page in
`~/.local/share/man/man1/lazyman.1`. This man page includes a synopsis
of the `lazyman` command line options, a brief description of its use,
a description of each command line option, and several example invocations.

The `lazyman` manual page can be viewed with `man lazyman`.

Lazyman Neovim help can be viewed inside Neovim with `:h nvim-Lazyman`.

### Lazyman configuration

The `nvim-Lazyman` Neovim configuration includes a top-level configuration file,
`~/.config/nvim-Lazyman/lua/configuration.lua`. This file can be use to enable,
disable, and configure `nvim-Lazyman` components. For example, here is where you
would configure whether `neo-tree` or `nvim-tree` is enabled as a file explorer.
Or, disable the tabline, disable the statusline, set the colorscheme, theme, and
theme style. The `configuration.lua` file is intended to serve as a quick and
easy way to re-configure the `nvim-Lazyman` Neovim configuration but you can still
dig down into the `options.lua`, `keymaps.lua`, `autocmds.lua` and more.

#### Configuration sections

The `lua/configuration.lua` configuration file contains the following sections
with settings briefly described here:

##### Theme configuration

The `nvim-Lazyman` Neovim configuration includes pre-configured support for several
themes including support for statusline and tabline theme coordination. The active
theme and colorscheme is selected in `configuration.lua` by setting `conf.theme`.
For themes that support different styles, the theme style is selected by setting
`conf.theme_style`. Theme transparency can be enabled with `conf.enable_transparent`.
For example, to use the `kanagawa` theme with `dragon` style and transparency
disabled, set:

```
conf.theme = "kanagawa"
conf.theme_style = "dragon"
conf.enable_transparent = false
```

###### Supported themes

- [catppuccin](https://github.com/catppuccin/nvim.git)
- [dracula](https://github.com/Mofiqul/dracula.nvim)
- [everforest](https://github.com/neanias/everforest-nvim.git)
- [kanagawa](https://github.com/rebelot/kanagawa.nvim.git)
- [nightfox](https://github.com/EdenEast/nightfox.nvim.git)
- [monokai](https://github.com/loctvl842/monokai-pro.nvim)
- [onedarkpro](https://github.com/olimorris/onedarkpro.nvim.git)
- [tokyonight](https://github.com/folke/tokyonight.nvim.git)
- [tundra](https://github.com/sam4llis/nvim-tundra.git)

A configuration file for each theme is in `lua/themes/` and lualine theme
configuration for each theme and its styles in `lua/themes/lualine`.

Use `<F8>` to step through themes.

Available styles are:

- kanagawa
  - wave
  - dragon
  - lotus
- tokyonight
  - night
  - storm
  - day
  - moon
- onedarkpro
  - onedark
  - onelight
  - onedark_vivid
  - onedark_dark
- catppuccin
  - latte
  - frappe
  - macchiato
  - mocha
- dracula
  - blood
  - magic
  - soft
  - default
- nightfox
  - carbonfox
  - dawnfox
  - dayfox
  - duskfox
  - nightfox
  - nordfox
  - terafox
- monokai-pro
  - classic
  - octagon
  - pro
  - machine
  - ristretto
  - spectrum

##### Plugin configuration

Several Neovim plugins in the `nvim-Lazyman` configuration can be optionally
installed or replaced by another plugin with similar functionality. The plugins
that are configurable in this way in `configuration.lua` are briefly described
below along with their default settings:

- Neovim session manager to use, either persistence or possession
  - `conf.session_manager = "possession"`
- Neo-tree or nvim-tree, false will enable nvim-tree
  - `conf.enable_neotree = true`
- Replace the UI for messages, cmdline and the popupmenu
  - `conf.enable_noice = true`
- Enable ChatGPT (set `OPENAI_API_KEY` environment variable)
  - `conf.enable_chatgpt = false`
- Enable the newer rainbow treesitter delimiter highlighting
  - `conf.enable_rainbow2 = true`
- Enable the wilder plugin
  - `conf.enable_wilder = false`
- The statusline (lualine) and tabline can each be enabled or disabled
  - `conf.disable_statusline = false`
  - `conf.enable_tabline = true`
- The winbar with location
  - `conf.enable_winbar = false`
- Enable playing games inside Neovim!
  - `conf.enable_games = true`
- Enable the Alpha dashboard
  - `conf.enable_alpha = true`
- Enable the Neovim bookmarks plugin (<https://github.com/ldelossa/nvim-ide>)
  - `conf.enable_bookmarks = false`
- Enable the Neovim IDE plugin (<https://github.com/ldelossa/nvim-ide>)
  - `conf.enable_ide = false`
- Enable Navigator
  - `conf.enable_navigator = true`
- Enable Project manager
  - `conf.enable_project = true`
- Enable smooth scrolling with the neoscroll plugin
  - `conf.enable_smooth_scrolling = true`
- Enable window picker
  - `conf.enable_picker = true`
- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
  - `conf.show_diagnostics = "icons"`

Additional plugin configuration and options are available in `configuration.lua`.

<details><summary>View the default configuration.lua</summary>

```lua
local conf = {}

-- THEME CONFIGURATION
-- Available themes:
--   nightfox, tokyonight, dracula, kanagawa, catppuccin,
--   tundra, onedarkpro, everforest, monokai-pro
-- A configuration file for each theme is in lua/themes/
-- Use <F8> to step through themes
conf.theme = "tokyonight"
-- Available styles are:
--   kanagawa:    wave, dragon, lotus
--   tokyonight:  night, storm, day, moon
--   onedarkpro:  onedark, onelight, onedark_vivid, onedark_dark
--   catppuccin:  latte, frappe, macchiato, mocha
--   dracula:     blood, magic, soft, default
--   nightfox:    carbonfox, dawnfox, dayfox, duskfox, nightfox, nordfox, terafox
--   monokai-pro: classic, octagon, pro, machine, ristretto, spectrum
conf.theme_style = "moon"
-- enable transparency if the theme supports it
conf.enable_transparent = true

-- GLOBAL OPTIONS CONFIGURATION
-- Some prefer space as the map leader, but why
conf.mapleader = ","
conf.maplocalleader = ","
-- Toggle global status line
conf.global_statusline = true
-- set numbered lines
conf.number = false
-- enable mouse see :h mouse
conf.mouse = "nv"
-- set relative numbered lines
conf.relative_number = false
-- always show tabs; 0 never, 1 only if at least two tab pages, 2 always
-- see enable_tabline below to disable or enable the tabline
conf.showtabline = 2
-- enable or disable listchars
conf.list = true
-- which list chars to show
conf.listchars = {
  eol = "⤶",
  tab = ">.",
  trail = "~",
  extends = "◀",
  precedes = "▶",
}
-- use rg instead of grep
conf.grepprg = "rg --hidden --vimgrep --smart-case --"

-- ENABLE/DISABLE/SELECT PLUGINS
-- neovim session manager to use, either persistence or possession
conf.session_manager = "possession"
-- neo-tree or nvim-tree, false will enable nvim-tree
conf.enable_neotree = true
-- Replace the UI for messages, cmdline and the popupmenu
conf.enable_noice = true
-- Enable ChatGPT (set OPENAI_API_KEY environment variable)
conf.enable_chatgpt = false
-- Enable the newer rainbow treesitter delimiter highlighting
conf.enable_rainbow2 = true
-- Enable fancy lualine components
conf.enable_fancy = true
-- Enable the wilder plugin
conf.enable_wilder = false
-- The statusline (lualine) and tabline can each be enabled or disabled
-- Disable statusline (lualine)
conf.disable_statusline = false
-- Enable tabline
conf.enable_tabline = true
-- Disable winbar with location
conf.enable_winbar = false
-- Enable playing games inside Neovim!
conf.enable_games = true
-- Enable the Alpha dashboard
conf.enable_alpha = true
-- enable the Neovim bookmarks plugin (https://github.com/ldelossa/nvim-ide)
conf.enable_bookmarks = false
-- enable the Neovim IDE plugin (https://github.com/ldelossa/nvim-ide)
conf.enable_ide = false
-- Enable Navigator
conf.enable_navigator = true
-- Enable Project manager
conf.enable_project = true
-- Enable window picker
conf.enable_picker = true
-- Enable smooth scrolling with neoscroll plugin
conf.enable_smooth_scrolling = true

-- PLUGINS CONFIGURATION
-- media backend, one of "ueberzug"|"viu"|"chafa"|"jp2a"|catimg
conf.media_backend = "jp2a"
-- Number of recent files shown in dashboard
-- 0 disables showing recent files
conf.dashboard_recent_files = 5
-- disable the header of the dashboard
conf.disable_dashboard_header = true
-- disable quick links of the dashboard
conf.disable_dashboard_quick_links = false
-- treesitter parsers to be installed
conf.treesitter_ensure_installed = {
  "bash", "go", "html", "java", "json", "lua", "markdown",
  "markdown_inline", "query", "python", "regex", "toml", "vim", "yaml",
}
-- Enable clangd or ccls will be used for C/C++ diagnostics
conf.enable_clangd = false
-- LSPs that should be installed by Mason-lspconfig
conf.lsp_servers = {
  "bashls", "cssmodules_ls", "dockerls", "jsonls", "ltex", "marksman",
  "pyright", "lua_ls", "terraformls", "texlab", "tsserver", "vimls", "yamlls",
}
-- Formatters installed by mason-null-ls
conf.formatters = {
  "black", "prettier", "stylua", "shfmt", "google_java_format",
  "sql_formatter", "markdownlint", "beautysh",
}
-- Tools that should be installed by Mason
conf.tools = {
  "markdownlint", "prettier", "shellcheck", "shfmt",
  "stylua", "tflint", "yamllint", "ruff",
}
-- enable greping in hidden files
conf.telescope_grep_hidden = true
-- which patterns to ignore in file switcher
conf.telescope_file_ignore_patterns = {
  "%.7z", "%.MOV", "%.RAF", "%.burp", "%.bz2", "%.cache", "%.class", "%.dll",
  "%.docx", "%.dylib", "%.epub", "%.exe", "%.flac", "%.ico", "%.ipynb", "%.jar",
  "%.lock", "%.mkv", "%.mov", "%.mp4", "%.otf", "%.pdb", "%.rar", "%.sqlite3",
  "%.svg", "%.tar", "%.tar.gz", "%.zip", ".git/", ".gradle/", ".idea/",
  ".settings/", ".vale/", ".vscode/", "__pycache__/*", "build/", "env/",
  "gradle/", "node_modules/", "smalljre_*/*", "target/", "vendor/*",
}
-- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
--   "none":  diagnostics are disabled but still underlined
--   "icons": only an icon will show, use ',de' to see the diagnostic
--   "popup": an icon will show and a popup with the diagnostic will appear
conf.show_diagnostics = "icons"

return conf
```

</details>

## Notes

### Mason

The first time `nvim` is executed Mason will install several packages required
by the new Neovim configuration. Please be patient. If you exit Neovim prior
to completion of the Mason installs, it will resume the next session.

### Packer

The `lazyman` command can be used to install and initialize Neovim configurations
using the `Packer` plugin manager. To install and initialize a `Packer` managed
Neovim configuration, specify the `-P` flag on the `lazyman` command line.

For example, to install and initialize the `Abstract` Neovim configuration
at <https://github.com/Abstract-IDE/Abstract> invoke `lazyman` as follows:

```bash
lazyman -C https://github.com/Abstract-IDE/Abstract -N nvim-Abstract -P
```

After `export NVIM_APPNAME="nvim-Abstract"`, invoking `nvim` will bring up
the Abstract Neovim configuration.

Another Packer based Neovim configuration, this one using Fennel, serves as
a second example:

```bash
lazyman -C https://github.com/jhchabran/nvim-config -N nvim-Fennel -P
```

To begin exploring this Neovim configuration:

```bash
NVIM_APPNAME="nvim-Fennel" nvim ~/.config/nvim-Fennel/fnl/conf/init.fnl
```

A third example of a Packer based Neovim configuration is the excellent
`MagicVim` config. To install and initialize `MagicVim`:

```bash
lazyman -C https://gitlab.com/GitMaster210/magicvim -N nvim-MagicVim -P
```

To begin exploring the `MagicVim` configuration:

```bash
NVIM_APPNAME="nvim-MagicVim" nvim
```

### Plug

The `lazyman` command can be used to install and initialize Neovim configurations
using the `Plug` plugin manager. To install and initialize a `Plug` managed
Neovim configuration, specify the `-p` flag on the `lazyman` command line.

For example, to install and initialize the `Optixal` Neovim configuration
at <https://github.com/Optixal/neovim-init.vim> invoke `lazyman` as follows:

```bash
lazyman -C https://github.com/Optixal/neovim-init.vim -N nvim-Optixal -p
```

After `export NVIM_APPNAME="nvim-Optixal"`, invoking `nvim` will bring up
the Optixal Neovim configuration.

Another Plug based Neovim configuration serves as a second example:

```bash
lazyman -C https://github.com/doctorfree/nvim-plug -N nvim-Plug -p
```

To begin exploring this Neovim configuration:

```bash
NVIM_APPNAME="nvim-Plug" nvim ~/.config/nvim-Plug/init.vim
```

### Health check

After installing and initializing the Neovim configuration, perform a health
check while in Neovim with `:checkhealth`. Examine any warnings or errors and
perform any necessary remedial actions such as installing missing packages
or resolving keymap conflicts.

### Symbolic links

The `NVIM_APPNAME` procedure described above allows you to keep any existing
`~/.config/nvim` and install multiple Neovim configurations, each in its own
separate `~/.config/$NVIM_APPNAME` folder. Note, however, that if you create
a symbolic link from `~/.config/$NVIM_APPNAME` to `~/.config/nvim` with the
intention of using the `nvim-Lazyman` configuration without need of `NVIM_APPNAME`
then you will also need to symlink `~/.local/share/$NVIM_APPNAME` and
`~/.local/state/$NVIM_APPNAME`.

### Shell initialization setup

If `nvim-Lazyman` is installed and initialized using the `NVIM_APPNAME`
environment variable as described above then `NVIM_APPNAME` needs to be
set when a `lazyman` initialized configuration is used. This can be done by
setting and exporting this variable in your shell's initialization file
(e.g. `.bashrc` for Bash users, `.zshrc` for Zsh users). Add the line
`export NVIM_APPNAME="nvim-Lazyman"` to your shell initialization and re-login
or source the initialization file to use the `nvim-Lazyman` configuration.

However, setting `NVIM_APPNAME` in the shell initialization file fixes that
environment variable to a single Neovim configuration and must be reset
to use another configuration. A more flexible approach is to use shell
aliases as described in the next section. Both approaches can be used,
an export in the shell initialization file for the most frequently used
Neovim configuration and aliases to override that for other configurations.

### The nvims fuzzy selector

The `lazyman` installation and configuration automatically configures
convenience aliases for Lazyman installed Neovim configurations. It also
creates an `nvims` alias which dynamically creates a fuzzy searchable
menu of installed Neovim configurations and launches Neovim with the
selected Lazyman Neovim configuration. See `~/.config/nvim-Lazyman/.lazymanrc`.
With this `nvims` alias it is no longer necessary to logout/login or
source a shell initialization file to update the menu of installed
Neovim configurations - the `nvims` alias dynamically generates the menu.

The fuzzy searchable/selectable menu of Neovim configurations can also
be shown with the command `lazyman -S`. Note also that both the `nvims`
alias and the `lazyman -S` command can accept additional filename arguments
with are then passed to Neovim. For example, to edit `/tmp/foo.lua` with
a Neovim configuration selected from the `nvims` menu:

```bash
nvims /tmp/foo.lua
```

<details><summary>View the .lazymanrc shell aliases and function</summary>

```bash
# $HOME/.config/nvim-Lazyman/.lazymanrc
# This file should be sourced from the shell initialization file
# e.g. $HOME/.bashrc or $HOME/.zshrc
#
# To use Vim
command -v vim > /dev/null && alias vi='vim'
# To use NeoVim
command -v nvim > /dev/null && {
  alias vi='nvim'
  # Uncomment this line to use Neovim even when you type vim
  # Leave commented to use vim as a backup editor if nvim not found
  # alias vim='nvim'
  alias nvims='source ~/.config/nvim-Lazyman/.lazymanrc; nvimselect'
  items=()
  [ -d ${HOME}/.config/nvim ] && {
    alias nvim-default="NVIM_APPNAME=nvim nvim"
    items+=("default")
  }
  # Add all previously installed Neovim configurations
  if [ -f ${HOME}/.config/nvim-Lazyman/.nvimdirs ]
  then
    while IFS= read -r ndir
    do
      [ -d ${HOME}/.config/${ndir} ] && {
        alias ${ndir}="NVIM_APPNAME=${ndir} nvim"
        entry=$(echo ${ndir} | sed -e "s/nvim-//")
        items+=("${entry}")
      }
    done < "${HOME}/.config/nvim-Lazyman/.nvimdirs"
  else
    # Add any supported config we find
    [ -d ${HOME}/.config/nvim-Lazyman ] && {
      alias nvim-lazy="NVIM_APPNAME=nvim-Lazyman nvim"
      items+=("Lazyman")
    }
    [ -d ${HOME}/.config/nvim-LazyVim ] && {
      alias nvim-lazy="NVIM_APPNAME=nvim-LazyVim nvim"
      items+=("LazyVim")
    }
    [ -d ${HOME}/.config/nvim-Kickstart ] && {
      alias nvim-kick="NVIM_APPNAME=nvim-Kickstart nvim"
      items+=("Kickstart")
    }
    [ -d ${HOME}/.config/nvim-NvChad ] && {
      alias nvim-chad="NVIM_APPNAME=nvim-NvChad nvim"
      items+=("NvChad")
    }
    [ -d ${HOME}/.config/nvim-AstroNvim ] && {
      alias nvim-astro="NVIM_APPNAME=nvim-AstroNvim nvim"
      items+=("AstroNvim")
    }
    [ -d ${HOME}/.config/nvim-LunarVim ] && {
      alias nvim-lunar="NVIM_APPNAME=nvim-LunarVim nvim"
      items+=("LunarVim")
    }
    [ -d ${HOME}/.config/nvim-MultiVim ] && {
      alias nvim-multi="NVIM_APPNAME=nvim-MultiVim nvim"
      items+=("MultiVim")
    }
    [ -d ${HOME}/.config/nvim-SpaceVim ] && {
      alias nvim-space="NVIM_APPNAME=nvim-SpaceVim nvim"
      items+=("SpaceVim")
    }
  fi

  function nvimselect() {
    numitems=${#items[@]}
    if [ ${numitems} -eq 1 ]
    then
      config="${items[@]:0:1}"
    else
      height=$((numitems * 6))
      [ ${height} -gt 100 ] && height=100
      [ ${height} -lt 20 ] && height=20
      config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
    fi
    if [[ -z $config ]]; then
      echo "Nothing selected"
      return 0
    elif [[ $config == "default" ]]; then
      config="nvim"
    else
      if [ -d ${HOME}/.config/nvim-${config} ]
      then
        config="nvim-${config}"
      else
        [ -d ${HOME}/.config/${config} ] || {
          echo "Cannot locate ${config} Neovim configuration directory"
          return 0
        }
      fi
    fi
    NVIM_APPNAME=$config nvim $@
  }
}
```

</details>

The `nvims` shell function, when executed, presents a fuzzy searchable menu
of the `lazyman` installed Neovim configurations. The `lazyman` installed
Neovim configurations are maintained in the file
`~/.config/nvim-Lazyman/.nvimdirs`. Entries in this file are what `nvims`
uses for its fuzzy selection menu. When Neovim configurations are installed
or removed with `lazyman` this file is updated accordingly.

Note also that a convenience key binding has been created to launch
`nvims` with `ctrl-n`.

<details><summary>View the .nvimsbind shell key binding file</summary>

```bash
# $HOME/.config/nvim-Lazyman/.nvimsbind
# This file should be sourced from the shell initialization file
# after first sourcing ~/.config/nvim-Lazyman/.lazymanrc
command -v nvims > /dev/null && {
  if [ -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
   bindkey -s ^n "nvims\n"
  elif [ -n "$($SHELL -c 'echo $BASH_VERSION')" ]; then
   bind -x '"\C-n": nvims'
  else
   bindkey -s ^n "nvims\n"
  fi
}
```

</details>

The `nvims` Neovim configuration switching shell function was created by
[Elijah Manor](https://github.com/elijahmanor). He created an excellent
[Neovim Config Switcher](https://youtu.be/LkHjJlSgKZY) video in which
he provides details on use and customization of the `nvims` shell function.

Lazyman has incorporated and adapted the `nvims` shell function for use
with the Lazyman installed Neovim configurations. The `nvims` shell
function is automatically configured during `lazyman` installation.

### Using aliases

In addition to exporting NVIM_APPNAME in your shell initialization file, you
may wish to create aliases to execute with the various Neovim configurations
you have installed. For example, aliases could be created to use Neovim
configurations installed in `~/.config/nvim-LazyVim` and `~/.config/nvim-LunarVim`
as follows:

```bash
alias nvim-lazy="NVIM_APPNAME=nvim-LazyVim nvim"
alias nvim-lunar="NVIM_APPNAME=nvim-LunarVim nvim"
```

After sourcing these aliases in your shell, to invoke Neovim with the LazyVim
configuration run `nvim-lazy filename.py` and to invoke Neovim with the LunarVim
config run `nvim-lunar proposal.md`.

### Using lazyman to explore configurations

Another alternative to setting **NVIM_APPNAME** in the environment or with an
alias is to use the `lazyman` command to specify which Neovim configuration
to use with this invocation. This is done using the `-e config` option to
`lazyman`. When invoking `lazyman` with the `-e config` argument, the Neovim
configuration can be specified by setting `config` to one of `astronvim`,
`kickstart`, `lazyman`, `lazyvim`, `lunarvim`, `nvchad`, or any Neovim
configuration directory in `~/.config`. For example, to edit the file
`foo.lua` using the LazyVim Neovim configuration:

```bash
lazyman -e lazyvim foo.lua
```

Now you're using the LazyVim Neovim configuration to edit `foo.lua`, all of the
LazyVim key bindings, plugins, options, and configuration will be used.

To instead use the LunarVim Neovim configuration to edit `foo.lua`:

```bash
lazyman -e lunarvim foo.lua
```

Before using `lazyman -e <config> …` to explore a Neovim configuration,
first install and initialize the `<config>` configuration with `lazyman`.

When invoked with the `-e config` option, `lazyman` sets the **NVIM_APPNAME**
environment variable to the specified `config` and executes `nvim` with
all following arguments. This is a pretty easy way to explore all the
`lazyman` installed and initialized Neovim configurations.

## Neovim install

If Neovim 0.9 or later is not detected during `lazyman` initialization, it is
compiled from the latest source and installed. You should not need to compile
Neovim but if you would like to, a convenience script to build and install
Neovim is provided at [scripts/compile_neovim.sh](scripts/compile_neovim.sh):

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
curl -fsS https://raw.githubusercontent.com/doctorfree/nvim-lazyman/main/scripts/compile_neovim.sh | bash
```

Homebrew users on Linux or macOS can install Neovim with:

```bash
brew install --HEAD neovim
```

## Removal

The [lazyman.sh](lazyman.sh) script can be used to remove previously installed
Neovim configurations with the `-r` command line option. For example, to remove
a previously installed `LazyVim` configuration, its initialized plugins, state,
and cache, execute the following command:

```bash
$HOME/.config/nvim-Lazyman/lazyman.sh -l -r
```

To remove the `nvim-Lazyman` configuration and associated plugins, state, and cache:

```bash
$HOME/.config/nvim-Lazyman/lazyman.sh -r
```

All `lazyman.sh` operations can be performed as a dry run with `-n`. For
example, to see which `LazyVim` folders would be removed without removing any:

```bash
$HOME/.config/nvim-Lazyman/lazyman.sh -n -l -r
```

## Appendix

The convenience script to install and initialize `nvim-Lazyman` is provided at
[lazyman.sh](lazyman.sh). The automated install and initialization performed
by `lazyman.sh` executes the following on your system:

<details><summary>View the lazyman.sh script</summary>

```bash
#!/bin/bash
#
# lazyman - install, initialize, manage, and explore multiple Neovim configurations
#
# Written by Ronald Record <ronaldrecord@gmail.com>
#
# shellcheck disable=SC2001,SC2002,SC2016,SC2006,SC2086,SC2181,SC2129,SC2059,SC2076

LAZYMAN="nvim-Lazyman"
LMANDIR="${HOME}/.config/${LAZYMAN}"
NVIMDIRS="${LMANDIR}/.nvimdirs"
LOLCAT="lolcat --animate --speed=70.0"
BOLD=$(tput bold 2>/dev/null)
NORM=$(tput sgr0 2>/dev/null)
PLEASE="Please enter your"
FIG_TEXT="Lazyman"
# Array with font names
fonts=("sblood" "lean" "sblood" "slant" "shadow" "speed" "small" "script" "standard")

brief_usage() {
  printf "\nUsage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-e config] [-i] [-k] [-l]"
  printf "\n               [-m] [-s] [-S] [-v] [-n] [-p] [-P] [-q] [-I] [-L cmd]"
  printf "\n               [-rR] [-C url] [-N nvimdir] [-U] [-y] [-z] [-Z] [-u]"
  exit 1
}

usage() {
  printf "\nUsage: lazyman [-A] [-a] [-b branch] [-c] [-d] [-e config] [-i] [-k] [-l]"
  printf "\n               [-m] [-s] [-S] [-v] [-n] [-p] [-P] [-q] [-I] [-L cmd]"
  printf "\n               [-rR] [-C url] [-N nvimdir] [-U] [-y] [-z] [-Z] [-u]"
  printf "\nWhere:"
  printf "\n    -A indicates install all supported Neovim configurations"
  printf "\n    -a indicates install and initialize AstroNvim Neovim configuration"
  printf "\n    -b 'branch' specifies an ${LAZYMAN} git branch to checkout"
  printf "\n    -c indicates install and initialize NvChad Neovim configuration"
  printf "\n    -d indicates debug mode"
  printf "\n    -e 'config' execute 'nvim' with 'config' Neovim configuration"
  printf "\n       'config' can be one of:"
  printf "\n           'lazyman', 'astronvim', 'kickstart', 'magicvim',"
  printf "\n           'nvchad', 'lazyvim', 'lunarvim', 'spacevim'"
  printf "\n       or any Neovim configuration directory in '~/.config'"
  printf "\n           (e.g. 'lazyman -e lazyvim foo.lua')"
  printf "\n    -i indicates install and initialize Lazyman Neovim configuration"
  printf "\n    -k indicates install and initialize Kickstart Neovim configuration"
  printf "\n    -l indicates install and initialize LazyVim Neovim configuration"
  printf "\n    -m indicates install and initialize MagicVim Neovim configuration"
  printf "\n    -s indicates install and initialize SpaceVim Neovim configuration"
  printf "\n    -v indicates install and initialize LunarVim Neovim configuration"
  printf "\n    -S indicates show Neovim configuration fuzzy selector menu"
  printf "\n    -n indicates dry run, don't actually do anything, just printf's"
  printf "\n    -p indicates use vim-plug rather than Lazy to initialize"
  printf "\n    -P indicates use Packer rather than Lazy to initialize"
  printf "\n    -q indicates quiet install"
  printf "\n    -I indicates install language servers and tools for coding diagnostics"
  printf "\n    -L 'cmd' specifies a Lazy command to run in the selected configuration"
  printf "\n    -r indicates remove the previously installed configuration"
  printf "\n    -R indicates remove previously installed configuration and backups"
  printf "\n    -C 'url' specifies a URL to a Neovim configuration git repository"
  printf "\n    -N 'nvimdir' specifies the folder name to use for the config given by -C"
  printf "\n    -U indicates update an existing configuration"
  printf "\n    -y indicates do not prompt, answer 'yes' to any prompt"
  printf "\n    -z indicates do not run nvim after initialization"
  printf "\n    -Z indicates install several unsupported but cool Neovim configurations"
  printf "\n    -u displays this usage message and exits"
  printf "\nCommands act on NVIM_APPNAME, override with '-N nvimdir' or '-A'"
  printf "\nWithout arguments lazyman installs and initializes ${LAZYMAN}"
  printf "\nor, if initialized, an interactive menu system is displayed.\n"
  exit 1
}

create_backups() {
  ndir="$1"
  [ -d "${HOME}/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} config as ${HOME}/.config/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.config/$ndir" "${HOME}/.config/$ndir-bak$$"
    }
  }

  [ -d "${HOME}/.local/share/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} plugins as ${HOME}/.local/share/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.local/share/$ndir" "${HOME}/.local/share/$ndir-bak$$"
    }
  }

  [ -d "${HOME}/.local/state/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} state as ${HOME}/.local/state/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.local/state/$ndir" "${HOME}/.local/state/$ndir-bak$$"
    }
  }
  [ -d "${HOME}/.cache/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nBacking up existing ${ndir} cache as ${HOME}/.cache/${ndir}-bak$$"
    }
    [ "$tellme" ] || {
      mv "${HOME}/.cache/$ndir" "${HOME}/.cache/$ndir-bak$$"
    }
  }
}

run_command() {
  neodir="$1"
  comm="$2"
  [ "$neodir" == "$lazymandir" ] && {
    oldpack=${packer}
    oldplug=${plug}
    plug=
    packer=
  }
  [ "$neodir" == "$magicvimdir" ] && {
    oldpack=${packer}
    packer=1
  }
  [ "$tellme" ] || {
    export NVIM_APPNAME="$neodir"
    if [ "$debug" ]; then
      if [ "$packer" ]; then
        nvim --headless -c 'autocmd User PackerComplete quitall' -c "Packer${comm}"
      else
        if [ "$plug" ]; then
          nvim --headless -c 'set nomore' -c "Plug${comm}" -c 'qa'
        else
          if [ "$neodir" == "$spacevimdir" ]; then
            nvim --headless "+${comm}" +qa
          else
            nvim --headless "+Lazy! ${comm}" +qa
          fi
        fi
      fi
    else
      if [ "$packer" ]; then
        nvim --headless -c \
          'autocmd User PackerComplete quitall' -c "Packer${comm}" >/dev/null 2>&1
      else
        if [ "$plug" ]; then
          nvim --headless -c 'set nomore' -c "Plug${comm}" -c 'qa' >/dev/null 2>&1
        else
          if [ "$neodir" == "$spacevimdir" ]; then
            nvim --headless "+${comm}" +qa >/dev/null 2>&1
          else
            nvim --headless "+Lazy! ${comm}" +qa >/dev/null 2>&1
          fi
        fi
      fi
    fi
  }
  [ "$neodir" == "$magicvimdir" ] && packer=${oldpack}
  [ "$neodir" == "$lazymandir" ] && {
    packer=${oldpack}
    plug=${oldplug}
  }
}

init_neovim() {
  neodir="$1"
  [ "$neodir" == "$lazymandir" ] && {
    oldpack=${packer}
    oldplug=${plug}
    plug=
    packer=
  }
  [ "$neodir" == "$magicvimdir" ] && {
    oldpack=${packer}
    packer=1
  }
  export NVIM_APPNAME="$neodir"

  [ "$packer" ] && {
    PACKER="${HOME}/.local/share/${neodir}/site/pack/packer/start/packer.nvim"
    [ -d "$PACKER" ] || {
      [ "$quiet" ] || {
        printf "\nCloning packer.nvim into"
        printf "\n\t${PACKER} ... "
      }
      [ "$tellme" ] || {
        git clone --depth 1 \
          https://github.com/wbthomason/packer.nvim "$PACKER" >/dev/null 2>&1
      }
      [ "$quiet" ] || printf "done"
    }
  }

  [ "$plug" ] && {
    PLUG="${HOME}/.local/share/${neodir}/site/autoload/plug.vim"
    [ -d "$PLUG" ] || {
      [ "$quiet" ] || {
        printf "\nCopying plug.vim to ${PLUG} ... "
      }
      [ "$tellme" ] || {
        sh -c "curl -fLo ${PLUG} --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" \
          >/dev/null 2>&1
      }
      [ "$quiet" ] || printf "done"
    }
  }

  if [ "$debug" ]; then
    if [ "$packer" ]; then
      nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
    else
      if [ "$plug" ]; then
        nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa'
        nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa'
        nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa'
      else
        if [ "$neodir" == "$spacevimdir" ]; then
          nvim --headless "+SPInstall" +qa
          nvim --headless "+UpdateRemotePlugins" +qa
        else
          nvim --headless "+Lazy! sync" +qa
        fi
      fi
    fi
    [ -d "${HOME}/.config/${neodir}/doc" ] && {
      nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa
    }
  else
    if [ "$packer" ]; then
      nvim --headless -c \
        'autocmd User PackerComplete quitall' -c 'PackerSync' >/dev/null 2>&1
    else
      if [ "$plug" ]; then
        nvim --headless -c 'set nomore' -c 'PlugInstall' -c 'qa' >/dev/null 2>&1
        nvim --headless -c 'set nomore' -c 'UpdateRemotePlugins' -c 'qa' >/dev/null 2>&1
        nvim --headless -c 'set nomore' -c 'GoInstallBinaries' -c 'qa' >/dev/null 2>&1
      else
        if [ "$neodir" == "$spacevimdir" ]; then
          nvim --headless "+SPInstall" +qa >/dev/null 2>&1
          nvim --headless "+UpdateRemotePlugins" +qa >/dev/null 2>&1
        else
          nvim --headless "+Lazy! sync" +qa >/dev/null 2>&1
        fi
      fi
    fi
    [ -d "${HOME}/.config/${neodir}/doc" ] && {
      nvim --headless "+helptags ${HOME}/.config/${neodir}/doc" +qa >/dev/null 2>&1
    }
  fi
  [ "$neodir" == "$magicvimdir" ] && packer=${oldpack}
  [ "$neodir" == "$lazymandir" ] && {
    packer=${oldpack}
    plug=${oldplug}
  }
}

add_nvimdirs_entry() {
  ndir="$1"
  if [ -f "${NVIMDIRS}" ]; then
    grep ^"$ndir"$ "${NVIMDIRS}" >/dev/null || {
      echo "$ndir" >>"${NVIMDIRS}"
    }
  else
    [ -d "${LMANDIR}" ] && {
      echo "$ndir" >"${NVIMDIRS}"
    }
  fi
}

remove_nvimdirs_entry() {
  ndir="$1"
  [ -f "${NVIMDIRS}" ] && {
    grep ^"$ndir"$ "${NVIMDIRS}" >/dev/null && {
      grep -v ^"$ndir"$ "${NVIMDIRS}" >/tmp/nvimdirs$$
      cp /tmp/nvimdirs$$ "${NVIMDIRS}"
      rm -f /tmp/nvimdirs$$
    }
  }
}

remove_config() {
  ndir="$1"
  [ "$proceed" ] || {
    printf "\nYou have requested removal of the Neovim configuration at:"
    printf "\n\t${HOME}/.config/${ndir}\n"
    printf "\nConfirm removal of the Neovim ${ndir} configuration\n"
    while true; do
      read -r -p "Remove ${ndir} ? (y/n) " yn
      case $yn in
        [Yy]*)
          break
          ;;
        [Nn]*)
          printf "\nAborting removal and exiting\n"
          exit 0
          ;;
        *)
          printf "\nPlease answer yes or no.\n"
          ;;
      esac
    done
  }

  [ -d "${HOME}/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} config at ${HOME}/.config/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.config/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} config backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.config/$ndir"-bak*
    }
  }

  [ -d "${HOME}/.local/share/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} plugins at ${HOME}/.local/share/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/share/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} plugins backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/share/$ndir"-bak*
    }
  }

  [ -d "${HOME}/.local/state/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} state at ${HOME}/.local/state/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/state/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} state backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.local/state/$ndir"-bak*
    }
  }

  [ -d "${HOME}/.cache/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving existing ${ndir} cache at ${HOME}/.cache/${ndir}"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.cache/$ndir"
    }
  }
  [ "$removeall" ] && {
    [ "$quiet" ] || {
      printf "\nRemoving any ${ndir} cache backups"
    }
    [ "$tellme" ] || {
      rm -rf "${HOME}/.cache/$ndir"-bak*
    }
  }
  [ "$tellme" ] || {
    remove_nvimdirs_entry "$ndir"
  }
}

update_config() {
  ndir="$1"
  [ -d "${HOME}/.config/$ndir" ] && {
    [ "$quiet" ] || {
      printf "\nUpdating existing ${ndir} config at ${HOME}/.config/${ndir} ..."
    }
    [ "$tellme" ] || {
      git -C "${HOME}/.config/$ndir" stash >/dev/null 2>&1
      git -C "${HOME}/.config/$ndir" pull >/dev/null 2>&1
      git -C "${HOME}/.config/$ndir" stash pop >/dev/null 2>&1
    }
    [ "$quiet" ] || {
      printf " done"
    }
  }
  [ "$ndir" == "$astronvimdir" ] || [ "$ndir" == "$nvchaddir" ] && {
    if [ "$ndir" == "$astronvimdir" ]; then
      cdir="lua/user"
    else
      cdir="lua/custom"
    fi
    [ -d "${HOME}/.config/$ndir/$cdir" ] && {
      [ "$quiet" ] || {
        printf "\nUpdating existing add-on config at ${HOME}/.config/${ndir}/${cdir} ..."
      }
      [ "$tellme" ] || {
        git -C "${HOME}/.config/$ndir/$cdir" stash >/dev/null 2>&1
        git -C "${HOME}/.config/$ndir/$cdir" pull >/dev/null 2>&1
        git -C "${HOME}/.config/$ndir/$cdir" stash pop >/dev/null 2>&1
      }
      [ "$quiet" ] || {
        printf " done"
      }
    }
  }
}

set_brew() {
  if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
    HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
  else
    if [ -x /usr/local/bin/brew ]; then
      HOMEBREW_HOME="/usr/local"
    else
      if [ -x /opt/homebrew/bin/brew ]; then
        HOMEBREW_HOME="/opt/homebrew"
      else
        HOMEBREW_HOME=
      fi
    fi
  fi
  if [ "$HOMEBREW_HOME" ]; then
    BREW_EXE=
  else
    BREW_EXE="${HOMEBREW_HOME}/bin/brew"
  fi
}

clone_repo() {
  reponame="$1"
  repourl="$2"
  repodest="$3"
  [ -d "${HOME}/.config/$repodest" ] || {
    [ "$quiet" ] || {
      printf "\nCloning ${reponame} configuration into"
      printf "\n\t${HOME}/.config/${repodest} ... "
    }
    [ "$tellme" ] || {
      git clone \
        https://github.com/"$repourl" \
        "${HOME}/.config/${repodest}" >/dev/null 2>&1
      add_nvimdirs_entry "$repodest"
    }
    [ "$quiet" ] || printf "done"
  }
}

show_figlet() {
  # Seed random generator
  RANDOM=$$$(date +%s)
  USE_FONT=${fonts[$RANDOM % ${#fonts[@]}]}
  [ "${USE_FONT}" ] || USE_FONT="standard"
  if [ "${have_lolcat}" ]; then
    if [ "${USE_FONT}" == "lean" ]; then
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | tr ' _/' ' ()' | ${LOLCAT}
    else
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | ${LOLCAT}
    fi
  else
    if [ "${USE_FONT}" == "lean" ]; then
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null | tr ' _/' ' ()'
    else
      figlet -c -f "${USE_FONT}" -k -t ${FIG_TEXT} 2>/dev/null
    fi
  fi
}

show_menu() {
  have_figlet=$(type -p figlet)
  have_tscli=$(type -p tree-sitter)
  have_lolcat=$(type -p lolcat)
  have_rich=$(type -p rich)

  while true; do
    clear
    [ "${have_figlet}" ] && show_figlet
    items=()
    if [ -f "${LMANDIR}"/.lazymanrc ]; then
      source "${LMANDIR}"/.lazymanrc
    else
      if [ "${have_rich}" ]; then
        rich "[bold magenta]WARNING[/]: missing ${LMANDIR}/.lazymanrc
  reinstall Lazyman with:
    [bold green]lazyman -R -N nvim-Lazyman[/]
  followed by:
    [bold green]lazyman[/]" -p -a heavy
      else
        printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
        printf "\nReinstall Lazyman with:"
        printf "\n\tlazyman -R -N nvim-Lazyman"
        printf "\n\tlazyman\n"
      fi
    fi
    readarray -t sorted < <(printf '%s\0' "${items[@]}" | sort -z | xargs -0n1)
    numitems=${#sorted[@]}
    if [ "${have_rich}" ]; then
      rich "[b magenta]${numitems}[/] [b green]Lazyman Neovim configurations[/] [b magenta]installed[/]" -p -c
    else
      printf "\n${numitems} Lazyman Neovim configurations installed:\n"
    fi
    linelen=0
    if [ "${have_rich}" ]; then
      neovims=""
      leader="[b green]"
      for neovim in "${sorted[@]}"; do
        neovims="${neovims} ${leader}${neovim}[/]"
        if [ "${leader}" == "[b green]" ]; then
          leader="[b magenta]"
        else
          leader="[b green]"
        fi
      done
      rich "${neovims}" -p -a heavy -c -C
    else
      printf "\t"
      for neovim in "${sorted[@]}"; do
        printf "${neovim}  "
        nvsz=${#neovim}
        linelen=$((linelen + nvsz + 2))
        [ ${linelen} -gt 50 ] && {
          printf "\n\t"
          linelen=0
        }
      done
      printf "\n\n"
    fi

    PS3="${BOLD}${PLEASE} choice (numeric or text, 'h' for help): ${NORM}"
    options=()
    if alias nvims >/dev/null 2>&1; then
      [ ${numitems} -gt 1 ] && options+=("Select Config")
    fi
    options+=("Install Configs")
    options+=("Install More Configs")
    [ "${have_figlet}" ] && [ "${have_tscli}" ] || options+=("Install Tools")
    options+=("Remove All Configs")
    for neovim in "${suppnvimdirs[@]}"; do
      nvdir=$(echo "${neovim}" | sed -e "s/nvim-//")
      if [[ ! " ${sorted[*]} " =~ " ${nvdir} " ]]; then
        options+=("Install ${nvdir}")
      fi
    done
    for neovim in "${sorted[@]}"; do
      options+=("Open ${neovim}")
    done
    for neovim in "${sorted[@]}"; do
      options+=("Remove ${neovim}")
    done
    options+=("Quit")
    select opt in "${options[@]}"; do
      case "$opt,$REPLY" in
        "h",* | *,"h" | "H",* | *,"H" | "help",* | *,"help" | "Help",* | *,"Help")
          clear
          printf "\n"
          man lazyman
          break
          ;;
        "Select"*,* | *,"Select"* | "select"*,* | *,"select"*)
          nvimselect
          break
          ;;
        "Install Configs"*,* | *,"Install Configs"*)
          lazyman -A -z -y
          break
          ;;
        "Install More"*,* | *,"Install More"*)
          lazyman -Z -z -y
          break
          ;;
        "Install Tools"*,* | *,"Install Tools"*)
          lazyman -I
          have_figlet=$(type -p figlet)
          have_tscli=$(type -p tree-sitter)
          have_lolcat=$(type -p lolcat)
          break
          ;;
        "Install "*,* | *,"Install "*)
          nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          case ${nvimconf} in
            AstroNvim)
              lazyman -a -z -y
              ;;
            Kickstart)
              lazyman -k -z -y
              ;;
            Lazyman)
              lazyman -i -z -y
              ;;
            LazyVim)
              lazyman -l -z -y
              ;;
            LunarVim)
              lazyman -v -z -y
              ;;
            NvChad)
              lazyman -c -z -y
              ;;
            SpaceVim)
              lazyman -s -z -y
              ;;
            MagicVim)
              lazyman -m -z -y
              ;;
          esac
          break
          ;;
        "Open "*,* | *,"Open "*)
          nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          if [ -d "${HOME}/.config/nvim-${nvimconf}" ]; then
            NVIM_APPNAME="nvim-${nvimconf}" nvim
          else
            if [ -d "${HOME}/.config/${nvimconf}" ]; then
              NVIM_APPNAME="${nvimconf}" nvim
            else
              printf "\nCannot locate ${nvimconf} Neovim configuration\n"
              printf "\nPress Enter to continue\n"
              read -r yn
            fi
          fi
          break
          ;;
        "Remove All"*,* | *,"Remove All"*)
          lazyman -R -A -y
          lazyman -R -Z -y
          break
          ;;
        "Remove "*,* | *,"Remove "*)
          nvimconf=$(echo ${opt} | awk ' { print $2 } ')
          if [ -d "${HOME}/.config/nvim-${nvimconf}" ]; then
            lazyman -R -N nvim-${nvimconf}
          else
            if [ -d "${HOME}/.config/${nvimconf}" ]; then
              lazyman -R -N ${nvimconf}
            else
              remove_nvimdirs_entry nvim-${nvimconf}
            fi
          fi
          break
          ;;
        "Quit",* | *,"Quit" | "quit",* | *,"quit")
          printf "\nExiting Lazyman\n"
          exit 0
          ;;
        *,*)
          printf "\nCould not match '${REPLY}' with a menu entry."
          printf "\nPlease try again with an exact match.\n"
          [ "${have_figlet}" ] && show_figlet
          ;;
      esac
      REPLY=
    done
  done
}

all=
branch=
subdir=
command=
debug=
invoke=
langservers=
tellme=
astronvim=
kickstart=
lazyman=
lazyvim=
lunarvim=
magicvim=
nvchad=
spacevim=
plug=
packer=
proceed=
quiet=
remove=
removeall=
runvim=1
select=
update=
url=
unsupported=
name=
pmgr="Lazy"
lazymandir="${LAZYMAN}"
astronvimdir="nvim-AstroNvim"
kickstartdir="nvim-Kickstart"
lazyvimdir="nvim-LazyVim"
lunarvimdir="nvim-LunarVim"
nvchaddir="nvim-NvChad"
spacevimdir="nvim-SpaceVim"
magicvimdir="nvim-MagicVim"
suppnvimdirs=("$lazymandir" "$lazyvimdir" "$magicvimdir" "$spacevimdir" "$kickstartdir" "$astronvimdir" "$nvchaddir" "$lunarvimdir")
nvimdir=()
while getopts "aAb:cdD:e:iIklmnL:pPqrRsSUC:N:vyzZu" flag; do
  case $flag in
    a)
      astronvim=1
      nvimdir=("$astronvimdir")
      ;;
    A)
      all=1
      astronvim=1
      kickstart=1
      lazyman=1
      lazyvim=1
      lunarvim=1
      magicvim=1
      nvchad=1
      spacevim=1
      nvimdir=("${suppnvimdirs[@]}")
      ;;
    b)
      branch="$OPTARG"
      ;;
    c)
      nvchad=1
      nvimdir=("$nvchaddir")
      ;;
    d)
      debug="-d"
      ;;
    e)
      invoke="$OPTARG"
      ;;
    i)
      lazyman=1
      nvimdir=("$lazymandir")
      ;;
    I)
      langservers=1
      ;;
    k)
      kickstart=1
      nvimdir=("$kickstartdir")
      ;;
    l)
      lazyvim=1
      nvimdir=("$lazyvimdir")
      ;;
    L)
      command="$OPTARG"
      ;;
    m)
      magicvim=1
      nvimdir=("$magicvimdir")
      ;;
    n)
      tellme=1
      ;;
    p)
      plug=1
      pmgr="Plug"
      ;;
    P)
      packer=1
      pmgr="Packer"
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
    s)
      spacevim=1
      nvimdir=("$spacevimdir")
      ;;
    S)
      select=1
      ;;
    C)
      url="$OPTARG"
      ;;
    D)
      subdir="$OPTARG"
      ;;
    N)
      name="$OPTARG"
      ;;
    U)
      update=1
      ;;
    v)
      lunarvim=1
      nvimdir=("$lunarvimdir")
      ;;
    y)
      proceed=1
      ;;
    z)
      runvim=
      ;;
    Z)
      unsupported=1
      ;;
    u)
      usage
      ;;
    *)
      printf "\nUnrecognized option. Exiting.\n"
      usage
      ;;
  esac
done
shift $((OPTIND - 1))

[ "$select" ] && {
  if [ -f "${LMANDIR}"/.lazymanrc ]; then
    source "${LMANDIR}"/.lazymanrc
  else
    printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
    printf "\nReinstall Lazyman with:"
    printf "\n\tlazyman -R -N nvim-Lazyman"
    printf "\n\tlazyman\n"
  fi
  if alias nvims >/dev/null 2>&1; then
    nvimselect "$@"
  fi
  exit 0
}

[ "$unsupported" ] && {
  if [ "$remove" ]; then
    for neovim in Nv Abstract Allaman Fennel Optixal Plug; do
      remove_config "nvim-${neovim}"
    done
  else
    lazyman -C https://github.com/appelgriebsch/Nv -N nvim-Nv -z
    lazyman -C https://github.com/Abstract-IDE/Abstract -N nvim-Abstract -P -z
    lazyman -C https://github.com/jhchabran/nvim-config -N nvim-Fennel -P -z
    lazyman -C https://github.com/Optixal/neovim-init.vim -N nvim-Optixal -p -z
    lazyman -C https://github.com/doctorfree/nvim-plug -N nvim-Plug -p -z
    lazyman -C https://github.com/Allaman/nvim -N nvim-Allaman -z
  fi
  exit 0
}

[ "$langservers" ] && {
  if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]; then
    "${HOME}/.config/$lazymandir"/scripts/install_neovim.sh -l "$debug"
    exit 0
  fi
  exit 1
}

[ "$url" ] && {
  [ "$name" ] || {
    printf "\nERROR: '-C url' must be accompanied with '-N nvimdir'\n"
    brief_usage
  }
}
[ "$all" ] && [ "$name" ] && {
  printf "\nERROR: '-A' cannot be used with '-N nvimdir'\n"
  brief_usage
}
[ "$packer" ] && [ "$plug" ] && {
  printf "\nERROR: '-P' cannot be used with '-p'"
  printf "\nOnly one plugin manager can be specified\n"
  brief_usage
}
# Support specifying '-N nvimdir' with supported configurations
# This breaks subsequent '-e' invocations for that config
[ "$name" ] && {
  numvim=0
  [ "$astronvim" ] && numvim=$((numvim + 1))
  [ "$kickstart" ] && numvim=$((numvim + 1))
  [ "$lazyvim" ] && numvim=$((numvim + 1))
  [ "$lazyman" ] && numvim=$((numvim + 1))
  [ "$lunarvim" ] && numvim=$((numvim + 1))
  [ "$magicvim" ] && numvim=$((numvim + 1))
  [ "$nvchad" ] && numvim=$((numvim + 1))
  [ "$spacevim" ] && numvim=$((numvim + 1))
  [ "$numvim" -gt 1 ] && {
    printf "\nERROR: multiple Neovim configs cannot be used with '-N nvimdir'\n"
    brief_usage
  }
  [ "$astronvim" ] && astronvimdir="$name"
  [ "$kickstart" ] && kickstartdir="$name"
  [ "$lazyman" ] && lazymandir="$name"
  [ "$lazyvim" ] && lazyvimdir="$name"
  [ "$lunarvim" ] && lunarvimdir="$name"
  [ "$magicvim" ] && magicvimdir="$name"
  [ "$nvchad" ] && nvchaddir="$name"
  [ "$spacevim" ] && spacevimdir="$name"
  [ "$numvim" -eq 1 ] && {
    [ "$quiet" ] || {
      printf "\nWARNING: Specifying '-N nvimdir' will change the configuration location"
      printf "\n\tof a supported config to ${name}"
      printf "\n\tThis will make it incompatible with '-e <config>' in subsequent runs\n"
    }
    [ "$proceed" ] || {
      printf "\nDo you wish to proceed with this non-standard initialization?"
      while true; do
        read -r -p "Proceed with config in ${name} ? (y/n) " yn
        case $yn in
          [Yy]*)
            break
            ;;
          [Nn]*)
            printf "\nAborting install and exiting\n"
            exit 0
            ;;
          *)
            printf "\nPlease answer yes or no.\n"
            ;;
        esac
      done
    }
  }
}

[ "$invoke" ] && {
  nvimlower=$(echo "$invoke" | tr '[:upper:]' '[:lower:]')
  case "$nvimlower" in
    astronvim)
      ndir="$astronvimdir"
      ;;
    kickstart)
      ndir="$kickstartdir"
      ;;
    lazyman)
      ndir="$lazymandir"
      ;;
    lazyvim)
      ndir="$lazyvimdir"
      ;;
    lunarvim)
      ndir="$lunarvimdir"
      ;;
    nvchad)
      ndir="$nvchaddir"
      ;;
    magicvim)
      ndir="$magicvimdir"
      ;;
    spacevim)
      ndir="$spacevimdir"
      ;;
    *)
      ndir="$invoke"
      ;;
  esac
  [ -d "${HOME}/.config/${ndir}" ] || {
    printf "\nNeovim configuration for ${ndir} not found"
    printf "\nExiting\n"
    exit 1
  }
  export NVIM_APPNAME="$ndir"
  nvim "$@"
  exit 0
}

[ "$name" ] && nvimdir=("$name")

[ "$remove" ] && {
  for neovim in "${nvimdir[@]}"; do
    [ "${all}" ] && [ "${neovim}" == "${lazymandir}" ] && continue
    remove_config "$neovim"
  done
  exit 0
}

[ "$command" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && nvimdir=("$NVIM_APPNAME")
  }
  for neovim in "${nvimdir[@]}"; do
    run_command "$neovim" "$command"
  done
  exit 0
}

[ "$update" ] && {
  [ "$all" ] || [ "$name" ] || {
    [ "$NVIM_APPNAME" ] && nvimdir=("$NVIM_APPNAME")
  }
  for neovim in "${nvimdir[@]}"; do
    update_config "$neovim"
    [ "$tellme" ] || {
      init_neovim "$neovim"
    }
  done
  exit 0
}

have_git=$(type -p git)
[ "$have_git" ] || {
  printf "\nLazyman requires git but git not found"
  printf "\nPlease install git and retry this lazyman command\n"
  brief_usage
}

interactive=
numvimdirs=${#nvimdir[@]}
[ ${numvimdirs} -eq 0 ] && {
  nvimdir=("${lazymandir}")
  interactive=1
  runvim=
}
if [ -d "${HOME}/.config/$lazymandir" ]; then
  [ "$branch" ] && {
    git -C "${HOME}/.config/$lazymandir" checkout "$branch" >/dev/null 2>&1
  }
else
  [ "$quiet" ] || {
    printf "\nCloning ${LAZYMAN} configuration into"
    printf "\n\t${HOME}/.config/${lazymandir} ... "
  }
  [ "$tellme" ] || {
    git clone https://github.com/doctorfree/nvim-lazyman \
      "${HOME}/.config/$lazymandir" >/dev/null 2>&1
    [ "$branch" ] && {
      git -C "${HOME}/.config/$lazymandir" checkout "$branch" >/dev/null 2>&1
    }
  }
  [ "$quiet" ] || printf "done"
  interactive=
  runvim=1
fi
# Always make sure nvim-Lazyman is in .nvimdirs
[ "$tellme" ] || {
  add_nvimdirs_entry "$lazymandir"
}

# Append sourcing of .lazymanrc to shell initialization files
if [ -f "${LMANDIR}"/.lazymanrc ]; then
  for shinit in bashrc zshrc; do
    [ -f "${HOME}/.$shinit" ] || continue
    grep lazymanrc "${HOME}/.$shinit" >/dev/null && continue
    COMM="# Source the Lazyman shell initialization for aliases and nvims selector"
    echo "$COMM" >>"${HOME}/.$shinit"
    TEST_SRC="[ -f ~/.config/${LAZYMAN}/.lazymanrc ] &&"
    SOURCE="source ~/.config/${LAZYMAN}/.lazymanrc"
    echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
  done
  # Append sourcing of .nvimsbind to shell initialization files
  [ -f "${HOME}/.config/$lazymandir"/.nvimsbind ] && {
    for shinit in bashrc zshrc; do
      [ -f "${HOME}/.$shinit" ] || continue
      grep nvimsbind "${HOME}/.$shinit" >/dev/null && continue
      COMM="# Source the Lazyman shell initialization for nvims key binding"
      echo "$COMM" >>"${HOME}/.$shinit"
      TEST_SRC="[ -f ~/.config/${LAZYMAN}/.nvimsbind ] &&"
      SOURCE="source ~/.config/${LAZYMAN}/.nvimsbind"
      echo "${TEST_SRC} ${SOURCE}" >>"${HOME}/.$shinit"
    done
  }
else
  printf "\nWARNING: missing ${LMANDIR}/.lazymanrc"
  printf "\nReinstall Lazyman with:"
  printf "\n\tlazyman -R -N nvim-Lazyman"
  printf "\n\tlazyman\n"
fi

# Enable ChatGPT plugin if OPENAI_API_KEY set
[ "$OPENAI_API_KEY" ] && {
  NVIMCONF="${HOME}/.config/${lazymandir}/lua/configuration.lua"
  grep 'conf.enable_chatgpt' "$NVIMCONF" >/dev/null && {
    cat "$NVIMCONF" \
      | sed -e "s/conf.enable_chatgpt.*/conf.enable_chatgpt = true/" >/tmp/nvim$$
    cp /tmp/nvim$$ "$NVIMCONF"
    rm -f /tmp/nvim$$
  }
}

if [ -x "${HOME}/.config/${lazymandir}/scripts/install_neovim.sh" ]; then
  "${HOME}/.config/$lazymandir"/scripts/install_neovim.sh "$debug"
  BREW_EXE=
  set_brew
  [ "$BREW_EXE" ] && eval "$("$BREW_EXE" shellenv)"
  have_nvim=$(type -p nvim)
  [ "$have_nvim" ] || {
    printf "\nERROR: cannot locate neovim."
    printf "\nHomebrew install failure, manual debug required."
    printf "\n\t'brew update && lazyman -d'."
    printf "\nNeovim 0.9 or later required. Install and retry. Exiting.\n"
    brief_usage
  }
else
  printf "\n${HOME}/.config/${lazymandir}/scripts/install_neovim.sh not executable"
  printf "\nPlease check the Lazyman installation and retry this install script\n"
  brief_usage
fi

for neovim in "${nvimdir[@]}"; do
  [ "$neovim" == "$lazymandir" ] && continue
  [ "$proceed" ] || {
    [ -d "${HOME}/.config/$neovim" ] && {
      printf "\nYou have requested installation of the ${neovim} Neovim configuration."
      printf "\nIt appears there is a previously installed Neovim configuration at:"
      printf "\n\t${HOME}/.config/${neovim}\n"
      printf "\nThe existing Neovim configuration can be updated or backed up.\n"
      while true; do
        read -r -p "Update ${neovim} ? (y/n) " yn
        case $yn in
          [Yy]*)
            update_config "$neovim"
            break
            ;;
          [Nn]*)
            create_backups "$neovim"
            break
            ;;
          *)
            echo "Please answer yes or no."
            ;;
        esac
      done
    }
  }
done

[ "$astronvim" ] && {
  clone_repo AstroNvim AstroNvim/AstroNvim "$astronvimdir"
  [ "$quiet" ] || {
    printf "\nAdding user configuration into"
    printf "\n\t${HOME}/.config/${astronvimdir}/lua/user ... "
  }
  [ "$tellme" ] || {
    if [ -d "${HOME}/.config/$astronvimdir"/lua/user ]; then
      update_config "$astronvimdir"/lua/user
    else
      git clone https://github.com/doctorfree/astronvim \
        "${HOME}/.config/$astronvimdir"/lua/user >/dev/null 2>&1
    fi
  }
  [ "$quiet" ] || printf "done"
}
[ "$kickstart" ] && {
  clone_repo Kickstart nvim-lua/kickstart.nvim.git "$kickstartdir"
}
[ "$lazyvim" ] && {
  clone_repo LazyVim LazyVim/starter "$lazyvimdir"
}
[ "$lunarvim" ] && {
  clone_repo LunarVim LunarVim/LunarVim "$lunarvimdir"
}
[ "$magicvim" ] && {
  [ -d "${HOME}/.config/$magicvimdir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning MagicVim configuration into"
      printf "\n\t${HOME}/.config/${magicvimdir} ... "
    }
    [ "$tellme" ] || {
      git clone \
        https://gitlab.com/GitMaster210/magicvim \
        "${HOME}/.config/${magicvimdir}" >/dev/null 2>&1
      add_nvimdirs_entry "$magicvimdir"
    }
    [ "$quiet" ] || printf "done"
  }
}
[ "$nvchad" ] && {
  [ -d "${HOME}/.config/$nvchaddir" ] || {
    [ "$quiet" ] || {
      printf "\nCloning NvChad configuration into"
      printf "\n\t${HOME}/.config/${nvchaddir} ... "
    }
    [ "$tellme" ] || {
      git clone https://github.com/NvChad/NvChad \
        "${HOME}/.config/${nvchaddir}" --depth 1 >/dev/null 2>&1
      add_nvimdirs_entry "$nvchaddir"
    }
    [ "$quiet" ] || {
      printf "\nAdding custom configuration into"
      printf "\n\t${HOME}/.config/${nvchaddir}/lua/custom ... "
    }
  }
  [ "$tellme" ] || {
    if [ -d "${HOME}/.config/$nvchaddir"/lua/custom ]; then
      update_config "$nvchaddir"/lua/custom
    else
      git clone https://github.com/doctorfree/NvChad-custom \
        "${HOME}/.config/$nvchaddir"/lua/custom >/dev/null 2>&1
      # rm -rf ${HOME}/.config/${nvchaddir}/lua/custom/.git
    fi
  }
  [ "$quiet" ] || printf "done"
}
[ "$spacevim" ] && {
  clone_repo SpaceVim SpaceVim/SpaceVim "$spacevimdir"
}
[ "$url" ] && {
  if [ -d "${HOME}/.config/${nvimdir[0]}" ]; then
    printf "\nThe Neovim configuration directory:"
    printf "\n\t${HOME}/.config/${nvimdir[0]}"
    printf "\nalready exists. Retry with an alternate '-N nvimdir'."
    printf "\nExiting without creating config for $url"
    brief_usage
  else
    [ "$quiet" ] || {
      printf "\nCloning ${url} into"
      printf "\n\t${HOME}/.config/${nvimdir[0]} ... "
    }
    [ "$tellme" ] || {
      if [ "${subdir}" ]; then
        [ "${branch}" ] || branch="master"
        # Perform some git tricks here to retrieve a repo subdirectory
        mkdir /tmp/lazyman$$
        cd /tmp/lazyman$$ || {
          printf "\nCreation of /tmp/lazyman$$ temporary directory failed. Exiting."
          exit 1
        }
        git init >/dev/null 2>&1
        git remote add -f origin $url >/dev/null 2>&1
        git config core.sparseCheckout true >/dev/null 2>&1
        [ -d .git/info ] || mkdir -p .git/info
        echo "${subdir}" >>.git/info/sparse-checkout
        git pull origin ${branch} >/dev/null 2>&1
        cd || exit
        mv "/tmp/lazyman$$/${subdir}" "${HOME}/.config/${nvimdir[0]}"
        rm -rf "/tmp/lazyman$$"
      else
        git clone \
          "$url" "${HOME}/.config/${nvimdir[0]}" >/dev/null 2>&1
      fi
      add_nvimdirs_entry "${nvimdir[0]}"
    }
    [ "$quiet" ] || printf "done"
  fi
}

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]; then
  [ "$tellme" ] || ulimit -n 4096
else
  [ "$tellme" ] || ulimit -n "$hardlimit"
fi

[ "$interactive" ] || {
  for neovim in "${nvimdir[@]}"; do
    [ "$quiet" ] || {
      pm="$pmgr"
      [ "$neovim" == "$spacevimdir" ] && pm="SP"
      [ "$neovim" == "$magicvimdir" ] && pm="Packer"
      printf "\nInitializing ${neovim} Neovim configuration with ${pm}"
    }
    [ "$tellme" ] || {
      init_neovim "$neovim"
    }
  done
}

[ "$tellme" ] || ulimit -n "$currlimit"

lazyinst=
if [ -f "$HOME"/.local/bin/lazyman ]; then
  [ -f "${LMANDIR}"/lazyman.sh ] && {
    diff "${LMANDIR}"/lazyman.sh "$HOME"/.local/bin/lazyman >/dev/null || lazyinst=1
  }
else
  lazyinst=1
fi
[ "$lazyinst" ] && {
  [ "$quiet" ] || {
    printf "\nInstalling lazyman command in ${HOME}/.local/bin"
    printf "\nUse 'lazyman' to explore Neovim configurations."
    printf "\nReview the lazyman usage message with 'lazyman -u'"
  }
}

maninst=
if [ -f "$HOME"/.local/share/man/man1/lazyman.1 ]; then
  [ -f "${LMANDIR}"/man/man1/lazyman.1 ] && {
    diff "${LMANDIR}"/man/man1/lazyman.1 \
      "$HOME"/.local/share/man/man1/lazyman.1 >/dev/null || maninst=1
  }
else
  maninst=1
fi
[ "$maninst" ] && {
  [ "$quiet" ] || printf "\nView the lazyman man page with 'man lazyman'"
}

[ "$quiet" ] || [ "$interactive" ] || {
  printf "\n\nTo use this lazyman installed Neovim configuration as the default,"
  printf "\nadd a line like the following to your .bashrc or .zshrc:\n"
  if [ "$all" ]; then
    printf '\n\texport NVIM_APPNAME="nvim-Lazyman"\n'
  else
    printf "\n\texport NVIM_APPNAME=\"${nvimdir[0]}\"\n"
  fi
  printf "\nTo easily switch between lazyman installed Neovim configurations,"
  printf "\nshell aliases and the 'nvims' command have been created for you."
  [ -f "${LMANDIR}"/.lazymanrc ] && source "${LMANDIR}"/.lazymanrc
  if ! alias nvims >/dev/null 2>&1; then
    printf "\nTo activate these aliases and the 'nvims' Neovim config switcher,"
    printf "\nlogout and login or issue the following command:"
    printf "\n\tsource ~/.config/${LAZYMAN}/.lazymanrc"
  fi
  printf "\nAn alias for this Lazyman configuration can be created with:"
  if [ "$all" ]; then
    printf "\n\n\talias lnvim='NVIM_APPNAME=nvim-Lazyman nvim'"
  elif [ "$astronvim" ]; then
    printf "\n\n\talias avim='NVIM_APPNAME=nvim-AstroNvim nvim'"
  elif [ "$kickstart" ]; then
    printf "\n\n\talias kvim='NVIM_APPNAME=nvim-Kickstart nvim'"
  elif [ "$lazyman" ]; then
    printf "\n\n\talias lmvim='NVIM_APPNAME=nvim-Lazyman nvim'"
  elif [ "$lazyvim" ]; then
    printf "\n\n\talias lvim='NVIM_APPNAME=nvim-LazyVim nvim'"
  elif [ "$lunarvim" ]; then
    printf "\n\n\talias lvim='NVIM_APPNAME=nvim-LunarVim nvim'"
  elif [ "$spacevim" ]; then
    printf "\n\n\talias svim='NVIM_APPNAME=nvim-SpaceVim nvim'"
  elif [ "$nvchad" ]; then
    printf "\n\n\talias cvim='NVIM_APPNAME=nvim-NvChad nvim'"
  elif [ "$magicvim" ]; then
    printf "\n\n\talias mvim='NVIM_APPNAME=nvim-MagicVim nvim'"
  else
    printf "\n\n\talias lmvim=\"NVIM_APPNAME=${nvimdir[0]} nvim\""
  fi
}
printf "\n\nRun 'lazyman' with no arguments for an interactive menu system\n\n"

[ "$tellme" ] || {
  [ "$runvim" ] && {
    [ "$all" ] && export NVIM_APPNAME="$lazymandir"
    nvim
  }
}

[ "$lazyinst" ] && {
  [ "$tellme" ] || {
    [ -d "$HOME"/.local/bin ] || mkdir -p "$HOME"/.local/bin
    [ -f "${LMANDIR}"/lazyman.sh ] && {
      cp "${LMANDIR}"/lazyman.sh "$HOME"/.local/bin/lazyman
      chmod 755 "$HOME"/.local/bin/lazyman
    }
  }
}
[ "$maninst" ] && {
  [ "$tellme" ] || {
    [ -d "$HOME"/.local/share/man ] || mkdir -p "$HOME"/.local/share/man
    [ -d "$HOME"/.local/share/man/man1 ] || mkdir -p "$HOME"/.local/share/man/man1
    [ -f "${LMANDIR}"/man/man1/lazyman.1 ] && {
      cp "${LMANDIR}"/man/man1/lazyman.1 "$HOME"/.local/share/man/man1/lazyman.1
      chmod 644 "$HOME"/.local/share/man/man1/lazyman.1
    }
  }
}

[ "$interactive" ] && show_menu
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

abort() {
  printf "\nERROR: %s\n" "$@" >&2
  exit 1
}

log() {
  [ "$quiet" ] || {
    printf "\n\t%s" "$@"
  }
}

check_prerequisites() {
  if [ "${BASH_VERSION:-}" = "" ]; then
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

install_homebrew() {
  if ! command -v brew >/dev/null 2>&1; then
    [ "$debug" ] && START_SECONDS=$(date +%s)
    log "Installing Homebrew ..."
    BREW_URL="https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh"
    have_curl=$(type -p curl)
    [ "$have_curl" ] || abort "The curl command could not be located."
    curl -fsSL "$BREW_URL" >/tmp/brew-$$.sh
    [ $? -eq 0 ] || {
      rm -f /tmp/brew-$$.sh
      curl -kfsSL "$BREW_URL" >/tmp/brew-$$.sh
    }
    [ -f /tmp/brew-$$.sh ] || abort "Brew install script download failed"
    chmod 755 /tmp/brew-$$.sh
    NONINTERACTIVE=1 /bin/bash -c "/tmp/brew-$$.sh" >/dev/null 2>&1
    rm -f /tmp/brew-$$.sh
    export HOMEBREW_NO_INSTALL_CLEANUP=1
    export HOMEBREW_NO_ENV_HINTS=1
    export HOMEBREW_NO_AUTO_UPDATE=1
    [ "$quiet" ] || printf " done"
    if [ -f "$HOME"/.profile ]; then
      BASHINIT="${HOME}/.profile"
    else
      if [ -f "$HOME"/.bashrc ]; then
        BASHINIT="${HOME}/.bashrc"
      else
        BASHINIT="${HOME}/.profile"
      fi
    fi
    if [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
      HOMEBREW_HOME="/home/linuxbrew/.linuxbrew"
      BREW_EXE="${HOMEBREW_HOME}/bin/brew"
    else
      if [ -x /usr/local/bin/brew ]; then
        HOMEBREW_HOME="/usr/local"
        BREW_EXE="${HOMEBREW_HOME}/bin/brew"
      else
        if [ -x /opt/homebrew/bin/brew ]; then
          HOMEBREW_HOME="/opt/homebrew"
          BREW_EXE="${HOMEBREW_HOME}/bin/brew"
        else
          abort "Homebrew brew executable could not be located"
        fi
      fi
    fi

    if [ -f "$BASHINIT" ]; then
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "$BASHINIT" >/dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >>"$BASHINIT"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"$BASHINIT"
        echo 'fi' >>"$BASHINIT"
      }
      grep "eval \"\$(zoxide init" "$BASHINIT" >/dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >>"$BASHINIT"
        echo '  eval "$(zoxide init bash)"' >>"$BASHINIT"
        echo 'fi' >>"$BASHINIT"
      }
    else
      echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >"$BASHINIT"
      echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"$BASHINIT"
      echo 'fi' >>"$BASHINIT"
      echo 'if command -v zoxide > /dev/null; then' >>"$BASHINIT"
      echo '  eval "$(zoxide init bash)"' >>"$BASHINIT"
      echo 'fi' >>"$BASHINIT"
    fi
    [ -f "${HOME}/.zshrc" ] && {
      grep "eval \"\$(${BREW_EXE} shellenv)\"" "${HOME}/.zshrc" >/dev/null || {
        echo 'if [ -x XXX ]; then' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.zshrc"
        echo '  eval "$(XXX shellenv)"' | sed -e "s%XXX%${BREW_EXE}%" >>"${HOME}/.zshrc"
        echo 'fi' >>"${HOME}/.zshrc"
      }
      grep "eval \"\$(zoxide init" "${HOME}/.zshrc" >/dev/null || {
        echo 'if command -v zoxide > /dev/null; then' >>"${HOME}/.zshrc"
        echo '  eval "$(zoxide init zsh)"' >>"${HOME}/.zshrc"
        echo 'fi' >>"${HOME}/.zshrc"
      }
    }
    eval "$("$BREW_EXE" shellenv)"
    have_brew=$(type -p brew)
    [ "$have_brew" ] && BREW_EXE="brew"
    [ "$debug" ] && {
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf "\nHomebrew install elapsed time = ${ELAPSED}\n"
    }
    [ "$HOMEBREW_HOME" ] || {
      brewpath=$(command -v brew)
      if [ $? -eq 0 ]; then
        HOMEBREW_HOME=$(dirname "$brewpath" | sed -e "s%/bin$%%")
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
  if command -v "$brewpkg" >/dev/null 2>&1; then
    log "Using previously installed ${brewpkg} ..."
  else
    log "Installing ${brewpkg} ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet "$brewpkg" >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "$pkg" >/dev/null 2>&1
    if [ "$debug" ]; then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi
  [ "$quiet" ] || printf " done"
}

install_neovim_dependencies() {
  [ "$quiet" ] || printf "\nInstalling dependencies"
  PKGS="git curl tar unzip lazygit fd fzf xclip zoxide"
  for pkg in $PKGS; do
    if command -v "$pkg" >/dev/null 2>&1; then
      log "Using previously installed ${pkg}"
    else
      brew_install "$pkg"
    fi
  done
  if command -v rg >/dev/null 2>&1; then
    log "Using previously installed ripgrep"
  else
    brew_install ripgrep
  fi
  if command -v ag >/dev/null 2>&1; then
    log "Using previously installed the_silver_searcher"
  else
    brew_install the_silver_searcher
  fi
  [ "$quiet" ] || printf "\n"
}

install_neovim_head() {
  "$BREW_EXE" link -q libuv >/dev/null 2>&1
  log "Compiling and installing Neovim, please be patient ..."
  if [ "$debug" ]; then
    START_SECONDS=$(date +%s)
    "$BREW_EXE" install --HEAD neovim
  else
    "$BREW_EXE" install -q --HEAD neovim >/dev/null 2>&1
  fi
  if [ "$debug" ]; then
    FINISH_SECONDS=$(date +%s)
    ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
    ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
    printf "\nInstall Neovim HEAD elapsed time = %s${ELAPSED}\n"
  fi
  [ "$quiet" ] || printf " done"
}

check_python() {
  brew_path=$(command -v brew)
  brew_dir=$(dirname "$brew_path")
  if [ -x "$brew_dir"/python3 ]; then
    PYTHON="${brew_dir}/python3"
  else
    PYTHON=$(command -v python3)
  fi
}

# Brew doesn't create a python symlink so we do so here
link_python() {
  python3_path=$(command -v python3)
  [ "$python3_path" ] && {
    python_dir=$(dirname "$python3_path")
    if [ -w "$python_dir" ]; then
      rm -f "$python_dir"/python
      ln -s "$python_dir"/python3 "$python_dir"/python
    else
      sudo rm -f "$python_dir"/python
      sudo ln -s "$python_dir"/python3 "$python_dir"/python
    fi
  }
}

# Language servers are mostly being handled by Mason
# but some external utilities are required
install_language_servers() {
  [ "$quiet" ] || printf "\nInstalling language servers and tools"

  brew_install ccls
  "$BREW_EXE" link --overwrite --quiet ccls >/dev/null 2>&1

  for pkg in golangci-lint jdtls rust-analyzer taplo eslint terraform \
    yarn julia composer php deno; do
    brew_install "$pkg"
  done

  [ "$PYTHON" ] && {
    "$PYTHON" -m pip install python-lsp-server >/dev/null 2>&1
    "$PYTHON" -m pip install beautysh >/dev/null 2>&1
  }
  if command -v go >/dev/null 2>&1; then
    go install golang.org/x/tools/gopls@latest >/dev/null 2>&1
  fi
  [ "$quiet" ] || printf "\nDone"
}

install_tools() {
  [ "$quiet" ] || printf "\nInstalling Python dependencies"
  check_python
  [ "$PYTHON" ] || {
    # Could not find Python, install with Homebrew
    log 'Installing Python with Homebrew ...'
    "$BREW_EXE" install --quiet python >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet python >/dev/null 2>&1
    link_python
    check_python
    [ "$quiet" ] || printf " done"
  }
  [ "$PYTHON" ] && {
    log 'Upgrading pip, setuptools, wheel, doq, and pynvim ...'
    "$PYTHON" -m pip install --upgrade pip >/dev/null 2>&1
    "$PYTHON" -m pip install --upgrade setuptools >/dev/null 2>&1
    "$PYTHON" -m pip install wheel >/dev/null 2>&1
    "$PYTHON" -m pip install pynvim doq >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
  }
  [ "$quiet" ] || printf "\nDone"

  [ "$quiet" ] || printf "\nInstalling npm, treesitter, and cargo dependencies"
  have_npm=$(type -p npm)
  [ "$have_npm" ] && {
    log "Installing Neovim npm package ..."
    npm i -g neovim >/dev/null 2>&1
    [ "$quiet" ] || printf " done"

    log "Installing the icon font for Visual Studio Code ..."
    npm i -g @vscode/codicons >/dev/null 2>&1
    [ "$quiet" ] || printf " done"
  }

  brew_install figlet
  brew_install lolcat
  if command -v "rich" >/dev/null 2>&1; then
    log "Using previously installed rich-cli ..."
  else
    log "Installing rich-cli ..."
    [ "$debug" ] && START_SECONDS=$(date +%s)
    "$BREW_EXE" install --quiet "rich-cli" >/dev/null 2>&1
    [ $? -eq 0 ] || "$BREW_EXE" link --overwrite --quiet "$pkg" >/dev/null 2>&1
    if [ "$debug" ]; then
      FINISH_SECONDS=$(date +%s)
      ELAPSECS=$((FINISH_SECONDS - START_SECONDS))
      ELAPSED=$(eval "echo $(date -ud "@$ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
      printf " elapsed time = %s${ELAPSED}"
    fi
  fi
  [ "$quiet" ] || printf " done"
  brew_install tree-sitter
  if command -v tree-sitter >/dev/null 2>&1; then
    tree-sitter init-config >/dev/null 2>&1
  fi

  # if command -v cargo >/dev/null 2>&1; then
  #   cargo install rnix-lsp > /dev/null 2>&1
  # fi

  GHUC="https://raw.githubusercontent.com"
  JETB_URL="${GHUC}/JetBrains/JetBrainsMono/master/install_manual.sh"
  [ "$quiet" ] || printf "\n\tInstalling JetBrains Mono font ... "
  curl -fsSL "$JETB_URL" >/tmp/jetb-$$.sh
  [ $? -eq 0 ] || {
    rm -f /tmp/jetb-$$.sh
    curl -kfsSL "$JETB_URL" >/tmp/jetb-$$.sh
  }
  [ -f /tmp/jetb-$$.sh ] && {
    chmod 755 /tmp/jetb-$$.sh
    /bin/bash -c "/tmp/jetb-$$.sh" >/dev/null 2>&1
    rm -f /tmp/jetb-$$.sh
  }
  [ "$quiet" ] || printf "done\nDone\n"
}

main() {
  if [ "$lang_tools" ]; then
    install_homebrew
    install_neovim_dependencies
    install_language_servers
    install_tools
  else
    check_prerequisites
    if command -v nvim >/dev/null 2>&1; then
      nvim_version=$(nvim --version | head -1 | grep -o '[0-9]\.[0-9]')
      if (($(echo "$nvim_version < 0.9 " | bc -l))); then
        printf "\nCurrently installed Neovim is less than version 0.9"
        [ "$nvim_head" ] && {
          install_homebrew
          install_neovim_dependencies
          printf "\nInstalling latest Neovim version with Homebrew"
          install_neovim_head
        }
      fi
    else
      install_homebrew
      install_neovim_dependencies
      printf "\nNeovim not found, installing Neovim with Homebrew"
      if [ "$nvim_head" ]; then
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
    *) ;;
  esac
done

currlimit=$(ulimit -n)
hardlimit=$(ulimit -Hn)
[ "$hardlimit" == "unlimited" ] && hardlimit=9999
if [ "$hardlimit" -gt 4096 ]; then
  ulimit -n 4096
else
  ulimit -n "$hardlimit"
fi

[ "$debug" ] && MAIN_START_SECONDS=$(date +%s)

main

[ "$debug" ] && {
  MAIN_FINISH_SECONDS=$(date +%s)
  MAIN_ELAPSECS=$((MAIN_FINISH_SECONDS - MAIN_START_SECONDS))
  MAIN_ELAPSED=$(eval "echo $(date -ud "@$MAIN_ELAPSECS" +'$((%s/3600/24)) days %H hr %M min %S sec')")
  printf "\nTotal elapsed time = %s${MAIN_ELAPSED}\n"
}

ulimit -n "$currlimit"
```
