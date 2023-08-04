---
# the default layout is 'page'
icon: fas fa-user-circle
order: 2
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
