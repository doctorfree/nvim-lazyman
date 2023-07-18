## Heiker Neovim Configuration Information

Neovim config of Heiker Curiel, author of [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)

- Install and initialize: **`lazyman -w Heiker`**
- Configuration category: [Personal](https://github.com/doctorfree/nvim-lazyman#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Heiker`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/VonHeikemen/dotfiles](https://github.com/VonHeikemen/dotfiles)

### Lazy managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [dyng/ctrlsf.vim](https://github.com/dyng/ctrlsf.vim.git)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [VonHeikemen/fine-cmdline.nvim](https://github.com/VonHeikemen/fine-cmdline.nvim.git)
- [ggandor/flit.nvim](https://github.com/ggandor/flit.nvim)
- [junegunn/goyo.vim](https://github.com/junegunn/goyo.vim.git)
- [NMAC427/guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim.git)
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)
- [othree/html5.vim](https://github.com/othree/html5.vim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [tamago324/lir.nvim](https://github.com/tamago324/lir.nvim.git)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai.git)
- [echasnovski/mini.bracketed](https://github.com/echasnovski/mini.bracketed.git)
- [echasnovski/mini.bufremove](https://github.com/echasnovski/mini.bufremove.git)
- [echasnovski/mini.comment](https://github.com/echasnovski/mini.comment)
- [echasnovski/mini.surround](https://github.com/echasnovski/mini.surround.git)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [VonHeikemen/searchbox.nvim](https://github.com/VonHeikemen/searchbox.nvim.git)
- [nvim-telescope/telescope-fzy-native.nvim](https://github.com/nvim-telescope/telescope-fzy-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [VonHeikemen/the-good-snippets](https://github.com/VonHeikemen/the-good-snippets.git)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [tpope/vim-abolish](https://github.com/tpope/vim-abolish.git)
- [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript.git)
- [romainl/vim-qf](https://github.com/romainl/vim-qf)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [lumiliet/vim-twig](https://github.com/lumiliet/vim-twig.git)

### Heiker Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <CR> | <Cmd>FineCmdline<CR> |
|  |  cc | <Plug>(qf_qf_toggle) |
|  |  da |  |
|  |  dd |  |
|  |  ui | <Cmd>IndentBlanklineToggle<CR> |
|  |  s | <Cmd>SearchBoxClear<CR> |
|  |  bb | <Cmd>Telescope buffers<CR> |
|  |  fh | <Cmd>Telescope oldfiles<CR> |
|  |  fb | <Cmd>Telescope current_buffer_fuzzy_find<CR> |
|  |  fs | <Cmd>Telescope treesitter<CR> |
|  |  ff | <Cmd>Telescope find_files<CR> |
|  |  ? | <Cmd>Telescope keymaps<CR> |
|  |  fg | <Cmd>Telescope live_grep<CR> |
|  |  uf | <Cmd>CtrlSFToggle<CR> |
|  |  fw | <Esc><Cmd>exe 'Find' expand('<lt>cword>')<CR> |
|  |  F | <Cmd>FineCmdline Find <CR> |
|  |  g |  |
|  |  bc |  |
|  |  uz |  |
|  |  m |  |
|  |  j | <Cmd>let @/='\<lt>'.expand('<lt>cword>').'\>'<CR>"_ciw |
|  |  ur | <Cmd>set invrelativenumber<CR> |
|  |  un | <Cmd>set invnumber<CR> |
|  |  uc | <Cmd>set invcursorline<CR> |
|  |  ul |  |
|  |  ut |  |
|  |  uh | <Cmd>set invhlsearch<CR> |
|  |  cd | <Cmd>lcd %:p:h<CR><Cmd>pwd<CR> |
|  |    | <Cmd>echo ''<CR> |
|  |  tn | <Cmd>tabnew<CR> |
|  |  bl | <Cmd>buffer #<CR> |
|  |  bq | <Cmd>bdelete<CR> |
|  |  Q | <Cmd>quitall!<CR> |
|  |  qq | <Cmd>quitall<CR> |
|  |  w | <Cmd>write<CR> |
|  |  l | g_ |
|  |  h | ^ |
|  |  e | % |
|  |  a | <Cmd>keepjumps normal! ggVG<CR> |
|  | # | #zz |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | * | *zz |
|  | . |  |
| Jump to line above cursor | B |  |
|  | C | "_C |
| Jump to line below cursor | E |  |
|  | F |  |
|  | H | b |
|  | L | e |
|  | N | Nzzzv |
|  | R | <Cmd>exe 'SearchBoxReplace  --' expand('<lt>cword>')<CR> |
|  | S | <Cmd>SearchBoxMatchAll title=' Match '<CR> |
|  | T |  |
|  | U | <C-R> |
|  | X | "_d |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | [g |  |
|  | [q | <Plug>(qf_qf_previous)zz |
|  | [t | <Cmd>tabprevious<CR> |
|  | [b | <Cmd>bprevious<CR> |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | ]q | <Plug>(qf_qf_next)zz |
|  | ]g |  |
|  | ]t | <Cmd>tabnext<CR> |
|  | ]b | <Cmd>bnext<CR> |
|  | b |  |
|  | cs |  |
|  | cr |  |
|  | c | "_c |
|  | ds |  |
|  | e |  |
|  | f |  |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | gc |  |
|  | gcc |  |
|  | gp | "+p |
|  | gy | "+y |
|  | n | nzzzv |
|  | r | <Cmd>SearchBoxReplace <CR> |
|  | s | <Cmd>SearchBoxIncSearch<CR> |
|  | t |  |
|  | x | "_x |
|  | ys |  |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>(qf_qf_switch) | &filetype ==# 'qf' ? '<C-W>p' : '<C-W>b' |
|  | <Plug>(qf_loc_toggle_stay) | :<C-U> call qf#toggle#ToggleLocWindow(1)<CR> |
|  | <Plug>(qf_loc_toggle) | :<C-U> call qf#toggle#ToggleLocWindow(0)<CR> |
|  | <Plug>(qf_qf_toggle_stay) | :<C-U> call qf#toggle#ToggleQfWindow(1)<CR> |
|  | <Plug>(qf_qf_toggle) | :<C-U> call qf#toggle#ToggleQfWindow(0)<CR> |
|  | <Plug>(qf_loc_next) | :<C-U> call qf#wrap#WrapCommand('down', 'l')<CR> |
|  | <Plug>(qf_loc_previous) | :<C-U> call qf#wrap#WrapCommand('up', 'l')<CR> |
|  | <Plug>(qf_qf_next) | :<C-U> call qf#wrap#WrapCommand('down', 'c')<CR> |
|  | <Plug>(qf_qf_previous) | :<C-U> call qf#wrap#WrapCommand('up', 'c')<CR> |
|  | <Plug>QfSwitch | &filetype ==# 'qf' ? '<C-W>p' : '<C-W>b' |
|  | <Plug>QfLtoggle | <Plug>(qf_loc_toggle) |
|  | <Plug>QfCtoggle | <Plug>(qf_qf_toggle) |
|  | <Plug>QfLnext | <Plug>(qf_loc_next) |
|  | <Plug>QfLprevious | <Plug>(qf_loc_previous) |
|  | <Plug>QfCnext | <Plug>(qf_qf_next) |
|  | <Plug>QfCprevious | <Plug>(qf_qf_previous) |
|  | <C-W>f | <Cmd>ToggleTerm direction=float<CR> |
|  | <C-W>t | <Cmd>ToggleTerm direction=tab<CR> |
| Toggle terminal | <M-i> | <Cmd>Term<CR> |
|  | <M-3> |  |
|  | <M-4> |  |
|  | <M-2> |  |
|  | <M-1> |  |
|  | <F3> |  |
|  | <F8> | gn@i |
|  | <C-K> | <Cmd>move .-2<CR>== |
|  | <C-J> | <Cmd>move .+1<CR>== |
|  | <M-j> | <C-D>M |
|  | <M-k> | <C-U>M |
|  | <M-b> | <CR> |
|  | <M-l> | <Esc> |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <CR> | <Esc><Cmd>FineCmdline '<lt>,'><CR> |
|  |  F | <Esc><Cmd>GetSelection<CR><Cmd>exe 'Find' getreg('/')<CR> |
|  |  j | y<Cmd>let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')<CR>"_cgn |
|  |  Y | <Esc><Cmd>GetSelection<CR><Cmd>set hlsearch<CR> |
|  |  y | <Esc><Cmd>GetSelection<CR>gv |
|  |  l | g_ |
|  |  h | ^ |
|  |  e | % |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
| Jump to line above cursor | B |  |
|  | C | "_c |
| Jump to line below cursor | E |  |
|  | F |  |
|  | H | b |
|  | L | e |
|  | R | <Esc><Cmd>GetSelection<CR><Cmd>exe 'SearchBoxReplace --' getreg('/')<CR> |
|  | S | <Esc><Cmd>'<lt>,'>SearchBoxMatchAll title=' Match ' visual_mode=true<CR> |
|  | T |  |
|  | X | "_d |
|  | Y |  |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | [g |  |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | ]g |  |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | a |  |
|  | b |  |
|  | cc | "_c |
|  | c | "_c |
|  | e |  |
|  | f |  |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | gc |  |
|  | gp | "+p |
|  | gy | "+y |
|  | i |  |
|  | qi | y<Cmd>let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')<CR>gvqi |
|  | r | <Esc><Cmd>SearchBoxReplace  visual_mode=true<CR> |
|  | s | <Esc><Cmd>'<lt>,'>SearchBoxIncSearch visual_mode=true<CR> |
|  | t |  |
|  | x | "_x |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
| Toggle terminal | <M-i> | <Cmd>Term<CR> |
|  | <C-K> | <Esc><Cmd>'<lt>,'>move '<lt>-2<CR>gv=gv |
|  | <C-J> | <Esc><Cmd>'<lt>,'>move '>+1<CR>gv=gv |
|  | <M-l> | <Esc> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  l | g_ |
|  |  h | ^ |
|  | % | <Plug>(MatchitOperationForward) |
| Jump to line above cursor | B |  |
| Jump to line below cursor | E |  |
|  | F |  |
|  | H | b |
|  | L | e |
|  | T |  |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | a |  |
|  | b |  |
|  | e |  |
|  | f |  |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | gc |  |
|  | gp | "+p |
|  | gy | "+y |
|  | i |  |
|  | t |  |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
|  | <M-l> | <Esc> |
