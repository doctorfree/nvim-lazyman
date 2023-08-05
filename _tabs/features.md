---
# the default layout is 'page'
icon: fas fa-info-circle
order: 2
---

<h1 align="center">Lazyman Neovim Configuration Manager</h1>

## Features

### Lazyman Command Features

- `lazyman` command to easily install, initialize, manage, and explore multiple Neovim configurations
- support for `Lazy`, `Packer`, and `vim-plug` plugin managers (`dein` for `SpaceVim` only)
- open, install, remove, get info, search plugins, all from the command line or main menu
- automated installation of dependencies, tools, language servers, and Neovim 0.9+
- install and manage the `Bob` neovim version manager via a menu interface
- richly configured `nvim-Lazyman` Neovim configuration
- interactive menu interface for ease of management
  - manage the `nvim-Lazyman`, `nvim-LazyIde`, and `nvim-Webdev` configs via menus
  - perform health checks and generate a status report via menus
- convenience shell functions and aliases with fuzzy search and selection
  - `nvims` and `neovides` shell functions to fuzzy search, select, and open Neovim configs
  - enhanced `less` command alias
  - enhanced `ls` command alias
  - `tree` alias to display a tree view of files and folders
  - `tldrf` alias to fuzzy search, select, and preview cheat sheets
- vimdoc help for `Lazyman` with `:h Lazyman` or `,hl`
- vimdoc help for `nvims` with `:h Nvims` or `,hn`
- vimdoc help for `Lazyman` keymaps with `:h Lazyman-Keymaps` or `,hk`
- 100 supported Neovim configurations out of the box, additional custom configs

See the [Usage](https://lazyman.dev/usage) section for details on `lazyman` command usage.

### Lazyman Neovim Configuration Features

<div align="center"><p>
    <a href="https://dotfyle.com/doctorfree/nvim-lazyman"><img src="https://dotfyle.com/doctorfree/nvim-lazyman/badges/plugins?style=flat" alt="Plugins"/></a>
    <a href="https://dotfyle.com/doctorfree/nvim-lazyman"><img src="https://dotfyle.com/doctorfree/nvim-lazyman/badges/leaderkey?style=flat" alt="Leader"/></a>
    <a href="https://dotfyle.com/doctorfree/nvim-lazyman"><img src="https://dotfyle.com/doctorfree/nvim-lazyman/badges/plugin-manager?style=flat" alt="Manager"/></a>
</p><p>
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/lazyman-plugins.png" style="width:800px;height:600px;">
</p></div>

#### General ⚙️

- Package management and plugin configuration via [lazy.nvim](https://github.com/folke/lazy.nvim)
- Easily configure namespace, theme, active plugins, and their configuration via `configuration.lua`
- Two supported namespaces, `free` and `onno`, to easily switch between two completely different configurations
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

#### Lazyman configuration plugins list

##### Plugins used in the Lazyman Neovim configuration

###### ai

+ [jackMort/ChatGPT.nvim](https://dotfyle.com/plugins/jackMort/ChatGPT.nvim)
###### bars-and-lines

+ [m4xshen/smartcolumn.nvim](https://dotfyle.com/plugins/m4xshen/smartcolumn.nvim)
+ [utilyre/barbecue.nvim](https://dotfyle.com/plugins/utilyre/barbecue.nvim)
+ [SmiteshP/nvim-navic](https://dotfyle.com/plugins/SmiteshP/nvim-navic)
+ [luukvbaal/statuscol.nvim](https://dotfyle.com/plugins/luukvbaal/statuscol.nvim)
###### code-runner

+ [michaelb/sniprun](https://dotfyle.com/plugins/michaelb/sniprun)
###### color

+ [NvChad/nvim-colorizer.lua](https://dotfyle.com/plugins/NvChad/nvim-colorizer.lua)
+ [folke/twilight.nvim](https://dotfyle.com/plugins/folke/twilight.nvim)
+ [xiyaowong/nvim-transparent](https://dotfyle.com/plugins/xiyaowong/nvim-transparent)
+ [uga-rosa/ccc.nvim](https://dotfyle.com/plugins/uga-rosa/ccc.nvim)
###### colorscheme

+ [folke/tokyonight.nvim](https://dotfyle.com/plugins/folke/tokyonight.nvim)
+ [catppuccin/nvim](https://dotfyle.com/plugins/catppuccin/nvim)
+ [olimorris/onedarkpro.nvim](https://dotfyle.com/plugins/olimorris/onedarkpro.nvim)
+ [rebelot/kanagawa.nvim](https://dotfyle.com/plugins/rebelot/kanagawa.nvim)
+ [Mofiqul/dracula.nvim](https://dotfyle.com/plugins/Mofiqul/dracula.nvim)
+ [EdenEast/nightfox.nvim](https://dotfyle.com/plugins/EdenEast/nightfox.nvim)
+ [neanias/everforest-nvim](https://dotfyle.com/plugins/neanias/everforest-nvim)
###### command-line

+ [gelguy/wilder.nvim](https://dotfyle.com/plugins/gelguy/wilder.nvim)
###### comment

+ [echasnovski/mini.comment](https://dotfyle.com/plugins/echasnovski/mini.comment)
+ [JoosepAlviste/nvim-ts-context-commentstring](https://dotfyle.com/plugins/JoosepAlviste/nvim-ts-context-commentstring)
+ [folke/todo-comments.nvim](https://dotfyle.com/plugins/folke/todo-comments.nvim)
###### completion

+ [zbirenbaum/copilot.lua](https://dotfyle.com/plugins/zbirenbaum/copilot.lua)
+ [simrat39/rust-tools.nvim](https://dotfyle.com/plugins/simrat39/rust-tools.nvim)
+ [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp)
###### cursorline

+ [RRethy/vim-illuminate](https://dotfyle.com/plugins/RRethy/vim-illuminate)
###### debugging

+ [rcarriga/nvim-dap-ui](https://dotfyle.com/plugins/rcarriga/nvim-dap-ui)
+ [mfussenegger/nvim-dap](https://dotfyle.com/plugins/mfussenegger/nvim-dap)
###### diagnostics

+ [folke/trouble.nvim](https://dotfyle.com/plugins/folke/trouble.nvim)
###### editing-support

+ [echasnovski/mini.pairs](https://dotfyle.com/plugins/echasnovski/mini.pairs)
+ [filipdutescu/renamer.nvim](https://dotfyle.com/plugins/filipdutescu/renamer.nvim)
+ [folke/zen-mode.nvim](https://dotfyle.com/plugins/folke/zen-mode.nvim)
+ [windwp/nvim-autopairs](https://dotfyle.com/plugins/windwp/nvim-autopairs)
+ [windwp/nvim-ts-autotag](https://dotfyle.com/plugins/windwp/nvim-ts-autotag)
+ [Wansmer/treesj](https://dotfyle.com/plugins/Wansmer/treesj)
###### file-explorer

+ [kevinhwang91/rnvimr](https://dotfyle.com/plugins/kevinhwang91/rnvimr)
+ [nvim-neo-tree/neo-tree.nvim](https://dotfyle.com/plugins/nvim-neo-tree/neo-tree.nvim)
###### fuzzy-finder

+ [jvgrootveld/telescope-zoxide](https://dotfyle.com/plugins/jvgrootveld/telescope-zoxide)
+ [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim)
###### game

+ [alanfortlink/blackjack.nvim](https://dotfyle.com/plugins/alanfortlink/blackjack.nvim)
+ [ThePrimeagen/vim-be-good](https://dotfyle.com/plugins/ThePrimeagen/vim-be-good)
+ [jim-fx/sudoku.nvim](https://dotfyle.com/plugins/jim-fx/sudoku.nvim)
###### git

+ [lewis6991/gitsigns.nvim](https://dotfyle.com/plugins/lewis6991/gitsigns.nvim)
+ [NeogitOrg/neogit](https://dotfyle.com/plugins/NeogitOrg/neogit)
+ [sindrets/diffview.nvim](https://dotfyle.com/plugins/sindrets/diffview.nvim)
###### github

+ [pwntester/octo.nvim](https://dotfyle.com/plugins/pwntester/octo.nvim)
###### golang

+ [ray-x/go.nvim](https://dotfyle.com/plugins/ray-x/go.nvim)
###### indent

+ [echasnovski/mini.indentscope](https://dotfyle.com/plugins/echasnovski/mini.indentscope)
+ [lukas-reineke/indent-blankline.nvim](https://dotfyle.com/plugins/lukas-reineke/indent-blankline.nvim)
###### keybinding

+ [anuvyklack/hydra.nvim](https://dotfyle.com/plugins/anuvyklack/hydra.nvim)
+ [folke/which-key.nvim](https://dotfyle.com/plugins/folke/which-key.nvim)
###### lsp

+ [simrat39/symbols-outline.nvim](https://dotfyle.com/plugins/simrat39/symbols-outline.nvim)
+ [jose-elias-alvarez/null-ls.nvim](https://dotfyle.com/plugins/jose-elias-alvarez/null-ls.nvim)
+ [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)
+ [mfussenegger/nvim-jdtls](https://dotfyle.com/plugins/mfussenegger/nvim-jdtls)
+ [weilbith/nvim-code-action-menu](https://dotfyle.com/plugins/weilbith/nvim-code-action-menu)
+ [ray-x/lsp_signature.nvim](https://dotfyle.com/plugins/ray-x/lsp_signature.nvim)
+ [kosayoda/nvim-lightbulb](https://dotfyle.com/plugins/kosayoda/nvim-lightbulb)
+ [b0o/SchemaStore.nvim](https://dotfyle.com/plugins/b0o/SchemaStore.nvim)
+ [stevearc/aerial.nvim](https://dotfyle.com/plugins/stevearc/aerial.nvim)
+ [jose-elias-alvarez/typescript.nvim](https://dotfyle.com/plugins/jose-elias-alvarez/typescript.nvim)
+ [glepnir/lspsaga.nvim](https://dotfyle.com/plugins/glepnir/lspsaga.nvim)
###### lsp-installer

+ [williamboman/mason.nvim](https://dotfyle.com/plugins/williamboman/mason.nvim)
###### markdown-and-latex

+ [AckslD/nvim-FeMaco.lua](https://dotfyle.com/plugins/AckslD/nvim-FeMaco.lua)
+ [toppair/peek.nvim](https://dotfyle.com/plugins/toppair/peek.nvim)
+ [ellisonleao/glow.nvim](https://dotfyle.com/plugins/ellisonleao/glow.nvim)
+ [iamcco/markdown-preview.nvim](https://dotfyle.com/plugins/iamcco/markdown-preview.nvim)
+ [frabjous/knap](https://dotfyle.com/plugins/frabjous/knap)
###### marks

+ [ThePrimeagen/harpoon](https://dotfyle.com/plugins/ThePrimeagen/harpoon)
###### motion

+ [gen740/SmoothCursor.nvim](https://dotfyle.com/plugins/gen740/SmoothCursor.nvim)
+ [phaazon/hop.nvim](https://dotfyle.com/plugins/phaazon/hop.nvim)
+ [ggandor/leap.nvim](https://dotfyle.com/plugins/ggandor/leap.nvim)
###### note-taking

+ [nvim-orgmode/orgmode](https://dotfyle.com/plugins/nvim-orgmode/orgmode)
+ [jbyuki/nabla.nvim](https://dotfyle.com/plugins/jbyuki/nabla.nvim)
+ [jakewvincent/mkdnflow.nvim](https://dotfyle.com/plugins/jakewvincent/mkdnflow.nvim)
+ [nvim-neorg/neorg](https://dotfyle.com/plugins/nvim-neorg/neorg)
+ [renerocksai/telekasten.nvim](https://dotfyle.com/plugins/renerocksai/telekasten.nvim)
+ [epwalsh/obsidian.nvim](https://dotfyle.com/plugins/epwalsh/obsidian.nvim)
###### nvim-dev

+ [anuvyklack/animation.nvim](https://dotfyle.com/plugins/anuvyklack/animation.nvim)
+ [ray-x/guihua.lua](https://dotfyle.com/plugins/ray-x/guihua.lua)
+ [folke/neodev.nvim](https://dotfyle.com/plugins/folke/neodev.nvim)
+ [nvim-lua/popup.nvim](https://dotfyle.com/plugins/nvim-lua/popup.nvim)
+ [MunifTanjim/nui.nvim](https://dotfyle.com/plugins/MunifTanjim/nui.nvim)
+ [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim)
###### plugin-manager

+ [folke/lazy.nvim](https://dotfyle.com/plugins/folke/lazy.nvim)
###### preconfigured

+ [ldelossa/nvim-ide](https://dotfyle.com/plugins/ldelossa/nvim-ide)
###### programming-languages-support

+ [AckslD/swenv.nvim](https://dotfyle.com/plugins/AckslD/swenv.nvim)
###### project

+ [ahmedkhalf/project.nvim](https://dotfyle.com/plugins/ahmedkhalf/project.nvim)
###### quickfix

+ [kevinhwang91/nvim-bqf](https://dotfyle.com/plugins/kevinhwang91/nvim-bqf)
###### scrollbar

+ [petertriho/nvim-scrollbar](https://dotfyle.com/plugins/petertriho/nvim-scrollbar)
###### scrolling

+ [declancm/cinnamon.nvim](https://dotfyle.com/plugins/declancm/cinnamon.nvim)
+ [karb94/neoscroll.nvim](https://dotfyle.com/plugins/karb94/neoscroll.nvim)
###### search

+ [kevinhwang91/nvim-hlslens](https://dotfyle.com/plugins/kevinhwang91/nvim-hlslens)
###### session

+ [jedrzejboczar/possession.nvim](https://dotfyle.com/plugins/jedrzejboczar/possession.nvim)
###### snippet

+ [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)
###### split-and-window

+ [anuvyklack/windows.nvim](https://dotfyle.com/plugins/anuvyklack/windows.nvim)
###### startup

+ [glepnir/dashboard-nvim](https://dotfyle.com/plugins/glepnir/dashboard-nvim)
+ [goolord/alpha-nvim](https://dotfyle.com/plugins/goolord/alpha-nvim)
+ [echasnovski/mini.starter](https://dotfyle.com/plugins/echasnovski/mini.starter)
###### statusline

+ [nvim-lualine/lualine.nvim](https://dotfyle.com/plugins/nvim-lualine/lualine.nvim)
###### syntax

+ [m-demare/hlargs.nvim](https://dotfyle.com/plugins/m-demare/hlargs.nvim)
+ [kylechui/nvim-surround](https://dotfyle.com/plugins/kylechui/nvim-surround)
+ [nvim-treesitter/nvim-treesitter-textobjects](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter-textobjects)
+ [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)
###### tabline

+ [akinsho/bufferline.nvim](https://dotfyle.com/plugins/akinsho/bufferline.nvim)
###### test

+ [nvim-neotest/neotest](https://dotfyle.com/plugins/nvim-neotest/neotest)
###### tmux

+ [numToStr/Navigator.nvim](https://dotfyle.com/plugins/numToStr/Navigator.nvim)
###### treesitter-based

+ [ziontee113/syntax-tree-surfer](https://dotfyle.com/plugins/ziontee113/syntax-tree-surfer)
+ [mfussenegger/nvim-ts-hint-textobject](https://dotfyle.com/plugins/mfussenegger/nvim-ts-hint-textobject)
###### utility

+ [folke/noice.nvim](https://dotfyle.com/plugins/folke/noice.nvim)
+ [rcarriga/nvim-notify](https://dotfyle.com/plugins/rcarriga/nvim-notify)
+ [crusj/bookmarks.nvim](https://dotfyle.com/plugins/crusj/bookmarks.nvim)
+ [stevearc/dressing.nvim](https://dotfyle.com/plugins/stevearc/dressing.nvim)
+ [kevinhwang91/nvim-ufo](https://dotfyle.com/plugins/kevinhwang91/nvim-ufo)

#### Lazyman configuration language server support

##### Language Servers supported in the Lazyman Neovim configuration

+ `ansiblels`
+ `astro`
+ `awk_ls`
+ `bashls`
+ `ccls`
+ `clangd`
+ `cmake`
+ `cssmodules_ls`
+ `denols`
+ `dockerls`
+ `eslint`
+ `gopls`
+ `graphql`
+ `html`
+ `jdtls`
+ `jsonls`
+ `julials`
+ `ltex`
+ `lua_ls`
+ `marksman`
+ `pylsp`
+ `pyright`
+ `rust_analyzer`
+ `sqlls`
+ `svelte`
+ `tailwindcss`
+ `taplo`
+ `texlab`
+ `tflint`
+ `tsserver`
+ `vimls`
+ `yamlls`
+ `zk`

#### Navigation 🧭

<div align="center"><p>
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/alpha.png" style="width:800px;height:800px;">
</p></div>

- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for all your search needs
- Project management with [Project.nvim](https://github.com/ahmedkhalf/project.nvim)
- File tree navigation/manipulation via [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Better Tmux navigation with your home row via [Navigator.nvim](https://github.com/numToStr/Navigator.nvim)
- Convenient jumping through windows with [nvim-window-picker](https://gitlab.com/s1n7ax/nvim-window-picker)

#### Coding 🖥️

<div align="center"><p>
  <img src="https://raw.githubusercontent.com/wiki/doctorfree/nvim-lazyman/screenshots/diagnostics.png" style="width:800px;height:600px;">
</p></div>

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
- Auto-install and setup of dozens of language servers including: `ansiblels`, `astro`, `awk_ls`, `bashls`, `clangd`, `ccls`, `cmake`, `cssmodules_ls`, `denols`, `dockerls`, `eslint`, `gopls`, `graphql`, `html`, `jdtls`, `jsonls`, `julials`, `lua_ls`, `ltex`, `marksman`, `pylsp`, `pyright`, `rust_analyzer`, `sqlls`, `svelte`, `tailwindcss`, `taplo`, `texlab`, `tflint`, `tsserver`, `vimls`, `yamlls`

