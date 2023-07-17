## Elianiva Neovim Configuration Information

Personal Neovim configuration of Dicha Zelianivan Arkana

- Install and initialize: `lazyman -w Elianiva`
- Configuration category: [Personal](https://github.com/doctorfree/nvim-lazyman#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  `~/.config/nvim-Elianiva`

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/elianiva/dotfiles](https://github.com/elianiva/dotfiles)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [hrsh7th/cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip)
- [gpanders/editorconfig.nvim](https://github.com/gpanders/editorconfig.nvim.git)
- [feline-nvim/feline.nvim](https://github.com/feline-nvim/feline.nvim)
- [ruifm/gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [yorickpeterse/nvim-pqf](https://gitlab.com/yorickpeterse/nvim-pqf)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [AndrewRadev/splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim.git)
- [tami5/sqlite.lua](https://github.com/tami5/sqlite.lua)
- [tweekmonster/startuptime.vim](https://github.com/tweekmonster/startuptime.vim.git)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [machakann/vim-sandwich](https://github.com/machakann/vim-sandwich.git)
- [mhinz/vim-sayonara](https://github.com/mhinz/vim-sayonara.git)
- [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
- [Mofiqul/vscode.nvim](https://github.com/Mofiqul/vscode.nvim.git)

### Elianiva Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  gy | <Cmd>lua require'gitlinker'.get_buf_range_url('n')<CR> |
|  |  c |  |
|  |  w |  |
|  | % | <Plug>(matchup-%) |
| Nvim builtin | & | :&&<CR> |
| Keeps jumplist after forward searching | / | ms/ |
| Keeps jumplist after backward searching | ? | ms? |
| Better backward N behaviour | N | "nN"[v:searchforward] |
| Remove annoying exmode | Q |  |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(matchup-[%) |
| Open scratch buffer | \v |  |
| Toggle search highlight | \n | <Cmd>nohl<CR> |
| Run file using Deno | \rd | <Cmd>!NO_COLOR=true deno run %<CR> |
| Run file using Node | \rn | <Cmd>!node %<CR> |
| Run Lua file | \rl | <Cmd>luafile %<CR> |
|  | ]% | <Plug>(matchup-]%) |
|  | gS | :<C-U>call <SNR>21_Mapping(g:splitjoin_split_mapping, "sj#Split")<CR> |
|  | gJ | :<C-U>call <SNR>21_Mapping(g:splitjoin_join_mapping, "sj#Join")<CR> |
|  | g% | <Plug>(matchup-g%) |
| Move down by visual line on wrapped lines | j | gj |
| Move up by visual line on wrapped lines | k | gk |
| Better forward N behaviour | n | "Nn"[v:searchforward] |
| Remove annoying exmode | q: |  |
|  | srb | <Plug>(sandwich-replace-auto) |
|  | sr | <Plug>(sandwich-replace) |
|  | sdb | <Plug>(sandwich-delete-auto) |
|  | sd | <Plug>(sandwich-delete) |
|  | sa | <Plug>(sandwich-add) |
|  | z% | <Plug>(matchup-z%) |
|  | <M-k> | <Cmd>Sayonara<CR> |
|  | <M-j> | <Cmd>Sayonara!<CR> |
|  | <Plug>(textobj-sandwich-literal-query-a) | textobj#sandwich#query('n', 'a', {}, []) |
|  | <Plug>(textobj-sandwich-literal-query-i) | textobj#sandwich#query('n', 'i', {}, []) |
|  | <Plug>(textobj-sandwich-query-a) | textobj#sandwich#query('n', 'a') |
|  | <Plug>(textobj-sandwich-query-i) | textobj#sandwich#query('n', 'i') |
|  | <Plug>(textobj-sandwich-auto-a) | textobj#sandwich#auto('n', 'a') |
|  | <Plug>(textobj-sandwich-auto-i) | textobj#sandwich#auto('n', 'i') |
|  | <Plug>(sandwich-replace-auto) | <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a) |
|  | <Plug>(sandwich-delete-auto) | <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a) |
|  | <Plug>(sandwich-replace) | <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a) |
|  | <Plug>(sandwich-delete) | <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a) |
|  | <Plug>(sandwich-add) | <Plug>(operator-sandwich-add) |
|  | <Plug>(operator-sandwich-gv) | gv |
|  | <Plug>(operator-sandwich-g@) | g@ |
|  | <Plug>(operator-sandwich-replace-visualrepeat) | :<C-U>call operator#sandwich#visualrepeat('replace')<CR> |
|  | <Plug>(operator-sandwich-delete-visualrepeat) | :<C-U>call operator#sandwich#visualrepeat('delete')<CR> |
|  | <Plug>(operator-sandwich-add-visualrepeat) | :<C-U>call operator#sandwich#visualrepeat('add')<CR> |
|  | <Plug>(operator-sandwich-dot) | operator#sandwich#dot() |
|  | <Plug>(operator-sandwich-predot) | operator#sandwich#predot() |
|  | <Plug>(operator-sandwich-replace-query1st) | :<C-U>call operator#sandwich#query1st('replace', 'n')<CR> |
|  | <Plug>(operator-sandwich-add-query1st) | :<C-U>call operator#sandwich#query1st('add', 'n')<CR> |
|  | <Plug>(operator-sandwich-replace-pre) | :<C-U>call operator#sandwich#prerequisite('replace', 'n')<CR> |
|  | <Plug>(operator-sandwich-delete-pre) | :<C-U>call operator#sandwich#prerequisite('delete', 'n')<CR> |
|  | <Plug>(operator-sandwich-add-pre) | :<C-U>call operator#sandwich#prerequisite('add', 'n')<CR> |
|  | <Plug>(operator-sandwich-replace) | <Plug>(operator-sandwich-replace-pre)<Plug>(operator-sandwich-g@) |
|  | <Plug>(operator-sandwich-delete) | <Plug>(operator-sandwich-delete-pre)<Plug>(operator-sandwich-g@) |
|  | <Plug>(operator-sandwich-add) | <Plug>(operator-sandwich-add-pre)<Plug>(operator-sandwich-g@) |
|  | <Plug>(EasyAlignOperator) | :set opfunc=<SNR>22_easy_align_op<CR>g@ |
|  | <Plug>(EasyAlignRepeat) | :call <SNR>22_easy_align_repeat()<CR> |
|  | <Plug>(LiveEasyAlign) | :set opfunc=<SNR>22_live_easy_align_op<CR>g@ |
|  | <Plug>(EasyAlign) | :set opfunc=<SNR>22_easy_align_op<CR>g@ |
|  | <Plug>SplitjoinJoin | :<C-U>call sj#Join()<CR> |
|  | <Plug>SplitjoinSplit | :<C-U>call sj#Split()<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <2-LeftMouse> | <Plug>(matchup-double-click) |
|  | <Plug>(matchup-reload) | :<C-U>MatchupReload<CR> |
|  | <Plug>(matchup-double-click) | :<C-U>call matchup#text_obj#double_click()<CR> |
|  | <Plug>(matchup-Z%) | :<C-U>call matchup#motion#jump_inside_prev(0)<CR> |
|  | <Plug>(matchup-z%) | :<C-U>call matchup#motion#jump_inside(0)<CR> |
|  | <Plug>(matchup-[%) | :<C-U>call matchup#motion#find_unmatched(0, 0)<CR> |
|  | <Plug>(matchup-]%) | :<C-U>call matchup#motion#find_unmatched(0, 1)<CR> |
|  | <Plug>(matchup-g%) | :<C-U>call matchup#motion#find_matching_pair(0, 0)<CR> |
|  | <Plug>(matchup-%) | :<C-U>call matchup#motion#find_matching_pair(0, 1)<CR> |
|  | <SNR>11_(wise) | empty(g:v_motion_force) ? 'v' : g:v_motion_force |
|  | <Plug>(matchup-hi-surround) | :<C-U>call matchup#matchparen#highlight_surrounding()<CR> |
| Toggle whitespace stripping | <F2> |  |
| Go to next buffer | <M-l> | <Cmd>bn<CR> |
| Go to previous buffer | <M-h> | <Cmd>bp<CR> |
| Resize buffer to the bottom | <Down> | :resize -2<CR> |
| Resize buffer to the top | <Up> | :resize +2<CR> |
| Resize buffer to the right | <Right> | :vertical resize -2<CR> |
| Resize buffer to the left | <Left> | :vertical resize +2<CR> |
| Go to the top window | <C-K> | <C-W><C-K> |
| Go to the bottom window | <C-J> | <C-W><NL> |
| Go to the left window | <C-H> | <C-W><C-H> |
| Toggle NeoTree | <C-N> | <Cmd>NeoTreeRevealToggle<CR> |
| Go to the right window | <C-L> | <C-W><C-L> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  gy | <Cmd>lua require'gitlinker'.get_buf_range_url('v')<CR> |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(matchup-%) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
| Dedent current selection | <lt> | <lt>gv |
| Indent current selection | > | >gv |
|  | [% | <Plug>(matchup-[%) |
|  | ]% | <Plug>(matchup-]%) |
|  | as | <Plug>(textobj-sandwich-query-a) |
|  | ab | <Plug>(textobj-sandwich-auto-a) |
|  | a% | <Plug>(matchup-a%) |
|  | ga | <Plug>(EasyAlign) |
|  | g% | <Plug>(matchup-g%) |
|  | is | <Plug>(textobj-sandwich-query-i) |
|  | ib | <Plug>(textobj-sandwich-auto-i) |
|  | i% | <Plug>(matchup-i%) |
|  | sr | <Plug>(sandwich-replace) |
|  | sd | <Plug>(sandwich-delete) |
|  | sa | <Plug>(sandwich-add) |
|  | z% | <Plug>(matchup-z%) |
|  | <Plug>(textobj-sandwich-literal-query-a) | textobj#sandwich#query('x', 'a', {}, []) |
|  | <Plug>(textobj-sandwich-literal-query-i) | textobj#sandwich#query('x', 'i', {}, []) |
|  | <Plug>(textobj-sandwich-query-a) | textobj#sandwich#query('x', 'a') |
|  | <Plug>(textobj-sandwich-query-i) | textobj#sandwich#query('x', 'i') |
|  | <Plug>(textobj-sandwich-auto-a) | textobj#sandwich#auto('x', 'a') |
|  | <Plug>(textobj-sandwich-auto-i) | textobj#sandwich#auto('x', 'i') |
|  | <Plug>(sandwich-replace) | <Plug>(operator-sandwich-replace) |
|  | <Plug>(sandwich-delete) | <Plug>(operator-sandwich-delete) |
|  | <Plug>(sandwich-add) | <Plug>(operator-sandwich-add) |
|  | <Plug>(textobj-sandwich-tag-a) | :<C-U>call sandwich#magicchar#t#at()<CR> |
|  | <Plug>(textobj-sandwich-tag-i) | :<C-U>call sandwich#magicchar#t#it()<CR> |
|  | <Plug>(textobj-sandwich-tagname-a) | :<C-U>call sandwich#magicchar#t#a()<CR> |
|  | <Plug>(textobj-sandwich-tagname-i) | :<C-U>call sandwich#magicchar#t#i()<CR> |
|  | <Plug>(textobj-sandwich-function-a) | :<C-U>call sandwich#magicchar#f#a('x')<CR> |
|  | <Plug>(textobj-sandwich-function-ap) | :<C-U>call sandwich#magicchar#f#ap('x')<CR> |
|  | <Plug>(textobj-sandwich-function-i) | :<C-U>call sandwich#magicchar#f#i('x')<CR> |
|  | <Plug>(textobj-sandwich-function-ip) | :<C-U>call sandwich#magicchar#f#ip('x')<CR> |
|  | <Plug>(operator-sandwich-g@) | g@ |
|  | <Plug>(operator-sandwich-replace-visualrepeat) | :<C-U>call operator#sandwich#visualrepeat('replace')<CR> |
|  | <Plug>(operator-sandwich-delete-visualrepeat) | :<C-U>call operator#sandwich#visualrepeat('delete')<CR> |
|  | <Plug>(operator-sandwich-add-visualrepeat) | :<C-U>call operator#sandwich#visualrepeat('add')<CR> |
|  | <Plug>(operator-sandwich-replace-query1st) | <Esc>:call operator#sandwich#query1st('replace', 'x')<CR> |
|  | <Plug>(operator-sandwich-add-query1st) | <Esc>:call operator#sandwich#query1st('add', 'x')<CR> |
|  | <Plug>(operator-sandwich-replace-pre) | <Esc>:call operator#sandwich#prerequisite('replace', 'x')<CR> |
|  | <Plug>(operator-sandwich-delete-pre) | <Esc>:call operator#sandwich#prerequisite('delete', 'x')<CR> |
|  | <Plug>(operator-sandwich-add-pre) | <Esc>:call operator#sandwich#prerequisite('add', 'x')<CR> |
|  | <Plug>(operator-sandwich-replace) | <Plug>(operator-sandwich-replace-pre)<Plug>(operator-sandwich-gv)<Plug>(operator-sandwich-g@) |
|  | <Plug>(operator-sandwich-delete) | <Plug>(operator-sandwich-delete-pre)<Plug>(operator-sandwich-gv)<Plug>(operator-sandwich-g@) |
|  | <Plug>(operator-sandwich-add) | <Plug>(operator-sandwich-add-pre)<Plug>(operator-sandwich-gv)<Plug>(operator-sandwich-g@) |
|  | <Plug>(EasyAlignRepeat) | :<C-U>call <SNR>26_repeat_in_visual()<CR> |
|  | <Plug>(LiveEasyAlign) | :<C-U>call <SNR>26_live_easy_align_op(visualmode(), 1)<CR> |
|  | <Plug>(EasyAlign) | :<C-U>call <SNR>26_easy_align_op(visualmode(), 1)<CR> |
|  | <Plug>(matchup-a%) | :<C-U>call matchup#text_obj#delimited(0, 1, 'delim_all')<CR> |
|  | <Plug>(matchup-i%) | :<C-U>call matchup#text_obj#delimited(1, 1, 'delim_all')<CR> |
|  | <Plug>(matchup-Z%) | <SNR>12_(matchup-Z%) |
|  | <SNR>12_(matchup-Z%) | :<C-U>call matchup#motion#jump_inside_prev(1)<CR> |
|  | <Plug>(matchup-z%) | <SNR>12_(matchup-z%) |
|  | <SNR>12_(matchup-z%) | :<C-U>call matchup#motion#jump_inside(1)<CR> |
|  | <Plug>(matchup-[%) | <SNR>12_(matchup-[%) |
|  | <Plug>(matchup-]%) | <SNR>12_(matchup-]%) |
|  | <SNR>12_(matchup-[%) | :<C-U>call matchup#motion#find_unmatched(1, 0)<CR> |
|  | <SNR>12_(matchup-]%) | :<C-U>call matchup#motion#find_unmatched(1, 1)<CR> |
|  | <Plug>(matchup-g%) | <SNR>12_(matchup-g%) |
|  | <SNR>12_(matchup-g%) | :<C-U>call matchup#motion#find_matching_pair(1, 0)<CR> |
|  | <Plug>(matchup-%) | <SNR>12_(matchup-%) |
|  | <SNR>12_(matchup-%) | :<C-U>call matchup#motion#find_matching_pair(1, 1)<CR> |
| Yank selection to clipboard | <M-y> | "+y |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Ignore><Plug>(matchup-%) |
|  | [% | <Plug>(matchup-[%) |
|  | ]% | <Plug>(matchup-]%) |
|  | as | <Plug>(textobj-sandwich-query-a) |
|  | ab | <Plug>(textobj-sandwich-auto-a) |
|  | a% | <Plug>(matchup-a%) |
|  | g% | <Ignore><Plug>(matchup-g%) |
|  | is | <Plug>(textobj-sandwich-query-i) |
|  | ib | <Plug>(textobj-sandwich-auto-i) |
|  | i% | <Plug>(matchup-i%) |
|  | sa | <Plug>(sandwich-add) |
|  | z% | <Plug>(matchup-z%) |
|  | <Plug>(textobj-sandwich-literal-query-a) | textobj#sandwich#query('o', 'a', {}, []) |
|  | <Plug>(textobj-sandwich-literal-query-i) | textobj#sandwich#query('o', 'i', {}, []) |
|  | <Plug>(textobj-sandwich-query-a) | textobj#sandwich#query('o', 'a') |
|  | <Plug>(textobj-sandwich-query-i) | textobj#sandwich#query('o', 'i') |
|  | <Plug>(textobj-sandwich-auto-a) | textobj#sandwich#auto('o', 'a') |
|  | <Plug>(textobj-sandwich-auto-i) | textobj#sandwich#auto('o', 'i') |
|  | <Plug>(sandwich-add) | <Plug>(operator-sandwich-add) |
|  | <Plug>(textobj-sandwich-tag-a) | :<C-U>call sandwich#magicchar#t#at()<CR> |
|  | <Plug>(textobj-sandwich-tag-i) | :<C-U>call sandwich#magicchar#t#it()<CR> |
|  | <Plug>(textobj-sandwich-tagname-a) | :<C-U>call sandwich#magicchar#t#a()<CR> |
|  | <Plug>(textobj-sandwich-tagname-i) | :<C-U>call sandwich#magicchar#t#i()<CR> |
|  | <Plug>(textobj-sandwich-function-a) | :<C-U>call sandwich#magicchar#f#a('o')<CR> |
|  | <Plug>(textobj-sandwich-function-ap) | :<C-U>call sandwich#magicchar#f#ap('o')<CR> |
|  | <Plug>(textobj-sandwich-function-i) | :<C-U>call sandwich#magicchar#f#i('o')<CR> |
|  | <Plug>(textobj-sandwich-function-ip) | :<C-U>call sandwich#magicchar#f#ip('o')<CR> |
|  | <Plug>(operator-sandwich-g@) | g@ |
|  | <Plug>(operator-sandwich-replace-visualrepeat) | :<C-U>call operator#sandwich#visualrepeat('replace')<CR> |
|  | <Plug>(operator-sandwich-delete-visualrepeat) | :<C-U>call operator#sandwich#visualrepeat('delete')<CR> |
|  | <Plug>(operator-sandwich-add-visualrepeat) | :<C-U>call operator#sandwich#visualrepeat('add')<CR> |
|  | <Plug>(operator-sandwich-squash-count) | operator#sandwich#squash_count() |
|  | <Plug>(operator-sandwich-release-count) | operator#sandwich#release_count() |
|  | <Plug>(operator-sandwich-synchro-count) | operator#sandwich#synchro_count() |
|  | <Plug>(operator-sandwich-replace) | <Plug>(operator-sandwich-g@) |
|  | <Plug>(operator-sandwich-delete) | <Plug>(operator-sandwich-g@) |
|  | <Plug>(operator-sandwich-add) | <Plug>(operator-sandwich-g@) |
|  | <Plug>(matchup-a%) | :<C-U>call matchup#text_obj#delimited(0, 0, 'delim_all')<CR> |
|  | <Plug>(matchup-i%) | :<C-U>call matchup#text_obj#delimited(1, 0, 'delim_all')<CR> |
|  | <Plug>(matchup-Z%) | :<C-U>call matchup#motion#op('Z%')<CR> |
|  | <Plug>(matchup-z%) | :<C-U>call matchup#motion#op('z%')<CR> |
|  | <Plug>(matchup-[%) | :<C-U>call matchup#motion#op('[%')<CR> |
|  | <Plug>(matchup-]%) | :<C-U>call matchup#motion#op(']%')<CR> |
|  | <Plug>(matchup-g%) | :<C-U>call matchup#motion#op('g%')<CR> |
|  | <Plug>(matchup-%) | :<C-U>call matchup#motion#op('%')<CR> |
