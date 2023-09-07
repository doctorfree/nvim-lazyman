## Ahsan Neovim Configuration Information

Personal Neovim configuration of Ahsan Habib

- Install and initialize: **`lazyman -w Ahsan`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Ahsan`**

### Git repository

[https://github.com/bibjaw99/workstation](https://github.com/bibjaw99/workstation)

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
- [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [sainnhe/gruvbox-material](https://github.com/sainnhe/gruvbox-material)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim.git)
- [derektata/lorem.nvim](https://github.com/derektata/lorem.nvim.git)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim.git)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [hiphish/rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim.git)
- [mechatroner/rainbow_csv](https://github.com/mechatroner/rainbow_csv.git)
- [preservim/tagbar](https://github.com/preservim/tagbar.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [xiyaowong/transparent.nvim](https://github.com/xiyaowong/transparent.nvim.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### Ahsan Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | `%` | `<Plug>(MatchitNormalForward)` |
| Nvim builtin | `&` | `:&&<CR>` |
| Nvim builtin | `Y` | `y$` |
|  | `[%` | `<Plug>(MatchitNormalMultiBackward)` |
|  | `]%` | `<Plug>(MatchitNormalMultiForward)` |
| Comment insert end of line | `gcA` |  |
| Comment insert above | `gcO` |  |
| Comment insert below | `gco` |  |
| Comment toggle current block | `gbc` |  |
| Comment toggle current line | `gcc` |  |
| Comment toggle blockwise | `gb` | `<Plug>(comment_toggle_blockwise)` |
| Comment toggle linewise | `gc` | `<Plug>(comment_toggle_linewise)` |
|  | `gx` | `<Plug>NetrwBrowseX` |
|  | `g%` | `<Plug>(MatchitNormalBackward)` |
|  | `kj` | `<Esc>` |
| Toggle Terminal | `<C-Bslash>` | `<Cmd>execute v:count . "ToggleTerm"<CR>` |
|  | `<C-S>` | `"+P` |
|  | `<M-p>` | `:BufferLineCyclePrev<CR>` |
|  | `<M-n>` | `:BufferLineCycleNext<CR>` |
|  | `<C-K>` | `<C-W>k` |
|  | `<C-J>` | `<C-W>j` |
|  | `<C-H>` | `<C-W>h` |
|  | `<Plug>NetrwBrowseX` | `:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR>` |
|  | `<Plug>(MatchitNormalMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>` |
|  | `<Plug>(MatchitNormalMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>` |
|  | `<Plug>(MatchitNormalBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'n')<CR>` |
|  | `<Plug>(MatchitNormalForward)` | `:<C-U>call matchit#Match_wrapper('',1,'n')<CR>` |
|  | `<Plug>PlenaryTestFile` | `:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR>` |
| Comment toggle blockwise with count | `<Plug>(comment_toggle_blockwise_count)` |  |
| Comment toggle linewise with count | `<Plug>(comment_toggle_linewise_count)` |  |
| Comment toggle current block | `<Plug>(comment_toggle_blockwise_current)` |  |
| Comment toggle current line | `<Plug>(comment_toggle_linewise_current)` |  |
| Comment toggle blockwise | `<Plug>(comment_toggle_blockwise)` |  |
| Comment toggle linewise | `<Plug>(comment_toggle_linewise)` |  |
|  | `<C-Y>m` | `<Plug>(emmet-merge-lines)` |
|  | `<Plug>(emmet-merge-lines)` | `:call emmet#mergeLines()<CR>` |
|  | `<C-Y>A` | `<Plug>(emmet-anchorize-summary)` |
|  | `<Plug>(emmet-anchorize-summary)` | `:call emmet#anchorizeURL(1)<CR>` |
|  | `<C-Y>a` | `<Plug>(emmet-anchorize-url)` |
|  | `<Plug>(emmet-anchorize-url)` | `:call emmet#anchorizeURL(0)<CR>` |
|  | `<C-Y>k` | `<Plug>(emmet-remove-tag)` |
|  | `<Plug>(emmet-remove-tag)` | `:call emmet#removeTag()<CR>` |
|  | `<C-Y>j` | `<Plug>(emmet-split-join-tag)` |
|  | `<Plug>(emmet-split-join-tag)` | `:call emmet#splitJoinTag()<CR>` |
|  | `<C-Y>/` | `<Plug>(emmet-toggle-comment)` |
|  | `<Plug>(emmet-toggle-comment)` | `:call emmet#toggleComment()<CR>` |
|  | `<C-Y>I` | `<Plug>(emmet-image-encode)` |
|  | `<Plug>(emmet-image-encode)` | `:call emmet#imageEncode()<CR>` |
|  | `<C-Y>i` | `<Plug>(emmet-image-size)` |
|  | `<Plug>(emmet-image-size)` | `:call emmet#imageSize()<CR>` |
|  | `<Plug>(emmet-move-prev-item)` | `:call emmet#moveNextPrevItem(1)<CR>` |
|  | `<Plug>(emmet-move-next-item)` | `:call emmet#moveNextPrevItem(0)<CR>` |
|  | `<C-Y>N` | `<Plug>(emmet-move-prev)` |
|  | `<Plug>(emmet-move-prev)` | `:call emmet#moveNextPrev(1)<CR>` |
|  | `<C-Y>n` | `<Plug>(emmet-move-next)` |
|  | `<Plug>(emmet-move-next)` | `:call emmet#moveNextPrev(0)<CR>` |
|  | `<C-Y>D` | `<Plug>(emmet-balance-tag-outword)` |
|  | `<Plug>(emmet-balance-tag-outword)` | `:call emmet#balanceTag(-1)<CR>` |
|  | `<C-Y>d` | `<Plug>(emmet-balance-tag-inward)` |
|  | `<Plug>(emmet-balance-tag-inward)` | `:call emmet#balanceTag(1)<CR>` |
|  | `<C-Y>u` | `<Plug>(emmet-update-tag)` |
|  | `<Plug>(emmet-update-tag)` | `:call emmet#updateTag()<CR>` |
|  | `<C-Y>;` | `<Plug>(emmet-expand-word)` |
|  | `<Plug>(emmet-expand-word)` | `:call emmet#expandAbbr(1,"")<CR>` |
|  | `<C-Y>,` | `<Plug>(emmet-expand-abbr)` |
|  | `<Plug>(emmet-expand-abbr)` | `:call emmet#expandAbbr(3,"")<CR>` |
|  | `<Plug>luasnip-expand-repeat` |  |
|  | `<Plug>luasnip-delete-check` |  |
|  | `<C-L>` | `<C-W>l` |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | `#` | `y?\V<C-R>"<CR>` |
|  | `%` | `<Plug>(MatchitVisualForward)` |
| Nvim builtin | `*` | `y/\V<C-R>"<CR>` |
|  | `<lt>` | `<lt>gv` |
|  | `>` | `>gv` |
|  | `[%` | `<Plug>(MatchitVisualMultiBackward)` |
|  | `]%` | `<Plug>(MatchitVisualMultiForward)` |
|  | `a%` | `<Plug>(MatchitVisualTextObject)` |
| Comment toggle blockwise (visual) | `gb` | `<Plug>(comment_toggle_blockwise_visual)` |
| Comment toggle linewise (visual) | `gc` | `<Plug>(comment_toggle_linewise_visual)` |
|  | `gx` | `<Plug>NetrwBrowseXVis` |
|  | `g%` | `<Plug>(MatchitVisualBackward)` |
|  | `kj` | `<Esc>` |
|  | `<C-C>` | `"+y` |
|  | `<Plug>NetrwBrowseXVis` | `:<C-U>call netrw#BrowseXVis()<CR>` |
|  | `<Plug>(MatchitVisualTextObject)` | `<Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)` |
|  | `<Plug>(MatchitVisualMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``` |
|  | `<Plug>(MatchitVisualForward)` | `:<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv``` |
|  | `<C-Y>c` | `<Plug>(emmet-code-pretty)` |
|  | `<Plug>(emmet-code-pretty)` | `:call emmet#codePretty()<CR>` |
|  | `<C-Y>D` | `<Plug>(emmet-balance-tag-outword)` |
|  | `<Plug>(emmet-balance-tag-outword)` | `<Esc>:call emmet#balanceTag(-1)<CR>` |
|  | `<C-Y>d` | `<Plug>(emmet-balance-tag-inward)` |
|  | `<Plug>(emmet-balance-tag-inward)` | `<Esc>:call emmet#balanceTag(1)<CR>` |
|  | `<C-Y>,` | `<Plug>(emmet-expand-abbr)` |
|  | `<Plug>(emmet-expand-abbr)` | `:call emmet#expandAbbr(2,"")<CR>` |
|  | `<Plug>luasnip-expand-repeat` |  |
| Comment toggle blockwise (visual) | `<Plug>(comment_toggle_blockwise_visual)` | `<Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR>` |
| Comment toggle linewise (visual) | `<Plug>(comment_toggle_linewise_visual)` | `<Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR>` |

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
|  | `<Plug>luasnip-expand-repeat` |  |
