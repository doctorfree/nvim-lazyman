## Roiz Neovim Configuration Information

Just a random Neovim config found on Github, works well

- Install and initialize: **`lazyman -w Roiz`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Roiz`**

### Git repository

[https://github.com/MrRoiz/rnvim](https://github.com/MrRoiz/rnvim)

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
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [rmagatti/goto-preview](https://github.com/rmagatti/goto-preview)
- [NMAC427/guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.cursorword](https://github.com/echasnovski/mini.cursorword.git)
- [echasnovski/mini.move](https://github.com/echasnovski/mini.move.git)
- [Shatur/neovim-ayu](https://github.com/Shatur/neovim-ayu)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [petertriho/nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar.git)
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre.git)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons.git)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- [pwntester/octo.nvim](https://github.com/pwntester/octo.nvim)
- [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [kevinhwang91/promise-async](https://github.com/kevinhwang91/promise-async)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### Roiz Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Move line right | <code>&lt;Tab&gt;</code> | <code>&lt;Cmd&gt;lua MiniMove.move_line('right')&lt;CR&gt;</code> |
| Resume PR review | <code> orr</code> | <code>:Octo review resume&lt;CR&gt;</code> |
| Reload current PR | <code> opr</code> | <code>:Octo pr reload&lt;CR&gt;</code> |
| List PR's | <code> opl</code> | <code>:Octo pr list initial_mode=normal&lt;CR&gt;</code> |
| Submit PR review | <code> orss</code> | <code>:Octo review submit&lt;CR&gt;</code> |
| Start PR review | <code> ors</code> | <code>:Octo review start&lt;CR&gt;</code> |
| Close current review | <code> orc</code> | <code>:Octo review close&lt;CR&gt;</code> |
| Open diffview | <code> dv</code> | <code>:DiffviewOpen&lt;CR&gt;</code> |
| Show current file history | <code> dch</code> | <code>:DiffviewFileHistory %&lt;CR&gt;</code> |
| Show Commit history with changes | <code> dh</code> | <code>:DiffviewFileHistory&lt;CR&gt;</code> |
| Close diffview | <code> dcc</code> | <code>:DiffviewClose&lt;CR&gt;</code> |
| Show git status | <code> gst</code> | <code>:Telescope git_status initial_mode=normal&lt;CR&gt;</code> |
| Open Telescope Keymaps | <code> k</code> | <code>:Telescope keymaps&lt;CR&gt;</code> |
| Show git branches | <code> gb</code> | <code>:Telescope git_branches initial_mode=normal&lt;CR&gt;</code> |
| Show git log | <code> glo</code> | <code>:Telescope git_commits initial_mode=normal&lt;CR&gt;</code> |
| Open Telescope live_grep | <code> fg</code> | <code>:Telescope live_grep&lt;CR&gt;</code> |
| Open Telescope | <code> ff</code> | <code>:Telescope find_files&lt;CR&gt;</code> |
| Select all | <code> a</code> | <code>ggvG&lt;S-End&gt;</code> |
| Test keymap | <code> test</code> | <code>:echo 'This is a test keymap!'&lt;CR&gt;</code> |
| Open Spectre | <code> ss</code> | <code>:lua require('spectre').open()&lt;CR&gt;</code> |
| Search on current file with Spectre | <code> sf</code> | <code>:lua require('spectre').open_file_search({select_word=true})&lt;CR&gt;</code> |
| Search current word with Spectre | <code> sw</code> | <code>:lua require('spectre').open_visual({select_word=true})&lt;CR&gt;</code> |
| Open a floating term | <code> tt</code> | <code>:ToggleTerm direction=float&lt;CR&gt;</code> |
| Where am I | <code> wai</code> | <code>:echo expand('%:p')&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| go to the beggining of the line | <code>B</code> | <code>^</code> |
| go to the end of the line | <code>E</code> | <code>$</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>\\gS</code> | <code>&lt;Plug&gt;(VM-Reselect-Last)</code> |
|  | <code>\\/</code> | <code>&lt;Plug&gt;(VM-Start-Regex-Search)</code> |
|  | <code>\\\</code> | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |
|  | <code>\\A</code> | <code>&lt;Plug&gt;(VM-Select-All)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| Clear search highlight | <code>_</code> | <code>:noh&lt;CR&gt;</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
| Comment toggle blockwise | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
| Close preview windows | <code>gP</code> |  |
| Preview references | <code>gpr</code> |  |
| Preview implementation | <code>gpi</code> |  |
| Preview type definition | <code>gpt</code> |  |
| Preview definition | <code>gpd</code> |  |
| Close all folds | <code>zM</code> |  |
| Open all folds | <code>zR</code> |  |
| Move up faster | <code>&lt;C-K&gt;</code> | <code>10k</code> |
| Quit Nvim | <code>&lt;C-Q&gt;</code> | <code>:q&lt;CR&gt;</code> |
| Move down faster | <code>&lt;C-J&gt;</code> | <code>10j</code> |
| Format file | <code>&lt;M-F&gt;</code> | <code>:lua vim.lsp.buf.format({ timeout_ms = 5000 })&lt;CR&gt;</code> |
| Move to the next buffer | <code>&lt;M-l&gt;</code> | <code>:BufferLineCycleNext&lt;CR&gt;</code> |
| Close current buffer | <code>&lt;M-w&gt;</code> | <code>:bd&lt;CR&gt;</code> |
| Move to the previous buffer | <code>&lt;M-h&gt;</code> | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |
| Save current file | <code>&lt;C-S&gt;</code> | <code>:w&lt;CR&gt;</code> |
| Open Nvimtree | <code>&lt;C-B&gt;</code> | <code>:NvimTreeFindFileToggle&lt;CR&gt;</code> |
| Update buffer | <code>&lt;F5&gt;</code> | <code>:bufdo e!&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
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
| Move line up | <code>&lt;M-k&gt;</code> | <code>&lt;Cmd&gt;lua MiniMove.move_line('up')&lt;CR&gt;</code> |
| Move line down | <code>&lt;M-j&gt;</code> | <code>&lt;Cmd&gt;lua MiniMove.move_line('down')&lt;CR&gt;</code> |
| Move line left | <code>&lt;S-Tab&gt;</code> | <code>&lt;Cmd&gt;lua MiniMove.move_line('left')&lt;CR&gt;</code> |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |
| Close current buffer | <code>æ</code> | <code>:bd&lt;CR&gt;</code> |
| Move to the previous buffer | <code>™</code> | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |
| Format file | <code>ﬁ</code> | <code>:lua vim.lsp.buf.format({ timeout_ms = 5000 })&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Move right | <code>&lt;Tab&gt;</code> | <code>&lt;Cmd&gt;lua MiniMove.move_selection('right')&lt;CR&gt;</code> |
| Search on current file with Spectre | <code> sw</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require('spectre').open_visual()&lt;CR&gt;</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>\\c</code> | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> |
|  | <code>\\a</code> | <code>&lt;Plug&gt;(VM-Visual-Add)</code> |
|  | <code>\\f</code> | <code>&lt;Plug&gt;(VM-Visual-Find)</code> |
|  | <code>\\/</code> | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> |
|  | <code>\\A</code> | <code>&lt;Plug&gt;(VM-Visual-All)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| Move up faster | <code>&lt;C-K&gt;</code> | <code>10k</code> |
| Move down faster | <code>&lt;C-J&gt;</code> | <code>10j</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;C-N&gt;</code> | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> | <code>:call vm#commands#find_by_regex(2)&lt;CR&gt;:call feedkeys('/', 'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> | <code>&lt;SNR&gt;19_Visual('under')</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Reduce)</code> | <code>:&lt;C-U&gt;call vm#visual#reduce()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Add)</code> | <code>&lt;Esc&gt;:call vm#commands#visual_add()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> | <code>&lt;Esc&gt;:call vm#commands#visual_cursors()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-All)</code> | <code>&lt;SNR&gt;19_Visual('all')</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Find)</code> | <code>vm#operators#find(1, 1)</code> |
| Move up | <code>&lt;M-k&gt;</code> | <code>&lt;Cmd&gt;lua MiniMove.move_selection('up')&lt;CR&gt;</code> |
| Move down | <code>&lt;M-j&gt;</code> | <code>&lt;Cmd&gt;lua MiniMove.move_selection('down')&lt;CR&gt;</code> |
| Move left | <code>&lt;S-Tab&gt;</code> | <code>&lt;Cmd&gt;lua MiniMove.move_selection('left')&lt;CR&gt;</code> |
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
