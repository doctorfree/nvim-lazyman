---
# the default layout is 'page'
icon: fas fa-user-circle
order: 4
---

## Usage

The `lazyman.sh` script is located in `~/.config/nvim-Lazyman`.
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
command.

To remove a Lazyman Neovim configuration execute `lazyman -r -N <nvimdir>`.
To remove the configuration and all its backups, `lazyman -R -N <nvimdir>`.
To remove all installed Lazyman Neovim configurations and their backups
without being prompted to proceed, execute `lazyman -A -R -y`.

### Lazyman usage message

```
Usage: lazyman [-A] [-a] [-B] [-b branch] [-c] [-d] [-E config] [-e]
   [-f path] [-F menu] [-g] [-i group] [-j] [-k] [-l] [-m] [-M] [-s]
   [-S] [-v] [-n] [-o] [-O name] [-p] [-P] [-q] [-Q] [-h] [-H] [-I] [-J]
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
    -o indicates install and initialize penguinVim Neovim configuration
    -O 'name' indicates set Lazyman configuration to namespace 'name'
       'name' can be one of: free onno toggle
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
           All Adib Artur Beethoven Brain Charles Craftzdog Daniel Dillon Elianiva Elijah Enrique Kristijan Heiker J4de Josean JustinLvim JustinNvim Kodo Lukas LvimAdib Maddison Metis Mini ONNO OnMyWay Optixal Orhun Primeagen Rafi Roiz Simple Slydragonn Spider Traap Wuelner xero Xiao
    -W indicates install and initialize all 'Personal' Neovim configurations
    -x 'conf' indicates install and initialize nvim-starter 'conf' config
       'conf' can be one of:
           All 2k AstroNvimStart Basic CodeArt Cosmic Ember Fennel HardHacker JustinOhMy Kabin Kickstart Lamia Micah Normal NvPak Modern pde Rohit Scratch SingleFile BasicLsp BasicMason Extralight LspCmp Minimal StartBase Opinion StartLsp StartMason Modular
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
manager invoke `lazyman` with the `-P` flag.

To install and initialize a Neovim configuration that uses the **Plug** plugin
manager invoke `lazyman` with the `-p` flag.

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
is based on the [ONNO](https://github.com/doctorfree/nvim-lazyman/blob/main/info/ONNO.md)
configuration with modifications and enhancements to integrate this config with `lazyman`.

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

If [Asciiville](https://asciiville.dev) is installed,
pressing `,A` or executing the `:Asciiville` Neovim command will execute
the `asciiville` command in a Neovim floating terminal window.

If the `htop` command is available, `:Htop` will execute the `htop` system
monitor in a floating Neovim terminal window.

This preconfigured Neovim terminal capability is only available in the
`Lazyman` Neovim configuration and not in the other configs.
