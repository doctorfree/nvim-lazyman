# Artur Neovim Configuration Information

Personal Neovim config of Artur Gomes

- Install and initialize: **`lazyman -w Artur`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Artur`**

## Git repository

[https://github.com/arturgoms/nvim](https://github.com/arturgoms/nvim)

## Dotfyle entry

[https://dotfyle.com/arturgoms/nvim](https://dotfyle.com/arturgoms/nvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [rmagatti/auto-session](https://github.com/rmagatti/auto-session.git)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-emoji](https://github.com/hrsh7th/cmp-emoji.git)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Saecki/crates.nvim](https://github.com/Saecki/crates.nvim.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [ibhagwan/fzf-lua](https://github.com/ibhagwan/fzf-lua.git)
- [ruifm/gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [ray-x/go.nvim](https://github.com/ray-x/go.nvim)
- [ray-x/guihua.lua](https://github.com/ray-x/guihua.lua)
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)
- [lewis6991/impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [arturgoms/moonbow.nvim](https://github.com/arturgoms/moonbow.nvim.git)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [windwp/nvim-spectre](https://github.com/windwp/nvim-spectre.git)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [mrjones2014/nvim-ts-rainbow](https://github.com/mrjones2014/nvim-ts-rainbow)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope-media-files.nvim](https://github.com/nvim-telescope/telescope-media-files.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [aserowy/tmux.nvim](https://github.com/aserowy/tmux.nvim.git)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [moll/vim-bbye](https://github.com/moll/vim-bbye)
- [MattesGroeger/vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks.git)
- [mattn/vim-gist](https://github.com/mattn/vim-gist.git)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [szw/vim-maximizer](https://github.com/szw/vim-maximizer)
- [kshenoy/vim-signature](https://github.com/kshenoy/vim-signature)
- [liuchengxu/vista.vim](https://github.com/liuchengxu/vista.vim.git)
- [mattn/webapi-vim](https://github.com/mattn/webapi-vim.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## Artur Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Esc&gt;&lt;Esc&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gy</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> we</code> |
| **Right hand side** | <code>&lt;C-W&gt;=</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> wh</code> |
| **Right hand side** | <code>&lt;C-W&gt;s</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> wv</code> |
| **Right hand side** | <code>:close&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> -</code> |
| **Right hand side** | <code>&lt;C-X&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> +</code> |
| **Right hand side** | <code>&lt;C-A&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> d</code> |
| **Right hand side** | <code>"_d</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> Y</code> |
| **Right hand side** | <code>"+Y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> y</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'[</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "line", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>']</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "line", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('harpoon.ui').nav_prev()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>.</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('harpoon.ui').nav_next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>:lua require('user.functions').show_documentation()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M0</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M9</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M8</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M7</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M6</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M5</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M4</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M3</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M2</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M1</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>U</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[=</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Goto("prev", "any",  v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Goto("prev", "same", v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[`</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "spot", "pos")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>['</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "line", "pos")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]=</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Goto("next", "any",  v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Goto("next", "same", v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]`</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "spot", "pos")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]'</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "line", "pos")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>`[</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "spot", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>`]</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "spot", "alpha")&lt;CR&gt;</code> |

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
| **Left hand side** | <code>dm</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#utils#Remove(v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | Comment insert end of line |
| :---- | :---- |
| **Left hand side** | <code>gcA</code> |
| **Right hand side** | |

| **Description** | Comment insert above |
| :---- | :---- |
| **Left hand side** | <code>gcO</code> |
| **Right hand side** | |

| **Description** | Comment insert below |
| :---- | :---- |
| **Left hand side** | <code>gco</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>mg</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkMoveToLine</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>mjj</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkMoveDown</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>mkk</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkMoveUp</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>mx</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkClearAll</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>mc</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkClear</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>mp</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkPrev</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>mn</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkNext</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>mi</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkAnnotate</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>mm</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkToggle</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ma</code> |
| **Right hand side** | <code>&lt;Plug&gt;BookmarkShowAll</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m?</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#List(v:count, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m/</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#List(0, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m&lt;BS&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Purge()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m </code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Purge("all")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Purge("line")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m.</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#ToggleAtLine()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m,</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Toggle("next")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#utils#Input()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zb(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zz(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zt(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |
| **Right hand side** | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.resize_bottom()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.resize_left()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.resize_top()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.resize_right()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-3&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua _HORIZONTAL_TERM()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-2&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua _VERTICAL_TERM()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-1&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua _FLOAT_TERM()&lt;CR&gt;</code> |

| **Description** | Toggle Terminal |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-E&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;2-LeftMouse&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-double-click)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-reload)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;MatchupReload&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-double-click)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#double_click()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(0, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(0, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(0, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(0, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;27_(wise)</code> |
| **Right hand side** | <code>empty(g:v_motion_force) ? 'v' : g:v_motion_force</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-hi-surround)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#matchparen#highlight_surrounding()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkMoveToLine</code> |
| **Right hand side** | <code>:&lt;C-U&gt;BookmarkMoveToLine v:count&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkMoveDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;BookmarkMoveDown v:count&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkMoveUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;BookmarkMoveUp v:count&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkClearAll</code> |
| **Right hand side** | <code>:BookmarkClearAll&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkClear</code> |
| **Right hand side** | <code>:BookmarkClear&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkPrev</code> |
| **Right hand side** | <code>:BookmarkPrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkNext</code> |
| **Right hand side** | <code>:BookmarkNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkAnnotate</code> |
| **Right hand side** | <code>:BookmarkAnnotate&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkToggle</code> |
| **Right hand side** | <code>:BookmarkToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;BookmarkShowAll</code> |
| **Right hand side** | <code>:BookmarkShowAll&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | Comment toggle blockwise with count |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise with count |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F3&gt;</code> |
| **Right hand side** | <code>:MaximizerToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>:e ~/Notes/&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Z&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ZenMode&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vsplit&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-T&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.document_symbol()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-P&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope projects&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Right&gt;</code> |
| **Right hand side** | <code>:vertical resize +2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Left&gt;</code> |
| **Right hand side** | <code>:vertical resize -2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Down&gt;</code> |
| **Right hand side** | <code>:resize +2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Up&gt;</code> |
| **Right hand side** | <code>:resize -2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Down&gt;</code> |
| **Right hand side** | <code>:m+&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Up&gt;</code> |
| **Right hand side** | <code>:m-2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Space&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;WhichKey \ &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_top()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_bottom()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_left()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_right()&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gy</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('v')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> d</code> |
| **Right hand side** | <code>"_d</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> y</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> p</code> |
| **Right hand side** | <code>"_dP</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code></code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |

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
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | <code>"_dP</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zt(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zb(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zz(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F3&gt;</code> |
| **Right hand side** | <code>:MaximizerToggle&lt;CR&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-E&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(0, 1, 'delim_all')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(1, 1, 'delim_all')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-Z%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;21_(matchup-Z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;21_(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;21_(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;21_(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;21_(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;21_(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;21_(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;21_(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;21_(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;21_(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;21_(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;21_(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>:m .-2&lt;CR&gt;==</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>:m .+1&lt;CR&gt;==</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(0, 0, 'delim_all')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(1, 0, 'delim_all')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('Z%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('z%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('[%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op(']%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('g%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('%')&lt;CR&gt;</code> |

