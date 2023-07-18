## Metis Neovim Configuration Information

Neovim config by the creator of 'MetisLinux' and 'Ewm'

- Install and initialize: **`lazyman -w Metis`**
- Configuration category: [Personal](https://github.com/doctorfree/nvim-lazyman#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Metis`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/metis-os/pwnvim](https://github.com/metis-os/pwnvim)

### Lazy managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [utilyre/barbecue.nvim](https://github.com/utilyre/barbecue.nvim.git)
- [j-morano/buffer_manager.nvim](https://github.com/j-morano/buffer_manager.nvim.git)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.comment](https://github.com/echasnovski/mini.comment)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [NvChad/nvterm](https://github.com/NvChad/nvterm)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [utilyre/sentiment.nvim](https://github.com/utilyre/sentiment.nvim.git)
- [artart222/telescope_find_directories](https://github.com/artart222/telescope_find_directories)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

### Metis Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <Tab> |  |
|  |  ls | :LspStart<CR> |
|  |  lr | :LspRestart<CR> |
|  |  lp | :LspInfo<CR> |
|  |  x | <C-W>c |
|  |  h | :nohlsearch<CR> |
|  |  pd |  |
|  |  pp |  |
|  |  pr |  |
|  |  pl |  |
|  |  pc |  |
|  |  px |  |
|  |  ps |  |
|  |  pu |  |
|  |  pi |  |
|  |  ph |  |
|  |  d |  |
|  |  ff |  |
|  |  ft |  |
|  |  fr |  |
|  |  fw |  |
|  |  e |  |
|  |  b |  |
| Nvim builtin | & | :&&<CR> |
|  | J | jzz |
|  | K | kzz |
| Nvim builtin | Y | y$ |
|  | [d |  |
|  | ]d |  |
|  | <C-Q> | :bd!<CR> |
|  | <C-S> | :w <CR> |
|  | <C-K> | <C-W>k |
|  | <C-J> | <C-W>j |
|  | <C-H> | <C-W>h |
|  | <M-h> |  |
|  | <M-t> |  |
|  | <M-H> |  |
|  | <S-Tab> |  |
|  | <C-L> | <C-W>l |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | J | :m '>+1<CR>gv=gv |
|  | K | :m '<lt>-2<CR>gv=gv |
|  | p | _dP |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
