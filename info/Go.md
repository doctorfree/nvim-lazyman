## Go Neovim Configuration Information

NvChad based Neovim config with Go formatting, debugging, and diagnostics. Dreams of Code [video tutorial](https://youtu.be/i04sSQjd-qo)

- Install and initialize: `lazyman -L Go`
- Configuration category: [Language](https://github.com/doctorfree/nvim-lazyman#language-configurations)
- Base configuration:     [NvChad](https://nvchad.com)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  `~/.config/nvim-Go`

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Website

[https://nvchad.com](https://nvchad.com)

### Git repository

[https://github.com/dreamsofcode-io/neovim-go-config](https://github.com/dreamsofcode-io/neovim-go-config)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [NvChad/base46](https://github.com/NvChad/base46.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [NvChad/extensions](https://github.com/NvChad/extensions.git)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [olexsmir/gopher.nvim](https://github.com/olexsmir/gopher.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [NvChad/nvterm](https://github.com/NvChad/nvterm)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [bluz71/vim-nightfly-guicolors](https://github.com/bluz71/vim-nightfly-guicolors)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### Go Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |   |  |
|  | " |  |
| Nvim builtin | & | :&&<CR> |
|  | ' |  |
| Nvim builtin | Y | y$ |
|  | ` |  |
|  | c |  |
| Comment toggle current line | gcc |  |
| Comment toggle current block | gbc |  |
| Comment toggle blockwise | gb |  |
| Comment toggle linewise | gc |  |
|  | g |  |
|  | v |  |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
| Nvim builtin | * | y/\V<C-R>"<CR> |
| Comment toggle blockwise (visual) | gb |  |
| Comment toggle linewise (visual) | gc |  |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Comment toggle blockwise | gb |  |
| Comment toggle linewise | gc |  |
