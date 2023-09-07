## Primeagen Neovim Configuration Information

[Config from scratch](https://youtu.be/w7i4amO_zaE) by ThePrimeagen

- Install and initialize: **`lazyman -w Primeagen`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Primeagen`**

### Git repository

[https://github.com/ThePrimeagen/init.lua](https://github.com/ThePrimeagen/init.lua)

### YouTube channel

[https://www.youtube.com/@ThePrimeagen](https://www.youtube.com/@ThePrimeagen)

### Packer managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [eandrju/cellular-automaton.nvim](https://github.com/eandrju/cellular-automaton.nvim)
- [laytan/cloak.nvim](https://github.com/laytan/cloak.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [github/copilot.vim](https://github.com/github/copilot.vim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [theprimeagen/harpoon](https://github.com/theprimeagen/harpoon)
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [theprimeagen/refactoring.nvim](https://github.com/theprimeagen/refactoring.nvim)
- [rose-pine/neovim](https://github.com/rose-pine/neovim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

### Primeagen Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> zZ</code> |  |
|  | <code> zz</code> |  |
|  | <code> u</code> |  |
|  | <code> xq</code> | <code>&lt;Cmd&gt;TroubleToggle quickfix&lt;CR&gt;</code> |
|  | <code> vh</code> |  |
|  | <code> ps</code> |  |
|  | <code> pf</code> |  |
|  | <code> a</code> |  |
|  | <code> gs</code> |  |
|  | <code>  </code> |  |
|  | <code> mr</code> | <code>&lt;Cmd&gt;CellularAutomaton make_it_rain&lt;CR&gt;</code> |
|  | <code> vpp</code> | <code>&lt;Cmd&gt;e ~/.config/nvim-Primeagen/lua/theprimeagen/packer.lua&lt;CR&gt;</code> |
|  | <code> x</code> | <code>&lt;Cmd&gt;!chmod +x %&lt;CR&gt;</code> |
|  | <code> s</code> | <code>:%s/\&lt;lt&gt;&lt;C-R&gt;&lt;C-W&gt;\&gt;/&lt;C-R&gt;&lt;C-W&gt;/gI&lt;Left&gt;&lt;Left&gt;&lt;Left&gt;</code> |
|  | <code> j</code> | <code>&lt;Cmd&gt;lprev&lt;CR&gt;zz</code> |
|  | <code> k</code> | <code>&lt;Cmd&gt;lnext&lt;CR&gt;zz</code> |
|  | <code> f</code> |  |
|  | <code> d</code> | <code>"_d</code> |
|  | <code> Y</code> | <code>"+Y</code> |
|  | <code> y</code> | <code>"+y</code> |
|  | <code> svwm</code> |  |
|  | <code> vwm</code> |  |
|  | <code> pv</code> |  |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>J</code> | <code>mzJ`z</code> |
|  | <code>N</code> | <code>Nzzzv</code> |
|  | <code>Q</code> | <code></code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>n</code> | <code>nzzzv</code> |
|  | <code>y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>&lt;C-P&gt;</code> |  |
|  | <code>&lt;C-S&gt;</code> |  |
|  | <code>&lt;C-N&gt;</code> |  |
|  | <code>&lt;C-T&gt;</code> |  |
|  | <code>&lt;C-H&gt;</code> |  |
|  | <code>&lt;C-E&gt;</code> |  |
|  | <code>&lt;Plug&gt;fugitive:</code> | <code></code> |
|  | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>&lt;Cmd&gt;cprev&lt;CR&gt;zz</code> |
|  | <code>&lt;C-K&gt;</code> | <code>&lt;Cmd&gt;cnext&lt;CR&gt;zz</code> |
|  | <code>&lt;C-F&gt;</code> | <code>&lt;Cmd&gt;silent !tmux neww tmux-sessionizer&lt;CR&gt;</code> |
|  | <code>&lt;C-U&gt;</code> | <code>&lt;C-U&gt;zz</code> |
|  | <code>&lt;C-D&gt;</code> | <code>&lt;C-D&gt;zz</code> |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> ri</code> | <code> &lt;Esc&gt;&lt;Cmd&gt;lua require('refactoring').refactor('Inline Variable')&lt;CR&gt;</code> |
|  | <code> d</code> | <code>"_d</code> |
|  | <code> y</code> | <code>"+y</code> |
|  | <code> p</code> | <code>"_dP</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>J</code> | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |
|  | <code>K</code> | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
