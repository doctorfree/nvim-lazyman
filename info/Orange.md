## Orange Neovim Configuration Information

Modern Neovim configuration for coding React and TypeScript

- Install and initialize: **`lazyman -L Orange`**
- Configuration category: [Language](https://github.com/doctorfree/nvim-lazyman#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Orange`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

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
|  | <CR> | <Plug>(wildfire-fuel) |
|  |  g |  |
|  |  f |  |
|  |  i | <Cmd>ToggleAlternate<CR> |
|  |  o | <Cmd>Lspsaga outline<CR> |
|  |  r | <Cmd>Lspsaga rename<CR> |
|  |  ca | <Cmd>Lspsaga code_action<CR> |
|  |  k | <Cmd>Lspsaga hover_doc<CR> |
|  |  x | <Cmd>x<CR> |
|  |  w | <Cmd>w<CR> |
|  |  q | <Cmd>q<CR> |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | H | ^ |
|  | L | $ |
|  | P | <Plug>(YankyPutBefore) |
| Flash Treesitter | S |  |
| Nvim builtin | Y | y$ |
|  | [d | <Cmd>Lspsaga diagnostic_jump_prev<CR> |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | \\gS | <Plug>(VM-Reselect-Last) |
|  | \\/ | <Plug>(VM-Start-Regex-Search) |
|  | \\\ | <Plug>(VM-Add-Cursor-At-Pos) |
|  | \\A | <Plug>(VM-Select-All) |
|  | ]d | <Cmd>Lspsaga diagnostic_jump_next<CR> |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
| Comment insert end of line | gcA |  |
| Comment insert above | gcO |  |
| Comment insert below | gco |  |
| Comment toggle current block | gbc |  |
| Comment toggle current line | gcc |  |
| Comment toggle blockwise | gb | <Plug>(comment_toggle_blockwise) |
| Comment toggle linewise | gc | <Plug>(comment_toggle_linewise) |
|  | gd | <Cmd>Lspsaga goto_definition<CR> |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | j | v:count?'j':'gj' |
|  | k | v:count?'k':'gk' |
|  | p | <Plug>(YankyPutAfter) |
| Flash | s |  |
|  | <C-E> | <Cmd>NvimTreeToggle<CR> |
| Toggle Terminal | <C-Bslash> | <Cmd>execute v:count . "ToggleTerm"<CR> |
|  | <C-A> | ggVG |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
| Comment toggle blockwise with count | <Plug>(comment_toggle_blockwise_count) |  |
| Comment toggle linewise with count | <Plug>(comment_toggle_linewise_count) |  |
| Comment toggle current block | <Plug>(comment_toggle_blockwise_current) |  |
| Comment toggle current line | <Plug>(comment_toggle_linewise_current) |  |
| Comment toggle blockwise | <Plug>(comment_toggle_blockwise) |  |
| Comment toggle linewise | <Plug>(comment_toggle_linewise) |  |
|  | <C-Down> | <Plug>(VM-Add-Cursor-Down) |
|  | <C-Up> | <Plug>(VM-Add-Cursor-Up) |
|  | <S-Right> | <Plug>(VM-Select-l) |
|  | <S-Left> | <Plug>(VM-Select-h) |
|  | <C-N> | <Plug>(VM-Find-Under) |
|  | <Plug>(VM-Select-BBW) | :<C-U>call vm#commands#motion('BBW', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-gE) | :<C-U>call vm#commands#motion('gE', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-ge) | :<C-U>call vm#commands#motion('ge', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-E) | :<C-U>call vm#commands#motion('E', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-e) | :<C-U>call vm#commands#motion('e', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-B) | :<C-U>call vm#commands#motion('B', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-b) | :<C-U>call vm#commands#motion('b', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-W) | :<C-U>call vm#commands#motion('W', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-w) | :<C-U>call vm#commands#motion('w', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-l) | :<C-U>call vm#commands#motion('l', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-k) | :<C-U>call vm#commands#motion('k', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-j) | :<C-U>call vm#commands#motion('j', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Select-h) | :<C-U>call vm#commands#motion('h', v:count1, 1, 0)<CR> |
|  | <Plug>(VM-Mouse-Column) | :call vm#commands#mouse_column()<CR> |
|  | <Plug>(VM-Mouse-Word) | <Plug>(VM-Left-Mouse)<Plug>(VM-Find-Under) |
|  | <Plug>(VM-Mouse-Cursor) | <Plug>(VM-Left-Mouse)<Plug>(VM-Add-Cursor-At-Pos) |
|  | <Plug>(VM-Left-Mouse) | <LeftMouse> |
|  | <Plug>(VM-Slash-Search) | @=vm#commands#find_by_regex(3)<CR> |
|  | <Plug>(VM-Start-Regex-Search) | @=vm#commands#find_by_regex(1)<CR> |
|  | <Plug>(VM-Find-Under) | :<C-U>call vm#commands#ctrln(v:count1)<CR> |
|  | <Plug>(VM-Select-All) | :call vm#commands#find_all(0, 1)<CR> |
|  | <Plug>(VM-Reselect-Last) | :call vm#commands#reselect_last()<CR> |
|  | <Plug>(VM-Select-Cursor-Up) | :<C-U>call vm#commands#add_cursor_up(1, v:count1)<CR> |
|  | <Plug>(VM-Select-Cursor-Down) | :<C-U>call vm#commands#add_cursor_down(1, v:count1)<CR> |
|  | <Plug>(VM-Add-Cursor-Up) | :<C-U>call vm#commands#add_cursor_up(0, v:count1)<CR> |
|  | <Plug>(VM-Add-Cursor-Down) | :<C-U>call vm#commands#add_cursor_down(0, v:count1)<CR> |
|  | <Plug>(VM-Add-Cursor-At-Word) | :call vm#commands#add_cursor_at_word(1, 1)<CR> |
|  | <Plug>(VM-Add-Cursor-At-Pos) | :call vm#commands#add_cursor_at_pos(0)<CR> |
|  | <Plug>(wildfire-quick-select) | :<C-U>call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR> |
|  | <Plug>(wildfire-fuel) | :<C-U>call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR> |
|  | <Plug>(YankyPutIndentAfterShiftLeftJoined) |  |
|  | <Plug>(YankyPutIndentAfterShiftLeft) |  |
|  | <Plug>(YankyPutIndentAfterShiftRightJoined) |  |
|  | <Plug>(YankyPutIndentAfterShiftRight) |  |
|  | <Plug>(YankyPutIndentAfterFilterJoined) |  |
|  | <Plug>(YankyPutIndentAfterFilter) |  |
|  | <Plug>(YankyPutIndentAfterBlockwiseJoined) |  |
|  | <Plug>(YankyPutIndentAfterBlockwise) |  |
|  | <Plug>(YankyPutIndentAfterCharwiseJoined) |  |
|  | <Plug>(YankyPutIndentAfterCharwise) |  |
|  | <Plug>(YankyPutIndentAfterLinewiseJoined) |  |
|  | <Plug>(YankyPutIndentAfterLinewise) |  |
|  | <Plug>(YankyPutIndentAfterJoined) |  |
|  | <Plug>(YankyPutIndentAfter) |  |
|  | <Plug>(YankyPutIndentBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyPutIndentBeforeShiftLeft) |  |
|  | <Plug>(YankyPutIndentBeforeShiftRightJoined) |  |
|  | <Plug>(YankyPutIndentBeforeShiftRight) |  |
|  | <Plug>(YankyPutIndentBeforeFilterJoined) |  |
|  | <Plug>(YankyPutIndentBeforeFilter) |  |
|  | <Plug>(YankyPutIndentBeforeBlockwiseJoined) |  |
|  | <Plug>(YankyPutIndentBeforeBlockwise) |  |
|  | <Plug>(YankyPutIndentBeforeCharwiseJoined) |  |
|  | <Plug>(YankyPutIndentBeforeCharwise) |  |
|  | <Plug>(YankyPutIndentBeforeLinewiseJoined) |  |
|  | <Plug>(YankyPutIndentBeforeLinewise) |  |
|  | <Plug>(YankyPutIndentBeforeJoined) |  |
|  | <Plug>(YankyPutIndentBefore) |  |
|  | <Plug>(YankyGPutAfterShiftLeftJoined) |  |
|  | <Plug>(YankyGPutAfterShiftLeft) |  |
|  | <Plug>(YankyGPutAfterShiftRightJoined) |  |
|  | <Plug>(YankyGPutAfterShiftRight) |  |
|  | <Plug>(YankyGPutAfterFilterJoined) |  |
|  | <Plug>(YankyGPutAfterFilter) |  |
|  | <Plug>(YankyGPutAfterBlockwiseJoined) |  |
|  | <Plug>(YankyGPutAfterBlockwise) |  |
|  | <Plug>(YankyGPutAfterCharwiseJoined) |  |
|  | <Plug>(YankyGPutAfterCharwise) |  |
|  | <Plug>(YankyGPutAfterLinewiseJoined) |  |
|  | <Plug>(YankyGPutAfterLinewise) |  |
|  | <Plug>(YankyGPutAfterJoined) |  |
|  | <Plug>(YankyGPutAfter) |  |
|  | <Plug>(YankyPutAfterShiftLeftJoined) |  |
|  | <Plug>(YankyPutAfterShiftLeft) |  |
|  | <Plug>(YankyPutAfterShiftRightJoined) |  |
|  | <Plug>(YankyPutAfterShiftRight) |  |
|  | <Plug>(YankyPutAfterFilterJoined) |  |
|  | <Plug>(YankyPutAfterFilter) |  |
|  | <Plug>(YankyPutAfterBlockwiseJoined) |  |
|  | <Plug>(YankyPutAfterBlockwise) |  |
|  | <Plug>(YankyPutAfterCharwiseJoined) |  |
|  | <Plug>(YankyPutAfterCharwise) |  |
|  | <Plug>(YankyPutAfterLinewiseJoined) |  |
|  | <Plug>(YankyPutAfterLinewise) |  |
|  | <Plug>(YankyPutAfterJoined) |  |
|  | <Plug>(YankyPutAfter) |  |
|  | <Plug>(YankyPutBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyPutBeforeShiftLeft) |  |
|  | <Plug>(YankyPutBeforeShiftRightJoined) |  |
|  | <Plug>(YankyPutBeforeShiftRight) |  |
|  | <Plug>(YankyPutBeforeFilterJoined) |  |
|  | <Plug>(YankyPutBeforeFilter) |  |
|  | <Plug>(YankyPutBeforeBlockwiseJoined) |  |
|  | <Plug>(YankyPutBeforeBlockwise) |  |
|  | <Plug>(YankyPutBeforeCharwiseJoined) |  |
|  | <Plug>(YankyPutBeforeCharwise) |  |
|  | <Plug>(YankyPutBeforeLinewiseJoined) |  |
|  | <Plug>(YankyPutBeforeLinewise) |  |
|  | <Plug>(YankyPutBeforeJoined) |  |
|  | <Plug>(YankyPutBefore) |  |
|  | <Plug>(YankyGPutBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyGPutBeforeShiftLeft) |  |
|  | <Plug>(YankyGPutBeforeShiftRightJoined) |  |
|  | <Plug>(YankyGPutBeforeShiftRight) |  |
|  | <Plug>(YankyGPutBeforeFilterJoined) |  |
|  | <Plug>(YankyGPutBeforeFilter) |  |
|  | <Plug>(YankyGPutBeforeBlockwiseJoined) |  |
|  | <Plug>(YankyGPutBeforeBlockwise) |  |
|  | <Plug>(YankyGPutBeforeCharwiseJoined) |  |
|  | <Plug>(YankyGPutBeforeCharwise) |  |
|  | <Plug>(YankyGPutBeforeLinewiseJoined) |  |
|  | <Plug>(YankyGPutBeforeLinewise) |  |
|  | <Plug>(YankyGPutBeforeJoined) |  |
|  | <Plug>(YankyGPutBefore) |  |
|  | <Plug>(YankyYank) |  |
|  | <Plug>(YankyCycleBackward) |  |
|  | <Plug>(YankyCycleForward) |  |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>luasnip-delete-check |  |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <CR> | <Plug>(wildfire-fuel) |
|  |  ca | <Cmd>Lspsaga code_action<CR> |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | P | <Plug>(YankyPutBefore) |
| Flash Treesitter | S |  |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | \\c | <Plug>(VM-Visual-Cursors) |
|  | \\a | <Plug>(VM-Visual-Add) |
|  | \\f | <Plug>(VM-Visual-Find) |
|  | \\/ | <Plug>(VM-Visual-Regex) |
|  | \\A | <Plug>(VM-Visual-All) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
| Comment toggle blockwise (visual) | gb | <Plug>(comment_toggle_blockwise_visual) |
| Comment toggle linewise (visual) | gc | <Plug>(comment_toggle_linewise_visual) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | p | <Plug>(YankyPutAfter) |
| Flash | s |  |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
| Comment toggle blockwise (visual) | <Plug>(comment_toggle_blockwise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR> |
| Comment toggle linewise (visual) | <Plug>(comment_toggle_linewise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR> |
|  | <BS> | <Plug>(wildfire-water) |
|  | <Plug>(wildfire-fuel) | :<C-U>call wildfire#Fuel(v:count1)<CR> |
|  | <Plug>(wildfire-water) | :<C-U>call wildfire#Water(v:count1)<CR> |
|  | <Plug>(YankyPutBeforeShiftRightJoined) |  |
|  | <Plug>(YankyPutBeforeShiftRight) |  |
|  | <Plug>(YankyPutBeforeFilterJoined) |  |
|  | <Plug>(YankyPutBeforeFilter) |  |
|  | <Plug>(YankyPutBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyPutBeforeShiftLeft) |  |
|  | <Plug>(YankyPutBeforeBlockwiseJoined) |  |
|  | <Plug>(YankyPutBeforeBlockwise) |  |
|  | <Plug>(YankyPutBeforeCharwiseJoined) |  |
|  | <Plug>(YankyPutBeforeCharwise) |  |
|  | <Plug>(YankyPutBeforeLinewiseJoined) |  |
|  | <Plug>(YankyPutBeforeLinewise) |  |
|  | <Plug>(YankyPutBeforeJoined) |  |
|  | <Plug>(YankyPutBefore) |  |
|  | <Plug>(YankyGPutBeforeShiftRightJoined) |  |
|  | <Plug>(YankyGPutBeforeShiftRight) |  |
|  | <Plug>(YankyGPutBeforeFilterJoined) |  |
|  | <Plug>(YankyGPutBeforeFilter) |  |
|  | <Plug>(YankyGPutBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyGPutBeforeShiftLeft) |  |
|  | <Plug>(YankyGPutBeforeBlockwiseJoined) |  |
|  | <Plug>(YankyGPutBeforeBlockwise) |  |
|  | <Plug>(YankyGPutBeforeCharwiseJoined) |  |
|  | <Plug>(YankyGPutBeforeCharwise) |  |
|  | <Plug>(YankyGPutBeforeLinewiseJoined) |  |
|  | <Plug>(YankyGPutBeforeLinewise) |  |
|  | <Plug>(YankyGPutBeforeJoined) |  |
|  | <Plug>(YankyGPutBefore) |  |
|  | <Plug>(YankyPutIndentBeforeShiftRightJoined) |  |
|  | <Plug>(YankyPutIndentBeforeShiftRight) |  |
|  | <Plug>(YankyPutIndentBeforeFilterJoined) |  |
|  | <Plug>(YankyPutIndentBeforeFilter) |  |
|  | <Plug>(YankyPutIndentBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyPutIndentBeforeShiftLeft) |  |
|  | <Plug>(YankyPutIndentBeforeBlockwiseJoined) |  |
|  | <Plug>(YankyPutIndentBeforeBlockwise) |  |
|  | <Plug>(YankyPutIndentBeforeCharwiseJoined) |  |
|  | <Plug>(YankyPutIndentBeforeCharwise) |  |
|  | <Plug>(YankyPutIndentBeforeLinewiseJoined) |  |
|  | <Plug>(YankyPutIndentBeforeLinewise) |  |
|  | <Plug>(YankyPutIndentBeforeJoined) |  |
|  | <Plug>(YankyPutIndentBefore) |  |
|  | <Plug>(YankyPutIndentAfterShiftRightJoined) |  |
|  | <Plug>(YankyPutIndentAfterShiftRight) |  |
|  | <Plug>(YankyPutIndentAfterFilterJoined) |  |
|  | <Plug>(YankyPutIndentAfterFilter) |  |
|  | <Plug>(YankyPutIndentAfterShiftLeftJoined) |  |
|  | <Plug>(YankyPutIndentAfterShiftLeft) |  |
|  | <Plug>(YankyPutIndentAfterBlockwiseJoined) |  |
|  | <Plug>(YankyPutIndentAfterBlockwise) |  |
|  | <Plug>(YankyPutIndentAfterCharwiseJoined) |  |
|  | <Plug>(YankyPutIndentAfterCharwise) |  |
|  | <Plug>(YankyPutIndentAfterLinewiseJoined) |  |
|  | <Plug>(YankyPutIndentAfterLinewise) |  |
|  | <Plug>(YankyPutIndentAfterJoined) |  |
|  | <Plug>(YankyPutIndentAfter) |  |
|  | <Plug>(YankyPutAfterShiftRightJoined) |  |
|  | <Plug>(YankyPutAfterShiftRight) |  |
|  | <Plug>(YankyPutAfterFilterJoined) |  |
|  | <Plug>(YankyPutAfterFilter) |  |
|  | <Plug>(YankyPutAfterShiftLeftJoined) |  |
|  | <Plug>(YankyPutAfterShiftLeft) |  |
|  | <Plug>(YankyPutAfterBlockwiseJoined) |  |
|  | <Plug>(YankyPutAfterBlockwise) |  |
|  | <Plug>(YankyPutAfterCharwiseJoined) |  |
|  | <Plug>(YankyPutAfterCharwise) |  |
|  | <Plug>(YankyPutAfterLinewiseJoined) |  |
|  | <Plug>(YankyPutAfterLinewise) |  |
|  | <Plug>(YankyPutAfterJoined) |  |
|  | <Plug>(YankyPutAfter) |  |
|  | <Plug>(YankyGPutAfterShiftRightJoined) |  |
|  | <Plug>(YankyGPutAfterShiftRight) |  |
|  | <Plug>(YankyGPutAfterFilterJoined) |  |
|  | <Plug>(YankyGPutAfterFilter) |  |
|  | <Plug>(YankyGPutAfterShiftLeftJoined) |  |
|  | <Plug>(YankyGPutAfterShiftLeft) |  |
|  | <Plug>(YankyGPutAfterBlockwiseJoined) |  |
|  | <Plug>(YankyGPutAfterBlockwise) |  |
|  | <Plug>(YankyGPutAfterCharwiseJoined) |  |
|  | <Plug>(YankyGPutAfterCharwise) |  |
|  | <Plug>(YankyGPutAfterLinewiseJoined) |  |
|  | <Plug>(YankyGPutAfterLinewise) |  |
|  | <Plug>(YankyGPutAfterJoined) |  |
|  | <Plug>(YankyGPutAfter) |  |
|  | <Plug>(YankyYank) |  |
|  | <C-N> | <Plug>(VM-Find-Subword-Under) |
|  | <Plug>(VM-Visual-Regex) | :call vm#commands#find_by_regex(2)<CR>:call feedkeys('/', 'n')<CR> |
|  | <Plug>(VM-Find-Subword-Under) | <SNR>15_Visual('under') |
|  | <Plug>(VM-Visual-Reduce) | :<C-U>call vm#visual#reduce()<CR> |
|  | <Plug>(VM-Visual-Add) | <Esc>:call vm#commands#visual_add()<CR> |
|  | <Plug>(VM-Visual-Cursors) | <Esc>:call vm#commands#visual_cursors()<CR> |
|  | <Plug>(VM-Visual-All) | <SNR>15_Visual('all') |
|  | <Plug>(VM-Visual-Find) | vm#operators#find(1, 1) |
|  | <Plug>luasnip-expand-repeat |  |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <CR> | <Plug>(wildfire-fuel) |
|  | % | <Plug>(MatchitOperationForward) |
| Flash Treesitter | S |  |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
| Flash | s |  |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
|  | <Plug>(wildfire-quick-select) | :<C-U>call wildfire#QuickSelect(['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR> |
|  | <Plug>(wildfire-fuel) | :<C-U>call wildfire#Start(v:count1, ['ip', 'i)', 'i]', 'i}', 'i''', 'i"', 'it'])<CR> |
|  | <Plug>luasnip-expand-repeat |  |
