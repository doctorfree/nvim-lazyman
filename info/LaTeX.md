## LaTeX Neovim Configuration Information

Neovim configuration optimized for writing in LaTeX. Personal Neovim configuration of [Benjamin Brast-McKie](http://www.benbrastmckie.com). Keymaps and more described in the configuration [Cheatsheet](https://github.com/benbrastmckie/.config/blob/master/CheatSheet.md). Blog article by the author detailing [tools used by his configuration](http://www.benbrastmckie.com/tools#access). [Video playlist](https://www.youtube.com/watch?v=_Ct2S65kpjQ&list=PLBYZ1xfnKeDRhCoaM4bTFrjCl3NKDBvqk) of tutorials on using this config for writing LaTeX in Neovim

- Install and initialize: `lazyman -L LaTeX`
- Configuration category: [Language](https://github.com/doctorfree/nvim-lazyman#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  `~/.config/nvim-LaTeX`

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/benbrastmckie/.config](https://github.com/benbrastmckie/.config)

### Neovimcraft entry

[http://neovimcraft.com/plugin/benbrastmckie/.config](http://neovimcraft.com/plugin/benbrastmckie/.config)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [gaoDean/autolist.nvim](https://github.com/gaoDean/autolist.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [kdheepak/cmp-latex-symbols](https://github.com/kdheepak/cmp-latex-symbols)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-omni](https://github.com/hrsh7th/cmp-omni)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [f3fora/cmp-spell](https://github.com/f3fora/cmp-spell)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [glacambre/firenvim](https://github.com/glacambre/firenvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [lewis6991/impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [jbyuki/nabla.nvim](https://github.com/jbyuki/nabla.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Shatur/neovim-session-manager](https://github.com/Shatur/neovim-session-manager)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope-bibtex.nvim](https://github.com/nvim-telescope/telescope-bibtex.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [lervag/vimtex](https://github.com/lervag/vimtex)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)

### LaTeX Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <CR> | :noh<CR> |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | <lt> | V<lt><Esc> |
|  | > | V><Esc> |
|  | E | ge |
|  | H | g^ |
|  | J | gj |
|  | K | gk |
|  | L | g$ |
|  | M | :execute "help " . expand("<lt>cword>")<CR> |
|  | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | \ | :Neotree reveal<CR> |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
| Change a surrounding pair, putting replacements on new lines | cS | <Plug>(nvim-surround-change-line) |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | m | zz |
|  | <Plug>(YankyGPutAfterShiftRightJoined) |  |
|  | <Plug>(YankyGPutAfterShiftRight) |  |
|  | <Plug>(YankyGPutAfterShiftLeftJoined) |  |
|  | <Plug>(YankyGPutAfterShiftLeft) |  |
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
|  | <Plug>(YankyPutAfterShiftRightJoined) |  |
|  | <Plug>(YankyPutAfterShiftRight) |  |
|  | <Plug>(YankyPutAfterShiftLeftJoined) |  |
|  | <Plug>(YankyPutAfterShiftLeft) |  |
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
|  | <Plug>(YankyPutBeforeShiftRightJoined) |  |
|  | <Plug>(YankyPutBeforeShiftRight) |  |
|  | <Plug>(YankyPutBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyPutBeforeShiftLeft) |  |
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
|  | <Plug>(YankyPutIndentAfterShiftRightJoined) |  |
|  | <Plug>(YankyPutIndentAfterShiftRight) |  |
|  | <Plug>(YankyPutIndentAfterShiftLeftJoined) |  |
|  | <Plug>(YankyPutIndentAfterShiftLeft) |  |
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
|  | <Plug>(YankyPutIndentBeforeShiftRightJoined) |  |
|  | <Plug>(YankyPutIndentBeforeShiftRight) |  |
|  | <Plug>(YankyPutIndentBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyPutIndentBeforeShiftLeft) |  |
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
|  | <Plug>(YankyGPutBeforeShiftRightJoined) |  |
|  | <Plug>(YankyGPutBeforeShiftRight) |  |
|  | <Plug>(YankyGPutBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyGPutBeforeShiftLeft) |  |
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
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
| Toggle Terminal | <C-T> | <Cmd>execute v:count . "ToggleTerm"<CR> |
| Change a surrounding pair, putting replacements on new lines | <Plug>(nvim-surround-change-line) |  |
| Change a surrounding pair | <Plug>(nvim-surround-change) |  |
| Delete a surrounding pair | <Plug>(nvim-surround-delete) |  |
| Add a surrounding pair around the current line, on new lines (normal mode) | <Plug>(nvim-surround-normal-cur-line) |  |
| Add a surrounding pair around a motion, on new lines (normal mode) | <Plug>(nvim-surround-normal-line) |  |
| Add a surrounding pair around the current line (normal mode) | <Plug>(nvim-surround-normal-cur) |  |
| Add a surrounding pair around a motion (normal mode) | <Plug>(nvim-surround-normal) |  |
|  | <C-D> | <C-D>zz |
|  | <C-U> | <C-U>zz |
|  | <M-k> | <Esc>:m .-2<CR>== |
|  | <M-j> | <Esc>:m .+1<CR>== |
|  | <S-Tab> | :bprevious<CR> |
|  | <BS> | :bnext<CR> |
|  | <M-l> | :vertical resize +2<CR> |
|  | <M-h> | :vertical resize -2<CR> |
|  | <M-Right> | :vertical resize +2<CR> |
|  | <M-Left> | :vertical resize -2<CR> |
|  | <C-K> | <C-W>k |
|  | <C-J> | <C-W>j |
|  | <C-H> | <C-W>h |
|  | <C-Bslash> | <Plug>(comment_toggle_linewise_current) |
|  | <C-P> |  |
|  | <C-S> |  |
|  | <C-Z> |  |
|  | <C-L> | <C-W>l |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | <lt> | <lt>gv |
|  | > | >gv |
|  | E | ge |
|  | H | g^ |
|  | J | gj |
|  | K | gk |
|  | L | g$ |
| Add a surrounding pair around a visual selection | S | <Plug>(nvim-surround-visual) |
|  | Y | y$ |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | m | zz |
|  | p | "_dP |
|  | <Plug>(YankyPutIndentAfterShiftRightJoined) |  |
|  | <Plug>(YankyPutIndentAfterShiftRight) |  |
|  | <Plug>(YankyPutIndentAfterShiftLeftJoined) |  |
|  | <Plug>(YankyPutIndentAfterShiftLeft) |  |
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
|  | <Plug>(YankyPutIndentBeforeShiftRightJoined) |  |
|  | <Plug>(YankyPutIndentBeforeShiftRight) |  |
|  | <Plug>(YankyPutIndentBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyPutIndentBeforeShiftLeft) |  |
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
|  | <Plug>(YankyGPutBeforeShiftRightJoined) |  |
|  | <Plug>(YankyGPutBeforeShiftRight) |  |
|  | <Plug>(YankyGPutBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyGPutBeforeShiftLeft) |  |
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
|  | <Plug>(YankyGPutAfterShiftRightJoined) |  |
|  | <Plug>(YankyGPutAfterShiftRight) |  |
|  | <Plug>(YankyGPutAfterShiftLeftJoined) |  |
|  | <Plug>(YankyGPutAfterShiftLeft) |  |
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
|  | <Plug>(YankyPutAfterShiftRightJoined) |  |
|  | <Plug>(YankyPutAfterShiftRight) |  |
|  | <Plug>(YankyPutAfterShiftLeftJoined) |  |
|  | <Plug>(YankyPutAfterShiftLeft) |  |
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
|  | <Plug>(YankyPutBeforeShiftRightJoined) |  |
|  | <Plug>(YankyPutBeforeShiftRight) |  |
|  | <Plug>(YankyPutBeforeShiftLeftJoined) |  |
|  | <Plug>(YankyPutBeforeShiftLeft) |  |
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
|  | <Plug>(YankyYank) |  |
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
| Add a surrounding pair around a visual selection, on new lines | <Plug>(nvim-surround-visual-line) | <Esc><Cmd>lua require'nvim-surround'.visual_surround({ line_mode = true })<CR> |
| Add a surrounding pair around a visual selection | <Plug>(nvim-surround-visual) | <Esc><Cmd>lua require'nvim-surround'.visual_surround({ line_mode = false })<CR> |
|  | <M-k> | :m-2<CR>gv |
|  | <M-j> | :m'>+<CR>gv |
|  | <C-Bslash> | <Plug>(comment_toggle_linewise_visual) |

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
