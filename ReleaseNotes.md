## Lazyman Release Notes

This major new release of `lazyman` supports over 40 Neovim configurations. The `nvim-Lazyman` Neovim configuration options and enabled plugins can be managed through the `lazyman` command menus. The Lazyman initialization defaults to using the native package manager rather than Homebrew to install Neovim dependencies and tools. Native package managers are supported on Debian based platforms (e.g. Ubuntu), RPM based platforms (e.g. Fedora), Arch Linux, Alpine Linux, SUSE Linux, and Void Linux. To use Homebrew rather than the native package manager, use `lazyman -h ...` when initializing the system. Homebrew is the default on macOS and used elsewhere if no supported native package manager is found.

All that is needed to bootstrap `Lazyman` is the [lazyman.sh](https://github.com/doctorfree/nvim-lazyman/releases/download/v2.1.2r2/lazyman.sh) script. Download and execute to get started:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

See below for detailed [Installation instructions](#installation) to bootstrap Lazyman. Once Lazyman is installed, execute the `lazyman` command to manage Neovim configurations. The `lazyman` command is located in `~/.local/bin/lazyman`.

The Lazyman project can be used to install, initialize, manage, and explore multiple Neovim configurations. Over 40 popular Neovim configurations are supported including:

| **Base**                                      |                                                  | **Configs**                                          |
| --------------------------------------------- | ------------------------------------------------ | ---------------------------------------------------- |
| [AstroNvim](https://astronvim.com)            | [Ecovim](https://github.com/ecosse3/nvim)        | [Abstract](https://github.com/Abstract-IDE/Abstract) |
| [LazyVim](https://github.com/LazyVim/LazyVim) | [LunarVim](https://github.com/LunarVim/LunarVim) | [MagicVim](https://gitlab.com/GitMaster210/magicvim) |
| [Nv](https://github.com/appelgriebsch/Nv)     | [NvChad](https://nvchad.com/)                    | [SpaceVim](https://spacevim.org)                     |

| **Personal**                                        |                                                     | **Configs**                                           |
| --------------------------------------------------- | --------------------------------------------------- | ----------------------------------------------------- |
| [Mini](https://github.com/echasnovski/nvim)         | [Ember](https://github.com/danlikestocode/embervim) | [Knvim](https://github.com/knmac/knvim)               |
| [Fennel](https://github.com/jhchabran/nvim-config)  | [Adib](https://github.com/adibhanna/nvim)           | [Optixal](https://github.com/Optixal/neovim-init.vim) |
| [Vim Plug](https://github.com/doctorfree/nvim-plug) | [Heiker](https://github.com/VonHeikemen/dotfiles)   | [Roiz](https://github.com/MrRoiz/rnvim)               |
| [Simple](https://github.com/anthdm/.nvim)           | [ONNO](https://github.com/loctvl842/nvim.git)       | [LaTeX](https://github.com/benbrastmckie/.config)     |

| **Starter**                                                                     |                                                                                | **Configs**                                                            |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------ | ---------------------------------------------------------------------- |
| [Basic](https://github.com/NvChad/basic-config)                                 | [Kickstart](https://github.com/nvim-lua/kickstart.nvim)                        | [Minimal](https://github.com/VonHeikemen/nvim-starter/tree/00-minimal) |
| [StartBase](https://github.com/VonHeikemen/nvim-starter/tree/01-base)           | [Opinionated](https://github.com/VonHeikemen/nvim-starter/tree/02-opinionated) | [StartLsp](https://github.com/VonHeikemen/nvim-starter/tree/03-lsp)    |
| [StartMason](https://github.com/VonHeikemen/nvim-starter/tree/04-lsp-installer) | [Modular](https://github.com/VonHeikemen/nvim-starter/tree/05-modular)         | [NvPak](https://github.com/Pakrohk-DotFiles/NvPak.git)                 |

Known working custom Lazyman configurations not yet integrated into the above categories:

| **Custom**                                             |                                                         |                                                     |                                                            | **Configs**                                             |
| ------------------------------------------------------ | ------------------------------------------------------- | --------------------------------------------------- | ---------------------------------------------------------- | ------------------------------------------------------- |
| [AlanVim](https://github.com/alanRizzo/dot-files)      | [Basic IDE](https://github.com/LunarVim/nvim-basic-ide) | [Brain](https://github.com/brainfucksec/neovim-lua) | [Charles](https://github.com/CharlesChiuGit/nvimdots.lua)  | [CodeArt](https://github.com/artart222/CodeArt)         |
| [CosmicNvim](https://github.com/CosmicNvim/CosmicNvim) | [Elianiva](https://github.com/elianiva/dotfiles)        | [Magidc](https://github.com/magidc/nvim-config)     | [Oh-My-Nvim](https://github.com/hardhackerlabs/oh-my-nvim) | [penguinVim](https://github.com/p3nguin-kun/penguinVim) |

In addition, Lazyman installs and initializes the Lazyman Neovim configuration, a richly configured Neovim environment using Lua, Lazy, and Mason to support highlighting, completion, diagnostics, and more for many programming languages.

The installation and initialization of Neovim configurations are placed in separate directories and managed using the `NVIM_APPNAME` environment variable.

The `lazyman` command is installed as `~/.local/bin/lazyman` and can be used to install, initialize, remove, and manage multiple Neovim configurations.

- [Installation](#installation)
  - [Bootstrap](#bootstrap)
  - [Postinstall](#postinstall)
- [Removal](#removal)

## Installation

The Lazyman installation process consists of two steps:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

These steps:

1. Download the Lazyman Neovim configuration
1. Initialize the Lazyman Neovim configuration which:
   1. Installs Homebrew if not already installed
   1. Installs the latest release version of Neovim if not already installed
   1. Installs language servers and tools for coding diagnostics
   1. Installs and initializes configured Neovim plugins

Lazyman uses [Homebrew](https://brew.sh) to install Neovim if there is not already Neovim 0.9 or later installed and in the execution path. In addition, Lazyman uses Homebrew to install Neovim dependencies, language servers, and tools.

The installation of Homebrew, Neovim 0.9, language servers, and tools ensures a proper runtime environment. To avoid the installation of Homebrew, Neovim, language servers, and tools, execute `lazyman -Z`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh -Z
```

Note that circumventing the Neovim installation means that Neovim 0.9 must be installed in some other manner. Also, language servers and tools required by some Neovim configurations may not be present. However, some may prefer to handle the installation of Neovim 0.9, language servers, and tools on their own. In this case, the `-Z` option is your friend.

If, after initializing Lazyman with `lazyman -Z`, you wish to let Lazyman install Neovim 0.9, language servers and tools, then issue the command `lazyman -I` or choose the `Install Tools` lazyman menu option.

### Bootstrap

To bootstrap the Lazyman Neovim configuration manager, the `lazyman.sh` script must be downloaded and executed. The download can be performed with `git`, `curl`, `wget`, copy/paste, or [download the release artifact](https://github.com/doctorfree/nvim-lazyman/releases/download/v2.1.2r2/lazyman.sh).

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

Neovim 0.8 and earlier users, see the [Neovim 0.8](https://github.com/doctorfree/nvim-lazyman#neovim-08-and-earlier) section in the [README](https://github.com/doctorfree/nvim-lazyman#readme) for manual installation and initialization of `nvim-Lazyman`.

Neovim 0.9 and later users, see the [Neovim 0.9](https://github.com/doctorfree/nvim-lazyman#neovim-09-and-later)) section in the [README](https://github.com/doctorfree/nvim-lazyman#readme) for manual installation and initialization of `nvim-Lazyman`.

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable to control where Neovim looks for its configuration.

## Postinstall

After installing and initializing `lazyman`, additional Neovim configurations can be installed and initialized using the `lazyman` command.

Run `lazyman` without any arguments to view an interactive menu system.

## Removal

The [lazyman](lazyman.sh) command can be used to remove previously installed Neovim configurations with the `-R` command line option. For example, to remove a previously installed `LazyVim` configuration, its initialized plugins, state, and cache, execute the following command:

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
