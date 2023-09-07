## StartMason Neovim Configuration Information

Same as 'StartLsp' but uses [mason.nvim](https://github.com/williamboman/mason.nvim) to install language servers

- Install and initialize: **`lazyman -x StartMason`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-StartMason`**

### Git repository

[https://github.com/VonHeikemen/nvim-starter/tree/04-lsp-installer](https://github.com/VonHeikemen/nvim-starter/tree/04-lsp-installer)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [lunarvim/darkplus.nvim](https://github.com/lunarvim/darkplus.nvim.git)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [tanvirtin/monokai.nvim](https://github.com/tanvirtin/monokai.nvim.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [joshdick/onedark.vim](https://github.com/joshdick/onedark.vim.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [wellle/targets.vim](https://github.com/wellle/targets.vim.git)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [moll/vim-bbye](https://github.com/moll/vim-bbye)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)

### StartMason Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> e</code> | <code>&lt;Cmd&gt;NvimTreeToggle&lt;CR&gt;</code> |
|  | <code> fs</code> | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |
|  | <code> fd</code> | <code>&lt;Cmd&gt;Telescope diagnostics&lt;CR&gt;</code> |
|  | <code> fg</code> | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |
|  | <code> ff</code> | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |
|  | <code>  </code> | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |
|  | <code> ?</code> | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |
|  | <code> bc</code> | <code>&lt;Cmd&gt;Bdelete&lt;CR&gt;</code> |
|  | <code> bl</code> | <code>&lt;Cmd&gt;buffer #&lt;CR&gt;</code> |
|  | <code> bq</code> | <code>&lt;Cmd&gt;bdelete&lt;CR&gt;</code> |
|  | <code> w</code> | <code>&lt;Cmd&gt;write&lt;CR&gt;</code> |
|  | <code> a</code> | <code>:keepjumps normal! ggVG&lt;CR&gt;</code> |
|  | <code> l</code> | <code>g_</code> |
|  | <code> h</code> | <code>^</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>cS</code> | <code>&lt;Plug&gt;CSurround</code> |
|  | <code>cs</code> | <code>&lt;Plug&gt;Csurround</code> |
|  | <code>ds</code> | <code>&lt;Plug&gt;Dsurround</code> |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
| Comment toggle blockwise | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>gp</code> | <code>"+p</code> |
|  | <code>gy</code> | <code>"+y</code> |
|  | <code>x</code> | <code>"_x</code> |
|  | <code>ySS</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>ySs</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>yss</code> | <code>&lt;Plug&gt;Yssurround</code> |
|  | <code>yS</code> | <code>&lt;Plug&gt;YSurround</code> |
|  | <code>ys</code> | <code>&lt;Plug&gt;Ysurround</code> |
|  | <code>y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
| Toggle Terminal | <code>&lt;C-G&gt;</code> | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
|  | <code>&lt;Plug&gt;YSurround</code> | <code>&lt;SNR&gt;15_opfunc2('setup')</code> |
|  | <code>&lt;Plug&gt;Ysurround</code> | <code>&lt;SNR&gt;15_opfunc('setup')</code> |
|  | <code>&lt;Plug&gt;YSsurround</code> | <code>&lt;SNR&gt;15_opfunc2('setup').'_'</code> |
|  | <code>&lt;Plug&gt;Yssurround</code> | <code>'^'.v:count1.&lt;SNR&gt;15_opfunc('setup').'g_'</code> |
|  | <code>&lt;Plug&gt;CSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;15_changesurround(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Csurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;15_changesurround()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Dsurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;15_dosurround(&lt;SNR&gt;15_inputtarget())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;SurroundRepeat</code> | <code>.</code> |
|  | <code>&lt;Plug&gt;fugitive:</code> | <code></code> |
|  | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> l</code> | <code>g_</code> |
|  | <code> h</code> | <code>^</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>@(targets)</code> | <code>:&lt;C-U&gt;call targets#do()&lt;CR&gt;</code> |
|  | <code>A</code> | <code>targets#e('o', 'A', 'A')</code> |
|  | <code>I</code> | <code>targets#e('o', 'I', 'I')</code> |
|  | <code>S</code> | <code>&lt;Plug&gt;VSurround</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>a</code> | <code>targets#e('o', 'a', 'a')</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>gS</code> | <code>&lt;Plug&gt;VgSurround</code> |
|  | <code>gp</code> | <code>"+p</code> |
|  | <code>gy</code> | <code>"+y</code> |
|  | <code>i</code> | <code>targets#e('o', 'i', 'i')</code> |
|  | <code>x</code> | <code>"_x</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;VgSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> l</code> | <code>g_</code> |
|  | <code> h</code> | <code>^</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>@(targets)</code> | <code>:&lt;C-U&gt;call targets#do()&lt;CR&gt;</code> |
|  | <code>A</code> | <code>targets#e('o', 'A', 'A')</code> |
|  | <code>I</code> | <code>targets#e('o', 'I', 'I')</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>a</code> | <code>targets#e('o', 'a', 'a')</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>i</code> | <code>targets#e('o', 'i', 'i')</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
