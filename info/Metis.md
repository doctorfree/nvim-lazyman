## Metis Neovim Configuration Information

Neovim config by the creator of 'MetisLinux' and 'Ewm'

- Install and initialize: **`lazyman -w Metis`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Metis`**

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
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
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
|  | <code>&lt;Tab&gt;</code> |  |
|  | <code> ls</code> | <code>:LspStart&lt;CR&gt;</code> |
|  | <code> lr</code> | <code>:LspRestart&lt;CR&gt;</code> |
|  | <code> lp</code> | <code>:LspInfo&lt;CR&gt;</code> |
|  | <code> x</code> | <code>&lt;C-W&gt;c</code> |
|  | <code> h</code> | <code>:nohlsearch&lt;CR&gt;</code> |
|  | <code> pd</code> |  |
|  | <code> pp</code> |  |
|  | <code> pr</code> |  |
|  | <code> pl</code> |  |
|  | <code> pc</code> |  |
|  | <code> px</code> |  |
|  | <code> ps</code> |  |
|  | <code> pu</code> |  |
|  | <code> pi</code> |  |
|  | <code> ph</code> |  |
|  | <code> d</code> |  |
|  | <code> fw</code> |  |
|  | <code> ff</code> |  |
|  | <code> ft</code> |  |
|  | <code> fr</code> |  |
|  | <code> b</code> |  |
|  | <code> e</code> |  |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>J</code> | <code>jzz</code> |
|  | <code>K</code> | <code>kzz</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[d</code> |  |
|  | <code>]d</code> |  |
|  | <code>&lt;C-Q&gt;</code> | <code>:bd!&lt;CR&gt;</code> |
|  | <code>&lt;C-S&gt;</code> | <code>:w &lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>&lt;C-W&gt;k</code> |
|  | <code>&lt;C-J&gt;</code> | <code>&lt;C-W&gt;j</code> |
|  | <code>&lt;C-H&gt;</code> | <code>&lt;C-W&gt;h</code> |
|  | <code>&lt;M-H&gt;</code> |  |
|  | <code>&lt;M-h&gt;</code> |  |
|  | <code>&lt;M-t&gt;</code> |  |
|  | <code>&lt;S-Tab&gt;</code> |  |
|  | <code>&lt;C-L&gt;</code> | <code>&lt;C-W&gt;l</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>J</code> | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |
|  | <code>K</code> | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |
|  | <code>p</code> | <code>_dP</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
