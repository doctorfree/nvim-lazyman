## SaleVim Neovim Configuration Information

'Salesforce' optimized IDE with custom features for editing 'Apex', 'Visualforce', and 'Lightning' code

- Install and initialize: **`lazyman -L SaleVim`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/lazyman/SaleVim`**

### Git repository

[https://github.com/igorcguedes/SaleVim](https://github.com/igorcguedes/SaleVim)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [willothy/nvim-cokeline](https://github.com/willothy/nvim-cokeline)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [NvChad/nvterm](https://github.com/NvChad/nvterm)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [LeviticusNelson/sfdx.nvim](https://github.com/LeviticusNelson/sfdx.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [moll/vim-bbye](https://github.com/moll/vim-bbye)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [beyond-the-cloud-dev/vsc-salesforce-code-snippets](https://github.com/beyond-the-cloud-dev/vsc-salesforce-code-snippets)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### SaleVim Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |   |  |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | H | :bprevious<CR> |
|  | L | :bnext<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
| Comment insert end of line | gcA |  |
| Comment insert above | gcO |  |
| Comment insert below | gco |  |
| Comment toggle current block | gbc |  |
| Comment toggle current line | gcc |  |
| Comment toggle blockwise | gb | <Plug>(comment_toggle_blockwise) |
| Comment toggle linewise | gc | <Plug>(comment_toggle_linewise) |
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
|  | <M-i> |  |
|  | <M-v> |  |
|  | <M-h> |  |
|  | <M-k> | <Esc>:m .-2<CR>==gi |
|  | <M-j> | <Esc>:m .+1<CR>==gi |
|  | <C-Right> | :vertical resize +2<CR> |
|  | <C-Left> | :vertical resize -2<CR> |
|  | <C-Down> | :resize +2<CR> |
|  | <C-Up> | :resize -2<CR> |
|  | <C-K> | <C-W>k |
|  | <C-J> | <C-W>j |
|  | <C-H> | <C-W>h |
|  | <C-L> |  |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |   |  |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | <lt> | <lt>gv |
|  | > | >gv |
|  | J | :move '>+1<CR>gv-gv |
|  | K | :move '<lt>-2<CR>gv-gv |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
| Comment toggle blockwise (visual) | gb | <Plug>(comment_toggle_blockwise_visual) |
| Comment toggle linewise (visual) | gc | <Plug>(comment_toggle_linewise_visual) |
|  | p | "_dP |
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
|  | <M-k> | :move '<lt>-2<CR>gv-gv |
|  | <M-j> | :move '>+1<CR>gv-gv |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |   |  |
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
