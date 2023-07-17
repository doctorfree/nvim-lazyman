## Lazyman Release Notes

This major new release of `lazyman` supports over 80 Neovim configurations. The `nvim-Lazyman` Neovim configuration options and enabled plugins can be managed through the `lazyman` command menus. The Lazyman initialization defaults to using the native package manager rather than Homebrew to install Neovim dependencies and tools. Native package managers are supported on Debian based platforms (e.g. Ubuntu), RPM based platforms (e.g. Fedora), Arch Linux, Alpine Linux, SUSE Linux, and Void Linux. To use Homebrew rather than the native package manager, use `lazyman -h ...` when initializing the system. Homebrew is the default on macOS and used elsewhere if no supported native package manager is found.

All that is needed to bootstrap `Lazyman` is the [lazyman.sh](https://github.com/doctorfree/nvim-lazyman/releases/download/v2.1.8r3/lazyman.sh) script. Download and execute to get started:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/nvim-Lazyman
$HOME/.config/nvim-Lazyman/lazyman.sh
```

See below for detailed [Installation instructions](#installation) to bootstrap Lazyman. Once Lazyman is installed, execute the `lazyman` command to manage Neovim configurations. The `lazyman` command is located in `~/.local/bin/lazyman`.

The Lazyman project can be used to install, initialize, manage, and explore multiple Neovim configurations. Currently over 80 popular Neovim configurations are supported in the following configuration categories:

<!-- prettier-ignore -->
| **Base** |       |       |       | **Configs** |
| -------- | ----- | ----- | ------| ----------- |
| [Abstract](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Abstract.md) | [AstroNvimPlus](https://github.com/doctorfree/nvim-lazyman/blob/main/info/AstroNvimPlus.md) | [Basic IDE](https://github.com/doctorfree/nvim-lazyman/blob/main/info/BasicIde.md) | [Ecovim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Ecovim.md) | [LazyVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LazyVim.md) |
| [LunarVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LunarVim.md) | [MagicVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/MagicVim.md) | [NvChad](https://github.com/doctorfree/nvim-lazyman/blob/main/info/NvChad.md) | [penguinVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Penguin.md) | [SpaceVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/SpaceVim.md) |

<!-- prettier-ignore -->
| **Language** |       |        |        |        | **Configs** |
| ------------ | ----- | ------ | ------ | ------ | ----------- |
| [AlanVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/AlanVim.md) | [Allaman](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Allaman.md) | [CatNvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/CatNvim.md) | [Go](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Go.md) | [Go2one](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Go2one.md) | [Knvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Knvim.md) |
| [LaTeX](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LaTeX.md) | [LazyIde](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LazyIde.md) | [LunarIde](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LunarIde.md) | [LvimIde](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LvimIde.md) | [Magidc](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Magidc.md) | [Nv](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Nv.md) |
| [NV-IDE](https://github.com/doctorfree/nvim-lazyman/blob/main/info/NV-IDE.md) | [Python](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Python.md) | [Rust](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Rust.md) | [SaleVim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/SaleVim.md) | [Shuvro](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Shuvro.md) | [Webdev](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Webdev.md) |

<!-- prettier-ignore -->
| **Personal** |       |        |        |        |        | **Configs** |
| ------------ | ----- | ------ | ------ | ------ | ------ | ----------- |
| [3rd](https://github.com/doctorfree/nvim-lazyman/blob/main/info/3rd.md) | [Adib](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Adib.md) | [Artur](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Artur.md) | [Brain](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Brain.md) | [Charles](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Charles.md) | [Craftzdog](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Craftzdog.md) | [Daniel](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Daniel.md) |
| [Dillon](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Dillon.md) | [Elianiva](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Elianiva.md) | [Enrique](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Enrique.md) | [Heiker](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Heiker.md) | [J4de](https://github.com/doctorfree/nvim-lazyman/blob/main/info/J4de.md) | [Josean](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Josean.md) | [Kodo](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Kodo.md) |
| [Maddison](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Maddison.md) | [Metis](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Metis.md) | [Mini](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Mini.md) | [OnMyWay](https://github.com/doctorfree/nvim-lazyman/blob/main/info/OnMyWay.md) | [ONNO](https://github.com/doctorfree/nvim-lazyman/blob/main/info/ONNO.md) | [Optixal](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Optixal.md) | [Roiz](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Roiz.md) |
| [Simple](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Simple.md) | [Rafi](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Rafi.md) | [Slydragonn](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Slydragonn.md) | [Spider](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Spider.md) | [Traap](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Traap.md) | [xero](https://github.com/doctorfree/nvim-lazyman/blob/main/info/xero.md) | [Xiao](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Xiao.md) |

<!-- prettier-ignore -->
| **Starter** |       |       |       |       |        | **Configs** |
| ----------- | ----- | ----- | ----- | ----- | ------ | ----------- |
| [AstroNvimStart](https://github.com/doctorfree/nvim-lazyman/blob/main/info/AstroNvimStart.md) | [Basic](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Basic.md) | [CodeArt](https://github.com/doctorfree/nvim-lazyman/blob/main/info/CodeArt.md) | [CosmicNvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Cosmic.md) | [Ember](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Ember.md) | [Fennel](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Fennel.md) | [HardHacker](https://github.com/doctorfree/nvim-lazyman/blob/main/info/HardHacker.md) |
| [JustinLvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/JustinLvim.md) | [JustinNvim](https://github.com/doctorfree/nvim-lazyman/blob/main/info/JustinNvim.md) | [Kickstart](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Kickstart.md) | [Kabin](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Kabin.md) | [Lamia](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Lamia.md) | [Micah](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Micah.md) | [Modern](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Modern.md) |
| [Normal](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Normal.md) | [nvim2k](https://github.com/doctorfree/nvim-lazyman/blob/main/info/2k.md) | [NvPak](https://github.com/doctorfree/nvim-lazyman/blob/main/info/NvPak.md) | [PDE](https://github.com/doctorfree/nvim-lazyman/blob/main/info/pde.md) | [Rohit](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Rohit.md) | [Scratch](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Scratch.md) | [SingleFile](https://github.com/doctorfree/nvim-lazyman/blob/main/info/SingleFile.md) |

<!-- prettier-ignore -->
| **VonHeikemen** |       | **Starter** |       | **Configs** |
| --------------- | ----- | ----------- | ----- | ----------- |
| [BasicLsp](https://github.com/doctorfree/nvim-lazyman/blob/main/info/BasicLsp.md) | [BasicMason](https://github.com/doctorfree/nvim-lazyman/blob/main/info/BasicMason.md) | [Extralight](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Extralight.md) | [LspCmp](https://github.com/doctorfree/nvim-lazyman/blob/main/info/LspCmp.md) | [Minimal](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Minimal.md) |
| [Modular](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Modular.md) | [Opinionated](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Opinion.md) | [StartBase](https://github.com/doctorfree/nvim-lazyman/blob/main/info/StartBase.md) | [StartLsp](https://github.com/doctorfree/nvim-lazyman/blob/main/info/StartLsp.md) | [StartMason](https://github.com/doctorfree/nvim-lazyman/blob/main/info/StartMason.md) |

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

To bootstrap the Lazyman Neovim configuration manager, the `lazyman.sh` script must be downloaded and executed. The download can be performed with `git`, `curl`, `wget`, copy/paste, or [download the release artifact](https://github.com/doctorfree/nvim-lazyman/releases/download/v2.1.8r3/lazyman.sh).

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
