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
| Move line right | `<Tab>` | `<Cmd>lua MiniMove.move_line('right')<CR>` |
| Test keymap | ` test` | `:echo 'This is a test keymap!'<CR>` |
| Select all | ` a` | `ggvG<S-End>` |
| Where am I | ` wai` | `:echo expand('%:p')<CR>` |
| Open Telescope Keymaps | ` k` | `:Telescope keymaps<CR>` |
| Show git branches | ` gb` | `:Telescope git_branches initial_mode=normal<CR>` |
| Show git log | ` glo` | `:Telescope git_commits initial_mode=normal<CR>` |
| Open Telescope live_grep | ` fg` | `:Telescope live_grep<CR>` |
| Open Telescope | ` ff` | `:Telescope find_files<CR>` |
| Show git status | ` gst` | `:Telescope git_status initial_mode=normal<CR>` |
| List PR's | ` opl` | `:Octo pr list initial_mode=normal<CR>` |
| Submit PR review | ` orss` | `:Octo review submit<CR>` |
| Start PR review | ` ors` | `:Octo review start<CR>` |
| Close current review | ` orc` | `:Octo review close<CR>` |
| Resume PR review | ` orr` | `:Octo review resume<CR>` |
| Reload current PR | ` opr` | `:Octo pr reload<CR>` |
| Open a floating term | ` tt` | `:ToggleTerm direction=float<CR>` |
| Open Spectre | ` ss` | `:lua require('spectre').open()<CR>` |
| Search on current file with Spectre | ` sf` | `:lua require('spectre').open_file_search({select_word=true})<CR>` |
| Search current word with Spectre | ` sw` | `:lua require('spectre').open_visual({select_word=true})<CR>` |
| Close diffview | ` dcc` | `:DiffviewClose<CR>` |
| Open diffview | ` dv` | `:DiffviewOpen<CR>` |
| Show current file history | ` dch` | `:DiffviewFileHistory %<CR>` |
| Show Commit history with changes | ` dh` | `:DiffviewFileHistory<CR>` |
|  | `%` | `<Plug>(MatchitNormalForward)` |
| Nvim builtin | `&` | `:&&<CR>` |
| go to the beggining of the line | `B` | `^` |
| go to the end of the line | `E` | `$` |
| Nvim builtin | `Y` | `y$` |
|  | `[%` | `<Plug>(MatchitNormalMultiBackward)` |
|  | `\\gS` | `<Plug>(VM-Reselect-Last)` |
|  | `\\/` | `<Plug>(VM-Start-Regex-Search)` |
|  | `\\\` | `<Plug>(VM-Add-Cursor-At-Pos)` |
|  | `\\A` | `<Plug>(VM-Select-All)` |
|  | `]%` | `<Plug>(MatchitNormalMultiForward)` |
| Clear search highlight | `_` | `:noh<CR>` |
|  | `gx` | `<Plug>NetrwBrowseX` |
|  | `g%` | `<Plug>(MatchitNormalBackward)` |
| Comment insert end of line | `gcA` |  |
| Comment insert above | `gcO` |  |
| Comment insert below | `gco` |  |
| Comment toggle current block | `gbc` |  |
| Comment toggle current line | `gcc` |  |
| Comment toggle blockwise | `gb` | `<Plug>(comment_toggle_blockwise)` |
| Comment toggle linewise | `gc` | `<Plug>(comment_toggle_linewise)` |
| Close preview windows | `gP` |  |
| Preview references | `gpr` |  |
| Preview implementation | `gpi` |  |
| Preview type definition | `gpt` |  |
| Preview definition | `gpd` |  |
| Open all folds | `zR` |  |
| Close all folds | `zM` |  |
| Save current file | `<C-S>` | `:w<CR>` |
| Update buffer | `<F5>` | `:bufdo e!<CR>` |
| Close current buffer | `<M-w>` | `:bd<CR>` |
| Move to the previous buffer | `<M-h>` | `:BufferLineCyclePrev<CR>` |
| Move to the next buffer | `<M-l>` | `:BufferLineCycleNext<CR>` |
| Format file | `<M-F>` | `:lua vim.lsp.buf.format({ timeout_ms = 5000 })<CR>` |
| Open Nvimtree | `<C-B>` | `:NvimTreeFindFileToggle<CR>` |
| Move up faster | `<C-K>` | `10k` |
| Quit Nvim | `<C-Q>` | `:q<CR>` |
| Move down faster | `<C-J>` | `10j` |
|  | `<Plug>NetrwBrowseX` | `:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR>` |
|  | `<Plug>(MatchitNormalMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>` |
|  | `<Plug>(MatchitNormalMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>` |
|  | `<Plug>(MatchitNormalBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'n')<CR>` |
|  | `<Plug>(MatchitNormalForward)` | `:<C-U>call matchit#Match_wrapper('',1,'n')<CR>` |
| Move line up | `<M-k>` | `<Cmd>lua MiniMove.move_line('up')<CR>` |
| Move line down | `<M-j>` | `<Cmd>lua MiniMove.move_line('down')<CR>` |
| Move line left | `<S-Tab>` | `<Cmd>lua MiniMove.move_line('left')<CR>` |
|  | `<C-Down>` | `<Plug>(VM-Add-Cursor-Down)` |
|  | `<C-Up>` | `<Plug>(VM-Add-Cursor-Up)` |
|  | `<S-Right>` | `<Plug>(VM-Select-l)` |
|  | `<S-Left>` | `<Plug>(VM-Select-h)` |
|  | `<C-N>` | `<Plug>(VM-Find-Under)` |
|  | `<Plug>(VM-Select-BBW)` | `:<C-U>call vm#commands#motion('BBW', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-gE)` | `:<C-U>call vm#commands#motion('gE', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-ge)` | `:<C-U>call vm#commands#motion('ge', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-E)` | `:<C-U>call vm#commands#motion('E', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-e)` | `:<C-U>call vm#commands#motion('e', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-B)` | `:<C-U>call vm#commands#motion('B', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-b)` | `:<C-U>call vm#commands#motion('b', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-W)` | `:<C-U>call vm#commands#motion('W', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-w)` | `:<C-U>call vm#commands#motion('w', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-l)` | `:<C-U>call vm#commands#motion('l', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-k)` | `:<C-U>call vm#commands#motion('k', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-j)` | `:<C-U>call vm#commands#motion('j', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Select-h)` | `:<C-U>call vm#commands#motion('h', v:count1, 1, 0)<CR>` |
|  | `<Plug>(VM-Mouse-Column)` | `:call vm#commands#mouse_column()<CR>` |
|  | `<Plug>(VM-Mouse-Word)` | `<Plug>(VM-Left-Mouse)<Plug>(VM-Find-Under)` |
|  | `<Plug>(VM-Mouse-Cursor)` | `<Plug>(VM-Left-Mouse)<Plug>(VM-Add-Cursor-At-Pos)` |
|  | `<Plug>(VM-Left-Mouse)` | `<LeftMouse>` |
|  | `<Plug>(VM-Slash-Search)` | `@=vm#commands#find_by_regex(3)<CR>` |
|  | `<Plug>(VM-Start-Regex-Search)` | `@=vm#commands#find_by_regex(1)<CR>` |
|  | `<Plug>(VM-Find-Under)` | `:<C-U>call vm#commands#ctrln(v:count1)<CR>` |
|  | `<Plug>(VM-Select-All)` | `:call vm#commands#find_all(0, 1)<CR>` |
|  | `<Plug>(VM-Reselect-Last)` | `:call vm#commands#reselect_last()<CR>` |
|  | `<Plug>(VM-Select-Cursor-Up)` | `:<C-U>call vm#commands#add_cursor_up(1, v:count1)<CR>` |
|  | `<Plug>(VM-Select-Cursor-Down)` | `:<C-U>call vm#commands#add_cursor_down(1, v:count1)<CR>` |
|  | `<Plug>(VM-Add-Cursor-Up)` | `:<C-U>call vm#commands#add_cursor_up(0, v:count1)<CR>` |
|  | `<Plug>(VM-Add-Cursor-Down)` | `:<C-U>call vm#commands#add_cursor_down(0, v:count1)<CR>` |
|  | `<Plug>(VM-Add-Cursor-At-Word)` | `:call vm#commands#add_cursor_at_word(1, 1)<CR>` |
|  | `<Plug>(VM-Add-Cursor-At-Pos)` | `:call vm#commands#add_cursor_at_pos(0)<CR>` |
| Comment toggle blockwise with count | `<Plug>(comment_toggle_blockwise_count)` |  |
| Comment toggle linewise with count | `<Plug>(comment_toggle_linewise_count)` |  |
| Comment toggle current block | `<Plug>(comment_toggle_blockwise_current)` |  |
| Comment toggle current line | `<Plug>(comment_toggle_linewise_current)` |  |
| Comment toggle blockwise | `<Plug>(comment_toggle_blockwise)` |  |
| Comment toggle linewise | `<Plug>(comment_toggle_linewise)` |  |
|  | `<Plug>PlenaryTestFile` | `:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR>` |
| Nvim builtin | `<C-L>` | `<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>` |
| Close current buffer | `æ` | `:bd<CR>` |
| Move to the previous buffer | `™` | `:BufferLineCyclePrev<CR>` |
| Format file | `ﬁ` | `:lua vim.lsp.buf.format({ timeout_ms = 5000 })<CR>` |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Move right | `<Tab>` | `<Cmd>lua MiniMove.move_selection('right')<CR>` |
| Search on current file with Spectre | ` sw` | `<Esc><Cmd>lua require('spectre').open_visual()<CR>` |
| Nvim builtin | `#` | `y?\V<C-R>"<CR>` |
|  | `%` | `<Plug>(MatchitVisualForward)` |
| Nvim builtin | `*` | `y/\V<C-R>"<CR>` |
|  | `[%` | `<Plug>(MatchitVisualMultiBackward)` |
|  | `\\c` | `<Plug>(VM-Visual-Cursors)` |
|  | `\\a` | `<Plug>(VM-Visual-Add)` |
|  | `\\f` | `<Plug>(VM-Visual-Find)` |
|  | `\\/` | `<Plug>(VM-Visual-Regex)` |
|  | `\\A` | `<Plug>(VM-Visual-All)` |
|  | `]%` | `<Plug>(MatchitVisualMultiForward)` |
|  | `a%` | `<Plug>(MatchitVisualTextObject)` |
|  | `gx` | `<Plug>NetrwBrowseXVis` |
|  | `g%` | `<Plug>(MatchitVisualBackward)` |
| Comment toggle blockwise (visual) | `gb` | `<Plug>(comment_toggle_blockwise_visual)` |
| Comment toggle linewise (visual) | `gc` | `<Plug>(comment_toggle_linewise_visual)` |
| Move up faster | `<C-K>` | `10k` |
| Move down faster | `<C-J>` | `10j` |
|  | `<Plug>NetrwBrowseXVis` | `:<C-U>call netrw#BrowseXVis()<CR>` |
|  | `<Plug>(MatchitVisualTextObject)` | `<Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)` |
|  | `<Plug>(MatchitVisualMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``` |
|  | `<Plug>(MatchitVisualForward)` | `:<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv``` |
|  | `<C-N>` | `<Plug>(VM-Find-Subword-Under)` |
|  | `<Plug>(VM-Visual-Regex)` | `:call vm#commands#find_by_regex(2)<CR>:call feedkeys('/', 'n')<CR>` |
|  | `<Plug>(VM-Find-Subword-Under)` | `<SNR>20_Visual('under')` |
|  | `<Plug>(VM-Visual-Reduce)` | `:<C-U>call vm#visual#reduce()<CR>` |
|  | `<Plug>(VM-Visual-Add)` | `<Esc>:call vm#commands#visual_add()<CR>` |
|  | `<Plug>(VM-Visual-Cursors)` | `<Esc>:call vm#commands#visual_cursors()<CR>` |
|  | `<Plug>(VM-Visual-All)` | `<SNR>20_Visual('all')` |
|  | `<Plug>(VM-Visual-Find)` | `vm#operators#find(1, 1)` |
| Comment toggle blockwise (visual) | `<Plug>(comment_toggle_blockwise_visual)` | `<Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR>` |
| Comment toggle linewise (visual) | `<Plug>(comment_toggle_linewise_visual)` | `<Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR>` |
| Move up | `<M-k>` | `<Cmd>lua MiniMove.move_selection('up')<CR>` |
| Move down | `<M-j>` | `<Cmd>lua MiniMove.move_selection('down')<CR>` |
| Move left | `<S-Tab>` | `<Cmd>lua MiniMove.move_selection('left')<CR>` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | `%` | `<Plug>(MatchitOperationForward)` |
|  | `[%` | `<Plug>(MatchitOperationMultiBackward)` |
|  | `]%` | `<Plug>(MatchitOperationMultiForward)` |
|  | `g%` | `<Plug>(MatchitOperationBackward)` |
|  | `<Plug>(MatchitOperationMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "o")<CR>` |
|  | `<Plug>(MatchitOperationMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "o")<CR>` |
|  | `<Plug>(MatchitOperationBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'o')<CR>` |
|  | `<Plug>(MatchitOperationForward)` | `:<C-U>call matchit#Match_wrapper('',1,'o')<CR>` |
