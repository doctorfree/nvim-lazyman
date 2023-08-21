## Dillon Neovim Configuration Information

Author of [tsc.nvim](https://github.com/dmmulroy/tsc.nvim), asynchronous TypeScript type-checking

- Install and initialize: **`lazyman -w Dillon`**
- Configuration category: [Personal](https://github.com/doctorfree/nvim-lazyman#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Dillon`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/dmmulroy/dotfiles](https://github.com/dmmulroy/dotfiles)

### Dotfyle entry

[https://dotfyle.com/dmmulroy/dotfiles-config-nvim](https://dotfyle.com/dmmulroy/dotfiles-config-nvim)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [antosha417/nvim-lsp-file-operations](https://github.com/antosha417/nvim-lsp-file-operations)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [s1n7ax/nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [dmmulroy/tsc.nvim](https://github.com/dmmulroy/tsc.nvim)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [dmmulroy/vim-kitty-navigator](https://github.com/dmmulroy/vim-kitty-navigator)
- [szw/vim-maximizer](https://github.com/szw/vim-maximizer)
- [tpope/vim-surround](https://github.com/tpope/vim-surround)
- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)

### Dillon Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  oc |  |
| Illuminate: Goto previous reference |  [ |  |
| Illuminate: Goto next reference |  ] |  |
|  |  so | :SymbolsOutline<CR> |
| [S]earch [S]pelling suggestions |  ss |  |
| [/] Fuzzily search in current buffer] |  / |  |
|  |  sc |  |
| [S]earch [D]iagnostics |  sd |  |
| [S]earch by [G]rep |  sg |  |
| [S]earch current [W]ord |  sw |  |
| [S]earch [H]elp |  sh |  |
| [S]earch [F]iles |  sf |  |
| [S]earch Open [B]uffers |  sb |  |
| [?] Find recently opened files |  ? |  |
|  |  gb | :Gitsigns toggle_current_line_blame<CR> |
|  |  5 |  |
|  |  4 |  |
|  |  3 |  |
|  |  2 |  |
|  |  1 |  |
|  |  hc |  |
|  |  hr |  |
|  |  ha |  |
|  |  ho |  |
|  |  tc | :TSC<CR> |
| [R]otate [W]indows |  rw | :RotateWindows<CR> |
|  |  f | :Format<CR> |
|  |  = | <C-W>= |
|  |  m | :MaximizerToggle<CR> |
|  |  cc | :cclose<CR>zz |
|  |  co | :copen<CR>zz |
|  |  cp | :cprevious<CR>zz |
|  |  cn | :cnext<CR>zz |
| Quickfix [L]ist [D]iagnostics |  ld |  |
|  |  d |  |
|  |  no | <Cmd>noh<CR> |
|  |  E | <Cmd>Neotree action=focus<CR> |
|  |  e | <Cmd>Neotree toggle<CR> |
|  |  z | <Cmd>wq<CR> |
|  |  q | <Cmd>q<CR> |
|  |  w | <Cmd>w<CR> |
|  |   |  |
|  | # | #zz |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | * | *zz |
|  | G | Gzz |
|  | H | ^ |
|  | L | $ |
|  | N | Nzz |
|  | S |  |
|  | U | <C-R> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | [w |  |
|  | [e |  |
|  | [d |  |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | ]w |  |
|  | ]e |  |
|  | ]d |  |
|  | cS | <Plug>CSurround |
|  | cs | <Plug>Csurround |
|  | ds | <Plug>Dsurround |
| Comment insert end of line | gcA |  |
| Comment insert above | gcO |  |
| Comment insert below | gco |  |
| Comment toggle current block | gbc |  |
| Comment toggle current line | gcc |  |
| Comment toggle blockwise | gb | <Plug>(comment_toggle_blockwise) |
| Comment toggle linewise | gc | <Plug>(comment_toggle_linewise) |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | gx | :sil !open <lt>cWORD><CR> |
|  | gg | ggzz |
|  | n | nzz |
|  | ySS | <Plug>YSsurround |
|  | ySs | <Plug>YSsurround |
|  | yss | <Plug>Yssurround |
|  | yS | <Plug>YSurround |
|  | ys | <Plug>Ysurround |
|  | { | {zz |
|  | } | }zz |
|  | <Plug>YSurround | <SNR>48_opfunc2('setup') |
|  | <Plug>Ysurround | <SNR>48_opfunc('setup') |
|  | <Plug>YSsurround | <SNR>48_opfunc2('setup').'_' |
|  | <Plug>Yssurround | '^'.v:count1.<SNR>48_opfunc('setup').'g_' |
|  | <Plug>CSurround | :<C-U>call <SNR>48_changesurround(1)<CR> |
|  | <Plug>Csurround | :<C-U>call <SNR>48_changesurround()<CR> |
|  | <Plug>Dsurround | :<C-U>call <SNR>48_dosurround(<SNR>48_inputtarget())<CR> |
|  | <Plug>SurroundRepeat | . |
|  | <F3> | :MaximizerToggle<CR> |
| Move to previous reference | <M-p> |  |
| Move to next reference | <M-n> |  |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>luasnip-delete-check |  |
| Comment toggle blockwise with count | <Plug>(comment_toggle_blockwise_count) |  |
| Comment toggle linewise with count | <Plug>(comment_toggle_linewise_count) |  |
| Comment toggle current block | <Plug>(comment_toggle_blockwise_current) |  |
| Comment toggle current line | <Plug>(comment_toggle_linewise_current) |  |
| Comment toggle blockwise | <Plug>(comment_toggle_blockwise) |  |
| Comment toggle linewise | <Plug>(comment_toggle_linewise) |  |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <C-O> | <C-O>zz |
|  | <C-I> | <Tab>zz |
|  | <C-D> | <C-D>zz |
|  | <C-U> | <C-U>zz |
| Switch to last buffer | <C-'> | <C-^> |
|  | <C-H> |  |
|  | <C-K> |  |
|  | <C-J> |  |
|  | <C-L> |  |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  p | "_dP |
|  |   |  |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | H | ^ |
|  | L | $<Left> |
|  | S | <Plug>VSurround |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
| Comment toggle blockwise (visual) | gb | <Plug>(comment_toggle_blockwise_visual) |
| Comment toggle linewise (visual) | gc | <Plug>(comment_toggle_linewise_visual) |
|  | gS | <Plug>VgSurround |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | <Plug>VgSurround | :<C-U>call <SNR>48_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR> |
|  | <Plug>VSurround | :<C-U>call <SNR>48_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR> |
|  | <F3> | :MaximizerToggle<CR>gv |
|  | <M-i> |  |
|  | <Plug>luasnip-expand-repeat |  |
| Comment toggle blockwise (visual) | <Plug>(comment_toggle_blockwise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR> |
| Comment toggle linewise (visual) | <Plug>(comment_toggle_linewise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR> |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
|  | <M-k> | :m '<lt>-2<CR>gv=gv |
|  | <M-j> | :m '>+1<CR>gv=gv |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | <M-i> |  |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
