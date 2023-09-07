## Cpp Neovim Configuration Information

'NvChad' based Neovim config with C++ formatting, debugging, and diagnostics. Dreams of Code [video tutorial](https://youtu.be/lsFoZIg-oDs)

- Install and initialize: **`lazyman -L Cpp`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     [NvChad](https://nvchad.com)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Cpp`**

### Git repository

[https://github.com/dreamsofcode-io/neovim-cpp](https://github.com/dreamsofcode-io/neovim-cpp)

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
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [NvChad/nvterm](https://github.com/NvChad/nvterm)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [bluz71/vim-nightfly-guicolors](https://github.com/bluz71/vim-nightfly-guicolors)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### Cpp Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | ` ` |  |
|  | `"` |  |
| Nvim builtin | `&` | `:&&<CR>` |
|  | `'` |  |
| Nvim builtin | `Y` | `y$` |
|  | ``` |  |
|  | `c` |  |
| Comment toggle current block | `gbc` |  |
| Comment toggle linewise | `gc` |  |
| Comment toggle current line | `gcc` |  |
| Comment toggle blockwise | `gb` |  |
|  | `g` |  |
|  | `v` |  |
|  | `<C-R>` |  |
| Nvim builtin | `<C-L>` | `<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>` |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | `#` | `y?\V<C-R>"<CR>` |
| Nvim builtin | `*` | `y/\V<C-R>"<CR>` |
| Comment toggle blockwise (visual) | `gb` |  |
| Comment toggle linewise (visual) | `gc` |  |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Comment toggle blockwise | `gb` |  |
| Comment toggle linewise | `gc` |  |
