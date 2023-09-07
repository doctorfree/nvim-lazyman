## Cosmic Neovim Configuration Information

Install 'Node.js', 'prettierd', and 'eslint_d'

- Install and initialize: **`lazyman -x Cosmic`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Cosmic`**

### Git repository

[https://github.com/CosmicNvim/CosmicNvim](https://github.com/CosmicNvim/CosmicNvim)

### Neovimcraft entry

[http://neovimcraft.com/plugin/CosmicNvim/CosmicNvim](http://neovimcraft.com/plugin/CosmicNvim/CosmicNvim)

### Dotfyle entry

[https://dotfyle.com/plugins/CosmicNvim/CosmicNvim](https://dotfyle.com/plugins/CosmicNvim/CosmicNvim)

### Website

[https://cosmicnvim.vercel.app](https://cosmicnvim.vercel.app)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [b0o/SchemaStore.nvim](https://github.com/b0o/SchemaStore.nvim)
- auto-session
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- cosmic-ui
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jose-elias-alvarez/nvim-lsp-ts-utils](https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### Cosmic Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | `%` | `<Plug>(MatchitNormalForward)` |
| Nvim builtin | `&` | `:&&<CR>` |
| Nvim builtin | `Y` | `y$` |
|  | `[%` | `<Plug>(MatchitNormalMultiBackward)` |
|  | `]%` | `<Plug>(MatchitNormalMultiForward)` |
|  | `gx` | `<Plug>NetrwBrowseX` |
|  | `g%` | `<Plug>(MatchitNormalBackward)` |
|  | `<Plug>NetrwBrowseX` | `:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR>` |
|  | `<Plug>(MatchitNormalMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>` |
|  | `<Plug>(MatchitNormalMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>` |
|  | `<Plug>(MatchitNormalBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'n')<CR>` |
|  | `<Plug>(MatchitNormalForward)` | `:<C-U>call matchit#Match_wrapper('',1,'n')<CR>` |
| Nvim builtin | `<C-L>` | `<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>` |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | `#` | `y?\V<C-R>"<CR>` |
|  | `%` | `<Plug>(MatchitVisualForward)` |
| Nvim builtin | `*` | `y/\V<C-R>"<CR>` |
|  | `[%` | `<Plug>(MatchitVisualMultiBackward)` |
|  | `]%` | `<Plug>(MatchitVisualMultiForward)` |
|  | `a%` | `<Plug>(MatchitVisualTextObject)` |
|  | `gx` | `<Plug>NetrwBrowseXVis` |
|  | `g%` | `<Plug>(MatchitVisualBackward)` |
|  | `<Plug>NetrwBrowseXVis` | `:<C-U>call netrw#BrowseXVis()<CR>` |
|  | `<Plug>(MatchitVisualTextObject)` | `<Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)` |
|  | `<Plug>(MatchitVisualMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``` |
|  | `<Plug>(MatchitVisualForward)` | `:<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv``` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | `%` | `<Plug>(MatchitOperationForward)` |
|  | `[%` | `<Plug>(MatchitOperationMultiBackward)` |
|  | `]%` | `<Plug>(MatchitOperationMultiForward)` |
|  | `g%` | `<Plug>(MatchitOperationBackward)` |
|  | `<Plug>(MatchitOperationMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "o")<CR>` |
|  | `<Plug>(MatchitOperationMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "o")<CR>` |
|  | `<Plug>(MatchitOperationBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'o')<CR>` |
|  | `<Plug>(MatchitOperationForward)` | `:<C-U>call matchit#Match_wrapper('',1,'o')<CR>` |
