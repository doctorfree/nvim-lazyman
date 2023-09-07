# AlanVim Neovim Configuration Information

Oriented toward Python development

- Install and initialize: **`lazyman -L AlanVim`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-AlanVim`**

## Git repository

[https://github.com/alanRizzo/dot-files](https://github.com/alanRizzo/dot-files)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Packer managed plugins

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

## AlanVim Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Esc&gt;</code> |
| **Right hand side** | <code>:noh&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> u</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> g</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'gR</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('git.revert').open(true)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'gr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('git.revert').open(false)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'gD</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('git.diff').close()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'gd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('git.diff').open()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'gn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('git.browse').create_pull_request()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'gp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('git.browse').pull_request()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'go</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('git.browse').open(false)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'gb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('git.blame').blame()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'s</code> |
| **Right hand side** | <code>:source %&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'p</code> |
| **Right hand side** | <code>:vsplit ~/.config/nvim-AlanVim/lua/packages.lua&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'m</code> |
| **Right hand side** | <code>:vsplit ~/.config/nvim-AlanVim/lua/general/mappings.lua&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>D</code> |
| **Right hand side** | <code>:BufDel&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>:BufferLineCycleNext&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | Change a surrounding pair, putting replacements on new lines |
| :---- | :---- |
| **Left hand side** | <code>cS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |

| **Description** | Change a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-change)</code> |

| **Description** | Delete a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>tt</code> |
| **Right hand side** | <code>:t.&lt;CR&gt;</code> |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |

| **Description** | Add a surrounding pair around the current line (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |

| **Description** | Add a surrounding pair around a motion (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;m</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-merge-lines)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-merge-lines)</code> |
| **Right hand side** | <code>:call emmet#mergeLines()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;A</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> |
| **Right hand side** | <code>:call emmet#anchorizeURL(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> |
| **Right hand side** | <code>:call emmet#anchorizeURL(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;k</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-remove-tag)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-remove-tag)</code> |
| **Right hand side** | <code>:call emmet#removeTag()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;j</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> |
| **Right hand side** | <code>:call emmet#splitJoinTag()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;/</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> |
| **Right hand side** | <code>:call emmet#toggleComment()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;I</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-image-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-image-encode)</code> |
| **Right hand side** | <code>:call emmet#imageEncode()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;i</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-image-size)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-image-size)</code> |
| **Right hand side** | <code>:call emmet#imageSize()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-move-prev-item)</code> |
| **Right hand side** | <code>:call emmet#moveNextPrevItem(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-move-next-item)</code> |
| **Right hand side** | <code>:call emmet#moveNextPrevItem(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;N</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-move-prev)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-move-prev)</code> |
| **Right hand side** | <code>:call emmet#moveNextPrev(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-move-next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-move-next)</code> |
| **Right hand side** | <code>:call emmet#moveNextPrev(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;D</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
| **Right hand side** | <code>:call emmet#balanceTag(-1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;d</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
| **Right hand side** | <code>:call emmet#balanceTag(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;u</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-update-tag)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-update-tag)</code> |
| **Right hand side** | <code>:call emmet#updateTag()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-expand-word)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-expand-word)</code> |
| **Right hand side** | <code>:call emmet#expandAbbr(1,"")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
| **Right hand side** | <code>:call emmet#expandAbbr(3,"")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | |

| **Description** | Change a surrounding pair, putting replacements on new lines |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |
| **Right hand side** | |

| **Description** | Change a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-change)</code> |
| **Right hand side** | |

| **Description** | Delete a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Space&gt;</code> |
| **Right hand side** | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>:NvimTreeToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>:vertical resize +2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | <code>:vertical resize -2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>:resize +2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>:resize -2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'go</code> |
| **Right hand side** | <code>:&lt;C-U&gt; lua require('git.browse').open(true)&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&gt;gv</code> |

| **Description** | Add a surrounding pair around a visual selection |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;c</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-code-pretty)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-code-pretty)</code> |
| **Right hand side** | <code>:call emmet#codePretty()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;D</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call emmet#balanceTag(-1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;d</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call emmet#balanceTag(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
| **Right hand side** | <code>:call emmet#expandAbbr(2,"")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = true })&lt;CR&gt;</code> |

| **Description** | Add a surrounding pair around a visual selection |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = false })&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |

