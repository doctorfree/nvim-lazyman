## MagicVim Neovim Configuration Information

Custom Neovim configuration designed to be light and fast. LSP, Treesitter & Code Completion all work out of the box and auto install when you open a file type that doesn't have code completion for it yet.

- Install and initialize: **`lazyman -m`**
- Configuration category: [Base](https://lazyman.dev/configurations/#base-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/lazyman/MagicVim`**

### Git repository

[https://gitlab.com/GitMaster210/magicvim](https://gitlab.com/GitMaster210/magicvim)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [jcdickinson/codeium.nvim](https://github.com/jcdickinson/codeium.nvim)
- [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [mrjones2014/legendary.nvim](https://github.com/mrjones2014/legendary.nvim)
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [sanfusu/neovim-undotree](https://github.com/sanfusu/neovim-undotree)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [RRethy/nvim-base16](https://github.com/RRethy/nvim-base16)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [noib3/nvim-cokeline](https://github.com/noib3/nvim-cokeline)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [sgtpep/pmenu](https://github.com/sgtpep/pmenu)
- [kamykn/popup-menu.nvim](https://github.com/kamykn/popup-menu.nvim)
- [kevinhwang91/rnvimr](https://github.com/kevinhwang91/rnvimr)
- [lambdalisue/suda.vim](https://github.com/lambdalisue/suda.vim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)

### MagicVim Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Take Action |  la | <Cmd>lua vim.lsp.buf.code_action()<CR> |
| Update Mason(LSP) |  lu | <Cmd>MasonUpdate<CR> |
| Open Mason |  lm | <Cmd>Mason<CR> |
| Previous Diagnostic |  lp | <Cmd>lua vim.diagnostic.goto_prev()<CR> |
| Next Diagnostic |  ln | <Cmd>lua vim.diagnostic.goto_next()<CR> |
| Diagnostics |  lh | <Cmd>lua vim.diagnostic.open_float()<CR> |
| Jump to Definition |  ld | <Cmd>lua vim.lsp.buf.definition()<CR> |
| Rename Buffer |  lr | <Cmd>lua vim.lsp.buf.rename()<CR> |
| List Plugins |  Pl | <Cmd>PackerStatus<CR> |
| Clean Up |  Pc | <Cmd>PackerClean<CR> |
| Update Plugins |  Pu | <Cmd>PackerSync<CR> |
| Install Plugin |  Pi | <Cmd>PackerInstall<CR> |
| Search Help Pages |  th | <Cmd>Telescope help_tags<CR> |
| Clear Yank History |  tY | <Cmd>YankyClearHistory<CR> |
| Change Colorscheme |  tc | <Cmd>Telescope colorscheme<CR> |
| Find Man Pages |  tm | <Cmd>Telescope man_pages<CR> |
| Open Buffers |  tb | <Cmd>Telescope buffers<CR> |
| Spelling |  ts | <Cmd>Telescope spell_suggest<CR> |
| Diagnostics |  td | <Cmd>Telescope diagnostics<CR> |
| Live Grep |  tg | <Cmd>Telescope live_grep<CR> |
| Find File |  tf | <Cmd>Telescope find_files<CR> |
| Select ALL |  a | ggVG |
| Close Window |  X | <C-W>c<CR> |
| Paste |  p | "+p<CR> |
| Copy |  c | "+y<CR> |
|  |  g | <Cmd>lua _lazygit_toggle()<CR> |
| Comment Out THIS Line |  ' | <Plug>(comment_toggle_linewise_current) |
| Yank List |  y | <Cmd>Telescope yank_history<CR> |
| Search Key Maps |  k | <Cmd>Legendary<CR> |
| Hop to a Word |  h | <Cmd>HopWord<CR> |
| Write with Sudo |  S | <Cmd>SudaWrite<CR> |
| Search |  / | <Cmd>Telescope current_buffer_fuzzy_find<CR> |
| Show Colors in THIS File |  C | <Cmd>ColorizerToggle<CR> |
| Make THIS File Executable |  E | <Cmd>!chmod +x %<CR> |
| Open Nvim-Tree |  F | <Cmd>NvimTreeFindFileToggle<CR> |
| Floating Terminal |  T | <Cmd>ToggleTerm direction=float<CR> |
| Source THIS File |  s | <Cmd>so%<CR> |
| Open Undo Tree |  u | <Cmd>UndotreeToggle<CR> |
| Open Ranger |  f | <Cmd>RnvimrToggle<CR> |
| Open Recent Files |  r | <Cmd>Telescope oldfiles<CR> |
| Save & Quit |  x | <Cmd>wq<CR> |
| Quit |  q | <Cmd>q!<CR> |
| Write |  w | <Cmd>w<CR> |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
| Toggle Terminal | <C-Q> | <Cmd>execute v:count . "ToggleTerm"<CR> |
|  | <Plug>(cokeline-focus-20) |  |
|  | <Plug>(cokeline-switch-20) |  |
|  | <Plug>(cokeline-focus-19) |  |
|  | <Plug>(cokeline-switch-19) |  |
|  | <Plug>(cokeline-focus-18) |  |
|  | <Plug>(cokeline-switch-18) |  |
|  | <Plug>(cokeline-focus-17) |  |
|  | <Plug>(cokeline-switch-17) |  |
|  | <Plug>(cokeline-focus-16) |  |
|  | <Plug>(cokeline-switch-16) |  |
|  | <Plug>(cokeline-focus-15) |  |
|  | <Plug>(cokeline-switch-15) |  |
|  | <Plug>(cokeline-focus-14) |  |
|  | <Plug>(cokeline-switch-14) |  |
|  | <Plug>(cokeline-focus-13) |  |
|  | <Plug>(cokeline-switch-13) |  |
|  | <Plug>(cokeline-focus-12) |  |
|  | <Plug>(cokeline-switch-12) |  |
|  | <Plug>(cokeline-focus-11) |  |
|  | <Plug>(cokeline-switch-11) |  |
|  | <Plug>(cokeline-focus-10) |  |
|  | <Plug>(cokeline-switch-10) |  |
|  | <Plug>(cokeline-focus-9) |  |
|  | <Plug>(cokeline-switch-9) |  |
|  | <Plug>(cokeline-focus-8) |  |
|  | <Plug>(cokeline-switch-8) |  |
|  | <Plug>(cokeline-focus-7) |  |
|  | <Plug>(cokeline-switch-7) |  |
|  | <Plug>(cokeline-focus-6) |  |
|  | <Plug>(cokeline-switch-6) |  |
|  | <Plug>(cokeline-focus-5) |  |
|  | <Plug>(cokeline-switch-5) |  |
|  | <Plug>(cokeline-focus-4) |  |
|  | <Plug>(cokeline-switch-4) |  |
|  | <Plug>(cokeline-focus-3) |  |
|  | <Plug>(cokeline-switch-3) |  |
|  | <Plug>(cokeline-focus-2) |  |
|  | <Plug>(cokeline-switch-2) |  |
|  | <Plug>(cokeline-focus-1) |  |
|  | <Plug>(cokeline-switch-1) |  |
|  | <Plug>(cokeline-pick-close) |  |
|  | <Plug>(cokeline-pick-focus) |  |
|  | <Plug>(cokeline-focus-next) |  |
|  | <Plug>(cokeline-focus-prev) |  |
|  | <Plug>(cokeline-switch-next) |  |
|  | <Plug>(cokeline-switch-prev) |  |
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
|  | <Plug>(YankyCycleBackward) |  |
|  | <Plug>(YankyCycleForward) |  |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>(fzf-normal) |  |
|  | <Plug>(fzf-insert) | i |
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
|  | <M-o> | :RnvimrToggle<CR> |
|  | <C-D> | <Cmd>bdelete<CR> |
|  | <S-Left> | <Cmd>bp<CR> |
|  | <S-Right> | <Cmd>bn<CR> |
|  | <M-Right> | w |
|  | <M-Left> | b |
|  | <C-Down> | G |
|  | <C-Up> | gg |
|  | <C-Left> | ^ |
|  | <C-Right> | $ |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Copy |  c | "+y<CR> |
| Add Text to End of Selected Lines |  a | :norm A |
| Add Text to Start of Selected Lines |  i | :norm I |
| Comment Out Selected Lines |  ' | <Plug>(comment_toggle_linewise_visual) |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
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
|  | <Plug>(YankyYank) |  |
|  | <Plug>luasnip-expand-repeat |  |
| Comment toggle blockwise (visual) | <Plug>(comment_toggle_blockwise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR> |
| Comment toggle linewise (visual) | <Plug>(comment_toggle_linewise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR> |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
|  | <M-Down> | :move '>+1<CR>gv-gv |
|  | <M-Up> | :move '<lt>-2<CR>gv-gv |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
