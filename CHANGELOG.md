# Changelog

## Unreleased

### ⚡️ Added

- Add cheatsheet keymaps to keymaps doc
- Add plugins section to cheatsheet
- Add cheatsheet plugin and custom cheatsheet.txt
- Add treesj Treesitter split/join plugin and custom keymaps
- Replace mini.surround with nvim-surround

### 🐞 Fixed

- Enable and disable bundled cheatsheets selectively
- Replace bundled gitsigns and markdown cheatsheets with custom ones
- Install tree-sitter cli with cargo if available then npm if not
- Widen telescope popup window
- Do not prompt for install type if native packaging and Homebrew not detected
- Update Lazyman keymaps doc

## v2.0.1r2

### ⚡️ Added

- Bug fix release

### 🐞 Fixed

- Remove Lazyman config from Base, it is installed by default
- Fix install All in menu, -A is now install all
- Fix install Base in menu, -A changed to -B

## v2.0.1r1

### ⚡️ Added

- Add support for native package manager on Alpine Linux
- Install nightly neovim build in HOME/.local rather than /usr/local
- The -A flag now installs all configs
- Add -B flag to install Base configs
- Add status argument
- Add Select and Install menu option
- Remove individual install menu options
- Remove Lazyman from lazymanrc items for removal

### 🐞 Fixed

- Fix test for neovim version
- Fix build/install of nightly neovim
- Install `python3-venv` on Debian based platforms
- Fix use of missing figlet fonts

## v2.0.0r2

### ⚡️ Added

- Install `gh` from binary download rather than package manager
- Use `npm` to install `fd-find` rather than package managers
- Add Abstract Neovim configuration to extras
- Rename Knmac config to Knvim with new config url

### 🐞 Fixed

- Fix install starter menu entries
- Only show remove menu entries when partial or fully installed

## v2.0.0r1

### ⚡️ Added

- Default to native package managers for Arch, Debian, SUSE, Void, and RPM systems
- Add support for SUSE and Void Linux native package managers
- Move black, beautysh, and ruff to pip install
- Add known limitations section
- Install ruby-dev/ruby-devel if needed
- Add -h option to indicate use Homebrew rather than native package manager
- Inform user of `sudo` privilege when doing native installs
- Notify if Homebrew is detected during install prompt
- Use binary distribution tar archive for native Neovim install
- Install `lazygit` with release asset download if doing native install
- Install `zoxide` with install script rather than package manager
- If no native package manager found then use Homebrew
- Use `dnf/yum` on all RPM based platforms
- Use apt on all Debian based platforms
- Default to `pacman` on Arch and Arch-Like platforms
- Default to Homebrew on macOS
- Prompt to use native package manager on Debian and RPM systems unless -y is given
- Add `CosmicNvim` example custom config
- Rename Knmac to Knvim with new repository url

### 🐞 Fixed

- Quote arguments to `bindkey`
- Update NvChad and AstroNvim custom folders when updating the respective repos
- Move appending sourcing of .lazymanrc after Homebrew shell setup

## v1.0.5r3

### ⚡️ Added

- Source environment files and set brew path on lazyman startup
- Add open lazyman menu entry to configuration menu
- Update lazyman keymaps markdown, man page, and doc
- Add descriptions to terminal keymaps

### 🐞 Fixed

- Resolve conflicting keymaps in gitsigns, terminal, lspconfig
- Fixed Docker image build and push in github action
- Do not build docker image for arm architecture, build for x86_64 and amd64
- Fix check for brew executable in set_brew

## v1.0.5r2

### ⚡️ Added

- Use .initialized file to indicate initialization has been performed

### 🐞 Fixed

- Move python check after neovim install

## v1.0.5r1

### ⚡️ Added

- Move section on manual installation to Wiki
- Install dependencies and tools even if nvim is already installed
- Add latexindent to Mason tools install
- Locate python3 and ruby neovim gem in globals.lua

### 🐞 Fixed

- Don't run nvim if interactive mode enabled
- Change toggle ui menu entry
- Add zoxide to checks for tools menu entry
- Update local/bin/lazyman when nvim-Lazyman is updated
- Do not run install script if nvim-Lazyman config dir exists
- Remove duplicate test for previously installed packages
- Strip unprintable characters from ruby path returned by vim.fn.system

## v1.0.4r3

### ⚡️ Added

- Install ruby neovim gem in user dir, expand search for ruby neovim
- Rework how gem is found and ruby_host_prog set
- Use Homebrew python3 and ruby neovim gem

### 🐞 Fixed

- Move gopls julials and denols from Homebrew to Mason
- Replace Allaman config (broken for now) with Roiz config

## v1.0.4r2

### ⚡️ Added

- Add bat and lsd to tools, add aliases for bat and lsd
- Add custom LunarVim user config from <https://youtu.be/Qf9gfx7gWEY>
- Update which-key opts passed to config
- Add Help section to doc
- Add Lazyman-Keymaps vimdoc, rename nvim-Lazyman vimdoc to Lazyman
- Adjust Alpha and Asciiville keymaps
- Add renamer config
- Add LAZYMAN section to doc so :Lazyman goes to right place
- Add which-key mapping for ChatGPTEditWithInstructions command
- Add keymap to toggle transparency in several colorschemes
- Add Homebrew Upgrade to main menu
- Install bash with Homebrew if bash version less than 4
- One more attempt at getting updates right, probably not the last
- Set conceallevel to 0 to unhide markdown
- Restore configuration.lua on Lazyman update
- Fix treesitter highlighting for text filetype
- Adjust spell checking options and autocmds
- Enable transparency by default, remove breadcrumb from lspconfig
- Add Simple config to extras, Replace Abstract with Knmac in extras
- Add ftplugin/help.lua to enable treesitter highlights in vimdoc
- Add spell files, Add autocmd to auto enter insert mode in Terminal
- rust-analyzer, taplo, and pylsp now installed by Mason
- Add -r flag to nvims and neovides aliases for removal of selected config
- Add selected removal menu option
- Use LunarVim install and uninstall scripts but place LunarVim config location in ~/.config/nvim-LunarVim
- Add configuration menu to Alpha dashboard

### 🐞 Fixed

- Do not install julia or composer, leave that up to the user
- Move gopls install from Mason to Homebrew
- Move some language server installs back to Mason, adjust mason and lspconfig setup
- Split mason out from lspconfig in plugins
- Split panvimdoc workflows out into 2 separate workflows

## v1.0.4r1

### ⚡️ Added

- Add -F option to lazyman for quick access to configuration menau
- Add :Lazyconf command and ,lc key binding for even quicker access to configuration menu
- Add Lazyman Configuration submenu
- Setup extensive Dap configuration
- Move navic lsp location to tabline and file path to winbar
- Set navic depth_limit to 0 and depth_limit_indicator to ..
- Enable winbar by default with navic location from lsp
- Add navic location in winbar
- Add back in lspconfig on_attach with diagnostic goto
- Add markdownlint and terraform
- Install luarocks and cspell
- Add vimdoc to treesitter ensure installed

### 🐞 Fixed

- Refactor lspconfig with navic
- Refactor mason, null-ls, lspconfig
- Adjust Alpha dashboard highlight used for category titles
- Rename VonHeikemen config to Heiker
- Fix link to issues image

## v1.0.3r4

### ⚡️ Added

- Add separate installation commands in README for easy copy/paste

### 🐞 Fixed

- Disable interactive mode and run nvim if nvim-Lazyman not yet initialized

## v1.0.3r3

### ⚡️ Added

- Add autocmd to disable or convert semantic highlights
- Add configuration.lua settings for semantic highlighting
- Use noice for signature help markdown if noice is enabled
- Add shellcheck comment in Lazyman shell initialization to satisfy SC1090
- Install gh in install_neovim.sh

### 🐞 Fixed

- Check if executable exists in config and keymaps for Terminal apps
- Fix asciiville Neovim terminal command so it does not use splash screen

## v1.0.3r2

### ⚡️ Added

- Add lazyman command to alpha menu
- Add info on interactive use of terminal
- Add section on Lazyman Neovim Terminal to README and man page
- Add terminal config for lazyman and asciiville to Features section
- Adjust menu system to look nice in a Neovim terminal
- Add Lazyman and Asciiville commands to Terminal
- Add diagnostics screenshot to coding section of Features
- Add -Z option to circumvent installation of Homebrew, Neovim, language servers, and tools
- Ignore default ~/.config/nvim directory, do not manage default nvim config

### 🐞 Fixed

- Fix signature help, add signature help keymaps
- Move Kickstart from Base to Starter
- Fix mason-null-ls configuration
- Reconfigure starter configs in menu
- Move some tools back to Mason from install_neovim.sh script
- Format lazyman menu for Neovim terminal
- Move telescope ignore patterns from configuration.lua to config/telescope.lua

## v1.0.3r1

### ⚡️ Added

- No longer need to compile neovim HEAD, version 0.9 is released
- Improved menu interface, better description of lazyman categories
- Try different approach to updates
- Add Lazyman Status to menu for lazyman and nvim info
- Install and initialize extra and starter configs with new -w, -x, -W, -X options
- Add support for nvim-starter Neovim configurations
- Add toggle gui to lazyman menu, add paths in lazymanrc
- Add Troubleshooting section to README
- Add experimental VonHeikemen distro
- Add support for Ecovim Neovim distribution
- Add convenience keymaps for plugin management and options
- Install jdtls with Mason, dynamically locate jvm runtimes for jdtls

### 🐞 Fixed

- Fix neovide select menu entries, fix env.sample copy
- Fix jdtls ftplugin/java.lua for both linux and macos

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
