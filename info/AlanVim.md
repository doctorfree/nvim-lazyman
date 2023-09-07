## AlanVim Neovim Configuration Information

Oriented toward Python development

- Install and initialize: **`lazyman -L AlanVim`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-AlanVim`**

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
|  | <code>&lt;Esc&gt;</code> | <code>:noh&lt;CR&gt;</code> |
|  | <code> u</code> |  |
|  | <code> g</code> |  |
|  | <code> w</code> |  |
|  | <code> f</code> |  |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>'gR</code> | <code>&lt;Cmd&gt;lua require('git.revert').open(true)&lt;CR&gt;</code> |
|  | <code>'gr</code> | <code>&lt;Cmd&gt;lua require('git.revert').open(false)&lt;CR&gt;</code> |
|  | <code>'gD</code> | <code>&lt;Cmd&gt;lua require('git.diff').close()&lt;CR&gt;</code> |
|  | <code>'gd</code> | <code>&lt;Cmd&gt;lua require('git.diff').open()&lt;CR&gt;</code> |
|  | <code>'gn</code> | <code>&lt;Cmd&gt;lua require('git.browse').create_pull_request()&lt;CR&gt;</code> |
|  | <code>'gp</code> | <code>&lt;Cmd&gt;lua require('git.browse').pull_request()&lt;CR&gt;</code> |
|  | <code>'go</code> | <code>&lt;Cmd&gt;lua require('git.browse').open(false)&lt;CR&gt;</code> |
|  | <code>'gb</code> | <code>&lt;Cmd&gt;lua require('git.blame').blame()&lt;CR&gt;</code> |
|  | <code>'s</code> | <code>:source %&lt;CR&gt;</code> |
|  | <code>'p</code> | <code>:vsplit ~/.config/nvim-AlanVim/lua/packages.lua&lt;CR&gt;</code> |
|  | <code>'m</code> | <code>:vsplit ~/.config/nvim-AlanVim/lua/general/mappings.lua&lt;CR&gt;</code> |
|  | <code>D</code> | <code>:BufDel&lt;CR&gt;</code> |
|  | <code>H</code> | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |
|  | <code>L</code> | <code>:BufferLineCycleNext&lt;CR&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| Change a surrounding pair, putting replacements on new lines | <code>cS</code> | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |
| Change a surrounding pair | <code>cs</code> | <code>&lt;Plug&gt;(nvim-surround-change)</code> |
| Delete a surrounding pair | <code>ds</code> | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>tt</code> | <code>:t.&lt;CR&gt;</code> |
| Add a surrounding pair around the current line, on new lines (normal mode) | <code>ySS</code> | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |
| Add a surrounding pair around a motion, on new lines (normal mode) | <code>yS</code> | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |
| Add a surrounding pair around the current line (normal mode) | <code>yss</code> | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |
| Add a surrounding pair around a motion (normal mode) | <code>ys</code> | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;m</code> | <code>&lt;Plug&gt;(emmet-merge-lines)</code> |
|  | <code>&lt;Plug&gt;(emmet-merge-lines)</code> | <code>:call emmet#mergeLines()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;A</code> | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> |
|  | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> | <code>:call emmet#anchorizeURL(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;a</code> | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> |
|  | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> | <code>:call emmet#anchorizeURL(0)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;k</code> | <code>&lt;Plug&gt;(emmet-remove-tag)</code> |
|  | <code>&lt;Plug&gt;(emmet-remove-tag)</code> | <code>:call emmet#removeTag()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;j</code> | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> |
|  | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> | <code>:call emmet#splitJoinTag()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;/</code> | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> |
|  | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> | <code>:call emmet#toggleComment()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;I</code> | <code>&lt;Plug&gt;(emmet-image-encode)</code> |
|  | <code>&lt;Plug&gt;(emmet-image-encode)</code> | <code>:call emmet#imageEncode()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;i</code> | <code>&lt;Plug&gt;(emmet-image-size)</code> |
|  | <code>&lt;Plug&gt;(emmet-image-size)</code> | <code>:call emmet#imageSize()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(emmet-move-prev-item)</code> | <code>:call emmet#moveNextPrevItem(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(emmet-move-next-item)</code> | <code>:call emmet#moveNextPrevItem(0)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;N</code> | <code>&lt;Plug&gt;(emmet-move-prev)</code> |
|  | <code>&lt;Plug&gt;(emmet-move-prev)</code> | <code>:call emmet#moveNextPrev(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;n</code> | <code>&lt;Plug&gt;(emmet-move-next)</code> |
|  | <code>&lt;Plug&gt;(emmet-move-next)</code> | <code>:call emmet#moveNextPrev(0)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;D</code> | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> | <code>:call emmet#balanceTag(-1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;d</code> | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> | <code>:call emmet#balanceTag(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;u</code> | <code>&lt;Plug&gt;(emmet-update-tag)</code> |
|  | <code>&lt;Plug&gt;(emmet-update-tag)</code> | <code>:call emmet#updateTag()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;;</code> | <code>&lt;Plug&gt;(emmet-expand-word)</code> |
|  | <code>&lt;Plug&gt;(emmet-expand-word)</code> | <code>:call emmet#expandAbbr(1,"")&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;,</code> | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
|  | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> | <code>:call emmet#expandAbbr(3,"")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
| Change a surrounding pair, putting replacements on new lines | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |  |
| Change a surrounding pair | <code>&lt;Plug&gt;(nvim-surround-change)</code> |  |
| Delete a surrounding pair | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |  |
| Add a surrounding pair around the current line, on new lines (normal mode) | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |  |
| Add a surrounding pair around a motion, on new lines (normal mode) | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |  |
| Add a surrounding pair around the current line (normal mode) | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |  |
| Add a surrounding pair around a motion (normal mode) | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |  |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()&lt;CR&gt;</code> |
|  | <code>&lt;C-Space&gt;</code> | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()&lt;CR&gt;</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()&lt;CR&gt;</code> |
|  | <code>&lt;C-N&gt;</code> | <code>:NvimTreeToggle&lt;CR&gt;</code> |
|  | <code>&lt;M-l&gt;</code> | <code>:vertical resize +2&lt;CR&gt;</code> |
|  | <code>&lt;M-h&gt;</code> | <code>:vertical resize -2&lt;CR&gt;</code> |
|  | <code>&lt;M-k&gt;</code> | <code>:resize +2&lt;CR&gt;</code> |
|  | <code>&lt;M-j&gt;</code> | <code>:resize -2&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
|  | <code>'go</code> | <code>:&lt;C-U&gt; lua require('git.browse').open(true)&lt;CR&gt;</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>&lt;lt&gt;</code> | <code>&lt;lt&gt;gv</code> |
|  | <code>&gt;</code> | <code>&gt;gv</code> |
| Add a surrounding pair around a visual selection | <code>S</code> | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
| Add a surrounding pair around a visual selection, on new lines | <code>gS</code> | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>&lt;C-Y&gt;c</code> | <code>&lt;Plug&gt;(emmet-code-pretty)</code> |
|  | <code>&lt;Plug&gt;(emmet-code-pretty)</code> | <code>:call emmet#codePretty()&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;D</code> | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> | <code>&lt;Esc&gt;:call emmet#balanceTag(-1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;d</code> | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> | <code>&lt;Esc&gt;:call emmet#balanceTag(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;,</code> | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
|  | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> | <code>:call emmet#expandAbbr(2,"")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
| Add a surrounding pair around a visual selection, on new lines | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = true })&lt;CR&gt;</code> |
| Add a surrounding pair around a visual selection | <code>&lt;Plug&gt;(nvim-surround-visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = false })&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
