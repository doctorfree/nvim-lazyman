## Basic Neovim Configuration Information

Starter config by the author of NvChad with [video tutorial](https://youtube.com/playlist?list=PLYVQrj2EVSUL1NqYn3jsIVXG3U9eWaMcq)

- Install and initialize: **`lazyman -x Basic`**
- Configuration category: [Starter](https://github.com/doctorfree/nvim-lazyman#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Basic`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/NvChad/basic-config](https://github.com/NvChad/basic-config)

### YouTube channel

[https://www.youtube.com/@siduck_og](https://www.youtube.com/@siduck_og)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.statusline](https://github.com/echasnovski/mini.statusline.git)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

### Basic Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <Tab> | <Cmd> BufferLineCycleNext <CR> |
|  |  / |  |
|  |  gt | <Cmd> Telescope git_status <CR> |
|  |  fw | <Cmd> Telescope live_grep <CR> |
|  |  fo | <Cmd> Telescope oldfiles <CR> |
|  |  ff | <Cmd> Telescope find_files <CR> |
| Nvim builtin | & | :&&<CR> |
| Nvim builtin | Y | y$ |
|  | <C-Q> | <Cmd> bd <CR> |
|  | <S-Tab> | <Cmd> BufferLineCyclePrev <CR> |
|  | <C-H> | <Cmd> NvimTreeFocus <CR> |
|  | <C-N> | <Cmd> NvimTreeToggle <CR> |
|  | <C-S> | <Cmd> w <CR> |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  / | <Esc><Cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR> |
| Nvim builtin | # | y?\V<C-R>"<CR> |
| Nvim builtin | * | y/\V<C-R>"<CR> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
