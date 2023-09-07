## SaleVim Neovim Configuration Information

'Salesforce' optimized IDE with custom features for editing 'Apex', 'Visualforce', and 'Lightning' code

- Install and initialize: **`lazyman -L SaleVim`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-SaleVim`**

### Git repository

[https://github.com/igorcguedes/SaleVim](https://github.com/igorcguedes/SaleVim)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [willothy/nvim-cokeline](https://github.com/willothy/nvim-cokeline)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [NvChad/nvterm](https://github.com/NvChad/nvterm)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [LeviticusNelson/sfdx.nvim](https://github.com/LeviticusNelson/sfdx.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [moll/vim-bbye](https://github.com/moll/vim-bbye)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [beyond-the-cloud-dev/vsc-salesforce-code-snippets](https://github.com/beyond-the-cloud-dev/vsc-salesforce-code-snippets)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### SaleVim Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> </code> | <code></code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>H</code> | <code>:bprevious&lt;CR&gt;</code> |
|  | <code>L</code> | <code>:bnext&lt;CR&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
| Comment toggle blockwise | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
| Move to previous reference | <code>&lt;M-p&gt;</code> |  |
| Move to next reference | <code>&lt;M-n&gt;</code> |  |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(cokeline-focus-20)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-20)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-19)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-19)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-18)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-18)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-17)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-17)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-16)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-16)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-15)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-15)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-14)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-14)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-13)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-13)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-12)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-12)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-11)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-11)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-10)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-10)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-9)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-9)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-8)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-8)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-7)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-7)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-6)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-6)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-5)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-5)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-4)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-4)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-3)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-3)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-2)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-2)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-1)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-1)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-pick-close)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-pick-focus)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-next)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-prev)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-next)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-prev)</code> |  |
|  | <code>&lt;M-i&gt;</code> |  |
|  | <code>&lt;M-v&gt;</code> |  |
|  | <code>&lt;M-h&gt;</code> |  |
|  | <code>&lt;M-k&gt;</code> | <code>&lt;Esc&gt;:m .-2&lt;CR&gt;==gi</code> |
|  | <code>&lt;M-j&gt;</code> | <code>&lt;Esc&gt;:m .+1&lt;CR&gt;==gi</code> |
|  | <code>&lt;C-Right&gt;</code> | <code>:vertical resize +2&lt;CR&gt;</code> |
|  | <code>&lt;C-Left&gt;</code> | <code>:vertical resize -2&lt;CR&gt;</code> |
|  | <code>&lt;C-Down&gt;</code> | <code>:resize +2&lt;CR&gt;</code> |
|  | <code>&lt;C-Up&gt;</code> | <code>:resize -2&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>&lt;C-W&gt;k</code> |
|  | <code>&lt;C-J&gt;</code> | <code>&lt;C-W&gt;j</code> |
|  | <code>&lt;C-H&gt;</code> | <code>&lt;C-W&gt;h</code> |
|  | <code>&lt;C-L&gt;</code> |  |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> </code> | <code></code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>&lt;lt&gt;</code> | <code>&lt;lt&gt;gv</code> |
|  | <code>&gt;</code> | <code>&gt;gv</code> |
|  | <code>J</code> | <code>:move '&gt;+1&lt;CR&gt;gv-gv</code> |
|  | <code>K</code> | <code>:move '&lt;lt&gt;-2&lt;CR&gt;gv-gv</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
|  | <code>p</code> | <code>"_dP</code> |
|  | <code>&lt;M-i&gt;</code> |  |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;M-k&gt;</code> | <code>:move '&lt;lt&gt;-2&lt;CR&gt;gv-gv</code> |
|  | <code>&lt;M-j&gt;</code> | <code>:move '&gt;+1&lt;CR&gt;gv-gv</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> </code> | <code></code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>&lt;M-i&gt;</code> |  |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
