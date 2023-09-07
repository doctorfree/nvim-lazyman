## Orange Neovim Configuration Information

Modern Neovim configuration for coding React and TypeScript

- Install and initialize: **`lazyman -L Orange`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Orange`**

### Git repository

[https://github.com/bitterteasweetorange/nvim](https://github.com/bitterteasweetorange/nvim)

### Neovimcraft entry

[http://neovimcraft.com/plugin/bitterteasweetorange/nvim](http://neovimcraft.com/plugin/bitterteasweetorange/nvim)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [rmagatti/alternate-toggler](https://github.com/rmagatti/alternate-toggler.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [github/copilot.vim](https://github.com/github/copilot.vim)
- [neanias/everforest-nvim](https://github.com/neanias/everforest-nvim)
- [folke/flash.nvim](https://github.com/folke/flash.nvim.git)
- [f-person/git-blame.nvim](https://github.com/f-person/git-blame.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim.git)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [mrjones2014/nvim-ts-rainbow](https://github.com/mrjones2014/nvim-ts-rainbow)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [axelvc/template-string.nvim](https://github.com/axelvc/template-string.nvim.git)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [jose-elias-alvarez/typescript.nvim](https://github.com/jose-elias-alvarez/typescript.nvim)
- [tpope/vim-obsession](https://github.com/tpope/vim-obsession.git)
- [dhruvasagar/vim-prosession](https://github.com/dhruvasagar/vim-prosession.git)
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi.git)
- [gcmt/wildfire.vim](https://github.com/gcmt/wildfire.vim.git)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)

### Orange Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>&lt;CR&gt;</code> | <code>&lt;Plug&gt;(wildfire-fuel)</code> |
|  | <code> g</code> |  |
|  | <code> f</code> |  |
|  | <code> i</code> | <code>&lt;Cmd&gt;ToggleAlternate&lt;CR&gt;</code> |
|  | <code> o</code> | <code>&lt;Cmd&gt;Lspsaga outline&lt;CR&gt;</code> |
|  | <code> r</code> | <code>&lt;Cmd&gt;Lspsaga rename&lt;CR&gt;</code> |
|  | <code> ca</code> | <code>&lt;Cmd&gt;Lspsaga code_action&lt;CR&gt;</code> |
|  | <code> k</code> | <code>&lt;Cmd&gt;Lspsaga hover_doc&lt;CR&gt;</code> |
|  | <code> x</code> | <code>&lt;Cmd&gt;x&lt;CR&gt;</code> |
|  | <code> w</code> | <code>&lt;Cmd&gt;w&lt;CR&gt;</code> |
|  | <code> q</code> | <code>&lt;Cmd&gt;q&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>H</code> | <code>^</code> |
|  | <code>L</code> | <code>$</code> |
|  | <code>P</code> | <code>&lt;Plug&gt;(YankyPutBefore)</code> |
| Flash Treesitter | <code>S</code> |  |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[d</code> | <code>&lt;Cmd&gt;Lspsaga diagnostic_jump_prev&lt;CR&gt;</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>\\gS</code> | <code>&lt;Plug&gt;(VM-Reselect-Last)</code> |
|  | <code>\\/</code> | <code>&lt;Plug&gt;(VM-Start-Regex-Search)</code> |
|  | <code>\\\</code> | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |
|  | <code>\\A</code> | <code>&lt;Plug&gt;(VM-Select-All)</code> |
|  | <code>]d</code> | <code>&lt;Cmd&gt;Lspsaga diagnostic_jump_next&lt;CR&gt;</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
| Comment toggle blockwise | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
|  | <code>gd</code> | <code>&lt;Cmd&gt;Lspsaga goto_definition&lt;CR&gt;</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>j</code> | <code>v:count?'j':'gj'</code> |
|  | <code>k</code> | <code>v:count?'k':'gk'</code> |
|  | <code>p</code> | <code>&lt;Plug&gt;(YankyPutAfter)</code> |
| Flash | <code>s</code> |  |
|  | <code>&lt;C-E&gt;</code> | <code>&lt;Cmd&gt;NvimTreeToggle&lt;CR&gt;</code> |
| Toggle Terminal | <code>&lt;C-Bslash&gt;</code> | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |
|  | <code>&lt;C-A&gt;</code> | <code>ggVG</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyYank)</code> |  |
|  | <code>&lt;Plug&gt;(YankyCycleBackward)</code> |  |
|  | <code>&lt;Plug&gt;(YankyCycleForward)</code> |  |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;C-Down&gt;</code> | <code>&lt;Plug&gt;(VM-Add-Cursor-Down)</code> |
|  | <code>&lt;C-Up&gt;</code> | <code>&lt;Plug&gt;(VM-Add-Cursor-Up)</code> |
|  | <code>&lt;S-Right&gt;</code> | <code>&lt;Plug&gt;(VM-Select-l)</code> |
|  | <code>&lt;S-Left&gt;</code> | <code>&lt;Plug&gt;(VM-Select-h)</code> |
|  | <code>&lt;C-N&gt;</code> | <code>&lt;Plug&gt;(VM-Find-Under)</code> |
|  | <code>&lt;Plug&gt;(VM-Select-BBW)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('BBW', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-gE)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('gE', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-ge)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('ge', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-E)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('E', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-e)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('e', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-B)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('B', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-b)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('b', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-W)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('W', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-w)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('w', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-l)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('l', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-k)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('k', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-j)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('j', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-h)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('h', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Mouse-Column)</code> | <code>:call vm#commands#mouse_column()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Mouse-Word)</code> | <code>&lt;Plug&gt;(VM-Left-Mouse)&lt;Plug&gt;(VM-Find-Under)</code> |
|  | <code>&lt;Plug&gt;(VM-Mouse-Cursor)</code> | <code>&lt;Plug&gt;(VM-Left-Mouse)&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |
|  | <code>&lt;Plug&gt;(VM-Left-Mouse)</code> | <code>&lt;LeftMouse&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Slash-Search)</code> | <code>@=vm#commands#find_by_regex(3)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Start-Regex-Search)</code> | <code>@=vm#commands#find_by_regex(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Find-Under)</code> | <code>:&lt;C-U&gt;call vm#commands#ctrln(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-All)</code> | <code>:call vm#commands#find_all(0, 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Reselect-Last)</code> | <code>:call vm#commands#reselect_last()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-Cursor-Up)</code> | <code>:&lt;C-U&gt;call vm#commands#add_cursor_up(1, v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-Cursor-Down)</code> | <code>:&lt;C-U&gt;call vm#commands#add_cursor_down(1, v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Add-Cursor-Up)</code> | <code>:&lt;C-U&gt;call vm#commands#add_cursor_up(0, v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Add-Cursor-Down)</code> | <code>:&lt;C-U&gt;call vm#commands#add_cursor_down(0, v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Word)</code> | <code>:call vm#commands#add_cursor_at_word(1, 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> | <code>:call vm#commands#add_cursor_at_pos(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
|  | <code>&lt;Plug&gt;(wildfire-quick-select)</code> | <code>:&lt;C-U&gt;call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(wildfire-fuel)</code> | <code>:&lt;C-U&gt;call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])&lt;CR&gt;</code> |
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
|  | <code>&lt;CR&gt;</code> | <code>&lt;Plug&gt;(wildfire-fuel)</code> |
|  | <code> ca</code> | <code>&lt;Cmd&gt;Lspsaga code_action&lt;CR&gt;</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>P</code> | <code>&lt;Plug&gt;(YankyPutBefore)</code> |
| Flash Treesitter | <code>S</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>\\c</code> | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> |
|  | <code>\\a</code> | <code>&lt;Plug&gt;(VM-Visual-Add)</code> |
|  | <code>\\f</code> | <code>&lt;Plug&gt;(VM-Visual-Find)</code> |
|  | <code>\\/</code> | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> |
|  | <code>\\A</code> | <code>&lt;Plug&gt;(VM-Visual-All)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>p</code> | <code>&lt;Plug&gt;(YankyPutAfter)</code> |
| Flash | <code>s</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyYank)</code> |  |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;C-N&gt;</code> | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> | <code>:call vm#commands#find_by_regex(2)&lt;CR&gt;:call feedkeys('/', 'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> | <code>&lt;SNR&gt;11_Visual('under')</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Reduce)</code> | <code>:&lt;C-U&gt;call vm#visual#reduce()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Add)</code> | <code>&lt;Esc&gt;:call vm#commands#visual_add()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> | <code>&lt;Esc&gt;:call vm#commands#visual_cursors()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-All)</code> | <code>&lt;SNR&gt;11_Visual('all')</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Find)</code> | <code>vm#operators#find(1, 1)</code> |
|  | <code>&lt;BS&gt;</code> | <code>&lt;Plug&gt;(wildfire-water)</code> |
|  | <code>&lt;Plug&gt;(wildfire-fuel)</code> | <code>:&lt;C-U&gt;call wildfire#Fuel(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(wildfire-water)</code> | <code>:&lt;C-U&gt;call wildfire#Water(v:count1)&lt;CR&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>&lt;CR&gt;</code> | <code>&lt;Plug&gt;(wildfire-fuel)</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
| Flash Treesitter | <code>S</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
| Flash | <code>s</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(wildfire-quick-select)</code> | <code>:&lt;C-U&gt;call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(wildfire-fuel)</code> | <code>:&lt;C-U&gt;call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
