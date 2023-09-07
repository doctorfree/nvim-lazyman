# CodeArt Neovim Configuration Information

Use Neovim as a general purpose IDE

- Install and initialize: **`lazyman -x CodeArt`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-CodeArt`**

## Git repository

[https://github.com/artart222/CodeArt](https://github.com/artart222/CodeArt)

## Neovimcraft entry

[http://neovimcraft.com/plugin/artart222/CodeArt](http://neovimcraft.com/plugin/artart222/CodeArt)

## Dotfyle entry

[https://dotfyle.com/plugins/artart222/CodeArt](https://dotfyle.com/plugins/artart222/CodeArt)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Packer managed plugins

- [antoinemadec/FixCursorHold.nvim](https://github.com/antoinemadec/FixCursorHold.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lewis6991/impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [b3nj5m1n/kommentary](https://github.com/b3nj5m1n/kommentary)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [tami5/lspsaga.nvim](https://github.com/tami5/lspsaga.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [jghauser/mkdir.nvim](https://github.com/jghauser/mkdir.nvim)
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [NvChad/nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua)
- [artart222/nvim-enfocado](https://github.com/artart222/nvim-enfocado)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [dstein64/nvim-scrollview](https://github.com/dstein64/nvim-scrollview)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [artart222/telescope_find_directories](https://github.com/artart222/telescope_find_directories)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [Pocco81/true-zen.nvim](https://github.com/Pocco81/true-zen.nvim)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [bluz71/vim-moonfly-colors](https://github.com/bluz71/vim-moonfly-colors)
- [bluz71/vim-nightfly-guicolors](https://github.com/bluz71/vim-nightfly-guicolors)
- [artart222/vim-resize](https://github.com/artart222/vim-resize)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## CodeArt Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | <code>:BufferLineCycleNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "&lt;lt&gt;leader&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> co</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("onedark").toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>!</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "!", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "&lt;lt&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>:call ResizeLeft(3)&lt;CR&gt;&lt;Esc&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>:call ResizeDown(1)&lt;CR&gt;&lt;Esc&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>:call ResizeUp(1)&lt;CR&gt;&lt;Esc&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>:call ResizeRight(3)&lt;CR&gt;&lt;Esc&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "[", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "]", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "c", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>d</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "d", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "g", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>v</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "v", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "y", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "z", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-T&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'toggleterm.nvim'}, { keys = "&lt;lt&gt;C-t&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;kommentary_visual_default</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'kommentary'}, { keys = "&lt;lt&gt;Plug&gt;kommentary_visual_default", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;kommentary_line_default</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'kommentary'}, { keys = "&lt;lt&gt;Plug&gt;kommentary_line_default", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Tab&gt;</code> |
| **Right hand side** | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;C-H&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;C-L&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;C-K&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;NL&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "&lt;lt&gt;leader&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>!</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "!", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "&lt;lt&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>:move '&gt;+1&lt;CR&gt;gv-gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>:move '&lt;lt&gt;-2&lt;CR&gt;gv-gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "[", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "]", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "c", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>d</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "d", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "g", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | <code>"_dP</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>v</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "v", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "y", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "z", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-T&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'toggleterm.nvim'}, { keys = "&lt;lt&gt;C-t&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;kommentary_visual_default</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'kommentary'}, { keys = "&lt;lt&gt;Plug&gt;kommentary_visual_default", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;kommentary_line_default</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'kommentary'}, { keys = "&lt;lt&gt;Plug&gt;kommentary_line_default", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "&lt;lt&gt;leader&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>!</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "!", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "&lt;lt&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "[", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "]", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "c", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>d</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "d", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "g", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>v</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "v", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "y", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'which-key.nvim'}, { keys = "z", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-T&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'toggleterm.nvim'}, { keys = "&lt;lt&gt;C-t&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;kommentary_visual_default</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'kommentary'}, { keys = "&lt;lt&gt;Plug&gt;kommentary_visual_default", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;kommentary_line_default</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'kommentary'}, { keys = "&lt;lt&gt;Plug&gt;kommentary_line_default", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

