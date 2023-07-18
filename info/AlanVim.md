## AlanVim Neovim Configuration Information

Oriented toward Python development

- Install and initialize: **`lazyman -L AlanVim`**
- Configuration category: [Language](https://github.com/doctorfree/nvim-lazyman#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-AlanVim`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/alanRizzo/dot-files](https://github.com/alanRizzo/dot-files)

### Packer managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
- [mhartington/formatter.nvim](https://github.com/mhartington/formatter.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [dinhhuy258/git.nvim](https://github.com/dinhhuy258/git.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [junnplus/lsp-setup.nvim](https://github.com/junnplus/lsp-setup.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [ojroques/nvim-bufdel](https://github.com/ojroques/nvim-bufdel)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [alexghergh/nvim-tmux-navigation](https://github.com/alexghergh/nvim-tmux-navigation)
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep)
- [nvim-telescope/telescope-fzy-native.nvim](https://github.com/nvim-telescope/telescope-fzy-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [altermo/ultimate-autopair.nvim](https://github.com/altermo/ultimate-autopair.nvim)
- [dsznajder/vscode-es7-javascript-react-snippets](https://github.com/dsznajder/vscode-es7-javascript-react-snippets)

### AlanVim Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <Esc> | :noh<CR> |
|  |  u |  |
|  |  g |  |
|  |  w |  |
|  |  f |  |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | 'gR | <Cmd>lua require('git.revert').open(true)<CR> |
|  | 'gr | <Cmd>lua require('git.revert').open(false)<CR> |
|  | 'gD | <Cmd>lua require('git.diff').close()<CR> |
|  | 'gd | <Cmd>lua require('git.diff').open()<CR> |
|  | 'gn | <Cmd>lua require('git.browse').create_pull_request()<CR> |
|  | 'gp | <Cmd>lua require('git.browse').pull_request()<CR> |
|  | 'go | <Cmd>lua require('git.browse').open(false)<CR> |
|  | 'gb | <Cmd>lua require('git.blame').blame()<CR> |
|  | 's | :source %<CR> |
|  | 'p | :vsplit ~/.config/nvim-AlanVim/lua/packages.lua<CR> |
|  | 'm | :vsplit ~/.config/nvim-AlanVim/lua/general/mappings.lua<CR> |
|  | D | :BufDel<CR> |
|  | H | :BufferLineCyclePrev<CR> |
|  | L | :BufferLineCycleNext<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
| Change a surrounding pair, putting replacements on new lines | cS | <Plug>(nvim-surround-change-line) |
| Change a surrounding pair | cs | <Plug>(nvim-surround-change) |
| Delete a surrounding pair | ds | <Plug>(nvim-surround-delete) |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | tt | :t.<CR> |
| Add a surrounding pair around the current line, on new lines (normal mode) | ySS | <Plug>(nvim-surround-normal-cur-line) |
| Add a surrounding pair around a motion, on new lines (normal mode) | yS | <Plug>(nvim-surround-normal-line) |
| Add a surrounding pair around the current line (normal mode) | yss | <Plug>(nvim-surround-normal-cur) |
| Add a surrounding pair around a motion (normal mode) | ys | <Plug>(nvim-surround-normal) |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <C-Y>m | <Plug>(emmet-merge-lines) |
|  | <Plug>(emmet-merge-lines) | :call emmet#mergeLines()<CR> |
|  | <C-Y>A | <Plug>(emmet-anchorize-summary) |
|  | <Plug>(emmet-anchorize-summary) | :call emmet#anchorizeURL(1)<CR> |
|  | <C-Y>a | <Plug>(emmet-anchorize-url) |
|  | <Plug>(emmet-anchorize-url) | :call emmet#anchorizeURL(0)<CR> |
|  | <C-Y>k | <Plug>(emmet-remove-tag) |
|  | <Plug>(emmet-remove-tag) | :call emmet#removeTag()<CR> |
|  | <C-Y>j | <Plug>(emmet-split-join-tag) |
|  | <Plug>(emmet-split-join-tag) | :call emmet#splitJoinTag()<CR> |
|  | <C-Y>/ | <Plug>(emmet-toggle-comment) |
|  | <Plug>(emmet-toggle-comment) | :call emmet#toggleComment()<CR> |
|  | <C-Y>I | <Plug>(emmet-image-encode) |
|  | <Plug>(emmet-image-encode) | :call emmet#imageEncode()<CR> |
|  | <C-Y>i | <Plug>(emmet-image-size) |
|  | <Plug>(emmet-image-size) | :call emmet#imageSize()<CR> |
|  | <Plug>(emmet-move-prev-item) | :call emmet#moveNextPrevItem(1)<CR> |
|  | <Plug>(emmet-move-next-item) | :call emmet#moveNextPrevItem(0)<CR> |
|  | <C-Y>N | <Plug>(emmet-move-prev) |
|  | <Plug>(emmet-move-prev) | :call emmet#moveNextPrev(1)<CR> |
|  | <C-Y>n | <Plug>(emmet-move-next) |
|  | <Plug>(emmet-move-next) | :call emmet#moveNextPrev(0)<CR> |
|  | <C-Y>D | <Plug>(emmet-balance-tag-outword) |
|  | <Plug>(emmet-balance-tag-outword) | :call emmet#balanceTag(-1)<CR> |
|  | <C-Y>d | <Plug>(emmet-balance-tag-inward) |
|  | <Plug>(emmet-balance-tag-inward) | :call emmet#balanceTag(1)<CR> |
|  | <C-Y>u | <Plug>(emmet-update-tag) |
|  | <Plug>(emmet-update-tag) | :call emmet#updateTag()<CR> |
|  | <C-Y>; | <Plug>(emmet-expand-word) |
|  | <Plug>(emmet-expand-word) | :call emmet#expandAbbr(1,"")<CR> |
|  | <C-Y>, | <Plug>(emmet-expand-abbr) |
|  | <Plug>(emmet-expand-abbr) | :call emmet#expandAbbr(3,"")<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>luasnip-delete-check |  |
| Change a surrounding pair, putting replacements on new lines | <Plug>(nvim-surround-change-line) |  |
| Change a surrounding pair | <Plug>(nvim-surround-change) |  |
| Delete a surrounding pair | <Plug>(nvim-surround-delete) |  |
| Add a surrounding pair around the current line, on new lines (normal mode) | <Plug>(nvim-surround-normal-cur-line) |  |
| Add a surrounding pair around a motion, on new lines (normal mode) | <Plug>(nvim-surround-normal-line) |  |
| Add a surrounding pair around the current line (normal mode) | <Plug>(nvim-surround-normal-cur) |  |
| Add a surrounding pair around a motion (normal mode) | <Plug>(nvim-surround-normal) |  |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <C-J> | :lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<CR> |
|  | <C-Space> | :lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<CR> |
|  | <C-Bslash> | :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()<CR> |
|  | <C-H> | :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<CR> |
|  | <C-K> | :lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<CR> |
|  | <C-N> | :NvimTreeToggle<CR> |
|  | <M-l> | :vertical resize +2<CR> |
|  | <M-h> | :vertical resize -2<CR> |
|  | <M-k> | :resize +2<CR> |
|  | <M-j> | :resize -2<CR> |
|  | <C-L> | :lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
|  | 'go | :<C-U> lua require('git.browse').open(true)<CR> |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | <lt> | <lt>gv |
|  | > | >gv |
| Add a surrounding pair around a visual selection | S | <Plug>(nvim-surround-visual) |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
| Add a surrounding pair around a visual selection, on new lines | gS | <Plug>(nvim-surround-visual-line) |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | <C-Y>c | <Plug>(emmet-code-pretty) |
|  | <Plug>(emmet-code-pretty) | :call emmet#codePretty()<CR> |
|  | <C-Y>D | <Plug>(emmet-balance-tag-outword) |
|  | <Plug>(emmet-balance-tag-outword) | <Esc>:call emmet#balanceTag(-1)<CR> |
|  | <C-Y>d | <Plug>(emmet-balance-tag-inward) |
|  | <Plug>(emmet-balance-tag-inward) | <Esc>:call emmet#balanceTag(1)<CR> |
|  | <C-Y>, | <Plug>(emmet-expand-abbr) |
|  | <Plug>(emmet-expand-abbr) | :call emmet#expandAbbr(2,"")<CR> |
|  | <Plug>luasnip-expand-repeat |  |
| Add a surrounding pair around a visual selection, on new lines | <Plug>(nvim-surround-visual-line) | <Esc><Cmd>lua require'nvim-surround'.visual_surround({ line_mode = true })<CR> |
| Add a surrounding pair around a visual selection | <Plug>(nvim-surround-visual) | <Esc><Cmd>lua require'nvim-surround'.visual_surround({ line_mode = false })<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |

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
