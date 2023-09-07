# Knvim Neovim Configuration Information

Targets Python, Bash, LaTeX, Markdown, and C/C++. See the [Knvim Config Cheat Sheet](https://github.com/knmac/knvim/blob/main/res/cheatsheet.md)

- Install and initialize: **`lazyman -L Knvim`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Knvim`**

## Git repository

[https://github.com/knmac/knvim](https://github.com/knmac/knvim)

## Dotfyle entry

[https://dotfyle.com/knmac/knvim](https://dotfyle.com/knmac/knvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim.git)
- [utilyre/barbecue.nvim](https://github.com/utilyre/barbecue.nvim.git)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-calc](https://github.com/hrsh7th/cmp-calc)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lsp-signature-help](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help.git)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [nvim-zh/colorful-winsep.nvim](https://github.com/nvim-zh/colorful-winsep.nvim.git)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [danymat/neogen](https://github.com/danymat/neogen.git)
- [nvim-neorg/neorg](https://github.com/nvim-neorg/neorg)
- [Shatur/neovim-session-manager](https://github.com/Shatur/neovim-session-manager)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [LiadOz/nvim-dap-repl-highlights](https://github.com/LiadOz/nvim-dap-repl-highlights.git)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [scalameta/nvim-metals](https://github.com/scalameta/nvim-metals.git)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [s1n7ax/nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [rlane/pounce.nvim](https://github.com/rlane/pounce.nvim.git)
- [kevinhwang91/promise-async](https://github.com/kevinhwang91/promise-async)
- [HiPhish/rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim.git)
- [luukvbaal/statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim)
- [AckslD/swenv.nvim](https://github.com/AckslD/swenv.nvim.git)
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [nvim-telescope/telescope-bibtex.nvim](https://github.com/nvim-telescope/telescope-bibtex.nvim)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [dmmulroy/vim-kitty-navigator](https://github.com/dmmulroy/vim-kitty-navigator)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

## Knvim Keymaps

### Normal mode keymaps

| **Description** | Switch python env |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SessionManager load_session&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> n</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope notify&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ?</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope commands&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope help_tags&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope file_browser&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> v</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope vim_options&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> c</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope bibtex&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> /</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> b</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> t</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> f</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>  </code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | DAP: Terminate debugging |
| :---- | :---- |
| **Left hand side** | <code>,t</code> |
| **Right hand side** | |

| **Description** | DAP: Step out |
| :---- | :---- |
| **Left hand side** | <code>,u</code> |
| **Right hand side** | |

| **Description** | DAP: Step into |
| :---- | :---- |
| **Left hand side** | <code>,s</code> |
| **Right hand side** | |

| **Description** | DAP: Step over |
| :---- | :---- |
| **Left hand side** | <code>,n</code> |
| **Right hand side** | |

| **Description** | DAP: Toggle breakpoint with condition |
| :---- | :---- |
| **Left hand side** | <code>,B</code> |
| **Right hand side** | |

| **Description** | DAP: Toggle breakpoint |
| :---- | :---- |
| **Left hand side** | <code>,b</code> |
| **Right hand side** | |

| **Description** | DAP: Run the last debug adapter entry |
| :---- | :---- |
| **Left hand side** | <code>,l</code> |
| **Right hand side** | |

| **Description** | DAP: Start/Continue debugging |
| :---- | :---- |
| **Left hand side** | <code>,c</code> |
| **Right hand side** | |

| **Description** | DAP: Check variable value on hover |
| :---- | :---- |
| **Left hand side** | <code>,k</code> |
| **Right hand side** | |

| **Description** | DAP: Open default REPL |
| :---- | :---- |
| **Left hand side** | <code>,D</code> |
| **Right hand side** | |

| **Description** | DAP: Toggle UI |
| :---- | :---- |
| **Left hand side** | <code>,d</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Cmd&gt;PounceRepeat&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | LSP: Go to the previous diagnostic |
| :---- | :---- |
| **Left hand side** | <code>[e</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

| **Description** | LSP: Show all diagnostics |
| :---- | :---- |
| **Left hand side** | <code>\E</code> |
| **Right hand side** | |

| **Description** | LSP: Show diagnostics of the current line |
| :---- | :---- |
| **Left hand side** | <code>\e</code> |
| **Right hand side** | |

| **Description** | DAP: Dismiss current notify message |
| :---- | :---- |
| **Left hand side** | <code>\n</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\=</code> |
| **Right hand side** | <code>:call FillLine("=")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\-</code> |
| **Right hand side** | <code>:call FillLine("-")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\z</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ZenMode&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\o</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SymbolsOutline&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\T</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Neotree reveal&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\t</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Neotree toggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\d</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Neogen&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |

| **Description** | LSP: Go to the next diagnostic |
| :---- | :---- |
| **Left hand side** | <code>]e</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

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
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Pounce&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>&lt;SNR&gt;24_(wise)</code> |
| **Right hand side** | <code>empty(g:v_motion_force) ? 'v' : g:v_motion_force</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-hi-surround)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#matchparen#highlight_surrounding()&lt;CR&gt;</code> |

| **Description** | Move to previous reference |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-p&gt;</code> |
| **Right hand side** | |

| **Description** | Move to next reference |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-n&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignOperator)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;12_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;12_easy_align_repeat()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(LiveEasyAlign)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;12_live_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;12_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F24&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Alpha&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F12&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;set nu rnu!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F23&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ColorizerToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F11&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ZenMode&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F22&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;make clean&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F10&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;make&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F21&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ClearRegisters&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F9&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;%s/\s\+$//e&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F20&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabclose&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F8&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferClose&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F19&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F7&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F18&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F6&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferPrevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F17&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabs&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F5&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F16&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope diagnostics&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F4&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SymbolsOutline&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F15&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Neotree dir=%:p:h&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F3&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Neotree toggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F14&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TodoTelescope&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F2&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.rename()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F13&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope keymaps&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F1&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope help_tags&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-/&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-P&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferPin&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-S-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferMoveNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-S-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferClose&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-S-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferRestore&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-S-H&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferMovePrevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferPickDelete&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferPick&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-H&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferPrevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l&lt;C-W&gt;x</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k&lt;C-W&gt;x</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j&lt;C-W&gt;x</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h&lt;C-W&gt;x</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |

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
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Pounce&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;31_repeat_in_visual()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(LiveEasyAlign)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;31_live_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;31_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-i&gt;</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

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
| **Right hand side** | <code>&lt;SNR&gt;18_(matchup-Z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;18_(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;18_(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;18_(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;18_(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;18_(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;18_(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;18_(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;18_(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;18_(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;18_(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;18_(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 1)&lt;CR&gt;</code> |


### Operator mode keymaps

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
| **Left hand side** | <code>gs</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Pounce&lt;CR&gt;</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-i&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

