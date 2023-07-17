## CodeArt Neovim Configuration Information

Use Neovim as a general purpose IDE

- Install and initialize: `lazyman -x CodeArt`
- Configuration category: [Starter](https://github.com/doctorfree/nvim-lazyman#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  `~/.config/nvim-CodeArt`

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/artart222/CodeArt](https://github.com/artart222/CodeArt)

### Neovimcraft entry

[http://neovimcraft.com/plugin/artart222/CodeArt](http://neovimcraft.com/plugin/artart222/CodeArt)

### Dotfyle entry

[https://dotfyle.com/plugins/artart222/CodeArt](https://dotfyle.com/plugins/artart222/CodeArt)

### Packer managed plugins

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

### CodeArt Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <Tab> | :BufferLineCycleNext<CR> |
|  |   | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>leader>", prefix = "" }, _G.packer_plugins)<CR> |
|  |  co | <Cmd>lua require("onedark").toggle()<CR> |
|  | ! | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "!", prefix = "" }, _G.packer_plugins)<CR> |
| Nvim builtin | & | :&&<CR> |
|  | <lt> | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>", prefix = "" }, _G.packer_plugins)<CR> |
|  | > | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = ">", prefix = "" }, _G.packer_plugins)<CR> |
|  | H | :call ResizeLeft(3)<CR><Esc> |
|  | J | :call ResizeDown(1)<CR><Esc> |
|  | K | :call ResizeUp(1)<CR><Esc> |
|  | L | :call ResizeRight(3)<CR><Esc> |
| Nvim builtin | Y | y$ |
|  | [ | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "[", prefix = "" }, _G.packer_plugins)<CR> |
|  | ] | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "]", prefix = "" }, _G.packer_plugins)<CR> |
|  | c | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "c", prefix = "" }, _G.packer_plugins)<CR> |
|  | d | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "d", prefix = "" }, _G.packer_plugins)<CR> |
|  | g | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "g", prefix = "" }, _G.packer_plugins)<CR> |
|  | v | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "v", prefix = "" }, _G.packer_plugins)<CR> |
|  | y | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "y", prefix = "" }, _G.packer_plugins)<CR> |
|  | z | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "z", prefix = "" }, _G.packer_plugins)<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>kommentary_visual_default | <Cmd>lua require("packer.load")({'kommentary'}, { keys = "<lt>Plug>kommentary_visual_default", prefix = "" }, _G.packer_plugins)<CR> |
|  | <Plug>kommentary_line_default | <Cmd>lua require("packer.load")({'kommentary'}, { keys = "<lt>Plug>kommentary_line_default", prefix = "" }, _G.packer_plugins)<CR> |
|  | <C-T> | <Cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>C-t>", prefix = "" }, _G.packer_plugins)<CR> |
|  | <S-Tab> | :BufferLineCyclePrev<CR> |
|  | <M-h> | <C-W><C-H> |
|  | <M-l> | <C-W><C-L> |
|  | <M-k> | <C-W><C-K> |
|  | <M-j> | <C-W><NL> |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |   | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>leader>", prefix = "" }, _G.packer_plugins)<CR> |
|  | ! | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "!", prefix = "" }, _G.packer_plugins)<CR> |
| Nvim builtin | # | y?\V<C-R>"<CR> |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | <lt> | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>", prefix = "" }, _G.packer_plugins)<CR> |
|  | > | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = ">", prefix = "" }, _G.packer_plugins)<CR> |
|  | J | :move '>+1<CR>gv-gv |
|  | K | :move '<lt>-2<CR>gv-gv |
|  | [ | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "[", prefix = "" }, _G.packer_plugins)<CR> |
|  | ] | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "]", prefix = "" }, _G.packer_plugins)<CR> |
|  | c | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "c", prefix = "" }, _G.packer_plugins)<CR> |
|  | d | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "d", prefix = "" }, _G.packer_plugins)<CR> |
|  | g | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "g", prefix = "" }, _G.packer_plugins)<CR> |
|  | p | "_dP |
|  | v | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "v", prefix = "" }, _G.packer_plugins)<CR> |
|  | y | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "y", prefix = "" }, _G.packer_plugins)<CR> |
|  | z | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "z", prefix = "" }, _G.packer_plugins)<CR> |
|  | <Plug>kommentary_visual_default | <Cmd>lua require("packer.load")({'kommentary'}, { keys = "<lt>Plug>kommentary_visual_default", prefix = "" }, _G.packer_plugins)<CR> |
|  | <Plug>kommentary_line_default | <Cmd>lua require("packer.load")({'kommentary'}, { keys = "<lt>Plug>kommentary_line_default", prefix = "" }, _G.packer_plugins)<CR> |
|  | <C-T> | <Cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>C-t>", prefix = "" }, _G.packer_plugins)<CR> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |   | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>leader>", prefix = "" }, _G.packer_plugins)<CR> |
|  | ! | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "!", prefix = "" }, _G.packer_plugins)<CR> |
|  | <lt> | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "<lt>", prefix = "" }, _G.packer_plugins)<CR> |
|  | > | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = ">", prefix = "" }, _G.packer_plugins)<CR> |
|  | [ | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "[", prefix = "" }, _G.packer_plugins)<CR> |
|  | ] | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "]", prefix = "" }, _G.packer_plugins)<CR> |
|  | c | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "c", prefix = "" }, _G.packer_plugins)<CR> |
|  | d | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "d", prefix = "" }, _G.packer_plugins)<CR> |
|  | g | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "g", prefix = "" }, _G.packer_plugins)<CR> |
|  | v | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "v", prefix = "" }, _G.packer_plugins)<CR> |
|  | y | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "y", prefix = "" }, _G.packer_plugins)<CR> |
|  | z | <Cmd>lua require("packer.load")({'which-key.nvim'}, { keys = "z", prefix = "" }, _G.packer_plugins)<CR> |
|  | <Plug>kommentary_visual_default | <Cmd>lua require("packer.load")({'kommentary'}, { keys = "<lt>Plug>kommentary_visual_default", prefix = "" }, _G.packer_plugins)<CR> |
|  | <Plug>kommentary_line_default | <Cmd>lua require("packer.load")({'kommentary'}, { keys = "<lt>Plug>kommentary_line_default", prefix = "" }, _G.packer_plugins)<CR> |
|  | <C-T> | <Cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>C-t>", prefix = "" }, _G.packer_plugins)<CR> |
