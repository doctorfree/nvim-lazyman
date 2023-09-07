## Ahsan Neovim Configuration Information

Personal Neovim configuration of Ahsan Habib

- Install and initialize: **`lazyman -w Ahsan`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Ahsan`**

### Git repository

[https://github.com/bibjaw99/workstation](https://github.com/bibjaw99/workstation)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [sainnhe/gruvbox-material](https://github.com/sainnhe/gruvbox-material)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim.git)
- [derektata/lorem.nvim](https://github.com/derektata/lorem.nvim.git)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim.git)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [hiphish/rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim.git)
- [mechatroner/rainbow_csv](https://github.com/mechatroner/rainbow_csv.git)
- [preservim/tagbar](https://github.com/preservim/tagbar.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [xiyaowong/transparent.nvim](https://github.com/xiyaowong/transparent.nvim.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### Ahsan Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
| Comment toggle blockwise | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>kj</code> | <code>&lt;Esc&gt;</code> |
| Toggle Terminal | <code>&lt;C-Bslash&gt;</code> | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |
|  | <code>&lt;C-S&gt;</code> | <code>"+P</code> |
|  | <code>&lt;M-p&gt;</code> | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |
|  | <code>&lt;M-n&gt;</code> | <code>:BufferLineCycleNext&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>&lt;C-W&gt;k</code> |
|  | <code>&lt;C-J&gt;</code> | <code>&lt;C-W&gt;j</code> |
|  | <code>&lt;C-H&gt;</code> | <code>&lt;C-W&gt;h</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;m</code> | <code>&lt;Plug&gt;(emmet-merge-lines)</code> |
|  | <code>&lt;Plug&gt;(emmet-merge-lines)</code> | <code>:call emmet#mergeLines()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;A</code> | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> |
|  | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> | <code>:call emmet#anchorizeURL(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;a</code> | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> |
|  | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> | <code>:call emmet#anchorizeURL(0)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;k</code> | <code>&lt;Plug&gt;(emmet-remove-tag)</code> |
|  | <code>&lt;Plug&gt;(emmet-remove-tag)</code> | <code>:call emmet#removeTag()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;j</code> | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> |
|  | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> | <code>:call emmet#splitJoinTag()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;/</code> | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> |
|  | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> | <code>:call emmet#toggleComment()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;I</code> | <code>&lt;Plug&gt;(emmet-image-encode)</code> |
|  | <code>&lt;Plug&gt;(emmet-image-encode)</code> | <code>:call emmet#imageEncode()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;i</code> | <code>&lt;Plug&gt;(emmet-image-size)</code> |
|  | <code>&lt;Plug&gt;(emmet-image-size)</code> | <code>:call emmet#imageSize()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(emmet-move-prev-item)</code> | <code>:call emmet#moveNextPrevItem(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(emmet-move-next-item)</code> | <code>:call emmet#moveNextPrevItem(0)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;N</code> | <code>&lt;Plug&gt;(emmet-move-prev)</code> |
|  | <code>&lt;Plug&gt;(emmet-move-prev)</code> | <code>:call emmet#moveNextPrev(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;n</code> | <code>&lt;Plug&gt;(emmet-move-next)</code> |
|  | <code>&lt;Plug&gt;(emmet-move-next)</code> | <code>:call emmet#moveNextPrev(0)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;D</code> | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> | <code>:call emmet#balanceTag(-1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;d</code> | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> | <code>:call emmet#balanceTag(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;u</code> | <code>&lt;Plug&gt;(emmet-update-tag)</code> |
|  | <code>&lt;Plug&gt;(emmet-update-tag)</code> | <code>:call emmet#updateTag()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;;</code> | <code>&lt;Plug&gt;(emmet-expand-word)</code> |
|  | <code>&lt;Plug&gt;(emmet-expand-word)</code> | <code>:call emmet#expandAbbr(1,"")&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;,</code> | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
|  | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> | <code>:call emmet#expandAbbr(3,"")&lt;CR&gt;</code> |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>&lt;C-W&gt;l</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>&lt;lt&gt;</code> | <code>&lt;lt&gt;gv</code> |
|  | <code>&gt;</code> | <code>&gt;gv</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>kj</code> | <code>&lt;Esc&gt;</code> |
|  | <code>&lt;C-C&gt;</code> | <code>"+y</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;C-Y&gt;c</code> | <code>&lt;Plug&gt;(emmet-code-pretty)</code> |
|  | <code>&lt;Plug&gt;(emmet-code-pretty)</code> | <code>:call emmet#codePretty()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;D</code> | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> | <code>&lt;Esc&gt;:call emmet#balanceTag(-1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;d</code> | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> | <code>&lt;Esc&gt;:call emmet#balanceTag(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;,</code> | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
|  | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> | <code>:call emmet#expandAbbr(2,"")&lt;CR&gt;</code> |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
