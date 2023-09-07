# Roiz Neovim Configuration Information

Just a random Neovim config found on Github, works well

- Install and initialize: **`lazyman -w Roiz`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Roiz`**

## Git repository

[https://github.com/MrRoiz/rnvim](https://github.com/MrRoiz/rnvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [rmagatti/goto-preview](https://github.com/rmagatti/goto-preview)
- [NMAC427/guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.cursorword](https://github.com/echasnovski/mini.cursorword.git)
- [echasnovski/mini.move](https://github.com/echasnovski/mini.move.git)
- [Shatur/neovim-ayu](https://github.com/Shatur/neovim-ayu)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [petertriho/nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar.git)
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre.git)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons.git)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- [pwntester/octo.nvim](https://github.com/pwntester/octo.nvim)
- [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [kevinhwang91/promise-async](https://github.com/kevinhwang91/promise-async)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## Roiz Keymaps

### Normal mode keymaps

| **Description** | Move line right |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMove.move_line('right')&lt;CR&gt;</code> |

| **Description** | Open Telescope Keymaps |
| :---- | :---- |
| **Left hand side** | <code> k</code> |
| **Right hand side** | <code>:Telescope keymaps&lt;CR&gt;</code> |

| **Description** | Show git branches |
| :---- | :---- |
| **Left hand side** | <code> gb</code> |
| **Right hand side** | <code>:Telescope git_branches initial_mode=normal&lt;CR&gt;</code> |

| **Description** | Show git log |
| :---- | :---- |
| **Left hand side** | <code> glo</code> |
| **Right hand side** | <code>:Telescope git_commits initial_mode=normal&lt;CR&gt;</code> |

| **Description** | Open Telescope live_grep |
| :---- | :---- |
| **Left hand side** | <code> fg</code> |
| **Right hand side** | <code>:Telescope live_grep&lt;CR&gt;</code> |

| **Description** | Open Telescope |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | <code>:Telescope find_files&lt;CR&gt;</code> |

| **Description** | Show git status |
| :---- | :---- |
| **Left hand side** | <code> gst</code> |
| **Right hand side** | <code>:Telescope git_status initial_mode=normal&lt;CR&gt;</code> |

| **Description** | List PR's |
| :---- | :---- |
| **Left hand side** | <code> opl</code> |
| **Right hand side** | <code>:Octo pr list initial_mode=normal&lt;CR&gt;</code> |

| **Description** | Submit PR review |
| :---- | :---- |
| **Left hand side** | <code> orss</code> |
| **Right hand side** | <code>:Octo review submit&lt;CR&gt;</code> |

| **Description** | Start PR review |
| :---- | :---- |
| **Left hand side** | <code> ors</code> |
| **Right hand side** | <code>:Octo review start&lt;CR&gt;</code> |

| **Description** | Close current review |
| :---- | :---- |
| **Left hand side** | <code> orc</code> |
| **Right hand side** | <code>:Octo review close&lt;CR&gt;</code> |

| **Description** | Resume PR review |
| :---- | :---- |
| **Left hand side** | <code> orr</code> |
| **Right hand side** | <code>:Octo review resume&lt;CR&gt;</code> |

| **Description** | Reload current PR |
| :---- | :---- |
| **Left hand side** | <code> opr</code> |
| **Right hand side** | <code>:Octo pr reload&lt;CR&gt;</code> |

| **Description** | Open a floating term |
| :---- | :---- |
| **Left hand side** | <code> tt</code> |
| **Right hand side** | <code>:ToggleTerm direction=float&lt;CR&gt;</code> |

| **Description** | Search current word with Spectre |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | <code>:lua require('spectre').open_visual({select_word=true})&lt;CR&gt;</code> |

| **Description** | Open Spectre |
| :---- | :---- |
| **Left hand side** | <code> ss</code> |
| **Right hand side** | <code>:lua require('spectre').open()&lt;CR&gt;</code> |

| **Description** | Search on current file with Spectre |
| :---- | :---- |
| **Left hand side** | <code> sf</code> |
| **Right hand side** | <code>:lua require('spectre').open_file_search({select_word=true})&lt;CR&gt;</code> |

| **Description** | Close diffview |
| :---- | :---- |
| **Left hand side** | <code> dcc</code> |
| **Right hand side** | <code>:DiffviewClose&lt;CR&gt;</code> |

| **Description** | Open diffview |
| :---- | :---- |
| **Left hand side** | <code> dv</code> |
| **Right hand side** | <code>:DiffviewOpen&lt;CR&gt;</code> |

| **Description** | Show current file history |
| :---- | :---- |
| **Left hand side** | <code> dch</code> |
| **Right hand side** | <code>:DiffviewFileHistory %&lt;CR&gt;</code> |

| **Description** | Show Commit history with changes |
| :---- | :---- |
| **Left hand side** | <code> dh</code> |
| **Right hand side** | <code>:DiffviewFileHistory&lt;CR&gt;</code> |

| **Description** | Test keymap |
| :---- | :---- |
| **Left hand side** | <code> test</code> |
| **Right hand side** | <code>:echo 'This is a test keymap!'&lt;CR&gt;</code> |

| **Description** | Select all |
| :---- | :---- |
| **Left hand side** | <code> a</code> |
| **Right hand side** | <code>ggvG&lt;S-End&gt;</code> |

| **Description** | Where am I |
| :---- | :---- |
| **Left hand side** | <code> wai</code> |
| **Right hand side** | <code>:echo expand('%:p')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | go to the beggining of the line |
| :---- | :---- |
| **Left hand side** | <code>B</code> |
| **Right hand side** | <code>^</code> |

| **Description** | go to the end of the line |
| :---- | :---- |
| **Left hand side** | <code>E</code> |
| **Right hand side** | <code>$</code> |

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
| **Left hand side** | <code>\\gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Reselect-Last)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\/</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Start-Regex-Search)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\\</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\A</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Select-All)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | Clear search highlight |
| :---- | :---- |
| **Left hand side** | <code>_</code> |
| **Right hand side** | <code>:noh&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

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

| **Description** | Close preview windows |
| :---- | :---- |
| **Left hand side** | <code>gP</code> |
| **Right hand side** | |

| **Description** | Preview references |
| :---- | :---- |
| **Left hand side** | <code>gpr</code> |
| **Right hand side** | |

| **Description** | Preview implementation |
| :---- | :---- |
| **Left hand side** | <code>gpi</code> |
| **Right hand side** | |

| **Description** | Preview type definition |
| :---- | :---- |
| **Left hand side** | <code>gpt</code> |
| **Right hand side** | |

| **Description** | Preview definition |
| :---- | :---- |
| **Left hand side** | <code>gpd</code> |
| **Right hand side** | |

| **Description** | Open all folds |
| :---- | :---- |
| **Left hand side** | <code>zR</code> |
| **Right hand side** | |

| **Description** | Close all folds |
| :---- | :---- |
| **Left hand side** | <code>zM</code> |
| **Right hand side** | |

| **Description** | Quit Nvim |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;</code> |
| **Right hand side** | <code>:q&lt;CR&gt;</code> |

| **Description** | Move down faster |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>10j</code> |

| **Description** | Move up faster |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>10k</code> |

| **Description** | Format file |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-F&gt;</code> |
| **Right hand side** | <code>:lua vim.lsp.buf.format({ timeout_ms = 5000 })&lt;CR&gt;</code> |

| **Description** | Save current file |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>:w&lt;CR&gt;</code> |

| **Description** | Update buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;F5&gt;</code> |
| **Right hand side** | <code>:bufdo e!&lt;CR&gt;</code> |

| **Description** | Close current buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-w&gt;</code> |
| **Right hand side** | <code>:bd&lt;CR&gt;</code> |

| **Description** | Move to the previous buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |

| **Description** | Move to the next buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>:BufferLineCycleNext&lt;CR&gt;</code> |

| **Description** | Open Nvimtree |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>:NvimTreeFindFileToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |
| **Right hand side** | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;C-Down&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Down)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Up&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Up)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Right&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Select-l)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Left&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Select-h)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Find-Under)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-BBW)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('BBW', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-gE)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('gE', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-ge)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('ge', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-E)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('E', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-e)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('e', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-B)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('B', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-b)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('b', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-W)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('W', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-w)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('w', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-l)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('l', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-k)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('k', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-j)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('j', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-h)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('h', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Mouse-Column)</code> |
| **Right hand side** | <code>:call vm#commands#mouse_column()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Mouse-Word)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Left-Mouse)&lt;Plug&gt;(VM-Find-Under)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Mouse-Cursor)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Left-Mouse)&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Left-Mouse)</code> |
| **Right hand side** | <code>&lt;LeftMouse&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Slash-Search)</code> |
| **Right hand side** | <code>@=vm#commands#find_by_regex(3)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Start-Regex-Search)</code> |
| **Right hand side** | <code>@=vm#commands#find_by_regex(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Find-Under)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#ctrln(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-All)</code> |
| **Right hand side** | <code>:call vm#commands#find_all(0, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Reselect-Last)</code> |
| **Right hand side** | <code>:call vm#commands#reselect_last()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-Cursor-Up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#add_cursor_up(1, v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-Cursor-Down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#add_cursor_down(1, v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#add_cursor_up(0, v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#add_cursor_down(0, v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Word)</code> |
| **Right hand side** | <code>:call vm#commands#add_cursor_at_word(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |
| **Right hand side** | <code>:call vm#commands#add_cursor_at_pos(0)&lt;CR&gt;</code> |

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

| **Description** | Move line up |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMove.move_line('up')&lt;CR&gt;</code> |

| **Description** | Move line down |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMove.move_line('down')&lt;CR&gt;</code> |

| **Description** | Move line left |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMove.move_line('left')&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

| **Description** | Close current buffer |
| :---- | :---- |
| **Left hand side** | <code>æ</code> |
| **Right hand side** | <code>:bd&lt;CR&gt;</code> |

| **Description** | Move to the previous buffer |
| :---- | :---- |
| **Left hand side** | <code>™</code> |
| **Right hand side** | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |

| **Description** | Format file |
| :---- | :---- |
| **Left hand side** | <code>ﬁ</code> |
| **Right hand side** | <code>:lua vim.lsp.buf.format({ timeout_ms = 5000 })&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Move right |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMove.move_selection('right')&lt;CR&gt;</code> |

| **Description** | Search on current file with Spectre |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require('spectre').open_visual()&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\c</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-Add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\f</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-Find)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\/</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\A</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-All)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

| **Description** | Move down faster |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>10j</code> |

| **Description** | Move up faster |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>10k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> |
| **Right hand side** | <code>:call vm#commands#find_by_regex(2)&lt;CR&gt;:call feedkeys('/', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> |
| **Right hand side** | <code>&lt;SNR&gt;20_Visual('under')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Reduce)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#visual#reduce()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Add)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call vm#commands#visual_add()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call vm#commands#visual_cursors()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-All)</code> |
| **Right hand side** | <code>&lt;SNR&gt;20_Visual('all')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Find)</code> |
| **Right hand side** | <code>vm#operators#find(1, 1)</code> |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Move up |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMove.move_selection('up')&lt;CR&gt;</code> |

| **Description** | Move down |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMove.move_selection('down')&lt;CR&gt;</code> |

| **Description** | Move left |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMove.move_selection('left')&lt;CR&gt;</code> |


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

