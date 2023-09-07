## Modular Neovim Configuration Information

Same as 'StartMason' but everything is split in modules

- Install and initialize: **`lazyman -x Modular`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Modular`**

### Git repository

[https://github.com/VonHeikemen/nvim-starter/tree/05-modular](https://github.com/VonHeikemen/nvim-starter/tree/05-modular)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [lunarvim/darkplus.nvim](https://github.com/lunarvim/darkplus.nvim.git)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [arkav/lualine-lsp-progress](https://github.com/arkav/lualine-lsp-progress)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [tanvirtin/monokai.nvim](https://github.com/tanvirtin/monokai.nvim.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [joshdick/onedark.vim](https://github.com/joshdick/onedark.vim.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [wellle/targets.vim](https://github.com/wellle/targets.vim.git)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/nvim-toggleterm.lua](https://github.com/akinsho/nvim-toggleterm.lua)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [moll/vim-bbye](https://github.com/moll/vim-bbye)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)

### Modular Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | ` fs` | `<Cmd>Telescope current_buffer_fuzzy_find<CR>` |
|  | ` fd` | `<Cmd>Telescope diagnostics<CR>` |
|  | ` fg` | `<Cmd>Telescope live_grep<CR>` |
|  | ` ff` | `<Cmd>Telescope find_files<CR>` |
|  | `  ` | `<Cmd>Telescope buffers<CR>` |
|  | ` ?` | `<Cmd>Telescope oldfiles<CR>` |
|  | ` bc` | `<Cmd>Bdelete<CR>` |
|  | ` e` | `<Cmd>NvimTreeToggle<CR>` |
|  | ` bl` | `<Cmd>buffer #<CR>` |
|  | ` bq` | `<Cmd>bdelete<CR>` |
|  | ` w` | `<Cmd>write<CR>` |
|  | ` a` | `:keepjumps normal! ggVG<CR>` |
|  | ` l` | `g_` |
|  | ` h` | `^` |
|  | `%` | `<Plug>(MatchitNormalForward)` |
| Nvim builtin | `&` | `:&&<CR>` |
| Nvim builtin | `Y` | `y$` |
|  | `[%` | `<Plug>(MatchitNormalMultiBackward)` |
|  | `]%` | `<Plug>(MatchitNormalMultiForward)` |
|  | `cS` |  |
|  | `cs` |  |
|  | `ds` |  |
|  | `gx` | `<Plug>NetrwBrowseX` |
|  | `g%` | `<Plug>(MatchitNormalBackward)` |
|  | `gp` | `"+p` |
|  | `gy` | `"+y` |
|  | `x` | `"_x` |
|  | `y<C-G>` | `:<C-U>call setreg(v:register, fugitive#Object(@%))<CR>` |
|  | `ySS` |  |
|  | `ySs` |  |
|  | `yss` |  |
|  | `yS` |  |
|  | `ys` |  |
|  | `<Plug>NetrwBrowseX` | `:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR>` |
|  | `<Plug>(MatchitNormalMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>` |
|  | `<Plug>(MatchitNormalMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>` |
|  | `<Plug>(MatchitNormalBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'n')<CR>` |
|  | `<Plug>(MatchitNormalForward)` | `:<C-U>call matchit#Match_wrapper('',1,'n')<CR>` |
|  | `<Plug>fugitive:` | `` |
|  | `<Plug>fugitive:y<C-G>` | `:<C-U>call setreg(v:register, fugitive#Object(@%))<CR>` |
|  | `<C-G>` |  |
| Nvim builtin | `<C-L>` | `<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>` |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | ` l` | `g_` |
|  | ` h` | `^` |
| Nvim builtin | `#` | `y?\V<C-R>"<CR>` |
|  | `%` | `<Plug>(MatchitVisualForward)` |
| Nvim builtin | `*` | `y/\V<C-R>"<CR>` |
|  | `@(targets)` | `:<C-U>call targets#do()<CR>` |
|  | `A` | `targets#e('o', 'A', 'A')` |
|  | `I` | `targets#e('o', 'I', 'I')` |
|  | `S` |  |
|  | `[%` | `<Plug>(MatchitVisualMultiBackward)` |
|  | `]%` | `<Plug>(MatchitVisualMultiForward)` |
|  | `a%` | `<Plug>(MatchitVisualTextObject)` |
|  | `a` | `targets#e('o', 'a', 'a')` |
|  | `gx` | `<Plug>NetrwBrowseXVis` |
|  | `g%` | `<Plug>(MatchitVisualBackward)` |
|  | `gS` |  |
|  | `gp` | `"+p` |
|  | `gy` | `"+y` |
|  | `i` | `targets#e('o', 'i', 'i')` |
|  | `x` | `"_x` |
|  | `<Plug>NetrwBrowseXVis` | `:<C-U>call netrw#BrowseXVis()<CR>` |
|  | `<Plug>(MatchitVisualTextObject)` | `<Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)` |
|  | `<Plug>(MatchitVisualMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``` |
|  | `<Plug>(MatchitVisualForward)` | `:<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv``` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | ` l` | `g_` |
|  | ` h` | `^` |
|  | `%` | `<Plug>(MatchitOperationForward)` |
|  | `@(targets)` | `:<C-U>call targets#do()<CR>` |
|  | `A` | `targets#e('o', 'A', 'A')` |
|  | `I` | `targets#e('o', 'I', 'I')` |
|  | `[%` | `<Plug>(MatchitOperationMultiBackward)` |
|  | `]%` | `<Plug>(MatchitOperationMultiForward)` |
|  | `a` | `targets#e('o', 'a', 'a')` |
|  | `g%` | `<Plug>(MatchitOperationBackward)` |
|  | `i` | `targets#e('o', 'i', 'i')` |
|  | `<Plug>(MatchitOperationMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "o")<CR>` |
|  | `<Plug>(MatchitOperationMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "o")<CR>` |
|  | `<Plug>(MatchitOperationBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'o')<CR>` |
|  | `<Plug>(MatchitOperationForward)` | `:<C-U>call matchit#Match_wrapper('',1,'o')<CR>` |
