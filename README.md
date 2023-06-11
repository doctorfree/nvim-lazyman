<h1 align="center">Lazyman Neovim Configuration Manager</h1>

<div align="center"><p>
    <a href="https://github.com/neovim/neovim">
      <img src="https://img.shields.io/badge/Neovim-0.9.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white" alt="Neovim"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/pulse">
      <img src="https://img.shields.io/github/last-commit/doctorfree/nvim-lazyman" alt="Last commit"/>
    </a>
    <a href="https://github.com/doctorfree/nvim-lazyman/issues">
      <img src="https://img.shields.io/github/issues/doctorfree/nvim-lazyman.svg?style=flat-square&label=Issues&color=F05F40" alt="Github issues"/>
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
Neovim configurations. Over 40 popular Neovim configurations are supported.

Follow the [Installation instructions](#installation) to bootstrap Lazyman.
Once Lazyman is installed, execute the `lazyman` command to manage
Neovim configurations. The `lazyman` command is located in `~/.local/bin/lazyman`.

The `lazyman` command separates Neovim configurations into 5 categories:
`Base`, `Language`, `Personal`, `Starter`, and `Custom`. The `Base` category
consists of well tested Neovim configurations and distributions, all of which
provide significant value. The `Language` category includes Neovim configurations
tailored for a specific programming or document format language. The `Personal`
category includes personal Neovim configurations that provide significant value
or demonstrate some cool features. Configurations in the `Personal` category are
not necessarily intended for public use, these repositories are maintained for
the personal use of the authors but are included here for their value.
The `Starter` category includes the Neovim `Kickstart` configuration, the
`NvPak` config, the `Modern` Neovim config, the `PDE` personal development
environment config, the `Basic` config, and the Neovim configurations provided
by the [nvim-starter project](https://github.com/VonHeikemen/nvim-starter).
The `Custom` category includes any additional Neovim configurations installed
and initialized with `lazyman` by the end-user using the `-C url` and
`-N nvimdir` options.

Currently over 40 popular Neovim configurations are supported in the
following Lazyman Neovim configuration categories:

| **Base** |       |       |       | **Configs** |
| -------- | ----- | ----- | ------| ----------- |
| [Abstract](https://github.com/Abstract-IDE/Abstract) | [AstroNvim](https://astronvim.com) | [Basic IDE](https://github.com/LunarVim/nvim-basic-ide) | [Ecovim](https://github.com/ecosse3/nvim) | [LazyVim](https://github.com/LazyVim/LazyVim) |
| [LunarVim](https://github.com/LunarVim/LunarVim) | [MagicVim](https://gitlab.com/GitMaster210/magicvim) | [NvChad](https://nvchad.com/) | [penguinVim](https://github.com/p3nguin-kun/penguinVim) | [SpaceVim](https://spacevim.org) |

| **Language** |       |        | **Configs** |
| ------------ | ----- | ------ | ----------- |
| [Go](https://github.com/dreamsofcode-io/neovim-go-config) | [LaTeX](https://github.com/benbrastmckie/.config) | [Python](https://github.com/dreamsofcode-io/neovim-python) | [Rust](https://github.com/dreamsofcode-io/neovim-rust) |

| **Personal** |       |        |        | **Configs** |
| ------------ | ----- | ------ | ------ | ----------- |
| [Adib](https://github.com/adibhanna/nvim) | [AlanVim](https://github.com/alanRizzo/dot-files) | [Charles](https://github.com/CharlesChiuGit/nvimdots.lua) | [Ember](https://github.com/danlikestocode/embervim) | [Fennel](https://github.com/jhchabran/nvim-config)  |
| [Heiker](https://github.com/VonHeikemen/dotfiles) | [Knvim](https://github.com/knmac/knvim) | | [Magidc](https://github.com/magidc/nvim-config) | [Mini](https://github.com/echasnovski/nvim) |
| [ONNO](https://github.com/loctvl842/nvim.git) | [Optixal](https://github.com/Optixal/neovim-init.vim) | [Roiz](https://github.com/MrRoiz/rnvim) | [Simple](https://github.com/anthdm/.nvim) | [Vim Plug](https://github.com/doctorfree/nvim-plug) |

| **Starter** |       |       |       | **Configs** |
| ----------- | ----- | ----- | ----- | ----------- |
| [Basic](https://github.com/NvChad/basic-config) | [CodeArt](https://github.com/artart222/CodeArt) | [CosmicNvim](https://github.com/CosmicNvim/CosmicNvim) | [Kickstart](https://github.com/nvim-lua/kickstart.nvim) | [Extralight](https://github.com/VonHeikemen/nvim-starter/tree/xx-light) |
| [Minimal](https://github.com/VonHeikemen/nvim-starter/tree/00-minimal) | [StartBase](https://github.com/VonHeikemen/nvim-starter/tree/01-base) | [Opinionated](https://github.com/VonHeikemen/nvim-starter/tree/02-opinionated) | [StartLsp](https://github.com/VonHeikemen/nvim-starter/tree/03-lsp) | [StartMason](https://github.com/VonHeikemen/nvim-starter/tree/04-lsp-installer) |
| [Modular](https://github.com/VonHeikemen/nvim-starter/tree/05-modular) | [NvPak](https://github.com/Pakrohk-DotFiles/NvPak.git) | [HardHacker](https://github.com/hardhackerlabs/oh-my-nvim) | [Modern](https://github.com/alpha2phi/modern-neovim) | [PDE](https://github.com/alpha2phi/neovim-pde) |

Known working custom Lazyman configurations not yet integrated into the above
categories. See the [custom configuration section](#custom-configurations)
for installation details.

| **Custom** |       |       | **Configs** |
| ---------- | ----- | ----- | ----------- |
| [3rd](https://github.com/3rd/config) | [Allaman](https://github.com/Allaman/nvim) | [Brain](https://github.com/brainfucksec/neovim-lua) | [Elianiva](https://github.com/elianiva/dotfiles) |
| [Nv](https://github.com/appelgriebsch/Nv) | [SaleVim](https://github.com/igorcguedes/SaleVim) | [Slydragonn](https://github.com/slydragonn/dotfiles) | [Josean](https://github.com/josean-dev/dev-environment-files) |

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
  - [Manual installation](#manual-installation)
- [Supported configurations](#supported-configurations)
  - [Base configurations](#base-configurations)
  - [Language configurations](#language-configurations)
  - [Personal configurations](#personal-configurations)
  - [Starter configurations](#starter-configurations)
  - [Custom configurations](#custom-configurations)
    - [Custom configuration patches](#custom-configuration-patches)
- [Features](#features)
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

Lazyman requires Linux or macOS, git, and the Bash shell.

- Neovim 0.9 (automatically installed if not found)
- Unix/Linux/macOS
- Bash
- Git

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

After installing and initializing `lazyman`, additional Neovim configurations
can be installed and initialized using the `lazyman` command. Over 40
excellent Neovim configurations are supported. Additional Neovim
configurations can be installed using the `-C url` and `-N nvimdir` options.

All of the supported Lazyman Neovim configuration can be managed using
the `lazyman` command interactive menu interface. The `lazyman` menu is
presented by invoking `lazyman` without arguments after the initial
bootstrap process is complete. Lazyman Neovim configurations can
also be managed with `lazyman` command line operations.

### Base configurations

Currently the following "Base" Neovim configurations are supported:

- [nvim-Lazyman](https://github.com/doctorfree/nvim-lazyman)
  - See the [Installation section](#installation) above
  - Installed and initialized by default
- [Abstract](https://github.com/Abstract-IDE/Abstract)
  - Preconfigured Neovim as IDE (see <https://abstract-ide.github.io/site/>)
  - Install and initialize with `lazyman -g`
- [AstroNvim](https://astronvim.com)
  - Install and initialize with `lazyman -a`
  - An example [AstroNvim community]() plugins configuration is added
- [Basic IDE](https://github.com/LunarVim/nvim-basic-ide)
  - Maintained by LunarVim, this is a descendent of "Neovim from Scratch"
  - All plugins are pinned to known working versions
  - Install and initialize with `lazyman -j`
- [Ecovim](https://github.com/ecosse3/nvim)
  - Install and initialize with `lazyman -e`
  - Tailored for frontend development with React and Vue.js
- [LazyVim](https://github.com/LazyVim/LazyVim)
  - The [LazyVim starter](https://github.com/LazyVim/starter) configuration
  - Install and initialize with `lazyman -l`
- [LunarVim](https://github.com/LunarVim/LunarVim)
  - Installs LunarVim plus the [IfCodingWereNatural custom user config](https://youtu.be/Qf9gfx7gWEY)
  - Install and initialize with `lazyman -v`
- [MagicVim](https://gitlab.com/GitMaster210/magicvim)
  - Uses Packer plugin manager, installs in `~/.config/nvim-MagicVim`
  - Install and initialize with `lazyman -m`
- [NvChad](https://nvchad.com)
  - Advanced [customization of NvChad](https://github.com/doctorfree/NvChad-custom)
  - Good [introductory video](https://youtu.be/Mtgo-nP_r8Y) to NvChad
  - Install and initialize with `lazyman -c`
- [penguinVim](https://github.com/p3nguin-kun/penguinVim)
  - Aims to provide a base configuration with beautiful UI and fast startup time
  - Install and initialize with `lazyman -o`
- [SpaceVim](https://spacevim.org)
  - SpaceVim started in December 2016, mature and well supported
  - Standard SpaceVim install uses `curl`:
    - `curl -sLf https://spacevim.org/install.sh | bash`
  - Lazyman custom SpaceVim configuration installed in `~/.SpaceVim.d/`
  - Install and initialize using Lazyman with `lazyman -s`

### Language configurations

In addition to the base Neovim configurations listed above, `lazyman` can
install and initialize several "Language" Neovim configurations. These can
be used as programming or document format specific Neovim configurations.

All of the 'Language' configurations can be installed and initialized with
the command `lazyman -L all`. Individual 'Language' configurations can be
installed with the `-L lang` option, where `lang` is one of `Go`, `LaTeX`,
`Python`, or `Rust`.

- [Go](https://github.com/dreamsofcode-io/neovim-go-config)
  - `NvChad` based Neovim config with Go formatting, debugging, and diagnostics
  - Dreams of Code [video tutorial](https://youtu.be/i04sSQjd-qo)
  - Install and initialize with `lazyman -L Go`
- [LaTeX](https://github.com/benbrastmckie/.config)
  - Neovim configuration optimized for writing in LaTeX
  - Personal Neovim configuration of [Benjamin Brast-McKie](http://www.benbrastmckie.com)
  - Keymaps and more described in the configuration [Cheatsheet](https://github.com/benbrastmckie/.config/blob/master/CheatSheet.md)
  - Blog article by the author detailing [tools used by his configuration](http://www.benbrastmckie.com/tools#access)
  - Install and initialize with `lazyman -L LaTeX`
- [Python](https://github.com/dreamsofcode-io/neovim-python)
  - `NvChad` based Neovim config with Python formatting, debugging, and diagnostics
  - Dreams of Code [video tutorial](https://youtu.be/4BnVeOUeZxc)
  - Install and initialize `lazyman -L Python`
  - These features are included in the Base `NvChad` custom add-on (`lazyman -c`)
- [Rust](https://github.com/dreamsofcode-io/neovim-rust)
  - `NvChad` based Neovim config with Rust formatting, debugging, and diagnostics
  - Dreams of Code [video tutorial](https://youtu.be/mh_EJhH49Ms)
  - Install and initialize with `lazyman -L Rust`

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

- [AlanVim](https://github.com/alanRizzo/dot-files)
  - Install and initialize with `lazyman -w AlanVim`
- [Charles](https://github.com/CharlesChiuGit/nvimdots.lua)
  - Install and initialize with `lazyman -w Charles`
- [Magidc](https://github.com/magidc/nvim-config)
  - Java, Python, Lua, and RUST IDE
  - Install and initialize with `lazyman -w Magidc`
- [Mini](https://github.com/echasnovski/nvim)
  - Uses the [mini.nvim](https://github.com/echasnovski/mini.nvim) library
  - Personal configuration of the `mini.nvim` author
  - Install and initialize with `lazyman -M`
- [Ember](https://github.com/danlikestocode/embervim)
  - Dan is a computer science student at Arizona State University
  - Install and initialize with `lazyman -w Ember`
- [Knvim](https://github.com/knmac/knvim)
  - See the [Knvim Config Cheat Sheet](https://github.com/knmac/knvim/blob/main/res/cheatsheet.md)
  - Install and initialize with `lazyman -w Knvim`
- [Fennel](https://github.com/jhchabran/nvim-config)
  - An opinionated configuration reminiscent of Doom-Emacs, written in Fennel
  - Install and initialize with `lazyman -w Fennel`
- [Adib](https://github.com/adibhanna/nvim)
  - Personal Neovim configuration of Adib Hanna
  - Tips, distros, and configuration [demo video](https://youtu.be/8SVPOKZVaMU)
  - Install and initialize with `lazyman -w Adib`
- [Optixal](https://github.com/Optixal/neovim-init.vim)
  - Hybrid Neovim config for developers with a functional yet aesthetic experience
  - Uses a combination of vimscript and lua with the `vim-plug` plugin manager
  - Install and initialize with `lazyman -w Optixal`
- [Vim Plug](https://github.com/doctorfree/nvim-plug)
  - Older vim-plug based configuration of the author
  - Included as an example of vim-plug support in lazyman
  - Install and initialize with `lazyman -w Plug`
- [Heiker](https://github.com/VonHeikemen/dotfiles)
  - Neovim config of Heiker Curiel, author of [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
  - Install and initialize with `lazyman -w Heiker`
- [Roiz](https://github.com/MrRoiz/rnvim)
  - Just a random Neovim config found on Github, works well
  - Install and initialize with `lazyman -w Roiz`
- [Simple](https://github.com/anthdm/.nvim)
  - A remarkably effective Neovim configuration in only one small file
  - The author's [video description of this config](https://youtu.be/AzhSnM0uHvM)
  - Install and initialize with `lazyman -w Simple`
- [ONNO](https://github.com/loctvl842/nvim.git)
  - One of the primary inspirations for Lazyman
  - Install and initialize with `lazyman -w ONNO`

### Starter configurations

The 'Starter' Neovim configurations include `Basic`, `Kickstart`, `NvPak`,
`Modern`, `PDE`, and those provided by [VonHeikemen](https://github.com/VonHeikemen),
the author of [LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim).

All of the 'Starter' configurations can be installed and initialized with
the command `lazyman -X`. Individual 'Starter' configurations can be
installed with the `-x conf` option.

- [Basic](https://github.com/NvChad/basic-config)
  - Starter config by the author of NvChad with [video tutorial](https://youtube.com/playlist?list=PLYVQrj2EVSUL1NqYn3jsIVXG3U9eWaMcq)
  - Install and initialize with `lazyman -x Basic`
- [CodeArt](https://github.com/artart222/CodeArt)
  - Install and initialize with `lazyman -x CodeArt`
- [CosmicNvim](https://github.com/CosmicNvim/CosmicNvim)
  - Install `Node.js`, `prettierd`, and `eslint_d`
  - Install and initialize with `lazyman -x Cosmic`
- [Kickstart](https://github.com/nvim-lua/kickstart.nvim)
  - Popular starting point, small, single file, well documented, modular
  - Install and initialize with `lazyman -k`
- [NvPak](https://github.com/Pakrohk-DotFiles/NvPak.git)
  - PaK in Farsi means pure, something that is in its purest form
  - Install and initialize with `lazyman -x NvPak`
- [HardHacker](https://github.com/hardhackerlabs/oh-my-nvim)
  - A theme-driven modern Neovim configuration
  - Install and initialize with `lazyman -x HardHacker`
- [Modern](https://github.com/alpha2phi/modern-neovim)
  - Configure Neovim as a modernized development environment
  - Details described in [an excellent Medium article](https://alpha2phi.medium.com/modern-neovim-configuration-recipes-d68b16537698)
  - Install and initialize with `lazyman -x Modern`
- [PDE](https://github.com/alpha2phi/neovim-pde)
  - Configure Neovim as a Personalized Development Environment (PDE)
  - Install and initialize with `lazyman -x PDE`
- [Extralight](https://github.com/VonHeikemen/nvim-starter/tree/xx-light)
  - Single file lightweight configuration focused on providing basic features
  - Install and initialize with `lazyman -x Extralight`
- [Minimal](https://github.com/VonHeikemen/nvim-starter/tree/00-minimal)
  - Small configuration without third party plugins
  - Install and initialize with `lazyman -x Minimal`
- [StartBase](https://github.com/VonHeikemen/nvim-starter/tree/01-base)
  - Small configuration that includes a plugin manager
  - Install and initialize with `lazyman -x StartBase`
- [Opinionated](https://github.com/VonHeikemen/nvim-starter/tree/02-opinionated)
  - Includes a combination of popular plugins
  - Install and initialize with `lazyman -x Opinion`
- [StartLsp](https://github.com/VonHeikemen/nvim-starter/tree/03-lsp)
  - Configures the built-in LSP client with autocompletion, based on `Opinionated`
  - Install and initialize with `lazyman -x StartLsp`
- [StartMason](https://github.com/VonHeikemen/nvim-starter/tree/04-lsp-installer)
  - Same as `StartLsp` but uses [mason.nvim](https://github.com/williamboman/mason.nvim) to install language servers
  - Install and initialize with `lazyman -x StartMason`
- [Modular](https://github.com/VonHeikemen/nvim-starter/tree/05-modular)
  - Same as `StartMason` but everything is split in modules
  - Install and initialize with `lazyman -x Modular`

### Custom configurations

Lazyman includes support for several `Custom` Neovim configurations. These
can be installed with `lazyman -Y` or through the `lazyman` menu system.

To install and initialize a Neovim configuration not supported out-of-the-box
by Lazyman, use the `-C url` and `-N nvimdir` options to `lazyman`. After the
installation and initialization completes, set the `NVIM_APPNAME`
environment variable to use the newly created Neovim configuration:

```bash
export NVIM_APPNAME="<nvimdir>"
```

Where `<nvimdir>` is the argument provided to `-N` above.

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
hosted at <https://github.com/alanRizzo/dot-files> in the subdirectory `nvim`
with default branch `main`, place it in `~/.config/nvim-AlanVim`, and
initialize it with Packer:

```bash
lazyman -b main -C https://github.com/alanRizzo/dot-files -D nvim -N nvim-AlanVim -P
```

Note the `-b main` argument in this Lazyman command. When specifying a
subdirectory of a repository with `-D <subdir>` it is necessary to also
provide the default branch of the repository if not `master`.

Custom Neovim configurations may require additional setup work. Often
a custom Lazyman configuration will appear to work without issue but
contain references to `~/.config/nvim/` in its configuration files. For
example, a configuration's dashboard may contain a reference to
`~/.config/nvim/init.lua`. References like this can be fixed so the
configuration is relocatable by doing something like the following in Lua:

```lua
local config_path = vim.fn.stdpath("config") .. "/init.lua"
```

Custom Neovim configurations will be displayed and available in subsequent
runs of `lazyman` in the Lazyman Menu System.

An excellent list of preconfigured Neovim configurations is available at the
[Awesome Neovim Repository](https://github.com/rockerBOO/awesome-neovim#preconfigured-configuration). Many of these can be easily installed and initialized using
`lazyman -b <branch> -C <url> -N <nvimdir> ...`.

Known working custom Lazyman configurations include the following:

- [3rd](https://github.com/3rd/config)
  - `lazyman -Y 3rd`
  - Patch in `~/.config/nvim-Lazyman/scripts/patches/nvim-3rd.patch` applied
  - Example [custom tree-sitter grammar](https://github.com/3rd/syslang)
- [Allaman](https://github.com/Allaman/nvim)
  - One of the inspirations for `Lazyman`
  - `lazyman -Y Allaman`
- [Brain](https://github.com/brainfucksec/neovim-lua)
  - `lazyman -Y Brain`
- [Elianiva](https://github.com/elianiva/dotfiles)
  - `lazyman -Y Elianiva`
- [Josean](https://github.com/josean-dev/dev-environment-files)
  - Josean Martinez [video tutorial](https://youtu.be/vdn_pKJUda8)
  - `lazyman -Y Josean`
- [Nv](https://github.com/appelgriebsch/Nv)
  - LazyVim based Neovim configuration
  - Andreas Gerlach develops smart farming tech and maintains the Sway edition of Manjaro-arm
  - `lazyman -Y Nv`
- [SaleVim](https://github.com/igorcguedes/SaleVim)
  - `Salesforce` optimized IDE with custom features for editing `Apex`, `Visualforce`, and `Lightning` code
  - `lazyman -Y SaleVim`
- [Slydragonn](https://github.com/slydragonn/dotfiles)
  - [Introductory video](https://youtu.be/vkCnPdaRBE0)
  - `lazyman -Y Slydragonn`

Additional Custom Neovim configurations can be installed and initialized
using the `-C url -N name` flags along with any necessary initialization flags.
There are occasionally errors and issues such as an initialization
process that Lazyman does not yet support. However, you may find it useful
or interesting to explore, resolve errors and issues, and contribute to the
ever expanding set of Lazyman supported Neovim configurations.

Feel free to open an issue at
<https://github.com/doctorfree/nvim-lazyman/issues> to help tackle any problems
installing or initializing Neovim configurations with Lazyman.

#### Custom configuration patches

If you encounter a Neovim configuration that does not cleanly initialize
with `lazyman` it is often possible to make a few minor changes to the
configuration to get it working. Lazyman supports custom configuration
patches that are applied during initialization of a configuration.

The `~/.config/nvim-Lazyman/scripts/patches/` directory contains patches
to Neovim configurations applied after cloning the repo with `lazyman`.

The patch file for a configuration must be named `<Name>.patch` where
`<Name>` is the name of the configuration folder in `~/.config/`.

Some Neovim configurations do not initialize cleanly using `lazyman`
and modifications to the configuration files may be necessary. In this
case it is possible to generate a patch file for the config, place it
here, and re-run `lazyman` to install and initialize that configuration.

The patch should be created from the top of the configuration directory
after making the necessary changes and backing up the original file(s).

For example, the Neovim configuration by [3rd](https://github.com/3rd/config)
contains references to a custom tree-sitter grammar and does not initialize
cleanly with `lazyman`. After commenting out these references a patch can be
created for this config with:

```bash
diff -Naur lua/modules/language-support/tree-sitter.lua.orig \
           lua/modules/language-support/tree-sitter.lua \
           > ~/.config/nvim-Lazyman/scripts/patches/nvim-3rd.patch
```

Subsequently, running:

```bash
lazyman -C https://github.com/3rd/config -D home/dotfiles/nvim -N nvim-3rd
```

will produce a cleanly initialized Neovim configuration.

## Features

- `lazyman` command to easily install, initialize, manage, and explore multiple Neovim configurations
- support for Lazy, Packer, and vim-plug plugin managers
- automated installation of dependencies, tools, language servers, and Neovim 0.9
- richly configured `nvim-Lazyman` Neovim configuration
- interactive menu interface for ease of management
- 31 supported Neovim configurations out of the box, additional custom configs
- convenience shell functions and aliases with fuzzy search and selection
- vimdoc help for `nvim-Lazyman` with `:h nvim-Lazyman`

See the [Usage](#usage) section below for details on `lazyman` command usage.

### Lazyman Neovim Configuration Features

![](https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/lazyman-plugins.png)

#### General ⚙️

- Package management and plugin configuration via [lazy.nvim](https://github.com/folke/lazy.nvim)
- Easily configure theme, active plugins, and their configuration via [configuration.lua](lua/configuration.lua)
- Preconfigured themes: [catppuccin](https://github.com/catppuccin/nvim), [tokyonight](https://github.com/folke/tokyonight.nvim), [nightfox](https://github.com/EdenEast/nightfox.nvim), [tundra](https://github.com/sam4llis/nvim-tundra), [dracula](https://github.com/Mofiqul/dracula.nvim), [kanagawa](https://github.com/rebelot/kanagawa.nvim), [onedarkpro](https://github.com/olimorris/onedarkpro.nvim), [everforest](https://github.com/neanias/everforest-nvim), [monokai-pro](https://github.com/loctvl842/monokai-pro.nvim)
  - Keymap to toggle transparency for several color schemes (`,ut`)
- AI developer assistants:
  - Support for [Github Copilot](https://github.com/features/copilot) with completions
  - Support for ChatGPT using [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim)
    - Uses ChatGPT prompts from [Awesome ChatGPT Prompts](https://github.com/f/awesome-chatgpt-prompts)
  - Support for [Neoai](https://github.com/Bryley/neoai.nvim) plugin for OpenAI's GPT-4
- Auto-configure [codeexplain.nvim](https://github.com/mthbernardes/codeexplain.nvim) (GPT4ALL) if the GPT model is found
  - Lazyman menu provides auto-download and setup (requires Python 3.9 or greater)
  - This plugin is new and experimental. Unlike ChatGPT, it uses a self-hosted model and requires no API key or money
- Custom Lazyman Cheat Sheets using [cheatsheet.nvim](https://github.com/sudormrfbin/cheatsheet.nvim)
  - `:Cheatsheet` command, fuzzy search `lazyman` for custom Lazyman keymaps
- Mnemonic keyboard mappings inspired by [Spacemacs](https://www.spacemacs.org/) via [which-key.nvim](https://github.com/folke/which-key.nvim); no more than three keystrokes for each keybinding
- Replace the UI for messages, cmdline and popup menu via [noice.nvim](https://github.com/folke/noice.nvim)
- Fully featured status line via [lualine](https://github.com/nvim-lualine/lualine.nvim) and [tabline](https://github.com/kdheepak/tabline.nvim)
- Terminal integration via [nvim-toggleterm.lua](https://github.com/akinsho/nvim-toggleterm.lua)
- Terminal management via [terminal.nvim](https://github.com/rebelot/terminal.nvim)
  - Preconfigured Neovim terminal execution of `lazyman` command (`<leader>lm`)
  - Preconfigured Neovim terminal execution of `asciiville` command (`<leader>A`)
  - Preconfigured Neovim terminal execution of `htop` command (`<leader>H`)
- Fancy notifications via [nvim-notify](https://github.com/rcarriga/nvim-notify)
- Code diagnostics via [LSP](https://github.com/neovim/nvim-lspconfig)
- Choice of preconfigured dashboard: [alpha](https://github.com/goolord/alpha-nvim) (default), [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim), or [mini.starter](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-starter.md)
- Neovim games for fun and learning ([Sudoku](https://github.com/jim-fx/sudoku.nvim), [Blackjack](https://github.com/alanfortlink/blackjack.nvim), [vim-be-good](https://github.com/ThePrimeagen/vim-be-good) practice basic movements, and more).
  - Key map `<leader>G` (e.g. `,G`) displays the available games and amusements.
- Github actions to publish docker image on Docker Hub, check spelling/syntax, and auto-generate vim help doc (see `.github/workflows/*.yml`)
- Over 100 plugins with custom configuration and management via menu system

#### Navigation 🧭

![](https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/alpha.png)

- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for all your search needs
- Project management with [Project.nvim](https://github.com/ahmedkhalf/project.nvim)
- File tree navigation/manipulation via [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Better Tmux navigation with your home row via [Navigator.nvim](https://github.com/numToStr/Navigator.nvim)
- Convenient jumping through windows with [nvim-window-picker](https://gitlab.com/s1n7ax/nvim-window-picker)

#### Coding 🖥️

![](https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/diagnostics.png)

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

<details><summary>View the lazyman usage message</summary>

```
Usage: lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-E config]
   [-e] [-f path] [-F menu] [-g] [-i] [-j] [-k] [-l] [-m] [-M] [-s]
   [-S] [-v] [-n] [-o] [-p] [-P] [-q] [-Q] [-h] [-H] [-I] [-L lang]
   [-rR] [-C url] [-D subdir] [-N nvimdir] [-G] [-tT] [-U] [-V url]
   [-w conf] [-W] [-x conf] [-X] [-y] [-Y cust] [-z] [-Z] [-u]
   [health] [init] [install] [open] [remove] [status]
Where:
    -A indicates install all supported Neovim configurations
    -a indicates install and initialize AstroNvim Neovim configuration
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
           'main', 'conf', 'lsp', 'format', 'plugin'
    -G indicates no plugin manager, initialize with :TSUpdate
    -g indicates install and initialize Abstract Neovim configuration
    -j indicates install and initialize BasicIde Neovim configuration
    -k indicates install and initialize Kickstart Neovim configuration
    -l indicates install and initialize LazyVim Neovim configuration
    -m indicates install and initialize MagicVim Neovim configuration
    -M indicates install and initialize Mini Neovim configuration
    -o indicates install and initialize penguinVim Neovim configuration
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
    -i indicates install language servers and tools for coding diagnostics
    -I indicates install all language servers and tools for coding diagnostics
    -L 'lang' indicates install the 'lang' Language configuration
       'lang' can be one of:
           All Go LaTeX Python Rust
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
           AlanVim Charles Magidc Mini Knvim Roiz Fennel
           Ember ONNO Adib Optixal Plug Simple Heiker
    -W indicates install and initialize all 'Personal' Neovim configurations
    -x 'conf' indicates install and initialize nvim-starter 'conf' config
       'conf' can be one of 'Basic' 'CodeArt' 'Kickstart' 'NvPak'
       'Extralight' 'Opinion' 'StartLsp' 'StartMason' 'Minimal'
       'Modular' 'HardHacker' 'Modern' 'PDE' 'StartBase' 'Cosmic'
    -X indicates install and initialize all 'Starter' configs
    -y indicates do not prompt, answer 'yes' to any prompt
    -Y 'cust' indicates install the 'cust' Custom configuration
       'cust' can be one of:
           All Allaman Brain 3rd Elianiva Josean Nv SaleVim Slydragonn
    -z indicates do not run nvim after initialization
    -Z indicates do not install Homebrew, Neovim, or any other tools
    -u displays this usage message and exits
    'health' generate and display a health check for a configuration
    'init' initialize specified Neovim configuration and exit
    'install' fuzzy search and select configuration to install
    'open' fuzzy search and select configuration to open
    'remove' fuzzy search and select configuration to remove
    'status' displays a brief status report and exits
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
- The statusline (lualine) and tabline can each be enabled or disabled
  - `conf.enable_statusline = true`
  - `conf.enable_tabline = true`
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
conf.number = false
-- enable mouse see :h mouse
conf.mouse = "nv"
-- set relative numbered lines
conf.relative_number = false
-- always show tabs; 0 never, 1 only if at least two tab pages, 2 always
-- see enable_tabline below to disable or enable the tabline plugin
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
-- AI coding assistants - ChatGPT, Code Explain, Copilot, NeoAI
-- Enable Github Copilot if you have an account, it is superior
--
-- Enable ChatGPT (set OPENAI_API_KEY environment variable)
conf.enable_chatgpt = false
-- Enable Code Explain (requires 3.5GB model, uses GPT4ALL)
conf.enable_codeexplain = false
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
-- Enable coding plugins for diagnostics, debugging, and language sservers
conf.enable_coding = true
-- Enable compile plugin to compile and run current file
conf.enable_compile = false
-- Enable dressing plugin for improved default vim.ui interfaces
conf.enable_dressing = true
-- Enable easy motions, can be one of "hop", "leap", or "none"
conf.enable_motion = "leap"
-- Enable note making using Markdown preview and Obsidian plugins
conf.enable_notes = true
-- If notes enabled, markdown preview to use (preview, peek, none)
conf.markdown_preview = "peek"
-- If notes enabled, Neorg notes folders, multiple folders supported
conf.neorg_notes = {
  "~/Documents/Notes/Neorg", -- NEORG_NOTES
  -- "XXXXX", -- NEORG_NOTES
  -- "YYYYY", -- NEORG_NOTES
  -- "ZZZZZ", -- NEORG_NOTES
}
-- If notes enabled, Obsidian vault folder
conf.obsidian_vault = "~/Documents/Notes/Obsidian"
-- Enable renamer plugin for VS Code-like renaming UI
conf.enable_renamer = true
-- Enable ranger in a floating window
conf.enable_ranger_float = true
-- Enable multiple cursors
conf.enable_multi_cursor = true
-- neovim session manager to use: persistence, possession, or none
conf.session_manager = "possession"
-- File explorer tree plugin: neo-tree, nvim-tree, or none
conf.file_tree = "neo-tree"
-- Replace the UI for messages, cmdline and the popupmenu
conf.enable_noice = true
-- Enable 'StartupTime' command
conf.enable_startuptime = true
-- Add/change/delete surrounding delimiter pairs with ease
conf.enable_surround = true
-- Enable fancy lualine components
conf.enable_fancy = true
-- Enable the wilder plugin
conf.enable_wilder = false
-- The statusline (lualine), tabline, and winbar can each be enabled or disabled
-- Enable statusline (lualine)
conf.enable_statusline = true
-- Enable tabline
conf.enable_tabline = true
-- Enable winbar with navic location
-- Can be one of "barbecue", "standard", or "none"
-- Barbecue provides a clickable navic location, standard has more info
conf.enable_winbar = "standard"
-- Enable LSP progress in winbar
conf.enable_lualine_lsp_progress = true
-- Enable rebelot/terminal.nvim
conf.enable_terminal = true
-- Enable toggleterm plugin
conf.enable_toggleterm = true
-- Enable playing games inside Neovim!
conf.enable_games = true
-- Enable the WakaTime metrics dashboard (requires API key)
conf.enable_wakatime = true
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

-- PLUGINS CONFIGURATION
-- media backend, one of "ueberzug"|"viu"|"chafa"|"jp2a"|"catimg"|"none"
conf.media_backend = "jp2a"
-- Style of indentation, can be one of:
-- 'background' colored' 'context' 'listchars' 'mini' 'simple' 'none'
conf.indentline_style = "mini"
-- treesitter parsers to be installed
conf.treesitter_ensure_installed = {
  "bash",
  "go",
  "html",
  "java",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "query",
  "python",
  "regex",
  "rust",
  "toml",
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
  "bashls",        -- LSP_SERVERS
  "cssmodules_ls", -- LSP_SERVERS
  "denols",        -- LSP_SERVERS
  "dockerls",      -- LSP_SERVERS
  -- "eslint",     -- LSP_SERVERS
  "gopls",         -- LSP_SERVERS
  "graphql",       -- LSP_SERVERS
  "html",          -- LSP_SERVERS
  "jdtls",         -- LSP_SERVERS
  "jsonls",        -- LSP_SERVERS
  "julials",       -- LSP_SERVERS
  "ltex",          -- LSP_SERVERS
  "lua_ls",        -- LSP_SERVERS
  "marksman",      -- LSP_SERVERS
  "pylsp",         -- LSP_SERVERS
  "pyright",       -- LSP_SERVERS
  "sqlls",         -- LSP_SERVERS
  "tailwindcss",   -- LSP_SERVERS
  "texlab",        -- LSP_SERVERS
  "tsserver",      -- LSP_SERVERS
  "vimls",         -- LSP_SERVERS
  "yamlls",        -- LSP_SERVERS
}
-- Formatters and linters installed by Mason
conf.formatters_linters = {
  "actionlint",         -- FORMATTERS_LINTERS
  "gofumpt",            -- FORMATTERS_LINTERS
  "goimports",          -- FORMATTERS_LINTERS
  "golines",            -- FORMATTERS_LINTERS
  "golangci-lint",      -- FORMATTERS_LINTERS
  "google-java-format", -- FORMATTERS_LINTERS
  "latexindent",        -- FORMATTERS_LINTERS
  "markdownlint",       -- FORMATTERS_LINTERS
  "prettier",           -- FORMATTERS_LINTERS
  "sql-formatter",      -- FORMATTERS_LINTERS
  -- "shellcheck",      -- FORMATTERS_LINTERS
  -- "shfmt",           -- FORMATTERS_LINTERS
  -- "stylua",          -- FORMATTERS_LINTERS
  "tflint",   -- FORMATTERS_LINTERS
  "yamllint", -- FORMATTERS_LINTERS
}
-- Formatters and linters installed externally
conf.external_formatters = {
  -- "beautysh",        -- FORMATTERS_LINTERS
  "black", -- FORMATTERS_LINTERS
  "ruff",  -- FORMATTERS_LINTERS
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
convenience aliases for Lazyman installed Neovim configurations. It also
creates an `nvims` alias which dynamically creates a fuzzy searchable
menu of installed Neovim configurations and launches Neovim with the
selected Lazyman Neovim configuration. See `~/.config/nvim-Lazyman/.lazymanrc`.
With this `nvims` alias it is no longer necessary to logout/login or
source a shell initialization file to update the menu of installed
Neovim configurations - the `nvims` alias dynamically generates the menu.

Similarly, a `neovides` alias can be used to select a Neovim configuration
for use with the Neovim GUI `neovide`.

The fuzzy searchable/selectable menu of Neovim configurations can also
be shown with the command `lazyman -S`. Note also that both the `nvims`
alias and the `lazyman -S` command can accept additional filename arguments
which are then passed to Neovim. For example, to edit `/tmp/foo.lua` with
a Neovim configuration selected from the `nvims` menu:

```bash
nvims /tmp/foo.lua
```

Both the `nvims` alias and `neovides` alias accept a `-r` flag which indicates
removal of the selected Neovim configuration.

<details><summary>View the .lazymanrc shell aliases and function</summary>

```bash
# $HOME/.config/nvim-Lazyman/.lazymanrc
# This file should be sourced from the shell initialization file
# e.g. $HOME/.bashrc or $HOME/.zshrc
#
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
  alias vi='nvim'
  # Uncomment this line to use Neovim even when you type vim
  # Leave commented to use vim as a backup editor if nvim not found
  # alias vim='nvim'
  alias nvims='source ~/.config/nvim-Lazyman/.lazymanrc; nvimselect'
  alias neovides='source ~/.config/nvim-Lazyman/.lazymanrc; neovselect'
  items=()
  ndirs=()
  [ -d ${HOME}/.config/nvim ] && {
    alias nvim-default="NVIM_APPNAME=nvim nvim"
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
        ndirs+=("${ndir}")
      }
    done < "${HOME}/.config/nvim-Lazyman/.nvimdirs"
  else
    # Add any supported config we find
    [ -d ${HOME}/.config/nvim-Lazyman ] && {
      alias nvim-lazy="NVIM_APPNAME=nvim-Lazyman nvim"
      items+=("Lazyman")
      ndirs+=("nvim-Lazyman")
    }
    [ -d ${HOME}/.config/nvim-LazyVim ] && {
      alias nvim-lazy="NVIM_APPNAME=nvim-LazyVim nvim"
      items+=("LazyVim")
      ndirs+=("nvim-LazyVim")
    }
    [ -d ${HOME}/.config/nvim-Kickstart ] && {
      alias nvim-kick="NVIM_APPNAME=nvim-Kickstart nvim"
      items+=("Kickstart")
      ndirs+=("nvim-Kickstart")
    }
    [ -d ${HOME}/.config/nvim-NvChad ] && {
      alias nvim-chad="NVIM_APPNAME=nvim-NvChad nvim"
      items+=("NvChad")
      ndirs+=("nvim-NvChad")
    }
    [ -d ${HOME}/.config/nvim-AstroNvim ] && {
      alias nvim-astro="NVIM_APPNAME=nvim-AstroNvim nvim"
      items+=("AstroNvim")
      ndirs+=("nvim-AstroNvim")
    }
    [ -d ${HOME}/.config/nvim-Ecovim ] && {
      alias nvim-eco="NVIM_APPNAME=nvim-Ecovim nvim"
      items+=("Ecovim")
      ndirs+=("nvim-Ecovim")
    }
    [ -d ${HOME}/.config/nvim-LunarVim ] && {
      alias nvim-lunar="NVIM_APPNAME=nvim-LunarVim nvim"
      items+=("LunarVim")
      ndirs+=("nvim-LunarVim")
    }
    [ -d ${HOME}/.config/nvim-MultiVim ] && {
      alias nvim-multi="NVIM_APPNAME=nvim-MultiVim nvim"
      items+=("MultiVim")
      ndirs+=("nvim-MultiVim")
    }
    [ -d ${HOME}/.config/nvim-SpaceVim ] && {
      alias nvim-space="NVIM_APPNAME=nvim-SpaceVim nvim"
      items+=("SpaceVim")
      ndirs+=("nvim-SpaceVim")
    }
  fi

  function nvimselect() {
    action="Open"
    remove=
    if [[ "$1" == "-r" ]]
    then
      action="Remove"
      remove=1
      for i in "${!items[@]}"; do
        if [[ ${items[i]} = "Lazyman" ]]; then
          unset 'items[i]'
        fi
      done
      for i in "${!items[@]}"; do
        new_items+=( "${items[i]}" )
      done
      items=("${new_items[@]}")
      unset new_items
      shift
    fi
    filter="$1"
    numitems=${#items[@]}
    if [ ${numitems} -eq 1 ]
    then
      config="${items[@]:0:1}"
    else
      height=$((numitems * 6))
      [ ${height} -gt 100 ] && height=100
      [ ${height} -lt 20 ] && height=20
      if [ "${filter}" ]
      then
        config=$(printf "%s\n" "${items[@]}" | grep -i ${filter} | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      else
        config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      fi
    fi
    if [[ -z $config ]]; then
      echo "Nothing selected"
      return 0
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
    if [ "${remove}" ]
    then
      lazyman -R -N ${config}
    else
      NVIM_APPNAME=$config nvim $@
    fi
  }

  function neovselect() {
    action="Open"
    remove=
    if [[ "$1" == "-r" ]]
    then
      action="Remove"
      remove=1
      shift
    fi
    filter="$1"
    numitems=${#items[@]}
    if [ ${numitems} -eq 1 ]
    then
      config="${items[@]:0:1}"
    else
      height=$((numitems * 6))
      [ ${height} -gt 100 ] && height=100
      [ ${height} -lt 20 ] && height=20
      if [ "${filter}" ]
      then
        config=$(printf "%s\n" "${items[@]}" | grep -i ${filter} | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      else
        config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" ${action} Neovim Config  " --height=${height}% --layout=reverse --border --exit-0)
      fi
    fi
    if [[ -z $config ]]; then
      echo "Nothing selected"
      return 0
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
    if [ "${remove}" ]
    then
      lazyman -R -N ${config}
    else
      NVIM_APPNAME=$config neovide $@
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
selectable menu is provided with the `neovides` alias and convenience
key binding of `ctrl-N` to bring up that menu.

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
confval=$(NVIM_APPNAME="nvim-Lazyman" nvim -l ${GET_CONF} ${confname} 2>&1)
```

where `GET_CONF` above is the Lua script `~/.config/nvim-Lazyman/scripts/get_conf.lua`.

<details><summary>View the get_conf.lua script</summary>

```lua
-- Invoke with 'nvim -l get_conf.lua conf_name'
-- Where 'conf_name' is one of the entries in configuration.lua
--
-- For example, from a Bash script:
--
-- #!/bin/bash
-- export NVIM_APPNAME="nvim-Lazyman"
-- nvim -l ~/.config/nvim-Lazyman/scripts/get_conf.lua enable_winbar

local settings = require("configuration")
local config = vim.inspect(_G.arg[1])
local arg = string.gsub(config, '"', "")
local entry = settings[arg]
if type (entry) == 'string' then
  print(entry)
elseif type (entry) == 'table' then
  table.sort(entry)
  for _,val in ipairs(entry) do
    print(val)
  end
  print("\n")
else
  print(tostring(entry))
end
```

</details>

Pretty simple, huh? Thanks Neovim!

### Lazyman source code

The convenience script to install and initialize `nvim-Lazyman` is provided at
[lazyman.sh](lazyman.sh). The automated install and initialization is performed
by `lazyman` and [install_neovim.sh](scripts/install_neovim.sh).

View the lazyman.sh script in the
[Lazyman Wiki](https://github.com/doctorfree/nvim-lazyman/wiki/lazyman))

### Install neovim and tools

The `lazyman` command checks for a current version of Neovim and, if not found
or if the existing version is less than 0.9, invokes the `install_neovim.sh`
script to install Neovim, dependencies, language servers, and tools.

Not all language servers and tools are installed. If additional language
support is desired, it can usually be provided by Mason or Homebrew.
For example, to provide support for Composer run `brew install composer`.

The automated Neovim installation is performed by
[install_neovim.sh](scripts/install_neovim.sh). View the `install_neovim.sh`
script in the
[Lazyman Wiki](https://github.com/doctorfree/nvim-lazyman/wiki/install_neovim).
