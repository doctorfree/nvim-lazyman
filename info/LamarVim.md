## LamarVim Neovim Configuration Information

Personal Neovim configuration of Cassio Lamarck

- Install and initialize: **`lazyman -w LamarVim`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/lazyman/LamarVim`**

### Git repository

[https://github.com/Lamarcke/dotfiles](https://github.com/Lamarcke/dotfiles)

### Dotfyle entry

[https://dotfyle.com/Lamarcke/dotfiles-config-nvim](https://dotfyle.com/Lamarcke/dotfiles-config-nvim)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [LunarVim/bigfile.nvim](https://github.com/LunarVim/bigfile.nvim.git)
- [famiu/bufdelete.nvim](https://github.com/famiu/bufdelete.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [antosha417/nvim-lsp-file-operations](https://github.com/antosha417/nvim-lsp-file-operations)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [pmizio/typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim.git)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### LamarVim Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <Esc> | <Cmd>noh<CR><Esc> |
| Alpha Dashboard |  ; | <Cmd>Alpha<CR> |
| Close buffer |  c | <Cmd>BufferKill<CR> |
| Quit all |  q | <Cmd>qa!<CR> |
| Save all |  w | <Cmd>wa!<CR> |
| No HL Search |  h | <Cmd>nohl<CR> |
| Lazydocker |  sd |  |
| Lazygit |  sg |  |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | D | "_D |
| Show error diagnostics | E |  |
|  | J | mzJ`z |
| Hover | K |  |
|  | S | <Cmd>HopWord<CR> |
| Nvim builtin | Y | y$ |
| Go to previous error | [d |  |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | \\gS | <Plug>(VM-Reselect-Last) |
|  | \\/ | <Plug>(VM-Start-Regex-Search) |
|  | \\\ | <Plug>(VM-Add-Cursor-At-Pos) |
|  | \\A | <Plug>(VM-Select-All) |
| Go to next error | ]d |  |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | d | "_d |
| Show code actions | ga |  |
| Go to type definition | gt |  |
| Show signature help | gs |  |
| Go to declaration | gD |  |
| Go to references | gf |  |
| Go to implementation | gi |  |
| Go to definition | gd |  |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
| Comment insert end of line | gcA |  |
| Comment insert above | gcO |  |
| Comment insert below | gco |  |
| Comment toggle current block | gbc |  |
| Comment toggle current line | gcc |  |
| Comment toggle blockwise | gb | <Plug>(comment_toggle_blockwise) |
| Comment toggle linewise | gc | <Plug>(comment_toggle_linewise) |
|  | j | v:count == 0 ? 'gj' : 'j' |
|  | k | v:count == 0 ? 'gk' : 'k' |
|  | s | <Cmd>HopChar2<CR> |
|  | zb | <Cmd>lua require('neoscroll').zb(250)<CR> |
|  | zt | <Cmd>lua require('neoscroll').zt(250)<CR> |
|  | zz | <Cmd>lua require('neoscroll').zz(250)<CR> |
| Terminal window | <M-F12> | <Cmd>2ToggleTerm size=20 dir=CWD direction=horizontal<CR> |
| Run window | <M-4> | <Cmd>1ToggleTerm size=20 dir=CWD direction=horizontal<CR> |
| File navigation | <M-1> | <Cmd>NvimTreeToggle<CR> |
|  | <M-H> | <Cmd>BufferLineMovePrev<CR> |
|  | <M-L> | <Cmd>BufferLineMoveNext<CR> |
|  | <M-Q> | <Cmd>BufferLineCloseOthers<CR> |
|  | <M-q> | <Cmd>BufferKill<CR> |
|  | <M-c> | <Cmd>BufferLinePick<CR> |
|  | <M-h> | <Cmd>BufferLineCyclePrev<CR> |
|  | <M-l> | <Cmd>BufferLineCycleNext<CR> |
| Increase window width | <C-Right> | <Cmd>vertical resize +2<CR> |
| Decrease window width | <C-Left> | <Cmd>vertical resize -2<CR> |
| Go to upper window | <C-K> | <C-W>k |
| Go to lower window | <C-J> | <C-W>j |
| Go to left window | <C-H> | <C-W>h |
| Move lines | <M-k> | :m .-2<CR>== |
| Move lines | <M-j> | :m .+1<CR>== |
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
| Decrease window height | <C-Down> | <Cmd>resize -2<CR> |
| Increase window height | <C-Up> | <Cmd>resize +2<CR> |
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
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>luasnip-delete-check |  |
| Move to previous reference | <M-p> |  |
| Move to next reference | <M-n> |  |
|  | <C-F> | <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)<CR> |
|  | <C-Y> | <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)<CR> |
|  | <C-U> | <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)<CR> |
|  | <C-D> | <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)<CR> |
|  | <C-E> | <Cmd>lua require('neoscroll').scroll(0.10, false, 100)<CR> |
|  | <C-B> | <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
| Go to right window | <C-L> | <C-W>l |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Alpha Dashboard |  ; | <Cmd>Alpha<CR> |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | <lt> | <lt>gv |
|  | > | >gv |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | \\c | <Plug>(VM-Visual-Cursors) |
|  | \\a | <Plug>(VM-Visual-Add) |
|  | \\f | <Plug>(VM-Visual-Find) |
|  | \\/ | <Plug>(VM-Visual-Regex) |
|  | \\A | <Plug>(VM-Visual-All) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
| Comment toggle blockwise (visual) | gb | <Plug>(comment_toggle_blockwise_visual) |
| Comment toggle linewise (visual) | gc | <Plug>(comment_toggle_linewise_visual) |
|  | zt | <Cmd>lua require('neoscroll').zt(250)<CR> |
|  | zz | <Cmd>lua require('neoscroll').zz(250)<CR> |
|  | zb | <Cmd>lua require('neoscroll').zb(250)<CR> |
| Terminal window | <M-F12> | <Cmd>2ToggleTerm size=20 dir=CWD direction=horizontal<CR> |
| Run window | <M-4> | <Cmd>1ToggleTerm size=20 dir=CWD direction=horizontal<CR> |
| Move lines | <M-k> | :m '<lt>-2<CR>gv=gv |
| Move lines | <M-j> | :m '>+1<CR>gv=gv |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
|  | <C-F> | <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)<CR> |
|  | <C-E> | <Cmd>lua require('neoscroll').scroll(0.10, false, 100)<CR> |
|  | <C-B> | <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)<CR> |
|  | <C-Y> | <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)<CR> |
|  | <C-U> | <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)<CR> |
|  | <C-D> | <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)<CR> |
|  | <M-i> |  |
|  | <C-N> | <Plug>(VM-Find-Subword-Under) |
|  | <Plug>(VM-Visual-Regex) | :call vm#commands#find_by_regex(2)<CR>:call feedkeys('/', 'n')<CR> |
|  | <Plug>(VM-Find-Subword-Under) | <SNR>22_Visual('under') |
|  | <Plug>(VM-Visual-Reduce) | :<C-U>call vm#visual#reduce()<CR> |
|  | <Plug>(VM-Visual-Add) | <Esc>:call vm#commands#visual_add()<CR> |
|  | <Plug>(VM-Visual-Cursors) | <Esc>:call vm#commands#visual_cursors()<CR> |
|  | <Plug>(VM-Visual-All) | <SNR>22_Visual('all') |
|  | <Plug>(VM-Visual-Find) | vm#operators#find(1, 1) |
|  | <Plug>luasnip-expand-repeat |  |
| Comment toggle blockwise (visual) | <Plug>(comment_toggle_blockwise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR> |
| Comment toggle linewise (visual) | <Plug>(comment_toggle_linewise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Alpha Dashboard |  ; | <Cmd>Alpha<CR> |
|  | % | <Plug>(MatchitOperationForward) |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
| Terminal window | <M-F12> | <Cmd>2ToggleTerm size=20 dir=CWD direction=horizontal<CR> |
| Run window | <M-4> | <Cmd>1ToggleTerm size=20 dir=CWD direction=horizontal<CR> |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
|  | <M-i> |  |
|  | <Plug>luasnip-expand-repeat |  |
