## Heiker Neovim Configuration Information

Neovim config of Heiker Curiel, author of [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)

- Install and initialize: **`lazyman -w Heiker`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Heiker`**

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
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [lumiliet/vim-twig](https://github.com/lumiliet/vim-twig.git)

### Heiker Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | `<CR>` | `<Cmd>FineCmdline<CR>` |
|  | ` m` | `<Cmd>BufferNavMark<CR>` |
|  | ` s` | `<Cmd>SearchBoxClear<CR>` |
|  | ` bb` | `<Cmd>Telescope buffers<CR>` |
|  | ` fh` | `<Cmd>Telescope oldfiles<CR>` |
|  | ` fb` | `<Cmd>Telescope current_buffer_fuzzy_find<CR>` |
|  | ` fs` | `<Cmd>Telescope treesitter<CR>` |
|  | ` ff` | `<Cmd>Telescope find_files<CR>` |
|  | ` ?` | `<Cmd>Telescope keymaps<CR>` |
|  | ` fg` | `<Cmd>Telescope live_grep<CR>` |
|  | ` uf` | `<Cmd>CtrlSFToggle<CR>` |
|  | ` fw` | `<Esc><Cmd>exe 'Find' expand('<lt>cword>')<CR>` |
|  | ` F` | `<Cmd>FineCmdline Find <CR>` |
|  | ` ui` | `<Cmd>IndentBlanklineToggle<CR>` |
|  | ` da` |  |
|  | ` dd` |  |
|  | ` g` |  |
|  | ` uz` |  |
|  | ` bc` |  |
|  | ` j` | `<Cmd>let @/='\<lt>'.expand('<lt>cword>').'\>'<CR>"_ciw` |
|  | ` ur` | `<Cmd>set invrelativenumber<CR>` |
|  | ` un` | `<Cmd>set invnumber<CR>` |
|  | ` uc` | `<Cmd>set invcursorline<CR>` |
|  | ` ul` |  |
|  | ` ut` |  |
|  | ` uh` | `<Cmd>set invhlsearch<CR>` |
|  | ` cd` | `<Cmd>lcd %:p:h<CR><Cmd>pwd<CR>` |
|  | `  ` | `<Cmd>echo ''<CR>` |
|  | ` tn` | `<Cmd>tabnew<CR>` |
|  | ` bl` | `<Cmd>buffer #<CR>` |
|  | ` bq` | `<Cmd>bdelete<CR>` |
|  | ` Q` | `<Cmd>quitall!<CR>` |
|  | ` qq` | `<Cmd>quitall<CR>` |
|  | ` w` | `<Cmd>write<CR>` |
|  | ` l` | `g_` |
|  | ` h` | `^` |
|  | ` e` | `%` |
|  | ` a` | `<Cmd>keepjumps normal! ggVG<CR>` |
|  | `#` | `#zz` |
|  | `%` | `<Plug>(MatchitNormalForward)` |
| Nvim builtin | `&` | `:&&<CR>` |
|  | `*` | `*zz` |
|  | `.` |  |
| Jump to line below cursor | `B` |  |
|  | `C` | `"_C` |
| Jump to word (ignore _) | `E` |  |
|  | `F` |  |
|  | `H` | `b` |
|  | `L` | `e` |
|  | `M` | `<Cmd>BufferNavMenu<CR>` |
|  | `N` | `Nzzzv` |
|  | `R` | `<Cmd>exe 'SearchBoxReplace  --' expand('<lt>cword>')<CR>` |
|  | `S` | `<Cmd>SearchBoxMatchAll title=' Match '<CR>` |
|  | `T` |  |
|  | `U` | `<C-R>` |
|  | `X` | `"_d` |
| Nvim builtin | `Y` | `y$` |
|  | `[%` | `<Plug>(MatchitNormalMultiBackward)` |
|  | `[g` |  |
|  | `[q` |  |
|  | `[t` | `<Cmd>tabprevious<CR>` |
|  | `[b` | `<Cmd>bprevious<CR>` |
|  | `]%` | `<Plug>(MatchitNormalMultiForward)` |
|  | `]g` |  |
|  | `]q` |  |
|  | `]t` | `<Cmd>tabnext<CR>` |
|  | `]b` | `<Cmd>bnext<CR>` |
| Jump to line above cursor | `b` |  |
|  | `cr` |  |
|  | `cs` |  |
|  | `c` | `"_c` |
|  | `ds` |  |
| Jump to word | `e` |  |
|  | `f` |  |
|  | `g%` | `<Plug>(MatchitNormalBackward)` |
|  | `gL` | `E` |
|  | `gH` | `B` |
|  | `gB` |  |
|  | `gb` |  |
|  | `gc` |  |
|  | `gcc` |  |
|  | `gp` | `"+p` |
|  | `gy` | `"+y` |
|  | `n` | `nzzzv` |
|  | `r` | `<Cmd>SearchBoxReplace <CR>` |
|  | `s` | `<Cmd>SearchBoxIncSearch<CR>` |
|  | `t` |  |
|  | `x` | `"_x` |
|  | `ys` |  |
|  | `<M-4>` | `<Cmd>BufferNav 4<CR>` |
|  | `<M-3>` | `<Cmd>BufferNav 3<CR>` |
|  | `<M-2>` | `<Cmd>BufferNav 2<CR>` |
|  | `<M-1>` | `<Cmd>BufferNav 1<CR>` |
|  | `<Plug>(MatchitNormalMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>` |
|  | `<Plug>(MatchitNormalMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>` |
|  | `<Plug>(MatchitNormalBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'n')<CR>` |
|  | `<Plug>(MatchitNormalForward)` | `:<C-U>call matchit#Match_wrapper('',1,'n')<CR>` |
|  | `<Plug>PlenaryTestFile` | `:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR>` |
|  | `<C-W>f` | `<Cmd>ToggleTerm direction=float<CR>` |
|  | `<C-W>t` | `<Cmd>ToggleTerm direction=tab<CR>` |
| Toggle terminal | `<M-i>` | `<Cmd>Term<CR>` |
|  | `<F8>` | `gn@i` |
|  | `<C-K>` | `<Cmd>move .-2<CR>==` |
|  | `<C-J>` | `<Cmd>move .+1<CR>==` |
|  | `<M-j>` | `<C-D>M` |
|  | `<M-k>` | `<C-U>M` |
|  | `<M-b>` | `<CR>` |
|  | `<M-l>` | `<Esc>` |
| Nvim builtin | `<C-L>` | `<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>` |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | `<CR>` | `<Esc><Cmd>FineCmdline '<lt>,'><CR>` |
|  | ` F` | `<Esc><Cmd>GetSelection<CR><Cmd>exe 'Find' getreg('/')<CR>` |
|  | ` j` | `y<Cmd>let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')<CR>"_cgn` |
|  | ` Y` | `<Esc><Cmd>GetSelection<CR><Cmd>set hlsearch<CR>` |
|  | ` y` | `<Esc><Cmd>GetSelection<CR>gv` |
|  | ` l` | `g_` |
|  | ` h` | `^` |
|  | ` e` | `%` |
| Nvim builtin | `#` | `y?\V<C-R>"<CR>` |
|  | `%` | `<Plug>(MatchitVisualForward)` |
| Nvim builtin | `*` | `y/\V<C-R>"<CR>` |
| Jump to line below cursor | `B` |  |
|  | `C` | `"_c` |
| Jump to word (ignore _) | `E` |  |
|  | `F` |  |
|  | `H` | `b` |
|  | `L` | `e` |
|  | `R` | `<Esc><Cmd>GetSelection<CR><Cmd>exe 'SearchBoxReplace --' getreg('/')<CR>` |
|  | `S` | `<Esc><Cmd>'<lt>,'>SearchBoxMatchAll title=' Match ' visual_mode=true<CR>` |
|  | `T` |  |
|  | `X` | `"_d` |
|  | `Y` |  |
|  | `[%` | `<Plug>(MatchitVisualMultiBackward)` |
|  | `[g` |  |
|  | `]%` | `<Plug>(MatchitVisualMultiForward)` |
|  | `]g` |  |
|  | `a%` | `<Plug>(MatchitVisualTextObject)` |
|  | `a` |  |
| Jump to line above cursor | `b` |  |
|  | `cc` | `"_c` |
|  | `c` | `"_c` |
| Jump to word | `e` |  |
|  | `f` |  |
|  | `g%` | `<Plug>(MatchitVisualBackward)` |
|  | `gL` | `E` |
|  | `gH` | `B` |
|  | `gB` |  |
|  | `gb` |  |
|  | `gc` |  |
|  | `gp` | `"+p` |
|  | `gy` | `"+y` |
|  | `i` |  |
|  | `qi` | `y<Cmd>let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')<CR>gvqi` |
|  | `r` | `<Esc><Cmd>SearchBoxReplace  visual_mode=true<CR>` |
|  | `s` | `<Esc><Cmd>'<lt>,'>SearchBoxIncSearch visual_mode=true<CR>` |
|  | `t` |  |
|  | `x` | `"_x` |
|  | `<Plug>(MatchitVisualTextObject)` | `<Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)` |
|  | `<Plug>(MatchitVisualMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``` |
|  | `<Plug>(MatchitVisualForward)` | `:<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv``` |
| Toggle terminal | `<M-i>` | `<Cmd>Term<CR>` |
|  | `<C-K>` | `<Esc><Cmd>'<lt>,'>move '<lt>-2<CR>gv=gv` |
|  | `<C-J>` | `<Esc><Cmd>'<lt>,'>move '>+1<CR>gv=gv` |
|  | `<M-l>` | `<Esc>` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | ` l` | `g_` |
|  | ` h` | `^` |
|  | `%` | `<Plug>(MatchitOperationForward)` |
| Jump to line below cursor | `B` |  |
| Jump to word (ignore _) | `E` |  |
|  | `F` |  |
|  | `H` | `b` |
|  | `L` | `e` |
|  | `T` |  |
|  | `[%` | `<Plug>(MatchitOperationMultiBackward)` |
|  | `]%` | `<Plug>(MatchitOperationMultiForward)` |
|  | `a` |  |
| Jump to line above cursor | `b` |  |
| Jump to word | `e` |  |
|  | `f` |  |
|  | `g%` | `<Plug>(MatchitOperationBackward)` |
|  | `gL` | `E` |
|  | `gH` | `B` |
|  | `gc` |  |
|  | `gB` |  |
|  | `gb` |  |
|  | `gp` | `"+p` |
|  | `gy` | `"+y` |
|  | `i` |  |
|  | `t` |  |
|  | `<Plug>(MatchitOperationMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "o")<CR>` |
|  | `<Plug>(MatchitOperationMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "o")<CR>` |
|  | `<Plug>(MatchitOperationBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'o')<CR>` |
|  | `<Plug>(MatchitOperationForward)` | `:<C-U>call matchit#Match_wrapper('',1,'o')<CR>` |
|  | `<M-l>` | `<Esc>` |
