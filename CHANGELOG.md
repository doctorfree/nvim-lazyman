# Changelog

## Unreleased

### ⚡️ Added

### 🐞 Fixed

## v1.0.2r3

### ⚡️ Added

- Install jdtls with Mason, dynamically locate jvm runtimes for jdtls
- Reorganize lazyman menu
- Install cargo if not found
- Install markdownlint with Homebrew, remove from Mason installed tools
- Always install language servers and tools in install_neovim.sh
- Install neovim-remote HEAD after installing neovim HEAD
- Add convenience key binding for neovides menu, document neovides support in doc
- Add support for neovide in .lazymanrc aliases and function
- Add GUI initialization and autocmd for UIEnter
- Add install Neovide option to lazyman menu
- Add support for color indentlines
- Add custom flavor to catppuccin theme
- Add lsp-zero, add rounded border for LspInfo
- Add support for nvim terminal from rebelot
- Add xclip to tools check, rich menu formatting
- Remove silver searcher from dependencies

### 🐞 Fixed

- Fix ftplugin/java.lua for both linux and macos
- Adjust nvim-cmp config for performance
- Fix dracula and tokyonight panel transparency

## v1.0.2r2

### ⚡️ Added

- Add interactive menu system to manage Neovim configurations
- Use rich in the lazyman menu system if it is available
- Add figlet, lolcat, and rich-cli to brew installed tools
- Add hacker and octo plugins
- Add support for Neovim configs in repo subdirectories
- Add warning if lazymanrc not found
- Add styles for dracula theme

### 🐞 Fixed

- Go back to monokai-pro, issue resolved
- Move packer and plug plugin installs to initialization function
- Move Allaman distribution to unsupported for now as it has initialization errors
- Run nvim when initializing nvim-Lazyman, don't run nvim when initializing from menu system
- Recheck for tools after Install Tools in menu

## v1.0.2r1

### ⚡️ Added

- Dynamic nvims fuzzy selector menu generation to avoid logout/source
- Add support for dracula theme
- Remove shellharden, it strips too many things I like
- Make nvims an alias to dynamically generate the menu with the nvimselect function
- Install beautysh in install_neovim.sh rather than with Mason
- Add MagicVim to supported configs
- Split nvims keybind out into separate source
- Add support for removing all unsupported configs
- Dynamically generate nvims menu items from .nvimdirs maintained by lazyman
- Add neoscroll plugin for smooth scrolling
- Add support for SpaceVim
- Add lazymanrc shell initialization with aliases and nvims function
- Show which plugin manager is used for initialization
- Add support for vim-plug based initialization

### 🐞 Fixed

- Increase timeouts for lsp formatting
- Remove monokai-pro, waiting for author to fix doc/tags issue

## v1.0.1r1

### ⚡️ Added

- Use mason-null-ls as primary source rather than null-ls
- Language server and tools via Mason and lspconfig
- Use markdown man page as input to auto-generate vim doc

### 🐞 Fixed

- Treesitter playground uses deprecated calls, disable for now

## v1.0.0r3

### ⚡️ Added

- Add lazy updates to lualine
- Update README with latest configuration.lua
- Get show_diagnostics config working with all values

### 🐞 Fixed

- Better instructions on neovim install failure
- Check if ulimit hard limit is 'unlimited'
- Brew link libuv before compiling neovim

## v1.0.0r2

### ⚡️ Added

- Add lazyman.sh to release artifacts
- Add show diagnostics option to configuration.lua
- Add release creation script, version file, and release notes
- Add ChatGPT plugin
- Add Features section to README
- Add configuration.lua section to README
- Add '-e config' option to lazyman to execute nvim with a specified config
- Add helptag of any local help in the Neovim config 'doc' directory during initialization
- Add auto-generation of nvim-Lazyman doc
- Add support for LunarVim
- Disable Alpha header by default
- Add VimBeGood to games
- Add navigator, project, window-picker, and games - make them all configurable in configuration.lua
- Add rounded border to lazy popup
- Add support for everforest colorscheme/theme
- Add support for possession or persistance session manager, integrate with dashboards and lualine
- Add github workflows and badges

### 🐞 Fixed

- Fix bug in update function, add section on Updates to README
- If '-N nvimdir' is specified on the command line, use it even with supported configs, add note about Packer support
- Update add-on repositories when doing an update
- Fix Packer initialization

## v1.0.0r1

### ⚡️ Added

- Add 'media_backend' configuration setting for telescope display of media
- Add support for the Allaman Neovim configuration
- Add Neogit button to Alpha dashboard
- Add bookmarks and nvim-ide plugins (optional)
- Add fugitive and gv back in plugins along with neogit, check for NotifyBackground highlight group
- Neo-tree show hidden files, use updated repo name
- Rely on Mason for most language servers, remove them from install_neovim.sh
- Use a Lazyman custom NvChad configuration rather than example custom config
- Add support for NvChad install and initialization
- Remove bufferline plugin, using tabline
- Add dap and go plugins and configuration, modify tabline to display pathname of file
- Clarify manual installation and initialization
- Separate language servers and tools out into post-install action with lazyman -I
- Install dependencies, tools, and language servers with lazyman -I
- Show install times in debug mode
- Install neovim 0.9 if it is not present, install language servers with Homebrew unless Mason installs them
- Add -L cmd option to run a Lazy command
- Use latest treesitter, add rainbow treesitter and configs
- Add lazyman man page and lazyman update capability
- Add lualine themes for all supported colorschemes and styles
- Add support for onedarkpro and theme style setting
- Add section on unsupported configurations
- Add supported configurations section
- Use doctorfree/astronvim repository for AstroNvim user customization
- Add AstroNvim community plugins configuration
- Add support for Kickstart
- Experimental support for Packer initialization with -P option
- Add args to specify custom url and nvim config dir name
- Install neovim if it is not already installed
- Add -a and -R flags to install, don't backup lazyman but do a git pull
- Add -y flag to install.sh script
- Configure indent plugins with filetypes, enable Alpha
- Correct calls to vim.api in autocmds
- Add Alpha autocmds, load on VimEnter
- Add options, keymaps, and autocmds
- Add dry run, removal, and support for LazyVim to install script
- Add globals.lua to loads in plugins/settings.lua
- Note about shell initialization and export of NVIM_APPNAME
- Note about Neovim 0.9 and NVIM_APPNAME

### 🐞 Fixed

- Cleanup some more dupliate installs between Homebrew and Mason
- Only need to run 'Lazy sync' during initialization
- Disable semantic tokens in onedarkpro for now
- Fix AstroNvim user config clone, customize suggested alias per config
- Fix Mason plugin spec
