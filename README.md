<h1 align="center">Lazyman Neovim Configuration Manager</h1>

```bash
# Install lazyman with the following two commands:
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

<div align="center"><p>
    <a href="https://github.com/neovim/neovim"><img src="https://img.shields.io/badge/Neovim-0.9.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white" alt="Neovim"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/pulse"><img src="https://img.shields.io/github/last-commit/doctorfree/nvim-lazyman" alt="Last commit"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/pulse"><img src="https://img.shields.io/github/commit-activity/t/doctorfree/nvim-lazyman" alt="Github commit activity"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/issues"><img src="https://img.shields.io/github/issues/doctorfree/nvim-lazyman.svg?style=flat-square&label=Issues&color=F05F40" alt="Github issues"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/actions/workflows/docker.yml"><img src="https://github.com/doctorfree/nvim-lazyman/actions/workflows/docker.yml/badge.svg" alt="CI Status"/></a>
    <a href="https://github.com/doctorfree/nvim-lazyman/blob/main/LICENSE"><img src="https://img.shields.io/github/license/doctorfree/nvim-lazyman?style=flat-square&logo=MIT&label=License" alt="License"/></a>
</p>

Lazyman is one of the [Neoman](https://neoman.dev) managed projects:

| **Neoman**                                     |          **Managed**           |                               **Projects** |
| :--------------------------------------------- | :----------------------------: | -----------------------------------------: |
| [Asciiville](https://asciiville.dev)           | [Lazyman](https://lazyman.dev) | [MirrorCommand](https://mirrorcommand.dev) |
| [MusicPlayerPlus](https://musicplayerplus.dev) |  [Neoman](https://neoman.dev)  | [RoonCommandLine](https://rooncommand.dev) |

The Lazyman Neovim configuration management menu:

<p float="center">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/lazymenu.png" style="width:877px;height:525px;">
</p>

The nvims Neovim configuration fuzzy selector:

<p float="center">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/nvims.png" style="width:250px;height:350px;">
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/nvims2.png" style="width:250px;height:240px;">
</p>

</div>

The Lazyman project can be used to install, initialize, and manage multiple
Neovim configurations. Over 100 popular Neovim configurations are supported.

See [what's new](#whats-new)

Follow the [Installation instructions](#installation) to bootstrap Lazyman.
Once Lazyman is installed, execute the `lazyman` command to manage
Neovim configurations. The `lazyman` command is located in `~/.local/bin/lazyman`.

The two primary features of the Lazyman project are the `lazyman` command
and the `nvims` shell function. The `lazyman` command provides a menu
interface and command line options to install, initialize, and manage
multiple Neovim configurations. The `nvims` shell function dynamically
generates a fuzzy searchable menu of Neovim configurations from which
to select. The selected configurations can be opened in Neovim, removed,
or a configuration information document can be viewed.

More info on the `nvims` and `neovides` shell functions can be found below
in the [nvims fuzzy selector section](#the-nvims-fuzzy-selector), in the
`nvims` man page with `man nvims`, with the command `nvims -U`, or in Neovim
using the `nvim-Lazyman` configuration with `:h Nvims`.

The `lazyman` command separates Neovim configurations into 5 categories:
`Base`, `Language`, `Personal`, `Starter`, and `Custom`. The `Base` category
consists of well tested Neovim configurations and distributions, all of which
provide significant value. The `Language` category includes Neovim configurations
tailored for a specific programming or document format language. The `Personal`
category includes personal Neovim configurations that provide significant value
or demonstrate some cool features. Configurations in the `Personal` category are
not necessarily intended for public use, these repositories are maintained for
the personal use of the authors but are included here for their value.
The `Starter` category includes Neovim configurations tailored to serve as
a starting point for developing your own Neovim configuration. These include
the popular Neovim `Kickstart` configuration, a `Modern` Neovim config, the
`PDE` personal development environment config, and the Neovim configurations
provided by the [nvim-starter project](https://github.com/VonHeikemen/nvim-starter).
The `Custom` category includes any additional Neovim configurations installed
and initialized with `lazyman` by the end-user using the `-C url` and
`-N nvimdir` options.

In addition, Lazyman installs and initializes the Lazyman Neovim configuration,
a richly configured Neovim environment using Lua, Lazy, and Mason to support
highlighting, completion, diagnostics, and more for many programming languages.

The installation and initialization of Neovim configurations are placed in
separate directories and managed using the `NVIM_APPNAME` environment variable.

Note that a full installation and initialization of all supported
Neovim configurations, plugins, language servers, formatters, linters,
and tools will consume over 20GB of disk space.

The `lazyman` command is installed as `~/.local/bin/lazyman` and can be used
to install, initialize, remove, and manage multiple Neovim configurations.

# Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
  - [Bootstrap](#bootstrap)
  - [Manual installation](#manual-installation)
- [Supported configurations](#supported-configurations)
  - [Base configurations](#base-configurations)
  - [Language configurations](#language-configurations)
  - [Personal configurations](#personal-configurations)
  - [Starter configurations](#starter-configurations)
  - [Custom configurations](#custom-configurations)
- [Features](#features)
  - [Lazyman Command Features](#lazyman-command-features)
  - [Lazyman Neovim Configuration Features](#lazyman-neovim-configuration-features)
  - [What's New](#whats-new)
- [Usage](#usage)
  - [Supported plugin managers](#supported-plugin-managers)
  - [Updates](#updates)
  - [Lazyman manual](#lazyman-manual)
  - [Lazyman configuration](#lazyman-configuration)
  - [Lazyman Neovim Terminal](#lazyman-neovim-terminal)
- [Motivation](#motivation)
  - [Inspiration](#inspiration)
- [Notes](#notes)
  - [Lazy](#lazy)
  - [Mason](#mason)
  - [Packer](#packer)
  - [Plug](#plug)
  - [Health check](#health-check)
  - [Profiling and benchmarking](#profiling-and-benchmarking)
  - [Symbolic links](#symbolic-links)
  - [Shell initialization setup](#shell-initialization-setup)
  - [The nvims fuzzy selector](#the-nvims-fuzzy-selector)
  - [Using aliases](#using-aliases)
  - [Open URL command](#open-url-command)
  - [Using lazyman to explore configurations](#using-lazyman-to-explore-configurations)
- [Removal](#removal)
- [Known limitations](#known-limitations)
- [Troubleshooting](#troubleshooting)
- [Appendix](#appendix)
  - [get_conf.lua](#get-configuration-script)
  - [lazyman.sh](#lazyman-source-code)
  - [install_neovim.sh](#install-neovim-and-tools)

## Requirements

The `lazyman` Neovim configuration manager requires Neovim 0.9. The `lazyman`
installation and initialization process checks for Neovim 0.9 and, if not
found, installs it and required dependencies and tools.

Lazyman requires Linux or macOS, git, and the Bash shell version 4 or later.

- Unix/Linux/macOS
- Neovim 0.9 (automatically installed if not found)
- Bash version 4 or later (automatically installed if not found)
- Git

### macOS users

Even the latest versions of macOS ship with Bash 3.2 which dates from 2007.
The Lazyman initialization process will update your system with a modern
Bash using Homebrew:

```bash
brew install bash
```

The initialization process also makes sure it is found first in your PATH.
For example, `export PATH="/usr/local/bin:${PATH}"` or `export PATH="/opt/homebrew/bin:${PATH}"`.

## Installation

The Lazyman installation process consists of two steps.

Step 1, clone the Lazyman repository:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
```

Step 2, initialize the Lazyman Neovim configuration:

```bash
$HOME/.config/nvim-Lazyman/lazyman.sh
```

These 2 steps perform the following:

1. Download the Lazyman Neovim configuration
1. Initialize the Lazyman Neovim configuration which:
   1. Installs language servers and tools for coding diagnostics
   1. Installs the latest version of Neovim if not already installed
   1. Installs and initializes configured Neovim plugins

After the download and initialization are complete, execute the `lazyman`
command found in `~/.local/bin/lazyman`.

By default, Lazyman uses the native package manager to install Neovim
dependencies and tools. Supported native package managers include:

- `apt` or `apt-get` on Debian based platforms (e.g. Ubuntu)
- `dnf` or `yum` on RPM based platforms (Fedora, CentOS, Red Hat)
- `pacman` on Arch Linux and Arch-Like platforms
- `apk` on Alpine Linux
- `xbps-install` on Void Linux
- `zypper` on SUSE Linux

Alternately, command line options exist to direct `lazyman` to install Neovim,
dependencies and tools using [Homebrew](https://brew.sh) or to skip the Neovim
installation altogether. If no supported native package manager is found then
Homebrew is used. Homebrew is always used on macOS.

To install Neovim, dependencies, and tools using Homebrew rather than the
native package manger, invoke `lazyman` with the `-h` option when initializing:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh -h
```

To compile and install the nightly build of Neovim, use the `-H` option:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh -H
```

The installation of Neovim 0.9, language servers, and tools ensures a proper
runtime environment. To avoid the installation of Homebrew, Neovim, language
servers, and tools altogether, execute `lazyman -Z`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh -Z
```

Note that circumventing the Neovim installation means that Neovim 0.9 must
be installed in some other manner. Also, language servers and tools
required by some Neovim configurations may not be present. However, some
may prefer to handle the installation of Neovim 0.9, language servers,
and tools on their own.

If, after initializing Lazyman with `lazyman -Z`, you wish to let Lazyman
install Neovim 0.9, language servers and tools, then issue the command
`lazyman -I` or choose the `Install Tools` lazyman menu option.

The `lazyman -I` command can also be used to install additional tools, often
resolving some `:checkhealth` warnings.

See the [Appendix section](#appendix) below to examine the
[lazyman command](lazyman.sh) and associated
[Neovim install script](scripts/install_neovim.sh).

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

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable
to control where Neovim looks for its configuration.

### Manual installation

If you do not wish to use the automated installation and initialization
provided by the `lazyman.sh` script, manual installation and initialization
can be performed. See the Lazyman Wiki article on
[Manual Installation](https://github.com/doctorfree/nvim-lazyman/wiki/Manual_Installation)
to manually install rather than use the automated installation feature of
the `lazyman` command.

## Supported configurations

View [details of each supported configuration](https://lazyman.dev/configurations)
at the [Lazyman website](https://lazyman.dev).

Over 100 popular Neovim configurations are supported in the following configuration categories:
https://lazyman.dev/info/Abstract.html

<!-- prettier-ignore -->
| **Base** |        | **Configs** |
| :------- | :----: | ----------: |
| [Abstract](https://lazyman.dev/info/Abstract.html) | [AstroNvimPlus](https://lazyman.dev/info/AstroNvimPlus.html) | [Basic IDE](https://lazyman.dev/info/BasicIde.html) |
| [Ecovim](https://lazyman.dev/info/Ecovim.html) | [LazyVim](https://lazyman.dev/info/LazyVim.html) | [LunarVim](https://lazyman.dev/info/LunarVim.html) |
| [MagicVim](https://lazyman.dev/info/MagicVim.html) | [NvChad](https://lazyman.dev/info/NvChad.html) | [SpaceVim](https://lazyman.dev/info/SpaceVim.html) |

<!-- prettier-ignore -->
| **Language** |        |        |        |        |        | **Configs** |
| :----------- | :----: | :----: | :----: | :----: | :----: | ----------: |
| [AlanVim](https://lazyman.dev/info/AlanVim.html) | [Allaman](https://lazyman.dev/info/Allaman.html) | [CatNvim](https://lazyman.dev/info/CatNvim.html) | [Cpp](https://lazyman.dev/info/Cpp.html) | [Go](https://lazyman.dev/info/Go.html) | [Go2one](https://lazyman.dev/info/Go2one.html) | [Insis](https://lazyman.dev/info/Insis.html) |
| [Knvim](https://lazyman.dev/info/Knvim.html) | [LaTeX](https://lazyman.dev/info/LaTeX.html) | [LazyIde](https://lazyman.dev/info/LazyIde.html) | [LunarIde](https://lazyman.dev/info/LunarIde.html) | [LvimIde](https://lazyman.dev/info/LvimIde.html) | [Magidc](https://lazyman.dev/info/Magidc.html) | [Nv](https://lazyman.dev/info/Nv.html) |
| [NV-IDE](https://lazyman.dev/info/NV-IDE.html) | [Orange](https://lazyman.dev/info/Orange.html) | [Python](https://lazyman.dev/info/Python.html) | [Rust](https://lazyman.dev/info/Rust.html) | [SaleVim](https://lazyman.dev/info/SaleVim.html) | [Shuvro](https://lazyman.dev/info/Shuvro.html) | [Webdev](https://lazyman.dev/info/Webdev.html) |

<!-- prettier-ignore -->
| **Personal** |        |        |        | **Configs** |
| :----------- | :----: | :----: | :----: | ----------: |
| [Adib](https://lazyman.dev/info/Adib.html) | [Ahsan](https://lazyman.dev/info/Ahsan.html) | [Artur](https://lazyman.dev/info/Artur.html) | [Beethoven](https://lazyman.dev/info/Beethoven.html) | [Brain](https://lazyman.dev/info/Brain.html) |
| [CandyVim](https://lazyman.dev/info/CandyVim.html) | [Charles](https://lazyman.dev/info/Charles.html) | [Chokerman](https://lazyman.dev/info/Chokerman.html) | [Craftzdog](https://lazyman.dev/info/Craftzdog.html) | [Daniel](https://lazyman.dev/info/Daniel.html) |
| [Dillon](https://lazyman.dev/info/Dillon.html) | [Elianiva](https://lazyman.dev/info/Elianiva.html) | [Elijah](https://lazyman.dev/info/Elijah.html) | [Enrique](https://lazyman.dev/info/Enrique.html) | [Heiker](https://lazyman.dev/info/Heiker.html) |
| [J4de](https://lazyman.dev/info/J4de.html) | [Josean](https://lazyman.dev/info/Josean.html) | [JustinLvim](https://lazyman.dev/info/JustinLvim.html) | [JustinNvim](https://lazyman.dev/info/JustinNvim.html) | [Kodo](https://lazyman.dev/info/Kodo.html) |
| [Kristijan](https://lazyman.dev/info/Kristijan.html) | [LamarVim](https://lazyman.dev/info/LamarVim.html) | [Lukas](https://lazyman.dev/info/Lukas.html) | [Maddison](https://lazyman.dev/info/Maddison.html) | [Metis](https://lazyman.dev/info/Metis.html) |
| [Mini](https://lazyman.dev/info/Mini.html) | [OnMyWay](https://lazyman.dev/info/OnMyWay.html) | [ONNO](https://lazyman.dev/info/ONNO.html) | [Optixal](https://lazyman.dev/info/Optixal.html) | [Orhun](https://lazyman.dev/info/Orhun.html) |
| [Primeagen](https://lazyman.dev/info/Primeagen.html) | [Rafi](https://lazyman.dev/info/Rafi.html) | [Roiz](https://lazyman.dev/info/Roiz.html) | [Simple](https://lazyman.dev/info/Simple.html) | [Slydragonn](https://lazyman.dev/info/Slydragonn.html) |
| [Spider](https://lazyman.dev/info/Spider.html) | [Traap](https://lazyman.dev/info/Traap.html) | [Wuelner](https://lazyman.dev/info/Wuelner.html) | [xero](https://lazyman.dev/info/xero.html) | [Xiao](https://lazyman.dev/info/Xiao.html) |

<!-- prettier-ignore -->
| **Starter** |        |        |        | **Configs** |
| :---------- | :----: | :----: | :----: | ----------: |
| [AstroNvimStart](https://lazyman.dev/info/AstroNvimStart.html) | [Barebones](https://lazyman.dev/info/Barebones.html) | [Basic](https://lazyman.dev/info/Basic.html) | [CodeArt](https://lazyman.dev/info/CodeArt.html) | [CosmicNvim](https://lazyman.dev/info/Cosmic.html) |
| [Ember](https://lazyman.dev/info/Ember.html) | [Fennel](https://lazyman.dev/info/Fennel.html) | [HardHacker](https://lazyman.dev/info/HardHacker.html) | [JustinOhMy](https://lazyman.dev/info/JustinOhMy.html) | [Kickstart](https://lazyman.dev/info/Kickstart.html) |
| [Kabin](https://lazyman.dev/info/Kabin.html) | [Micah](https://lazyman.dev/info/Micah.html) | [Modern](https://lazyman.dev/info/Modern.html) | [Normal](https://lazyman.dev/info/Normal.html) | [nvim2k](https://lazyman.dev/info/2k.html) |
| [NvPak](https://lazyman.dev/info/NvPak.html) | [PDE](https://lazyman.dev/info/pde.html) | [Rohit](https://lazyman.dev/info/Rohit.html) | [Scratch](https://lazyman.dev/info/Scratch.html) | [SingleFile](https://lazyman.dev/info/SingleFile.html) |

<!-- prettier-ignore -->
| **VonHeikemen** |        | **Starter** |        | **Configs** |
| :-------------- | :----: | :---------: | :----: | ----------: |
| [BasicLsp](https://lazyman.dev/info/BasicLsp.html) | [BasicMason](https://lazyman.dev/info/BasicMason.html) | [Extralight](https://lazyman.dev/info/Extralight.html) | [LspCmp](https://lazyman.dev/info/LspCmp.html) | [Minimal](https://lazyman.dev/info/Minimal.html) |
| [Modular](https://lazyman.dev/info/Modular.html) | [Opinionated](https://lazyman.dev/info/Opinion.html) | [StartBase](https://lazyman.dev/info/StartBase.html) | [StartLsp](https://lazyman.dev/info/StartLsp.html) | [StartMason](https://lazyman.dev/info/StartMason.html) |

### Base configurations

The Lazyman "Base" Neovim configurations are well tested, full featured Neovim
configurations that provide an excellent base starting point for exploring
the features of `lazyman` and the wealth of Neovim configuration possibilities.

All "Base" Neovim configurations can be installed and initialized with `lazyman -B`.

View descriptions of the
[Lazyman "Base" Neovim configurations](https://lazyman.dev/configurations#base-configurations)

### Language configurations

In addition to the base Neovim configurations listed above, `lazyman` can
install and initialize several "Language" Neovim configurations. These can
be used as programming or document format specific Neovim configurations.
The `Language` category configurations either employ a specific language
or target specific language(s).

[Note:] The `Language` category does not include all supported Lazyman Neovim
configurations with programming language support. In fact, most Neovim
configurations support several programming languages. The `Language` category
simply serves as a convenience to get started exploring language support.

All of the "Language" configurations can be installed and initialized with
the command `lazyman -L all`. Individual "Language" configurations can be
installed with the `-L lang` option.

View descriptions of the
[Lazyman "Language" Neovim configurations](https://lazyman.dev/configurations#language-configurations)

### Personal configurations

In addition to the base and language Neovim configurations listed above,
`lazyman` can install and initialize several "Personal" Neovim configurations.
These are used as personal Neovim configurations, so there are no guarantees
made about stability or compatibility. Each supported personal configuration
uses some interesting approach and provides significant value making them worthy
of study, exploration, and possible use in tailoring your own configuration.

All of the 'Personal' configurations can be installed and initialized with
the command `lazyman -W`. Individual 'Personal' configurations can be
installed with the `-w conf` option.

View descriptions of the
[Lazyman "Personal" Neovim configurations](https://lazyman.dev/configurations#personal-configurations)

### Starter configurations

The "Starter" Neovim configurations include `Basic`, `Kickstart`, `NvPak`,
`Modern`, `PDE`, and those provided by [VonHeikemen](https://github.com/VonHeikemen),
the author of [LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim).

All of the "Starter" configurations can be installed and initialized with
the command `lazyman -X`. Individual "Starter" configurations can be
installed with the `-x conf` option.

View descriptions of the
[Lazyman "Starter" Neovim configurations](https://lazyman.dev/configurations#starter-configurations)

### Custom configurations

Lazyman includes support for `Custom` Neovim configurations. To install and initialize
a Neovim configuration not supported out-of-the-box by Lazyman, use the `-C url` and
`-N nvimdir` options to `lazyman`.

View details and examples of installing and initializing
[Lazyman "Custom" Neovim configurations](https://lazyman.dev/configurations#custom-configurations).

## Features

### Lazyman Command Features

View the features of the [lazyman command](https://lazyman.dev/features).

See the [Usage](https://lazyman.dev/usage) section for details on `lazyman` command usage.

### Lazyman Neovim Configuration Features

View the features of the [Lazyman Neovim configuration](https://lazyman.dev/features#lazyman-neovim-configuration-features).

#### Navigation 🧭

<div align="center"><p>
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/alpha.png" style="width:800px;height:800px;">
</p></div>

- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for all your search needs
- Project management with [Project.nvim](https://github.com/ahmedkhalf/project.nvim)
- File tree navigation/manipulation via [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Better Tmux navigation with your home row via [Navigator.nvim](https://github.com/numToStr/Navigator.nvim)
- Convenient jumping through windows with [nvim-window-picker](https://gitlab.com/s1n7ax/nvim-window-picker)

#### Coding 🖥️

<div align="center"><p>
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/diagnostics.png" style="width:800px;height:600px;">
</p></div>

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
- Auto-install and setup of dozens of language servers including: `ansiblels`, `astro`, `awk_ls`, `bashls`, `clangd`, `ccls`, `cmake`, `cssmodules_ls`, `denols`, `dockerls`, `eslint`, `gopls`, `graphql`, `html`, `jdtls`, `jsonls`, `julials`, `lua_ls`, `ltex`, `marksman`, `pylsp`, `pyright`, `rust_analyzer`, `sqlls`, `svelte`, `tailwindcss`, `taplo`, `texlab`, `tflint`, `tsserver`, `vimls`, `yamlls`

### What's New

| **Shiny** | **New** | **Lazyman** | **Websites** |
| :-------- | :-----: | :---------: | -----------: |
| [Lazyman<br />lazyman.dev](https://lazyman.dev) | [AstroNvim<br />astronvim.lazyman.dev](https://astronvim.lazyman.dev) | [LazyVim<br />lazyvim.lazyman.dev](https://lazyvim.lazyman.dev) | [LunarVim<br />lunarvim.lazyman.dev](https://lunarvim.lazyman.dev) |
| [NvChad<br />nvchad.lazyman.dev](https://nvchad.lazyman.dev) | [CandyVim<br />candyvim.lazyman.dev](https://candyvim.lazyman.dev) | [LazyIde<br />ide.lazyman.dev](https://ide.lazyman.dev) | [Webdev<br />webdev.lazyman.dev](https://webdev.lazyman.dev) |

Recent releases of `lazyman` include several new features, fixes, and improvements:

- Information documents for each supported Neovim configuration which include:
  - Installation command, install location, brief description
  - Links to relevant websites including the Github repo, website, YouTube, etc
  - List of plugins included in each configuration
  - Table of keymaps defined in each configuration
- New configuration categories: `LazyVim`, `AstroNvim`, `NvChad`, `LunarVim`
  - Easily install all supported configurations using one of these frameworks
- Easy menu navigation and command line usage with keywords
  - `lazyman` command line now supports `open`, `install`, `info` arguments
    - `lazyman open` to fuzzy select a config to open
    - `lazyman install` to fuzzy select a config to install
    - `lazyman info` to fuzzy select a config to display info
  - Menu interface also supports keywords to fuzzy select a config for an action
  - Additional keywords supported: `health`, `init`, `remove`, `search`, `status`
- Auto-install of [Bob](https://github.com/MordechaiHadad/bob) Neovim version manager (optional)
- Multiple namespace support in `nvim-Lazyman` default `lazyman` Neovim configuration
  - Select which namespace to use in `lua/configuration.lua` or via the menu interface
  - Both namespaces can be configured vi the Lazyman configuration menus (`lazyman -F`)
- `LazyIde` and `Webdev` configurations now configurable via a menu interface
- Fuzzy select a configuration for a health check
- Improved [get_conf.lua](#get-configuration-script) can return option or variable value
- Search for plugins and get a list of supported configurations using that plugin

## Usage

The [lazyman.sh](lazyman.sh) script is located in `~/.config/nvim-Lazyman`.
It installs itself as `$HOME/.local/bin/lazyman`. If `$HOME/.local/bin` is
in your execution `PATH` then `lazyman` can be executed from the command
line as simply `lazyman`. The manual page can be viewed with `man lazyman`.
Within Neovim the `Lazyman` help doc can be viewed with `:h Lazyman`.

The `lazyman` command can be used to install and initialize multiple Neovim
configurations. For example, to install and initialize the LazyVim starter
configuration execute the command `lazyman -l`. To install and initialize
all supported Lazyman Neovim configurations execute `lazyman -A -y`, to install
just the "Base" Neovim configurations run `lazyman -B -y`, the "Personal"
configs with `lazyman -W -y`, and the "Starter" configs with `lazyman -X -y`.

All of these actions and more are available in the Lazyman Menu displayed
when executing the `lazyman` command with no arguments.

After installing and initializing Neovim configurations with `lazyman`,
easily explore various configurations with the `lazyman -E <config> …`
command. See the
[Using lazyman to explore configurations](#using-lazyman-to-explore-configurations)
section below for details.

To remove a Lazyman Neovim configuration execute `lazyman -r -N <nvimdir>`.
To remove the configuration and all its backups, `lazyman -R -N <nvimdir>`.
To remove all installed Lazyman Neovim configurations and their backups
without being prompted to proceed, execute `lazyman -A -R -y`.

<details><summary>Click here to view the

**Lazyman usage message**

</summary>

```
Usage: lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-E config] [-e]
   [-f path] [-F menu] [-g] [-i group] [-j] [-k] [-l] [-m] [-M] [-s]
   [-S] [-v] [-n] [-O name] [-p] [-P] [-q] [-Q] [-h] [-H] [-I] [-J]
   [-L lang] [-rR] [-C url] [-D subdir] [-N nvimdir] [-G] [-tT] [-U]
   [-V url] [-w conf] [-W] [-x conf] [-X] [-y] [-Y] [-z] [-Z] [-K conf] [-u]
   [health] [info] [init] [install [bob]] [open] [remove] [search] [status] [usage]
Where:
    -A indicates install all supported Neovim configurations
    -a indicates install and initialize AstroNvimPlus Neovim configuration
    -B indicates install and initialize all 'Base' Neovim configurations
    -b 'branch' specifies an nvim-Lazyman git branch to checkout
    -c indicates install and initialize NvChad Neovim configuration
    -d indicates debug mode
    -D 'subdir' specifies the subdirectory of the repository to retrieve
    -e indicates install and initialize Ecovim Neovim configuration
    -E 'config' execute 'nvim' with 'config' Neovim configuration
       'config' can be one of:
           'lazyman', 'astronvim', 'kickstart', 'magicvim',
           'ecovim', 'nvchad', 'lazyvim', 'lunarvim', 'spacevim'
       or any Neovim configuration directory in '~/.config'
           (e.g. 'lazyman -E lazyvim foo.lua')
    -f 'path' fix treesitter 'help' parser in config file 'path'
    -F 'menu' indicates present the specified Lazyman menu
       'menu' can be one of:
           'main', 'conf', 'lsp', 'format', 'plugin', 'lazyide', 'webdev'
    -G indicates no plugin manager, initialize with :TSUpdate
    -g indicates install and initialize Abstract Neovim configuration
    -j indicates install and initialize BasicIde Neovim configuration
    -k indicates install and initialize Kickstart Neovim configuration
    -l indicates install and initialize LazyVim Neovim configuration
    -m indicates install and initialize MagicVim Neovim configuration
    -M indicates install and initialize Mini Neovim configuration
    -O 'name' indicates set Lazyman configuration to namespace 'name'
       'name' can be one of: free onno candy
    -s indicates install and initialize SpaceVim Neovim configuration
    -v indicates install and initialize LunarVim Neovim configuration
    -S indicates show Neovim configuration fuzzy selector menu
    -n indicates dry run, don't actually do anything, just printf's
    -p indicates use vim-plug rather than Lazy to initialize
    -P indicates use Packer rather than Lazy to initialize
    -q indicates quiet install
    -Q indicates exit after performing specified action(s)
    -h indicates use Homebrew to install rather than native pkg mgr
        (Pacman is always used on Arch Linux, Homebrew on macOS)
    -H indicates compile and install the nightly Neovim build
    -i 'group' specifies a group to install/remove/update
       'group' can be one of:
           astronvim kickstart lazyvim lunarvim nvchad packer plug
    -I indicates install all language servers and tools for coding diagnostics
    -J indicates install indicated repo as an AstroNvim custom configuration
    -L 'lang' indicates install the 'lang' Language configuration
       'lang' can be one of:
           All AlanVim Allaman CatNvim Cpp Go Go2one Insis Knvim LaTeX LazyIde LunarIde LvimIde Magidc Nv NV-IDE Orange Python Rust SaleVim Shuvro Webdev
    -r indicates remove the previously installed configuration
    -R indicates remove previously installed configuration and backups
    -C 'url' specifies a URL to a Neovim configuration git repository
    -N 'nvimdir' specifies the folder name to use for the config given by -C
    -t indicates list all installed Lazyman Neovim configurations
    -T indicates list all uninstalled Lazyman Neovim configurations
    -U indicates update an existing configuration
    -V 'url' specifies an NvChad user configuration git repository
    -w 'conf' indicates install and initialize Personal 'conf' config
       'conf' can be one of:
           All Adib Ahsan Artur Beethoven Brain CandyVim Charles Chokerman Craftzdog Daniel Dillon Elianiva Elijah Enrique Kristijan Heiker J4de Josean JustinLvim JustinNvim Kodo LamarVim Lukas LvimAdib Maddison Metis Mini ONNO OnMyWay Optixal Orhun Primeagen Rafi Roiz Simple Slydragonn Spider Traap Wuelner xero Xiao
    -W indicates install and initialize all 'Personal' Neovim configurations
    -x 'conf' indicates install and initialize nvim-starter 'conf' config
       'conf' can be one of:
           All 2k AstroNvimStart Barebones Basic CodeArt Cosmic Ember Fennel HardHacker JustinOhMy Kabin Kickstart Micah Normal NvPak Modern pde Rohit Scratch SingleFile BasicLsp BasicMason Extralight LspCmp Minimal StartBase Opinion StartLsp StartMason Modular
    -X indicates install and initialize all 'Starter' configs
    -y indicates do not prompt, answer 'yes' to any prompt
    -Y indicates use the following arguments as 'name'/'value' to set Lazyman config
       For example: lazyman -Y theme kanagawa
       If the 'name' argument is 'get' then the current value is returned
    -z indicates do not run nvim after initialization
    -Z indicates do not install Homebrew, Neovim, or any other tools
    -K 'conf' indicates install 'conf' in development unsupported config
    -u displays this usage message and exits
    'health' generate and display a health check for a configuration
    'info' open an information page for a configuration in the default browser
    'init' initialize specified Neovim configuration and exit
    'install' fuzzy search and select configuration to install
    'install bob' install the Bob Neovim version manager
    'open' fuzzy search and select configuration to open
    'remove' fuzzy search and select configuration to remove
    'search' fuzzy search and select configurations for a plugin
    'status' displays a brief status report and exits
    'usage' displays this usage message and exits
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

Lazyman Neovim help can be viewed inside Neovim with `:h Lazyman`.

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

##### Namespace selection

The `Lazyman` Neovim configuration contains two separate and distinct
configurations. The setting `conf.namespace` in `lua/configuration.lua`
controls which configuration is active. The supported values for
`conf.namespace` are `free` and `onno`. The `free` namespace is the same
configuration used in previous releases of `Lazyman`. The `onno` namespace
is based on the [ONNO](https://lazyman.dev/info/ONNO.html) configuration with modifications and
enhancements to integrate this config with `lazyman`.

To use the `free` namespace, set:

```
conf.namespace = "free"
```

To use the `onno` namespace, set:

```
conf.namespace = "onno"
```

This setting is configurable via the `lazyman` menu system, as are most
of the `Lazyman` configuration settings.

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
- [monokai-pro](https://github.com/loctvl842/monokai-pro.nvim)
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
  - custom
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
- Enable display of ascii art
  - `conf.enable_asciiart = false`
- Delete buffers and close files without closing your windows
  - `conf.enable_bbye = true`
- Enable display of custom cheatsheets
  - `conf.enable_cheatsheet = true`
- Enable coding plugins for diagnostics, debugging, and language sservers
  - `conf.enable_coding = true`
- Enable compile plugin to compile and run current file
  - `conf.enable_compile = false`
- If coding is enabled, enable Github Copilot
  - `conf.enable_copilot = false`
- If coding is enabled, enable Neoai, <https://github.com/Bryley/neoai.nvim>
  - `conf.enable_neoai = false`
- Enable dressing plugin for improved default vim.ui interfaces
  - `conf.enable_dressing = true`
- Enable easy motions, can be one of "hop", "leap", or "none"
  - `conf.enable_motion = "leap"`
- Enable note making using Markdown preview and Obsidian plugins
  - `conf.enable_notes = true`
- Enable renamer plugin for VS Code-like renaming UI
  - `conf.enable_renamer = true`
- Enable ranger in a floating window
  - `conf.enable_ranger_float = true`
- Enable multiple cursors
  - `conf.enable_multi_cursor = true`
- Neo-tree or nvim-tree, false will enable nvim-tree
  - `conf.enable_neotree = true`
- Replace the UI for messages, cmdline and the popup menu
  - `conf.enable_noice = true`
- Enable ChatGPT (set `OPENAI_API_KEY` environment variable)
  - `conf.enable_chatgpt = false`
- Enable the wilder plugin
  - `conf.enable_wilder = false`
- The statusline (lualine) can be enabled or disabled
  - `conf.enable_statusline = true`
- The winbar with navic location can be one of barbecue, standard, or none
  - `conf.enable_winbar = "standard"`
- Enable LSP progress in winbar
  - `conf.enable_lualine_lsp_progress = true`
- Enable the rebelot/terminal.nvim terminal plugin
  - `conf.enable_terminal = true`
- Enable playing games inside Neovim!
  - `conf.enable_games = true`
- Enable the Alpha dashboard
  - `conf.dashboard = "alpha"`
- Enable the Neovim bookmarks plugin (<https://github.com/ldelossa/nvim-ide>)
  - `conf.enable_bookmarks = false`
- Enable the Neovim IDE plugin (<https://github.com/ldelossa/nvim-ide>)
  - `conf.enable_ide = false`
- Enable Navigator
  - `conf.enable_navigator = true`
- Enable Project manager
  - `conf.enable_project = true`
- Enable smooth scrolling with the `neoscroll` plugin
  - `conf.enable_smooth_scrolling = true`
- Enable window picker
  - `conf.enable_picker = true`
- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
  - `conf.show_diagnostics = "icons"`
- Enable semantic highlighting
  - `conf.enable_semantic_highlighting = true`
- Convert semantic highlights to treesitter highlights
  - `conf.convert_semantic_highlighting = true`

Additional plugin configuration and options are available in `configuration.lua`.

<details><summary>Click here to view the

**Lazyman default `configuration.lua`**

</summary>

```lua
local conf = {}

-- Namespace to use, currently available namespaces are "free" and "onno"
-- Switching namespace changes to a completely different configuration
-- This is an example of how to incorporate multiple Neovim configurations
-- into a single configuration.
conf.namespace = "free"
--
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
--   catppuccin:  latte, frappe, macchiato, mocha, custom
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
conf.number = true
-- enable mouse see :h mouse
conf.mouse = "nv"
-- set relative numbered lines
conf.relative_number = true
-- always show tabs; 0 never, 1 only if at least two tab pages, 2 always
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
--
-- AI coding assistants - ChatGPT, Code Explain, Codeium, Copilot, NeoAI
-- Enable Github Copilot if you have an account, it is superior
--
-- Enable ChatGPT (set OPENAI_API_KEY environment variable)
conf.enable_chatgpt = false
-- Enable Code Explain (requires 3.5GB model, uses GPT4ALL)
conf.enable_codeexplain = false
-- Enable Codeium
conf.enable_codeium = false
-- Enable Github Copilot
conf.enable_copilot = false
-- Enable Neoai, https://github.com/Bryley/neoai.nvim
conf.enable_neoai = false
--
-- Enable display of ascii art
conf.enable_asciiart = false
-- Delete buffers and close files without closing your windows
conf.enable_bbye = true
-- Enable display of custom cheatsheets
conf.enable_cheatsheet = true
-- Enable coding plugins for diagnostics, debugging, and language servers
conf.enable_coding = true
-- Enable compile plugin to compile and run current file
conf.enable_compile = false
-- Enable dressing plugin for improved default vim.ui interfaces
conf.enable_dressing = true
-- Enable easy motions, can be one of "hop", "leap", or "none"
conf.enable_motion = "leap"
-- Enable note making using Markdown preview and Obsidian plugins
conf.enable_notes = false
-- If notes enabled, markdown preview to use (preview, peek, none)
conf.markdown_preview = "peek"
-- If notes enabled, Neorg notes folders, multiple folders supported
conf.neorg_notes = {
  "~/Documents/Notes/Neorg", -- NEORG_NOTES
  -- "XXXXX", -- NEORG_NOTES
  -- "YYYYY", -- NEORG_NOTES
  -- "ZZZZZ", -- NEORG_NOTES
}
-- Enable note making using Obsidian
conf.enable_obsidian = false
-- If Obsidian enabled, Obsidian vault folder (relative to HOME)
conf.obsidian_vault = "Documents/Notes/Obsidian"
-- Enable renamer plugin for VS Code-like renaming UI
conf.enable_renamer = true
-- Enable ranger in a floating window
conf.enable_ranger_float = true
-- Enable multiple cursors
conf.enable_multi_cursor = false
-- Highlight sections of code which might have security or quality issues
conf.enable_securitree = false
-- neovim session manager to use: persistence, possession, or none
conf.session_manager = "persistence"
-- File explorer tree plugin: neo-tree, nvim-tree, or none
conf.file_tree = "neo-tree"
-- Replace the UI for messages, cmdline and the popupmenu
conf.enable_noice = true
-- Enable smart column display
conf.enable_smartcolumn = true
-- Enable 'StartupTime' command
conf.enable_startuptime = true
-- Add/change/delete surrounding delimiter pairs with ease
conf.enable_surround = true
-- Enable the wilder plugin
conf.enable_wilder = false
--
-- Lualine, Tabline, and Winbar configuration
--
-- The Lualine style can be "free" or "onno"
conf.lualine_style = "free"
-- Separator for 'onno' style lualine components, can be "bubble" or "arrow"
conf.lualine_separator = "bubble"
-- Enable fancy lualine components
conf.enable_fancy = false
-- The statusline (lualine), tabline, and winbar can each be enabled or disabled
-- Enable statusline (lualine)
conf.enable_statusline = true
-- Enable status in tabline
conf.enable_status_in_tab = false
-- Enable winbar with navic location
-- Can be one of "barbecue", "standard", or "none"
-- Barbecue provides a clickable navic location, standard has more info
conf.enable_winbar = "standard"
-- Enable LSP progress in winbar
conf.enable_lualine_lsp_progress = true
-- Enable rebelot/terminal.nvim
--
conf.enable_terminal = true
-- Enable toggleterm plugin
conf.enable_toggleterm = true
-- Enable playing games inside Neovim!
conf.enable_games = true
-- Enable the WakaTime metrics dashboard (requires API key)
conf.enable_wakatime = false
-- Enable zen mode distraction-free coding
conf.enable_zenmode = true
-- if zenmode enabled then enable terminal support as well
conf.enable_kitty = false
conf.enable_alacritty = false
conf.enable_wezterm = false
-- Enable a dashboard, can be one of "alpha", "dash", "mini", or "none"
conf.dashboard = "alpha"
-- Number of recent files, dashboard header and quick links settings
-- only apply to the Alpha dashboard
-- Number of recent files shown in dashboard
-- 0 disables showing recent files
conf.dashboard_recent_files = 3
-- Enable the header of the dashboard
conf.enable_dashboard_header = false
-- Enable quick links of the dashboard
conf.enable_dashboard_quick_links = true
-- Enable either the Drop screensaver or the Zone screensaver
-- Drop can be one of xmas, stars, leaves, snow, spring, summer, or drop
-- Zone can be one of treadmill, matrix, epilepsy, vanish, or zone
-- 'drop' indicates a random drop, 'zone' a random zone
-- 'random' to randomly select between the two, 'none' to disable
conf.enable_screensaver = "none"
-- Screensaver timeout in minutes
conf.screensaver_timeout = 15
-- Enable the Neovim bookmarks plugin (https://github.com/ldelossa/nvim-ide)
conf.enable_bookmarks = false
-- Enable the Neovim IDE plugin (https://github.com/ldelossa/nvim-ide)
conf.enable_ide = false
-- Enable Navigator
conf.enable_navigator = true
-- Enable Project manager
conf.enable_project = true
-- Enable window picker
conf.enable_picker = true
-- Enable smooth scrolling with neoscroll plugin
conf.enable_smooth_scrolling = true
-- Enable the Neotest plugin
conf.enable_neotest = false

-- PLUGINS CONFIGURATION
-- media backend, one of "ueberzug"|"viu"|"chafa"|"jp2a"|"catimg"|"none"
conf.media_backend = "jp2a"
-- Style of indentation, can be one of:
-- 'background' colored' 'context' 'listchars' 'mini' 'simple' 'none'
conf.indentline_style = "mini"
-- treesitter parsers to be installed
conf.treesitter_ensure_installed = {
  "bash",
  "cpp",
  "go",
  "graphql",
  "html",
  "java",
  "javascript",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "query",
  "php",
  "python",
  "regex",
  "rust",
  "scss",
  "toml",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "yaml",
}
-- Enable clangd or ccls for C/C++ diagnostics
-- Note: if enabled then the tool must be installed and in the execution path
conf.enable_ccls = true
conf.enable_clangd = false
-- LSPs that should be installed by Mason-lspconfig
-- Leave the 'LSP_SERVERS' trailing comment, it is used by lazyman
conf.lsp_servers = {
  "bashls", -- LSP_SERVERS
  "cssmodules_ls", -- LSP_SERVERS
  "denols", -- LSP_SERVERS
  "dockerls", -- LSP_SERVERS
  -- "eslint",     -- LSP_SERVERS
  "gopls", -- LSP_SERVERS
  "graphql", -- LSP_SERVERS
  "html", -- LSP_SERVERS
  "jdtls", -- LSP_SERVERS
  "jsonls", -- LSP_SERVERS
  "julials", -- LSP_SERVERS
  "ltex", -- LSP_SERVERS
  "lua_ls", -- LSP_SERVERS
  "marksman", -- LSP_SERVERS
  "pylsp", -- LSP_SERVERS
  "pyright", -- LSP_SERVERS
  "sqlls", -- LSP_SERVERS
  "tailwindcss", -- LSP_SERVERS
  "texlab", -- LSP_SERVERS
  "tsserver", -- LSP_SERVERS
  "vimls", -- LSP_SERVERS
  "yamlls", -- LSP_SERVERS
}
-- Formatters and linters installed by Mason
conf.formatters_linters = {
  "actionlint", -- FORMATTERS_LINTERS
  "gofumpt", -- FORMATTERS_LINTERS
  "goimports", -- FORMATTERS_LINTERS
  "golines", -- FORMATTERS_LINTERS
  "golangci-lint", -- FORMATTERS_LINTERS
  "google-java-format", -- FORMATTERS_LINTERS
  "latexindent", -- FORMATTERS_LINTERS
  "markdownlint", -- FORMATTERS_LINTERS
  "prettier", -- FORMATTERS_LINTERS
  "sql-formatter", -- FORMATTERS_LINTERS
  "shellcheck", -- FORMATTERS_LINTERS
  -- "shfmt",           -- FORMATTERS_LINTERS
  "stylua", -- FORMATTERS_LINTERS
  "tflint", -- FORMATTERS_LINTERS
  "yamllint", -- FORMATTERS_LINTERS
}
-- Formatters and linters installed externally
conf.external_formatters = {
  -- "beautysh",        -- FORMATTERS_LINTERS
  "black", -- FORMATTERS_LINTERS
  "ruff", -- FORMATTERS_LINTERS
}
-- enable greping in hidden files
conf.telescope_grep_hidden = true
-- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
--   "none":  diagnostics are disabled but still underlined
--   "icons": only an icon will show, use ',de' to see the diagnostic
--   "popup": an icon will show and a popup with the diagnostic will appear
conf.show_diagnostics = "icons"
-- Enable semantic highlighting
conf.enable_semantic_highlighting = true
-- Convert semantic highlights to treesitter highlights
conf.convert_semantic_highlighting = true

return conf
```

</details>

### Lazyman Neovim Terminal

The `Lazyman` Neovim configuration includes Neovim Terminal management via
[terminal.nvim](https://github.com/rebelot/terminal.nvim). This Neovim terminal
is preconfigured for execution of the `lazyman` command. Shortcut key
bindings to execute `lazyman` in a Neovim terminal have been provided:
`<leader>lm` to bring up the main Lazyman menu, and `<leader>lc` to bring up
the Lazyman configuration menu. While in Neovim with the default
`nvim-Lazyman` configuration, pressing `,lm` will execute the `lazyman`
command in a Neovim floating terminal window and pressing `,lc` will
execute `lazyman -F` in a terminal window. Alternately, executing the
Neovim command `:Lazyman` will also bring up the `lazyman` command
in a Neovim terminal.

The Lazyman Neovim configuration includes an autocmd to automatically
enter insert mode when opening the Neovim Terminal. This allows
immediate input to the `lazyman` prompt. While in the Neovim Terminal
the normal Neovim mode, motion, and command key bindings are in effect.
For example, to leave insert mode press `<ESC>`, to re-enter insert
mode press `i` or `a`.

If [Asciiville](https://github.com/doctorfree/Asciiville) is installed,
pressing `,A` or executing the `:Asciiville` Neovim command will execute
the `asciiville` command in a Neovim floating terminal window.

If the `htop` command is available, `:Htop` will execute the `htop` system
monitor in a floating Neovim terminal window.

This preconfigured Neovim terminal capability is only available in the
`Lazyman` Neovim configuration and not in the other configs.

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

## Notes

### Lazy

The `nvim-Lazyman` Neovim configuration uses the
[Lazy plugin manager](https://github.com/folke/lazy.nvim).
The [Lazyman Wiki](https://github.com/doctorfree/nvim-lazyman/wiki) includes
a list of the
[Lazy loaded plugins](https://github.com/doctorfree/nvim-lazyman/wiki/Lazy-Profile)
in the `nvim-Lazyman` Neovim configuration sorted by
[load order](https://github.com/doctorfree/nvim-lazyman/wiki/Lazy-Profile#sorted-by-load-order)
and
[load time](https://github.com/doctorfree/nvim-lazyman/wiki/Lazy-Profile#sorted-by-loading-time).

### Mason

The `nvim-Lazyman` Neovim configuration uses the
[Mason portable package manager](https://github.com/williamboman/mason.nvim)
to easily install and manage LSP servers, DAP servers, linters, and formatters.

The first time `nvim` is executed Mason will install several packages required
by the new Neovim configuration. Please be patient. If you exit Neovim prior
to completion of the Mason installs, it will resume the next session.

The [Lazyman Wiki](https://github.com/doctorfree/nvim-lazyman/wiki) includes
a list of the
[Mason installed packages](https://github.com/doctorfree/nvim-lazyman/wiki/Mason-Installed)
in the `nvim-Lazyman` Neovim configuration.

### Packer

The `lazyman` command can be used to install and initialize Neovim configurations
using the `Packer` plugin manager. To install and initialize a `Packer` managed
Neovim configuration, specify the `-P` flag on the `lazyman` command line.

For example, to install and initialize the `Abstract` Neovim configuration
at <https://github.com/Abstract-IDE/Abstract> invoke `lazyman` as follows:

```bash
lazyman -C https://github.com/Abstract-IDE/Abstract -N nvim-Abstract -P
```

This will clone the indicated repository into `$HOME/.config/nvim-Abstract`
and initialize it using Packer with:

```bash
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

After `export NVIM_APPNAME="nvim-Abstract"`, invoking `nvim` will bring up
the Abstract Neovim configuration. Note, `Abstract` is now a supported
Lazyman Neovim configuration and can be installed with `lazyman -g`.

Another Packer based Neovim configuration, this one using Fennel, is included
as a Lazyman supported "Personal" config:

```bash
lazyman -w Fennel
```

To begin exploring this Neovim configuration:

```bash
NVIM_APPNAME="nvim-Fennel" nvim ~/.config/nvim-Fennel/fnl/conf/init.fnl
```

Another example of a Packer based Neovim configuration is the excellent
`MagicVim` config, a fully supported Lazyman Neovim config. To install and
initialize `MagicVim`:

```bash
lazyman -m
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
the Optixal Neovim configuration. Note, the `Optixal` configuration is one
of the supported Lazyman configs and can be installed with `lazyman -w Optixal`.

Another Plug based Neovim configuration serves as a second example:

```bash
lazyman -C https://github.com/offa/nvim-config -N nvim-Offa -p
```

To begin exploring this Neovim configuration:

```bash
NVIM_APPNAME="nvim-Offa" nvim ~/.config/nvim-Offa/init.lua
```

Also included as a supported Lazyman config is the previous Neovim
configuration of the author which uses `vim-plug` and a vimscript
initialization file. Install the Lazyman `Plug` config with the command
`lazyman -w Plug` and start exploring with:

```bash
NVIM_APPNAME="nvim-Plug" nvim ~/.config/nvim-Plug/init.vim
```

#### Plug with Vim runtimepath manager

Finally, consider this Neovim configuration written in vimscript, stored
in a subdirectory of a non-default git branch, using the `vim-plug` plugin
manager, and relying on `pathogen.vim` to manage the runtimepath. Installing
this Neovim configuration with `lazyman` requires several command line options:

```bash
lazyman -b vps -C https://github.com/xero/dotfiles \
        -D vim/.config/nvim -N nvim-Xero -p
```

This installs and initializes the configuration in `~/.config/nvim-Xero/` but
fails to install `pathogen`. The `pathogen.vim` runtimepath manager can be
installed with:

```bash
cfgdir="${HOME}/.config/nvim-Xero"
mkdir -p ${cfgdir}/autoload ${cfgdir}/bundle
curl -LSso ${cfgdir}/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Open the configuration with `NVIM_APPNAME="nvim-Xero" nvim` and issue the
command `:PlugInstall`. Now the configuration is properly initialized.

### Health check

After installing and initializing the Neovim configuration, perform a health
check while in Neovim with `:checkhealth`. Examine any warnings or errors and
perform any necessary remedial actions such as installing missing packages
or resolving keymap conflicts.

### Profiling and benchmarking

A Makefile for profiling and benchmarking Neovim configurations is included
in the `Lazyman` Neovim configuration at `~/.config/nvim-Lazyman/Makefile`.

To create startup and loading profiles for a Neovim configuration:

```bash
cd ~/.config/nvim-<Name> # e.g. 'cd ~/.config/nvim-AstroNvim'
export NVIM_APPNAME="nvim-<Name>" # e.g. 'export NVIM_APPNAME="nvim-AstroNvim"
make -f ~/.config/nvim-Lazyman/Makefile profile
```

The files `profile-startup.log` and `profile-viml.log` will be generated.

Benchmarking a Neovim configuration startup requires `hyperfine`. If not present,
install `hyperfine` with `cargo`:

```bash
cargo install --locked hyperfine
```

To benchmark a Neovim configuration:

```bash
cd ~/.config/nvim-<Name> # e.g. 'cd ~/.config/nvim-LazyVim'
export NVIM_APPNAME="nvim-<Name>" # e.g. 'export NVIM_APPNAME="nvim-LazyVim"
make -f ~/.config/nvim-Lazyman/Makefile benchmark
```

The files `profile-bench-baseline.md`, `profile-bench-startup.md`,
`profile-bench-baseline.log` and `profile-bench-startup.log` will be generated.

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
convenience aliases and shell functions for Lazyman installed Neovim
configurations. One of these is the `nvims` shell function which dynamically
creates a fuzzy searchable menu of installed Neovim configurations and launches
Neovim with the selected Lazyman Neovim configuration.

See `~/.config/nvim-Lazyman/.lazymanrc`.

Similarly, a `neovides` shell function can be used to select a Neovim
configuration for use with the Neovim GUI `neovide`.

Both the `nvims` shell function and `neovides` shell function accept a
`-R` flag which indicates removal of the selected Neovim configuration.
Also supported is the `-C filter` option to `nvims` and `neovides` which
specifies a filter string to match when generating the list of Neovim
configurations to search and select.

The fuzzy searchable/selectable menu of Neovim configurations can also
be shown with the command `lazyman -S`. Note also that both the `nvims`
shell function and the `lazyman -S` command can accept additional filename
arguments which are then passed to Neovim. For example, to edit
`/tmp/foo.lua` with a Neovim configuration selected from the `nvims` menu:

```bash
nvims /tmp/foo.lua
```

Execute `nvims` directly at the shell prompt or by using the convenience
key binding `ctrl-n`.

Similarly, if `neovide` is found in the execution PATH then a fuzzy
selectable menu is provided with the `neovides` shell function and
convenience key binding of `ctrl-N` to bring up that menu.

The following command line options are available with `nvims` and `neovides`:

`-c command` : specifies an `Ex` command to be executed after the first file has been read

`-C filter` : specifies a filter to use when generating the list of configurations to select from

`-I` : indicates display of the selected Neovim configuration information document

`-R` : indicates removal of the selected Neovim configurations

`-S file` : Executes `Vimscript` or `Lua` in `file` after the first file has been read. If no `-S` argument is provided then `~/.config/nvim-Lazyman/overrides.lua` is used if not empty.

`-U` : displays a usage message and exits

Without arguments `nvims` and `neovides` generate a fuzzy search and selectable
menu of all Lazyman installed Neovim configurations. Neovim or neovide will be
opened using the selected configuration.

#### Example nvims and neovides usage

`nvims` : presents a fuzzy searchable and selectable menu of Neovim configurations and opens Neovim using the selected configuration

`neovides` : presents a fuzzy searchable and selectable menu of Neovim configurations and opens Neovide using the selected configuration

`nvims -R` : presents a fuzzy searchable and selectable menu of Neovim configurations and removes the selected Neovim configuration

`nvims -C astro foo.lua` : presents a fuzzy searchable and selectable menu of Neovim configurations with names containing the case insensitive string 'astro' and opens the file `foo.lua` with Neovim using the selected configuration

<details><summary>Click here to view the

**Lazyman `.lazymanrc` shell aliases and functions**

</summary>

```bash
# $HOME/.config/nvim-Lazyman/.lazymanrc
# This file should be sourced from the shell initialization file
# e.g. $HOME/.bashrc or $HOME/.zshrc
#
# Command to open a URL
# Set this to override the defaults:
#   On macOS the default is the 'open' command
#   Linux default is 'python3 -m webbrowser' then 'xdg-open' then 'gio open'
# export URL_OPEN_COMMAND="your custom command"
# For example, to use 'gio' rather than Python's webbrowser module on Linux:
# export URL_OPEN_COMMAND="gio open"
#
# To specify the browser, set the BROWSER environment variable. For example:
# export BROWSER="w3m"
#
# Bob neovim version manager path
[ -d ${HOME}/.local/share/bob/nvim-bin ] && {
  export PATH="${HOME}/.local/share/bob/nvim-bin${PATH:+:${PATH}}"
}
# Aliases for lsd, tldr, and bat if they exist
command -v lsd > /dev/null && alias ls='lsd --group-dirs first' && \
	alias tree='lsd --tree' && alias lss='lsd --group-dirs first'
command -v tldr > /dev/null && {
  command -v fzf > /dev/null && {
    alias tldrf='tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right:70% | xargs tldr --color=always'
  }
}
command -v bat > /dev/null && alias less='bat'
command -v batcat > /dev/null && \
	alias bat='batcat' && \
	alias less='batcat'
# To use Vim
command -v vim > /dev/null && alias vi='vim'
# To use Neovim
command -v nvim > /dev/null && {
  # For compatibility with earlier versions of .lazymanrc
  if alias nvim >/dev/null 2>&1; then
    unalias nvim
  fi
  if alias nvims >/dev/null 2>&1; then
    unalias nvims
  fi
  if alias neovides >/dev/null 2>&1; then
    unalias neovides
  fi
  alias vi='nvim'
  # Uncomment this line to use Neovim even when you type vim
  # Leave commented to use vim as a backup editor if nvim not found
  # alias vim='nvim'
  function set_items() {
    while IFS= read -r ndir
    do
      [ -d ${HOME}/.config/${ndir} ] && {
        alias ${ndir}="NVIM_APPNAME=${ndir} nvim"
        entry=$(echo ${ndir} | sed -e "s/nvim-//")
        items+=("${entry}")
        ndirs+=("${ndir}")
      }
    done < "${HOME}/.config/nvim-Lazyman/.nvimdirs"
  }
  items=()
  ndirs=()
  [ -d ${HOME}/.config/nvim ] && {
    alias nvim-default="NVIM_APPNAME=nvim nvim"
  }
  # Add all previously installed Neovim configurations
  [ -f ${HOME}/.config/nvim-Lazyman/.nvimdirs ] && set_items

  function runconfig() {
    cfg="$1"
    shift
    comm="nvim"
    dash=
    [ "${USE_NEOVIDE}" ] && {
      comm="neovide"
      dash='--'
    }
    [ -d "${HOME}/.config/${cfg}" ] || {
      [ -d "${HOME}/.config/nvim-${cfg}" ] && cfg="nvim-${cfg}"
    }

    # Use a file tree explorer for configurations without a dashboard
    case ${cfg} in
      nvim-BasicLsp|nvim-BasicMason|nvim-Enrique|nvim-Extralight|nvim-LspCmp|nvim-Minimal|nvim-Simple)
        explore="Lexplore"
        ;;
      nvim-Kabin|nvim-Lamia|nvim-Kickstart|nvim-Maddison|nvim-Rafi|nvim-SingleFile|nvim-Slydragonn)
        explore="Neotree"
        ;;
      nvim-Cosmic|nvim-Fennel|nvim-Opinion|nvim-Optixal|nvim-Xiao)
        explore="NvimTreeOpen"
        ;;
      nvim-Basic|nvim-Cpp|nvim-Go|nvim-Metis|nvim-Modular|nvim-Python|nvim-Rust|nvim-Scratch|nvim-StartLsp|nvim-StartMason)
        explore="NvimTreeToggle"
        ;;
      nvim-3rd)
        explore='lua local api = require("nvim-tree.api") local tree = require("nvim-tree") api.tree.toggle(true)'
        ;;
      *)
        explore=
        ;;
    esac
    if (( ${#@} )); then
      NVIM_APPNAME="${cfg}" ${comm} ${dash} ${srcopt} ${nvimsrc} ${cmdopt} ${nvimcmd} $@
    else
      if [[ "${explore}" ]]; then
        NVIM_APPNAME="${cfg}" ${comm} ${dash} -c "${explore}"
      else
        NVIM_APPNAME="${cfg}" ${comm}
      fi
    fi
  }

  function nvims_usage() {
    printf "\n\nUsage: $1 [-c command] [-C filter] [-I] [-R] [-S file] [-U] [file1 [file2] ...]"
    printf "\nWhere:"
    printf "\n\t'-c command' : specifies an 'Ex' command to be executed after the first file has been read"
    printf "\n\t'-C filter' : specifies a filter to use when generating the list to select from"
    printf "\n\t'-I' : indicates display of the selected Neovim configuration information document"
    printf "\n\t'-R' : indicates removal of the selected Neovim configurations"
    printf "\n\t'-S file' : Executes 'Vimscript' or 'Lua' in 'file' after the first file has been read. If no '-S' argument is provided then '~/.config/nvim-Lazyman/overrides.lua' is used if not empty"
    printf "\n\t'-U' : displays a usage message and exits"
    printf "\n\nWithout arguments 'nvims' and 'neovides' generate a fuzzy search and selectable"
    printf "\nmenu of all Lazyman installed Neovim configurations. Neovim or neovide will be"
    printf "\nopened using the selected configuration.\n\n"
    return
  }

  function nvims() {
    action="Open"
    info=
    filter=
    remove=
    cmdopt=
    nvimcmd=
    srcopt=
    nvimsrc=
    overfile="${HOME}/.config/nvim-Lazyman/overrides.lua"
    oversize=$(grep -v '^--' "${overfile}")
    [[ -z "${oversize}" ]] || {
      srcopt="-S"
      nvimsrc="${overfile}"
    }
    local OPTIND o a
    while getopts ":c:C:IRS:U" o; do
      case "${o}" in
        c)
          cmdopt="-c"
          nvimcmd="${OPTARG}"
          ;;
        C)
          filter="${OPTARG}"
          ;;
        I)
          info=1
          action="View Info for"
          ;;
        R)
          remove=1
          action="Remove"
          ;;
        S)
          [ -s "${OPTARG}" ] && {
            srcopt="-S"
            nvimsrc="${OPTARG}"
          }
          ;;
        U)
          nvims_usage nvims
          return
          ;;
        \?)
          printf "\nInvalid nvims option"
          nvims_usage nvims
          return
          ;;
      esac
    done
    shift $((OPTIND-1))
    if [ -f ${HOME}/.config/nvim-Lazyman/.nvimdirs ]; then
      items=()
      ndirs=()
      set_items
    fi
    numitems=${#items[@]}
    if [ ${numitems} -eq 1 ]; then
      config="${items[@]:0:1}"
    else
      height=$((numitems * 6))
      [ ${height} -gt 100 ] && height=100
      [ ${height} -lt 20 ] && height=20
      if [ "${filter}" ]; then
        config=$(printf "%s\n" "${items[@]}" | grep -i ${filter} | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      else
        config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      fi
    fi
    if [[ -z ${config} ]]; then
      echo "Nothing selected"
      return 0
    else
      if [ -d ${HOME}/.config/nvim-${config} ]; then
        config="nvim-${config}"
        [[ -z ${remove} ]] && [[ -z ${info} ]] && {
          alias vi="NVIM_APPNAME=${NVIM_APPNAME:-${config}} nvim"
        }
      else
        [ -d ${HOME}/.config/${config} ] || {
          echo "Cannot locate ${config} Neovim configuration directory"
          return 0
        }
      fi
    fi
    if [[ -z ${remove} ]]; then
      if [[ -z ${info} ]]; then
        export USE_NEOVIDE=
        runconfig "${config}" $@
      else
        lazyman -N "${config}" info
      fi
    else
      [[ "${config}" == "nvim-Lazyman" ]] || lazyman -R -N ${config}
    fi
  }

  function neovides() {
    action="Open"
    info=
    filter=
    remove=
    cmdopt=
    nvimcmd=
    srcopt=
    nvimsrc=
    overfile="${HOME}/.config/nvim-Lazyman/overrides.lua"
    oversize=$(grep -v '^--' "${overfile}")
    [[ -z "${oversize}" ]] || {
      srcopt="-S"
      nvimsrc="${overfile}"
    }
    local OPTIND o a
    while getopts ":c:C:IRS:U" o; do
      case "${o}" in
        c)
          cmdopt="-c"
          nvimcmd="${OPTARG}"
          ;;
        C)
          filter="${OPTARG}"
          ;;
        I)
          info=1
          action="View Info for"
          ;;
        R)
          remove=1
          action="Remove"
          ;;
        S)
          [ -s "${OPTARG}" ] && {
            srcopt="-S"
            nvimsrc="${OPTARG}"
          }
          ;;
        U)
          nvims_usage neovides
          return
          ;;
        \?)
          printf "\nInvalid neovides option"
          nvims_usage neovides
          return
          ;;
      esac
    done
    shift $((OPTIND-1))
    if [ -f ${HOME}/.config/nvim-Lazyman/.nvimdirs ]; then
      items=()
      ndirs=()
      set_items
    fi
    numitems=${#items[@]}
    if [ ${numitems} -eq 1 ]; then
      config="${items[@]:0:1}"
    else
      height=$((numitems * 6))
      [ ${height} -gt 100 ] && height=100
      [ ${height} -lt 20 ] && height=20
      if [ "${filter}" ]; then
        config=$(printf "%s\n" "${items[@]}" | grep -i ${filter} | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      else
        config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      fi
    fi
    if [[ -z ${config} ]]; then
      echo "Nothing selected"
      return 0
    else
      if [ -d ${HOME}/.config/nvim-${config} ]; then
        config="nvim-${config}"
        [[ -z ${remove} ]] && [[ -z ${info} ]] && {
          alias neovide="NVIM_APPNAME=${NVIM_APPNAME:-${config}} neovide"
        }
      else
        [ -d ${HOME}/.config/${config} ] || {
          echo "Cannot locate ${config} Neovim configuration directory"
          return 0
        }
      fi
    fi
    if [[ -z ${remove} ]]; then
      if [[ -z ${info} ]]; then
        export USE_NEOVIDE=1
        runconfig "${config}" $@
      else
        lazyman -N "${config}" info
      fi
    else
      [[ "${config}" == "nvim-Lazyman" ]] || lazyman -R -N ${config}
    fi
  }
}

# Add ~/.local/bin to PATH if it exists
[ -d $HOME/.local/bin ] && {
  [[ ":$PATH:" == *":$HOME/.local/bin:"* ]] || {
    export PATH="$PATH:$HOME/.local/bin"
  }
}
# Add ~/.cargo/bin to PATH if it exists
[ -d $HOME/.cargo/bin ] && {
  [[ ":$PATH:" == *":$HOME/.cargo/bin:"* ]] || {
    export PATH="$PATH:$HOME/.cargo/bin"
  }
}
# Add ~/.luarocks/bin to PATH if it exists
[ -d $HOME/.luarocks/bin ] && {
  [[ ":$PATH:" == *":$HOME/.luarocks/bin:"* ]] || {
    export PATH="$PATH:$HOME/.luarocks/bin"
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

Similarly, if `neovide` is found in the execution PATH then a fuzzy
selectable menu is provided with the `neovides` shell function and
convenience key binding of `ctrl-N` to bring up that menu.

<details><summary>Click here to view the

**Lazyman `.nvimsbind` shell key binding file**

</summary>

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
command -v neovide > /dev/null && {
  if [ -n "$($SHELL -c 'echo $ZSH_VERSION')" ]; then
   bindkey -s ^N "neovides\n"
  elif [ -n "$($SHELL -c 'echo $BASH_VERSION')" ]; then
   bind -x '"\C-N": neovides'
  else
   bindkey -s ^N "neovides\n"
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

The `.lazymanrc` file also creates aliases for `ls`, `less`, and others
including a `tldrf` alias that allows fuzzy searching and selecting from
the list of cheatsheets supported by `tldr`. Try out the `tldrf` command
to quickly and easily display documentation for thousands of commands.
The idea for the `tldrf` alias came from another
[video by Elijah Manor](https://youtu.be/4EE7qlTaO7c).

### Using aliases

In addition to exporting `NVIM_APPNAME` in your shell initialization file, you
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

### Open URL command

The `lazyman` command includes support for opening Neovim configuration info
documents in a browser. The command used to open a file URL varies from system
to system and can be problematic. On `macOS` the `open` command is used and
works fairly flawlessly. However, on `Linux` there are a variety of ways, none
of which work well on all platforms. The `lazyman` command does its best to
figure out what command to use to open a file URL but this may not always
result in success. If opening a configuration information document fails,
the open URL command can be overriden in `~/.config/nvim-Lazyman/.lazymanrc`.
To override the open URL command and/or set the `BROWSER` environment variable,
uncomment and edit the following section of code there:

```bash
# Command to open a URL
# Set this to override the defaults:
#   On macOS the default is the 'open' command
#   Linux default is 'python3 -m webbrowser' then 'xdg-open' then 'gio open'
# export URL_OPEN_COMMAND="your custom command"
# For example, to use 'gio' rather than Python's webbrowser module on Linux:
# export URL_OPEN_COMMAND="gio open"
#
# To specify the browser, set the BROWSER environment variable. For example:
# export BROWSER="w3m"
```

### Using lazyman to explore configurations

Another alternative to setting **NVIM_APPNAME** in the environment or with an
alias is to use the `lazyman` command to specify which Neovim configuration
to use with this invocation. This is done using the `-E config` option to
`lazyman`. When invoking `lazyman` with the `-E config` argument, the Neovim
configuration can be specified by setting `config` to one of `astronvim`,
`ecovim`, `kickstart`, `lazyman`, `lazyvim`, `lunarvim`, `nvchad`, or any
Neovim configuration directory in `~/.config`. For example, to edit the file
`foo.lua` using the LazyVim Neovim configuration:

```bash
lazyman -E lazyvim foo.lua
```

Now you're using the LazyVim Neovim configuration to edit `foo.lua`, all of the
LazyVim key bindings, plugins, options, and configuration will be used.

To instead use the LunarVim Neovim configuration to edit `foo.lua`:

```bash
lazyman -E lunarvim foo.lua
```

Before using `lazyman -E <config> …` to explore a Neovim configuration,
first install and initialize the `<config>` configuration with `lazyman`.

When invoked with the `-E config` option, `lazyman` sets the **NVIM_APPNAME**
environment variable to the specified `config` and executes `nvim` with
all following arguments. This is a pretty easy way to explore all the
`lazyman` installed and initialized Neovim configurations.

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

## Known limitations

### Interactive Neovim Configuration Initialization

Lazyman does not support automatic initialization of interactive configurations.
If the initialization process is interactive, the auto initialization will hang.
Some effort is made to detect an interactive initialization and avoid a hung
process. For example, if the configuration includes the
[WakaTime metrics plugin](https://github.com/wakatime/vim-wakatime) and no
WakaTime configuration is detected then the user is prompted before continuing.
Other configurations that prompt for an example config are handled by Lazyman
but some custom configurations not yet supported by Lazyman may hang during
initialization if they prompt for input.

If the initialization process takes more than a few minutes it can be terminated
with `Ctrl-c`. After termination the configuration can be manually initialized:

```bash
NVIM_APPNAME="<nvim dir>" nvim
```

### External Configuration Dependencies

Neovim configurations often rely on external commands, utilities, language
servers, formatters, linters, and tools. The `Lazyman` initialization process
installs much of what might be required but not all. Some configurations
may initialize cleanly but subsequent use might provoke an error when an
external dependency is not available. For example, the `nvim-Shuvro` Neovim
configuration relies upon an externally installed `luacheck` facility. If this
is not available then `nvim-Shuvro` will emit an error message when opening
`lua` files. Most commonly used external dependencies are installed by
`lazyman` but missing dependencies sometimes occur.

### Lazyman Neovim Configuration

The installation of some programming languages is left to the system
administrator. In particular, `lazyman` does not install Go, Java, the
Java Development Kit (JDK), Composer, PHP, or Julia. These may show
up as warnings when performing a `:checkhealth` and can be installed
manually if needed. Some additional tools can be installed with `lazyman -I`.

SSH users may need to install
[lemonade](https://github.com/lemonade-command/lemonade)
to support the clipboard over SSH.

If `go` is not installed or incorrectly configured then the Mason installs
of `goimports`, `gopls`, and `gofumpt` will fail.

The `dashboard-nvim` dashboard may display the tabline after performing some
dashboard actions.

Changing the configured dashboard from within Neovim via the Terminal display
of the `lazyman` menu system will not take effect until a restart of Neovim.

### Updating lazyman

An update of the Lazyman configuration and `lazyman` command can be performed
with the command `lazyman -U`. However, early releases of Lazyman always
preserve any existing `~/.config/nvim-Lazyman/lua/configuration.lua`. Later
releases of Lazyman include a different format for this file. When updating
from an older Lazyman release it may be necessary to run the update twice.

### Homebrew

Homebrew can be used to install Neovim dependencies and tools by using the
`-h` switch to `lazyman` or by selecting Homebrew when prompted. Using
Homebrew on some Linux systems has the advantage of providing more recent
versions of some packages. However, the Homebrew python package will be
installed as a dependency and will appear first in your PATH. This results
in a system which no longer recognizes previously installed python modules
in the system python. This issue has been reported to the Homebrew team
but is unlikely to be addressed.

If you wish to use Homebrew and want to retain your existing python modules
then the following manual process may suffice:

- Locate the module paths the Homebrew python is using. For example:
  - `/home/linuxbrew/.linuxbrew/bin/python3 -c 'import site; print(site.getsitepackages())' | tr -d '[],'`
- Locate the module paths the system python is using. For example:
  - `/usr/bin/python3 -c 'import site; print(site.getsitepackages())' | tr -d '[],'`
- Append the system python module paths to `PYTHONPATH` with Homebrew's first
- Export the constructed `PYTHONPATH` environment variable in your shell init, e.g.
  - `export PYTHONPATH="<colon separated list of paths>"`

This Homebrew python module path issue is not a problem when using the
native package manager to install dependencies and tools. This is the default.

#### Ubuntu 20.04

The version of `luarocks` in the Ubuntu 20.04 default repositories is
no longer supported. If `luarocks` is required then it can be installed
manually by following the instructions in the
[Luarocks documentation](https://luarocks.org/#quick-start). This is not
an issue when using Homebrew to install dependencies.

The binary distribution of the `tree-sitter-cli` npm package depends on GLIBC
2.32 but this is unavailable in this release of Ubuntu Linux. The `tree-sitter`
command is not functional, disabling the `:TSInstallFromGrammar` command.

### Alpine, SUSE, and Void Linux

Due to limited resources, very little testing has been performed on Alpine
Linux, SUSE Linux, or Void Linux. Support for these platforms
was recently introduced and issues are expected. If you encounter a problem
on these platforms please
[open an issue](https://github.com/doctorfree/nvim-lazyman/issues).

### Semantic token highlighting for types containing hyphens

Neovim 0.9 introduced semantic token highlighting but placed some restrictions
on the format of semantic tokens. For example, if a filetype contains a hyphen
then language servers may return semantic tokens that contain a hyphen and this
will generate an error. This issue may cause some configurations to hang or
display errors.

### LaTeX configuration hangs on macOS

The `nvim-LaTeX` configuration is hanging on my Mac. It appears to work fine
on Linux platforms. This is currently under investigation.

## Troubleshooting

The most frequent type of issue encountered using `lazyman` to install and
initialize Neovim configurations is incompatibility between the existing
configuration and Neovim supported configuration parameters. Lazyman
uses Neovim 0.9 which includes revised support for several Neovim features.
Many existing Neovim configurations rely on features or configuration
parameters no longer supported in Neovim 0.9.

For example, one of the most frequent issues initializing a Neovim
configuration is the initialization error:

```
Parser not available for language "help"
```

The Treesitter `help` parser was renamed to `vimdoc` and `help` is no longer
supported as a Treesitter parser. These types of changes are called
"breaking changes" and will occur more frequently when using a recent
Neovim build. To correct a `Parser not available for language "help"`
initialization error, locate where in the configuration the Treesitter
`help` parser is set (usually in the `ensure_installed` section of the
Treesitter plugin configuration) and change `help` to `vimdoc`.

See the [Neovim 0.9 release notes](https://github.com/neovim/neovim/releases/tag/v0.9.0)
for an overview of changes. In particular, many of these types of issues
are detailed in the [news.txt for Neovim 0.9](https://github.com/neovim/neovim/blob/040f1459849ab05b04f6bb1e77b3def16b4c2f2b/runtime/doc/news.txt) (`:help news` within nvim).

This is life on the bleeding edge. However, all of the supported Lazyman
Neovim configurations and most of the Personal Neovim configurations supported
by `lazyman` do not have Neovim version incompatibilities.

### Lazyman installation

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

## Appendix

### Get configuration script

Neovim 0.9 introduced a new feature which allows execution of Lua scripts
in Neovim from the shell command line. The `lazyman` configuration menu
interface uses this new feature to get the current Lazyman Neovim
configuration with shell commands like:

```bash
GET_CONF="${HOME}/.config/nvim-Lazyman/scripts/get_conf.lua"
confval=$(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
```

The `get_conf.lua` script can also be used to retrieve option or variable
settings in any Neovim configuration. For example, to retrieve the value of
the 'mouse' option in the `nvim-Webdev` Neovim configuration:

```bash
GET_CONF="${HOME}/.config/nvim-Lazyman/scripts/get_conf.lua"
NVIM_APPNAME="nvim-Webdev" nvim -l ${GET_CONF} mouse
```

<details><summary>Click here to view the

**Lazyman `get_conf.lua` script**

</summary>

```lua
-- Invoke with 'nvim -l get_conf.lua conf_name'
-- Where 'conf_name' is:
--   - one of the entries in lua/configuration.lua
--   - the keyword 'config_home' to get configuration location info
--   - an option/variable name to retrieve its value
--
-- For example, to retrieve the Lazyman configuration 'namespace' setting:
--
-- #!/bin/bash
-- NVIM_APPNAME="nvim-Lazyman" \
--   nvim -l ~/.config/nvim-Lazyman/scripts/get_conf.lua namespace
--
-- or, to retrieve the value of the 'mouse' option in the Webdev config:
--
-- #!/bin/bash
-- NVIM_APPNAME="nvim-Webdev" \
--   nvim -l ~/.config/nvim-Lazyman/scripts/get_conf.lua mouse

local config = vim.inspect(_G.arg[1])
local arg = string.gsub(config, '"', "")
local app_name = os.getenv("NVIM_APPNAME") or ""

local function get_var(var_name, default_value)
  local s, v = pcall(function()
    return vim.api.nvim_get_option(var_name)
  end)
  if s then
    return v
  else
    s, v = pcall(function()
      return vim.api.nvim_get_var(var_name)
    end)
    if s then
      return v
    else
      return default_value
    end
  end
end

local function print_var(entry)
  if type(entry) == "string" then
    io.write(entry .. "\n")
  elseif type(entry) == "table" then
    table.sort(entry)
    for _, val in ipairs(entry) do
      io.write(val .. "\n")
    end
  else
    io.write(tostring(entry) .. "\n")
  end
end

if arg == "config_home" then
  local config_home = vim.fn.stdpath("config")
  io.write("Neovim configuration location = " .. vim.fn.expand(config_home) .. "\n")
  io.write("NVIM_APPNAME = " .. app_name .. "\n")
else
  local var_val = ""
  if app_name == "nvim-Lazyman" then
    local settings = require("configuration")
    local entry = settings[arg]
    if entry ~= nil then
      print_var(entry)
    else
      var_val = get_var(arg, "")
      print_var(var_val)
    end
  else
    var_val = get_var(arg, "")
    print_var(var_val)
  end
end
```

</details>

Pretty simple, huh? Thanks Neovim!

### Lazyman source code

The convenience script to install and initialize `nvim-Lazyman` is provided at
[lazyman.sh](lazyman.sh). The automated install and initialization is performed
by `lazyman` and [install_neovim.sh](scripts/install_neovim.sh).

View the lazyman.sh script on the
[Lazyman website](https://lazyman.dev/info/lazyman_command)

### Install neovim and tools

The `lazyman` command checks for a current version of Neovim and, if not found
or if the existing version is less than 0.9, invokes the `install_neovim.sh`
script to install Neovim, dependencies, language servers, and tools.

Not all language servers and tools are installed. If additional language
support is desired, it can usually be provided by Mason or Homebrew.
For example, to provide support for Composer run `brew install composer`.

The automated Neovim installation is performed by
[install_neovim.sh](scripts/install_neovim.sh). View the `install_neovim.sh`
script on the
[Lazyman website](https://lazyman.dev/info/install_neovim).
