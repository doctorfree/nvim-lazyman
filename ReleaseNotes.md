## Lazyman Release Notes

**[Important Note:]** Previous versions of Lazyman installed configurations in `~/.config/nvim-<configname>`. Starting with Lazyman version 4.0.0 all Lazyman installed Neovim configurations are located in `~/.config/lazyman/<configname>`. See [Lazyman Migration](https://lazyman.dev/posts/Migration) for additional details on this migration.

This major new release of `lazyman` supports over 100 Neovim configurations. The `Lazyman` Neovim configuration options and enabled plugins can be managed through the `lazyman` command menus. The Lazyman initialization defaults to using the native package manager rather than Homebrew to install Neovim dependencies and tools. Native package managers are supported on Debian based platforms (e.g. Ubuntu), RPM based platforms (e.g. Fedora), Arch Linux, Alpine Linux, SUSE Linux, and Void Linux. To use Homebrew rather than the native package manager, use `lazyman -h ...` when initializing the system. Homebrew is the default on macOS and used elsewhere if no supported native package manager is found.

All that is needed to bootstrap `Lazyman` is the [lazyman.sh](https://github.com/doctorfree/nvim-lazyman/releases/download/v4.0.0r2/lazyman.sh) script. Download and execute to get started.

Install Lazyman in two steps with `git`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/lazyman/Lazyman
$HOME/.config/lazyman/Lazyman/lazyman.sh
```

See below for detailed [Installation instructions](#installation) to bootstrap Lazyman. Once Lazyman is installed, execute the `lazyman` command to manage Neovim configurations. The `lazyman` command is located in `~/.local/bin/lazyman`.

The Lazyman project can be used to install, initialize, manage, and explore multiple Neovim configurations. Currently over 100 popular Neovim configurations are supported in the following configuration categories:

<!-- prettier-ignore -->
| **Base** |        |        |        | **Configs** |
| :------- | :----: | :----: | :----: | ----------: |
| [Abstract](https://lazyman.dev/info/Abstract.html) | [AstroNvimPlus](https://lazyman.dev/info/AstroNvimPlus.html) | [Basic IDE](https://lazyman.dev/info/BasicIde.html) | [Ecovim](https://lazyman.dev/info/Ecovim.html) | [LazyVim](https://lazyman.dev/info/LazyVim.html) |
| [LunarVim](https://lazyman.dev/info/LunarVim.html) | [MagicVim](https://lazyman.dev/info/MagicVim.html) | [NvChad](https://lazyman.dev/info/NvChad.html) | [penguinVim](https://lazyman.dev/info/Penguin.html) | [SpaceVim](https://lazyman.dev/info/SpaceVim.html) |

<!-- prettier-ignore -->
| **Language** |        |        |        |        |        | **Configs** |
| :----------- | :----: | :----: | :----: | :----: | :----: | ----------: |
| [AlanVim](https://lazyman.dev/info/AlanVim.html) | [Allaman](https://lazyman.dev/info/Allaman.html) | [CatNvim](https://lazyman.dev/info/CatNvim.html) | [Cpp](https://lazyman.dev/info/Cpp.html) | [Go](https://lazyman.dev/info/Go.html) | [Go2one](https://lazyman.dev/info/Go2one.html) | [Insis](https://lazyman.dev/info/Insis.html) |
| [Knvim](https://lazyman.dev/info/Knvim.html) | [LaTeX](https://lazyman.dev/info/LaTeX.html) | [LazyIde](https://lazyman.dev/info/LazyIde.html) | [LunarIde](https://lazyman.dev/info/LunarIde.html) | [LvimIde](https://lazyman.dev/info/LvimIde.html) | [Magidc](https://lazyman.dev/info/Magidc.html) | [Nv](https://lazyman.dev/info/Nv.html) |
| [NV-IDE](https://lazyman.dev/info/NV-IDE.html) | [Orange](https://lazyman.dev/info/Orange.html) | [Python](https://lazyman.dev/info/Python.html) | [Rust](https://lazyman.dev/info/Rust.html) | [SaleVim](https://lazyman.dev/info/SaleVim.html) | [Shuvro](https://lazyman.dev/info/Shuvro.html) | [Webdev](https://lazyman.dev/info/Webdev.html) |

<!-- prettier-ignore -->
| **Personal** |        |        |        | **Configs** |
| :----------- | :----: | :----: | :----: | ----------: |
| [Adib](https://lazyman.dev/info/Adib.html) | [Artur](https://lazyman.dev/info/Artur.html) | [Beethoven](https://lazyman.dev/info/Beethoven.html) | [Brain](https://lazyman.dev/info/Brain.html) | [Charles](https://lazyman.dev/info/Charles.html) |
| [Craftzdog](https://lazyman.dev/info/Craftzdog.html) | [Daniel](https://lazyman.dev/info/Daniel.html) | [Dillon](https://lazyman.dev/info/Dillon.html) | [Elianiva](https://lazyman.dev/info/Elianiva.html) | [Elijah](https://lazyman.dev/info/Elijah.html) |
| [Enrique](https://lazyman.dev/info/Enrique.html) | [Heiker](https://lazyman.dev/info/Heiker.html) | [J4de](https://lazyman.dev/info/J4de.html) | [Josean](https://lazyman.dev/info/Josean.html) | [JustinLvim](https://lazyman.dev/info/JustinLvim.html) |
| [JustinNvim](https://lazyman.dev/info/JustinNvim.html) | [Kodo](https://lazyman.dev/info/Kodo.html) | [Kristijan](https://lazyman.dev/info/Kristijan.html) | [LamarVim](https://lazyman.dev/info/LamarVim.html) | [Lukas](https://lazyman.dev/info/Lukas.html) |
| [Maddison](https://lazyman.dev/info/Maddison.html) | [Metis](https://lazyman.dev/info/Metis.html) | [Mini](https://lazyman.dev/info/Mini.html) | [OnMyWay](https://lazyman.dev/info/OnMyWay.html) | [ONNO](https://lazyman.dev/info/ONNO.html) |
| [Optixal](https://lazyman.dev/info/Optixal.html) | [Orhun](https://lazyman.dev/info/Orhun.html) | [Primeagen](https://lazyman.dev/info/Primeagen.html) | [Rafi](https://lazyman.dev/info/Rafi.html) | [Roiz](https://lazyman.dev/info/Roiz.html) |
| [Simple](https://lazyman.dev/info/Simple.html) | [Slydragonn](https://lazyman.dev/info/Slydragonn.html) | [Spider](https://lazyman.dev/info/Spider.html) | [Traap](https://lazyman.dev/info/Traap.html) | [Wuelner](https://lazyman.dev/info/Wuelner.html) |
| [xero](https://lazyman.dev/info/xero.html) | [Xiao](https://lazyman.dev/info/Xiao.html) | | | |

<!-- prettier-ignore -->
| **Starter** |        |        |        |        |        | **Configs** |
| :---------- | :----: | :----: | :----: | :----: | :----: | ----------: |
| [AstroNvimStart](https://lazyman.dev/info/AstroNvimStart.html) | [Barebones](https://lazyman.dev/info/Barebones.html) | [Basic](https://lazyman.dev/info/Basic.html) | [CodeArt](https://lazyman.dev/info/CodeArt.html) | [CosmicNvim](https://lazyman.dev/info/Cosmic.html) | [Ember](https://lazyman.dev/info/Ember.html) | [Fennel](https://lazyman.dev/info/Fennel.html) |
| [HardHacker](https://lazyman.dev/info/HardHacker.html) | [JustinOhMy](https://lazyman.dev/info/JustinOhMy.html) | [Kickstart](https://lazyman.dev/info/Kickstart.html) | [Kabin](https://lazyman.dev/info/Kabin.html) | [Lamia](https://lazyman.dev/info/Lamia.html) | [Micah](https://lazyman.dev/info/Micah.html) | [Modern](https://lazyman.dev/info/Modern.html) |
| [Normal](https://lazyman.dev/info/Normal.html) | [nvim2k](https://lazyman.dev/info/2k.html) | [NvPak](https://lazyman.dev/info/NvPak.html) | [PDE](https://lazyman.dev/info/pde.html) | [Rohit](https://lazyman.dev/info/Rohit.html) | [Scratch](https://lazyman.dev/info/Scratch.html) | [SingleFile](https://lazyman.dev/info/SingleFile.html) |

<!-- prettier-ignore -->
| **VonHeikemen** |        | **Starter** |        | **Configs** |
| :-------------- | :----: | :---------: | :----: | ----------: |
| [BasicLsp](https://lazyman.dev/info/BasicLsp.html) | [BasicMason](https://lazyman.dev/info/BasicMason.html) | [Extralight](https://lazyman.dev/info/Extralight.html) | [LspCmp](https://lazyman.dev/info/LspCmp.html) | [Minimal](https://lazyman.dev/info/Minimal.html) |
| [Modular](https://lazyman.dev/info/Modular.html) | [Opinionated](https://lazyman.dev/info/Opinion.html) | [StartBase](https://lazyman.dev/info/StartBase.html) | [StartLsp](https://lazyman.dev/info/StartLsp.html) | [StartMason](https://lazyman.dev/info/StartMason.html) |

In addition, Lazyman installs and initializes the Lazyman Neovim configuration, a richly configured Neovim environment using Lua, Lazy, and Mason to support highlighting, completion, diagnostics, and more for many programming languages.

The installation and initialization of Neovim configurations are placed in separate directories and managed using the `NVIM_APPNAME` environment variable.

The `lazyman` command is installed as `~/.local/bin/lazyman` and can be used to install, initialize, remove, and manage multiple Neovim configurations.

- [Installation](#installation)
  - [Bootstrap](#bootstrap)
  - [Postinstall](#postinstall)
- [Removal](#removal)

## Installation

Install Lazyman with `git` in two steps:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/lazyman/Lazyman
$HOME/.config/lazyman/Lazyman/lazyman.sh
```

These steps:

1. Download the Lazyman Neovim configuration
1. Initialize the Lazyman Neovim configuration which:
   1. Installs Homebrew if not already installed (macOS only)
   1. Installs the latest release version of Neovim if not already installed
   1. Installs language servers and tools for coding diagnostics
   1. Installs and initializes configured Neovim plugins

Lazyman installs Neovim if there is not already Neovim 0.9 or later installed and in the execution path. In addition, Lazyman installs Neovim dependencies, some language servers, and tools.

The installation of Neovim 0.9, language servers, and tools ensures a proper runtime environment. To avoid the installation of Neovim, language servers, and tools, execute `lazyman -Z`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/lazyman/Lazyman
$HOME/.config/lazyman/Lazyman/lazyman.sh -Z
```

Note that circumventing the Neovim installation means that Neovim 0.9 must be installed in some other manner. Also, language servers and tools required by some Neovim configurations may not be present. However, some may prefer to handle the installation of Neovim 0.9, language servers, and tools on their own. In this case, the `-Z` option is your friend.

If, after initializing Lazyman with `lazyman -Z`, you wish to let Lazyman install Neovim 0.9, language servers and tools, then issue the command `lazyman -I` or choose the `Install Tools` lazyman menu option.

### Bootstrap

To bootstrap the Lazyman Neovim configuration manager, the `lazyman.sh` script must be downloaded and executed. The download can be performed with `git`, `curl`, `wget`, copy/paste, or [download the release artifact](https://github.com/doctorfree/nvim-lazyman/releases/download/v4.0.0r2/lazyman.sh).

The recommended bootstrap procedure is with `git`:

Clone the repository with `git` and execute `lazyman.sh`:

```bash
git clone https://github.com/doctorfree/nvim-lazyman $HOME/.config/lazyman/Lazyman
$HOME/.config/lazyman/Lazyman/lazyman.sh
```

Once the `lazyman.sh` script has been downloaded and executed, subsequent Lazyman operations can be performed with the `lazyman` command found in `~/.local/bin/lazyman`. The manual page can be viewed with `man lazyman`.

If you do not wish to use this automated installation and initialization method then manual installation and initialization is described below. Manual installation and initialization may be preferred by those who do not wish to upgrade Neovim to the latest version or by those who do not wish to use Homebrew.

Neovim 0.8 and earlier users, see the [Neovim 0.8](https://github.com/doctorfree/nvim-lazyman#neovim-08-and-earlier) section in the [README](https://github.com/doctorfree/nvim-lazyman#readme) for manual installation and initialization of `Lazyman`.

Neovim 0.9 and later users, see the [Neovim 0.9](https://github.com/doctorfree/nvim-lazyman#neovim-09-and-later)) section in the [README](https://github.com/doctorfree/nvim-lazyman#readme) for manual installation and initialization of `Lazyman`.

Neovim 0.9 and later users can use the `NVIM_APPNAME` environment variable to control where Neovim looks for its configuration.

## Postinstall

After installing and initializing `lazyman`, additional Neovim configurations can be installed and initialized using the `lazyman` command.

Run `lazyman` without any arguments to view an interactive menu system.

## Removal

The [lazyman](lazyman.sh) command can be used to remove previously installed Neovim configurations with the `-R` command line option. For example, to remove a previously installed `LazyVim` configuration, its initialized plugins, state, and cache, execute the following command:

```bash
lazyman -l -R
```

To remove the `Lazyman` configuration and associated plugins, state, and cache:

```bash
lazyman -R -N lazyman/Lazyman
```

All `lazyman` operations can be performed as a dry run with `-n`. For example, to see which `LazyVim` folders would be removed without removing any:

```bash
lazyman -n -l -R
```
