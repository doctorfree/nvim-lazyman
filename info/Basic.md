## Basic Neovim Configuration Information

Starter config by the author of NvChad with [video tutorial](https://youtube.com/playlist?list=PLYVQrj2EVSUL1NqYn3jsIVXG3U9eWaMcq)

- Install and initialize: **`lazyman -x Basic`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Basic`**

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
|  | <code>&lt;Tab&gt;</code> | <code>&lt;Cmd&gt; BufferLineCycleNext &lt;CR&gt;</code> |
|  | <code> /</code> |  |
|  | <code> gt</code> | <code>&lt;Cmd&gt; Telescope git_status &lt;CR&gt;</code> |
|  | <code> fw</code> | <code>&lt;Cmd&gt; Telescope live_grep &lt;CR&gt;</code> |
|  | <code> fo</code> | <code>&lt;Cmd&gt; Telescope oldfiles &lt;CR&gt;</code> |
|  | <code> ff</code> | <code>&lt;Cmd&gt; Telescope find_files &lt;CR&gt;</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>&lt;C-Q&gt;</code> | <code>&lt;Cmd&gt; bd &lt;CR&gt;</code> |
|  | <code>&lt;S-Tab&gt;</code> | <code>&lt;Cmd&gt; BufferLineCyclePrev &lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>&lt;Cmd&gt; NvimTreeFocus &lt;CR&gt;</code> |
|  | <code>&lt;C-N&gt;</code> | <code>&lt;Cmd&gt; NvimTreeToggle &lt;CR&gt;</code> |
|  | <code>&lt;C-S&gt;</code> | <code>&lt;Cmd&gt; w &lt;CR&gt;</code> |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> /</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require('Comment.api').toggle.linewise(vim.fn.visualmode())&lt;CR&gt;</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
