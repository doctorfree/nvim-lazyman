## Go Neovim Configuration Information

NvChad based Neovim config with Go formatting, debugging, and diagnostics. Dreams of Code [video tutorial](https://youtu.be/i04sSQjd-qo)

- Install and initialize: **`lazyman -L Go`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     [NvChad](https://nvchad.com)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Go`**

### Git repository

[https://github.com/dreamsofcode-io/neovim-go-config](https://github.com/dreamsofcode-io/neovim-go-config)

### Website

[https://nvchad.com](https://nvchad.com)

### YouTube channel

[https://www.youtube.com/@dreamsofcode](https://www.youtube.com/@dreamsofcode)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [NvChad/base46](https://github.com/NvChad/base46.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
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
|  | <code> </code> |  |
|  | <code>"</code> |  |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>'</code> |  |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>`</code> |  |
|  | <code>c</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle blockwise | <code>gb</code> |  |
| Comment toggle linewise | <code>gc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
|  | <code>g</code> |  |
|  | <code>v</code> |  |
|  | <code>&lt;C-R&gt;</code> |  |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
| Comment toggle blockwise (visual) | <code>gb</code> |  |
| Comment toggle linewise (visual) | <code>gc</code> |  |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Comment toggle blockwise | <code>gb</code> |  |
| Comment toggle linewise | <code>gc</code> |  |
