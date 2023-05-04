---
title: LAZYMAN
section: 1
header: User Manual
footer: lazyman 1.0.2
date: March 13, 2023
---

# LAZYMAN

## NAME

lazyman - install, initialize, manage, and explore multiple Neovim configurations

## SYNOPSIS

lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-e] [-E config] [-F] [-i] [-k] [-l] [-m] [-s] [-S] [-v] [-n] [-p] [-P] [-q] [-h] [-H] [-I] [-L cmd] [-rR] [-C url] [-D subdir] [-N nvimdir] [-U] [-w conf] [-W] [-x conf] [-X] [-y] [-z] [-Z] [-u] [status]

## FEATURES

- `lazyman` command to easily install, initialize, manage, and explore multiple Neovim configurations
- support for Lazy, Packer, and vim-plug plugin managers
- automated installation of dependencies, tools, language servers, and Neovim 0.9
- richly configured `nvim-Lazyman` Neovim configuration
- interactive menu interface for ease of management
- vimdoc help for `nvim-Lazyman` with `:h nvim-Lazyman`

## DESCRIPTION

The `lazyman` command can be used to install, initialize, and manage
multiple Neovim configurations. Neovim configurations are installed
and initialized in separate subdirectories of `~/.config/` with
associated separate subdirectories in `~/.local/share/`,
`~/.local/state/`, and `~/.cache/`.

The `lazyman` Neovim configuration is installed as `~/.config/nvim-Lazyman`
and the `lazyman` command is installed as `~/.local/bin/lazyman`.

The Neovim configuration used by the `nvim` command is determined by
the `NVIM_APPNAME` environment variable (Neovim 0.9 and later only).
Set the `NVIM_APPNAME` environment variable in the shell initialization
file (typically `~/.bashrc` or `~/.zshrc`) by using the `export`
shell builtin:

```bash
export NVIM_APPNAME="<nvimdir>"
```

where `<nvimdir>` is the subdirectory in `~/.config/` that holds the
desired Neovim configuration. For example, to use the `LazyVim` Neovim
configuration in `~/.config/nvim-LazyVim/` the export command would be:

```bash
export NVIM_APPNAME="nvim-LazyVim"
```

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

Both the `nvims` alias and `neovides` alias accept a `-r` flag which indicates
removal of the selected Neovim configuration.

The fuzzy searchable/selectable menu of Neovim configurations can also
be shown with the command `lazyman -S`. Note also that both the `nvims`
alias and the `lazyman -S` command can accept additional filename arguments
which are then passed to Neovim. For example, to edit `/tmp/foo.lua` with
a Neovim configuration selected from the `nvims` menu:

```bash
nvims /tmp/foo.lua
```

Execute `nvims` directly at the shell prompt or by using the convenience
key binding `ctrl-n`.

Similarly, if `neovide` is found in the execution PATH then a fuzzy
selectable menu is provided with the `neovides` alias and convenience
key binding of `ctrl-N` to bring up that menu.

Another alternative to setting `NVIM_APPNAME` in the environment or with an
alias is to use the `lazyman` command to specify which Neovim configuration
to use with this invocation. This is done using the `-E config` option to
`lazyman`. When invoking `lazyman` with the `-E config` argument, the Neovim
configuration can be specified by setting `config` to one of `astronvim`,
`ecovim`, `kickstart`, `lazyman`, `lazyvim`, `lunarvim`, `nvchad`, `spacevim`,
or any Neovim configuration directory in `~/.config`. For example, to edit
the file `foo.lua` using the LazyVim Neovim configuration:

```bash
lazyman -E lazyvim foo.lua
```

When invoked with the `-E config` option, `lazyman` sets the `NVIM_APPNAME`
environment variable to the specified `config` and executes `nvim` with
all following arguments. This is a pretty easy way to explore all the
`lazyman` installed and initialized Neovim configurations.

### Supported plugin managers

Lazyman currently supports the following Neovim plugin managers:

- [Lazy](https://github.com/folke/lazy.nvim) (lazy.nvim)
- [Packer](https://github.com/wbthomason/packer.nvim) (packer.nvim)
- [Plug](https://github.com/junegunn/vim-plug) (vim-plug)

The SpaceVim bundled plugin manager is also supported.

Neovim configurations using other plugin managers will likely fail to cleanly
install and initialize using `lazyman`. Support for additional plugin managers
is not currently planned but if you have a need for this feature open an issue.

To install and initialize a Neovim configuration that uses the **Packer** plugin
manager invoke `lazyman` with the `-P` flag.

To install and initialize a Neovim configuration that uses the **Plug** plugin
manager invoke `lazyman` with the `-p` flag.

## OPTIONS

The following command line options are available with the `lazyman` command:

`-A` : indicates install all supported Neovim configurations

`-a` : indicates install and initialize the the 'AstroNvim' Neovim configuration

`-B` : indicates install and initialize all 'Base' Neovim configurations

`-b branch` : specifies an nvim-lazyman git branch to checkout

`-c` : indicates install and initialize the 'NvChad' Neovim configuration

`-d` : indicates debug mode

`-D subdir` : specifies the subdirectory of the repository given with `-C url` to retrieve

`-e` : indicates install and initialize the 'Ecovim' Neovim configuration

`-E 'config'` : execute 'nvim' with 'config' Neovim configuration where 'config' can be one of 'lazyman', 'astronvim', 'ecovim', 'kickstart', 'lazyvim', 'lunarvim', 'magicvim', 'spacevim', or any Neovim configuration directory in '~/.config'. For example, 'lazyman -E lazyvim foo.lua' would edit 'foo.lua' with the LazyVim config

`-F` : indicates present the Lazyman Configuration menu

`-h` : indicates use Homebrew rather than the native package manager (Pacman always used on Arch Linux, Homebrew on macOS)

`-H` : indicates compile and install the nightly Neovim build

`-i` : indicates install and initialize the 'Lazyman' Neovim configuration

`-k` : indicates install and initialize the 'Kickstart' Neovim configuration

`-l` : indicates install and initialize the 'LazyVim' Neovim configuration

`-m` : indicates install and initialize 'MagicVim' Neovim configuration

`-s` : indicates install and initialize the 'SpaceVim' Neovim configuration

`-v` : indicates install and initialize the 'LunarVim' Neovim configuration

`-I` : indicates install language servers and tools for coding diagnostics

`-L cmd` : specifies a Lazy command to run

`-n` : indicates dry run, don't actually do anything, just printf's

`-P` : indicates use Packer rather than Lazy to initialize

`-p` : indicates use Plug rather than Lazy to initialize

`-q` : indicates quiet install

`-r` : indicates remove the previously installed configuration

`-R` : indicates remove previously installed configuration and backups

`-C url` : specifies a URL to a Neovim configuration git repository

`-N nvimdir` : specifies the folder name to use for the config given by -C

`-U` : indicates update an existing configuration

`-w conf` : indicates install and initialize Extra 'conf' configuration. 'conf' can be one of: 'Abstract', 'Knvim', 'Roiz', 'Fennel', 'Nv', 'Adib', 'Optixal', 'Plug', 'Simple', or 'Heiker'

`-W` : indicates install and initialize all 'Extra' Neovim configurations

`-x conf` : indicates install and initialize nvim-starter 'conf' configuration. 'conf' can be one of: 'Kickstart', 'NvPak', 'Minimal', 'StartBase', 'Opinion', 'Lsp', 'Mason', or 'Modular'

`-X` : indicates install and initialize all 'Starter' Neovim configurations

`-y` : indicates do not prompt, answer 'yes' to any prompt

`-z` : indicates do not run nvim after initialization

`-Z` : indicates do not install Homebrew, Neovim, or any other tools during initialization

`-u` : displays this usage message and exits

`status` : displays a brief status report and exits

Commands act on `NVIM_APPNAME`, override with '-N nvimdir' or '-A'

Without arguments lazyman installs and initializes nvim-Lazyman or,
if initialized presents an interactive menu system.

### EXAMPLES

`lazyman` : installs and initializes the `Lazyman` Neovim configuration in `$HOME/.config/nvim-Lazyman/`. If already initialized, `lazyman` presents an interactive menu interface

`lazyman -a` : installs and initializes the `AstroNvim` Neovim configuration in `$HOME/.config/nvim-AstroNvim/`

`lazyman -l` : installs and initializes the `LazyVim` Neovim configuration in `$HOME/.config/nvim-LazyVim/`

`lazyman -A` : installs and initializes all supported Neovim configurations

`lazyman -I` : installs language servers and tools for coding diagnostics

`lazyman -L update` : runs the `:Lazy update` command in the active Neovim configuration (combine with -N or -A to override)

`lazyman -U -N nvim-LazyVim` : updates the `LazyVim` Neovim configuration in `$HOME/.config/nvim-LazyVim/`

`lazyman -A -U` : updates all installed supported Neovim configurations

`lazyman -P -C https://github.com/Abstract-IDE/Abstract -N nvim-Abstract` : installs and initializes the Packer based 'Abstract' Neovim configuration in `~/.config/nvim-Abstract`

`lazyman -R -N nvim-LazyVim` : removes the `LazyVim` Neovim configuration in `$HOME/.config/nvim-LazyVim/`, its data files, cache, state, and all backups

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

## CONFIGURATION

In addition to the `lazyman` command, the Lazyman distribution includes
a richly preconfigured Neovim configuration in `~/.config/nvim-Lazyman`.
The Lazyman Neovim configuration includes a top-level configuration file,
`~/.config/nvim-Lazyman/lua/configuration.lua`. This file can be use to enable,
disable, and configure `nvim-Lazyman` components. For example, here is where you
would configure whether `neo-tree` or `nvim-tree` is enabled as a file explorer.
Or, disable the `tabline`, disable the `statusline`, set the `colorscheme`,
`theme`, and theme style. The `configuration.lua` file is intended to serve as a
quick and easy way to re-configure the `nvim-Lazyman` Neovim configuration but you
can still dig down into the `options.lua`, `keymaps.lua`, `autocmds.lua` and more.

### Configuration sections

The `lua/configuration.lua` configuration file contains the following sections
with settings briefly described here:

#### Theme configuration

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

##### Supported themes

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

#### Plugin configuration

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
- The winbar with navic location via lspconfig if available
  - `conf.enable_winbar = true`
- Enable the rebelot/terminal.nvim terminal plugin
  - `conf.enable_terminal = true`
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
- Disable semantic highlighting
  - `conf.disable_semantic_highlighting = false`
- Convert semantic highlights to treesitter highlights
  - `conf.convert_semantic_highlighting = true`

Additional plugin configuration and options are available in `configuration.lua`.

#### Lazyman Neovim Terminal

If `configuration.lua` has the Neovim Terminal enabled with
`conf.enable_terminal = true` then the `Lazyman` Neovim configuration
includes Neovim Terminal management via
[terminal.nvim](https://github.com/rebelot/terminal.nvim). This Neovim terminal
is preconfigured for execution of the `lazyman` command. A shortcut key
binding to execute `lazyman` in a Neovim terminal has also been provided:
(`<leader>lm`). While in Neovim with the default `nvim-Lazyman` configuration,
pressing `,lm` will execute the `lazyman` command in a Neovim floating terminal
window. Alternately, executing the Neovim command `:Lazyman` will also
bring up the `lazyman` command in a Neovim terminal.

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

### Help

The Lazyman Neovim configuration provides `vimdoc` help for the `lazyman`
command, the `nvim-Lazyman` Neovim configuration, and the configured keymaps.

While in Neovim using the `nvim-Lazyman` configuration, view the `vimdoc`
help for the `lazyman` command and configuration with the command
`:help Lazyman-lazyman` and the `vimdoc` help for the configured keymaps
with the command `:help Lazyman-Keymaps-lazyman`. Shortcut key bindings
for these help commands have been configured. Use `,hl` and `,hk` to
quickly access the `vimdoc` help for `lazyman` and Lazyman keymaps.

## AUTHORS

Written by Ronald Record `github@ronrecord.com`

## LICENSING

LAZYMAN is distributed under an Open Source license.
See the file LICENSE in the LAZYMAN source distribution
for information on terms &amp; conditions for accessing and
otherwise using LAZYMAN and for a DISCLAIMER OF ALL WARRANTIES.

## BUGS

Submit bug reports online at:

<https://github.com/doctorfree/nvim-lazyman/issues>

Full documentation and sources at:

<https://github.com/doctorfree/nvim-lazyman>
