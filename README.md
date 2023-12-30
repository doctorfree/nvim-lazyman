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

**NEWS!** `Lazyman` is now available as a [Kasm Workspace](https://kasmweb.com)
by adding `https://doctorfree.github.io/kasm-registry/` as a
[Kasm 3rd party registry](https://www.kasmweb.com/docs/latest/guide/workspace_registry.html)
and installing the `Neovim` or `Deluxe` workspace in your Kasm instance.

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
  - [Github API rate limiting](#github-api-rate-limiting)
- [Installation](#installation)
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
- [Removal](#removal)
- [Known limitations and troubleshooting](#known-limitations-and-troubleshooting)
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

To enable installation of language servers and treesitter syntax highlighting
`gcc`, `node`, and `npm` are required. For example, to install these
requirements on Ubuntu Linux:

```bash
sudo apt install build-essential
sudo apt install nodejs
sudo apt install npm
```

### Github API rate limiting

If you are in a corporate network or large shared network you may encounter
rate limiting issues when attempting to access the Github API. To increase
your rate limit, create and export a [Github personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens):

```bash
export GITHUB_TOKEN=<your-github-token>
```

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

Further details on Lazyman installation including command line options
to direct `lazyman` to install Neovim, dependencies and tools using
[Homebrew](https://brew.sh) or to skip the Neovim installation altogether
can be found on the
[Install tab of the Lazyman website](https://lazyman.dev/install)

## Supported configurations

View [details of each supported configuration](https://lazyman.dev/configurations)
at the [Lazyman website](https://lazyman.dev).

Over 100 popular Neovim configurations are supported in the following configuration categories:

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
| [Charles](https://lazyman.dev/info/Charles.html) | [Chokerman](https://lazyman.dev/info/Chokerman.html) | [Craftzdog](https://lazyman.dev/info/Craftzdog.html) | [Daniel](https://lazyman.dev/info/Daniel.html) | [Dillon](https://lazyman.dev/info/Dillon.html) |
| [Elianiva](https://lazyman.dev/info/Elianiva.html) | [Elijah](https://lazyman.dev/info/Elijah.html) | [Enrique](https://lazyman.dev/info/Enrique.html) | [Heiker](https://lazyman.dev/info/Heiker.html) | [J4de](https://lazyman.dev/info/J4de.html) |
| [Jdhao](https://lazyman.dev/info/Jdhao.html) | [Josean](https://lazyman.dev/info/Josean.html) | [JustinLvim](https://lazyman.dev/info/JustinLvim.html) | [JustinNvim](https://lazyman.dev/info/JustinNvim.html) | [Kodo](https://lazyman.dev/info/Kodo.html) |
| [Kristijan](https://lazyman.dev/info/Kristijan.html) | [LamarVim](https://lazyman.dev/info/LamarVim.html) | [Lukas](https://lazyman.dev/info/Lukas.html) | [Maddison](https://lazyman.dev/info/Maddison.html) | [Metis](https://lazyman.dev/info/Metis.html) |
| [Mini](https://lazyman.dev/info/Mini.html) | [OnMyWay](https://lazyman.dev/info/OnMyWay.html) | [ONNO](https://lazyman.dev/info/ONNO.html) | [Optixal](https://lazyman.dev/info/Optixal.html) | [Orhun](https://lazyman.dev/info/Orhun.html) |
| [Primeagen](https://lazyman.dev/info/Primeagen.html) | [Rafi](https://lazyman.dev/info/Rafi.html) | [RNvim](https://lazyman.dev/info/RNvim.html) | [Roiz](https://lazyman.dev/info/Roiz.html) | [SeniorMars](https://lazyman.dev/info/SeniorMars.html) |
| [Simple](https://lazyman.dev/info/Simple.html) | [Slydragonn](https://lazyman.dev/info/Slydragonn.html) | [Spider](https://lazyman.dev/info/Spider.html) | [Traap](https://lazyman.dev/info/Traap.html) | [Wuelner](https://lazyman.dev/info/Wuelner.html) |
| | [xero](https://lazyman.dev/info/xero.html) | | [Xiao](https://lazyman.dev/info/Xiao.html) | |

<!-- prettier-ignore -->
| **Starter** |        |        |        | **Configs** |
| :---------- | :----: | :----: | :----: | ----------: |
| [AstroNvimStart](https://lazyman.dev/info/AstroNvimStart.html) | [Barebones](https://lazyman.dev/info/Barebones.html) | [Basic](https://lazyman.dev/info/Basic.html) | [CodeArt](https://lazyman.dev/info/CodeArt.html) | [CosmicNvim](https://lazyman.dev/info/Cosmic.html) |
| [Ember](https://lazyman.dev/info/Ember.html) | [Fennel](https://lazyman.dev/info/Fennel.html) | [HardHacker](https://lazyman.dev/info/HardHacker.html) | [JustinOhMy](https://lazyman.dev/info/JustinOhMy.html) | [Kickstart](https://lazyman.dev/info/Kickstart.html) |
| [KickstartPython](https://lazyman.dev/info/KickstartPython.html) | [Kabin](https://lazyman.dev/info/Kabin.html) | [Micah](https://lazyman.dev/info/Micah.html) | [Modern](https://lazyman.dev/info/Modern.html) | [Normal](https://lazyman.dev/info/Normal.html) |
| [nvim2k](https://lazyman.dev/info/2k.html) | [NvPak](https://lazyman.dev/info/NvPak.html) | [PDE](https://lazyman.dev/info/pde.html) | [Rohit](https://lazyman.dev/info/Rohit.html) | [Scratch](https://lazyman.dev/info/Scratch.html) |
| | | [SingleFile](https://lazyman.dev/info/SingleFile.html) | | |

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

### What's New

| **Shiny** | **New** | **Lazyman** | **Websites** |
| :-------- | :-----: | :---------: | -----------: |
| [Lazyman<br />lazyman.dev](https://lazyman.dev) | [AstroNvim<br />astronvim.lazyman.dev](https://astronvim.lazyman.dev) | [LazyVim<br />lazyvim.lazyman.dev](https://lazyvim.lazyman.dev) | [LunarVim<br />lunarvim.lazyman.dev](https://lunarvim.lazyman.dev) |
| [NvChad<br />nvchad.lazyman.dev](https://nvchad.lazyman.dev) | [CandyVim<br />candyvim.lazyman.dev](https://candyvim.lazyman.dev) | [LazyIde<br />ide.lazyman.dev](https://ide.lazyman.dev) | [Webdev<br />webdev.lazyman.dev](https://webdev.lazyman.dev) |

A convenience script has been introduced to invoke Neovim with the Lazyman
Neovim configuration regardless of `NVIM_APPNAME` environment setting. The
`lman` command can be used to edit a file using the Lazyman Neovim config:

```bash
lman /path/to/file.ext
```

Thanks to Github user `wxguy` for this convenience script.

View the latest Lazyman news on the
[News tab of the Lazyman website](https://lazyman.dev/news).

## Usage

View Lazyman command line usage on the
[Usage tab of the Lazyman website](https://lazyman.dev/usage).

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

The `Lazyman` Neovim configuration contains three separate and distinct
configurations. The setting `conf.namespace` in `lua/configuration.lua`
controls which configuration is active. The supported values for
`conf.namespace` are `ecovim` `free` and `onno`. The `free` namespace is
the same configuration used in previous releases of `Lazyman`. The `onno`
namespace is based on the [ONNO](https://lazyman.dev/info/ONNO.html)
configuration with modifications and enhancements to integrate this config
with `lazyman`. The `ecovim` namespace is based on the
[Ecovim](https://lazyman.dev/info/Ecovim.html) configuration with modifications
and enhancements to integrate with `lazyman`. The default Lazyman configuration
namespace is `ecovim`.

To switch Lazyman namespaces, run the command:

```bash
lazyman -O <namespace>
```

Where `<namespace>` is one of `ecovim`, `free`, or `onno`.

This setting is configurable via the `lazyman` menu system, as are most
of the `Lazyman` configuration settings (`lazyman -F`).

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

-- Namespace to use, available namespaces are "ecovim", free", and "onno"
-- Switching namespace changes to a completely different configuration
-- This is an example of how to incorporate multiple Neovim configurations
-- into a single configuration.
conf.namespace = "ecovim"
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
-- Enable tabnine, https://github.com/Bryley/neoai.nvim
conf.enable_tabnine = false
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
-- Enable easy motions, can be one of "hop", "flash", "leap", or "none"
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
conf.enable_winbar = "barbecue"
-- Enable LSP progress in winbar
conf.enable_lualine_lsp_progress = true
-- Enable rebelot/terminal.nvim
--
conf.enable_terminal = true
-- Enable toggleterm plugin
conf.enable_toggleterm = true
-- Enable window animations (mini.animate)
conf.enable_animate = true
-- Enable ducks, cats, dinosaurs, and other animals wandering around
conf.enable_duck = true
-- Enable window animations (flirt)
conf.enable_flirt = false
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
conf.enable_dashboard_header = true
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
  "c",
  "lua",
  "markdown",
  "markdown_inline",
  "query",
  "regex",
  "vim",
  "vimdoc",
}
-- Enable clangd or ccls for C/C++ diagnostics
-- Note: if enabled then the tool must be installed and in the execution path
conf.enable_ccls = true
conf.enable_clangd = false
-- Typescript language server. Can be "tsserver" "tools" or "none"
conf.typescript_server = "tools"
-- LSPs that should be installed by Mason-lspconfig
-- Leave the 'LSP_SERVERS' trailing comment, it is used by lazyman
conf.lsp_servers = {
  "bashls",        -- LSP_SERVERS
  "cssls",         -- LSP_SERVERS
  "cssmodules_ls", -- LSP_SERVERS
  "denols",        -- LSP_SERVERS
  "dockerls",      -- LSP_SERVERS
  "emmet_ls",      -- LSP_SERVERS
  -- "eslint",     -- LSP_SERVERS
  -- "gopls",      -- LSP_SERVERS
  "graphql",       -- LSP_SERVERS
  "html",          -- LSP_SERVERS
  "jdtls",         -- LSP_SERVERS
  "jsonls",        -- LSP_SERVERS
  "julials",       -- LSP_SERVERS
  "ltex",          -- LSP_SERVERS
  "lua_ls",        -- LSP_SERVERS
  "marksman",      -- LSP_SERVERS
  "prismals",      -- LSP_SERVERS
  "pylsp",         -- LSP_SERVERS
  "pyright",       -- LSP_SERVERS
  "sqlls",         -- LSP_SERVERS
  "tailwindcss",   -- LSP_SERVERS
  "texlab",        -- LSP_SERVERS
  "tsserver",      -- LSP_SERVERS
  "vimls",         -- LSP_SERVERS
  "vuels",         -- LSP_SERVERS
  "yamlls",        -- LSP_SERVERS
}
-- Formatters and linters installed by Mason
conf.formatters_linters = {
  "actionlint",      -- FORMATTERS_LINTERS
  "gofumpt",         -- FORMATTERS_LINTERS
  "goimports",       -- FORMATTERS_LINTERS
  "golines",         -- FORMATTERS_LINTERS
  "golangci-lint",   -- FORMATTERS_LINTERS
  "google-java-format", -- FORMATTERS_LINTERS
  "latexindent",     -- FORMATTERS_LINTERS
  "markdownlint",    -- FORMATTERS_LINTERS
  "prettier",        -- FORMATTERS_LINTERS
  "sql-formatter",   -- FORMATTERS_LINTERS
  -- "shellcheck",   -- FORMATTERS_LINTERS
  "shfmt",           -- FORMATTERS_LINTERS
  "stylua",          -- FORMATTERS_LINTERS
  "tflint",          -- FORMATTERS_LINTERS
  "yamllint",        -- FORMATTERS_LINTERS
}
-- Formatters and linters installed externally
conf.external_formatters = {
  "beautysh",        -- FORMATTERS_LINTERS
  "black",           -- FORMATTERS_LINTERS
  "flake8",          -- FORMATTERS_LINTERS
  "ruff",            -- FORMATTERS_LINTERS
}
-- enable greping in hidden files
conf.telescope_grep_hidden = true
-- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
--   "none":  diagnostics are disabled but still underlined
--   "icons": only an icon will show, use ',de' to see the diagnostic
--   "popup": an icon will show and a popup with the diagnostic will appear
conf.show_diagnostics = "popup"
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

View the Lazyman Notes in the
[Lazyman Notes article on the Lazyman website](https://lazyman.dev/posts/Notes).

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

## Known limitations and troubleshooting

View Lazyman known limitations and troubleshooting in the
[Known Limitations and Troubleshooting](https://lazyman.dev/posts/Limitations-and-Troubleshooting)
article on the website.

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
