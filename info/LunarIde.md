# LunarIde Neovim Configuration Information

LunarVim config based on [Christian Chiarulli's](https://github.com/ChristianChiarulli/lvim). Java, Python, Lua, Go, JavaScript, Typescript, React, and Rust IDE

- Install and initialize: **`lazyman -L LunarIde`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     [LunarVim](https://www.lunarvim.org)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-LunarIde`**

## Git repository

[https://github.com/doctorfree/lvim-Christian](https://github.com/doctorfree/lvim-Christian)

## Website

[https://www.lunarvim.org](https://www.lunarvim.org)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [jackMort/ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim.git)
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [lunarvim/bigfile.nvim](https://github.com/lunarvim/bigfile.nvim.git)
- [ChristianChiarulli/bookmark.nvim](https://github.com/ChristianChiarulli/bookmark.nvim.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-emoji](https://github.com/hrsh7th/cmp-emoji.git)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [zbirenbaum/copilot-cmp](https://github.com/zbirenbaum/copilot-cmp.git)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua.git)
- [saecki/crates.nvim](https://github.com/saecki/crates.nvim.git)
- [lunarvim/darkplus.nvim](https://github.com/lunarvim/darkplus.nvim.git)
- [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim.git)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [jinh0/eyeliner.nvim](https://github.com/jinh0/eyeliner.nvim.git)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [f-person/git-blame.nvim](https://github.com/f-person/git-blame.nvim.git)
- [ruifm/gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [olexsmir/gopher.nvim](https://github.com/olexsmir/gopher.nvim.git)
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [is0n/jaq-nvim](https://github.com/is0n/jaq-nvim.git)
- [0x100101/lab.nvim](https://github.com/0x100101/lab.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [tamago324/lir.nvim](https://github.com/tamago324/lir.nvim.git)
- [lvimuser/lsp-inlayhints.nvim](https://github.com/lvimuser/lsp-inlayhints.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [lunarvim/lunar.nvim](https://github.com/lunarvim/lunar.nvim.git)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [mawkler/modicator.nvim](https://github.com/mawkler/modicator.nvim.git)
- [Bryley/neoai.nvim](https://github.com/Bryley/neoai.nvim.git)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)
- [nvim-neotest/neotest-python](https://github.com/nvim-neotest/neotest-python)
- [tamago324/nlsp-settings.nvim](https://github.com/tamago324/nlsp-settings.nvim.git)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [nacro90/numb.nvim](https://github.com/nacro90/numb.nvim.git)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go)
- [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python.git)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [mxsdev/nvim-dap-vscode-js](https://github.com/mxsdev/nvim-dap-vscode-js.git)
- [kndndrj/nvim-dbee](https://github.com/kndndrj/nvim-dbee.git)
- [mfussenegger/nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [petertriho/nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar.git)
- [windwp/nvim-spectre](https://github.com/windwp/nvim-spectre.git)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [HiPhish/nvim-ts-rainbow2](https://github.com/HiPhish/nvim-ts-rainbow2.git)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [lunarvim/onedarker.nvim](https://github.com/lunarvim/onedarker.nvim.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [LunarVim/primer.nvim](https://github.com/LunarVim/primer.nvim.git)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
- [b0o/schemastore.nvim](https://github.com/b0o/schemastore.nvim)
- [tami5/sqlite.lua](https://github.com/tami5/sqlite.lua)
- [Tastyep/structlog.nvim](https://github.com/Tastyep/structlog.nvim.git)
- [AckslD/swenv.nvim](https://github.com/AckslD/swenv.nvim.git)
- [lunarvim/synthwave84.nvim](https://github.com/lunarvim/synthwave84.nvim.git)
- [roobert/tailwindcss-colorizer-cmp.nvim](https://github.com/roobert/tailwindcss-colorizer-cmp.nvim.git)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [christianchiarulli/telescope-tabs](https://github.com/christianchiarulli/telescope-tabs.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [jose-elias-alvarez/typescript.nvim](https://github.com/jose-elias-alvarez/typescript.nvim)
- [moll/vim-bbye](https://github.com/moll/vim-bbye)
- [ThePrimeagen/vim-be-good](https://github.com/ThePrimeagen/vim-be-good)
- [mattn/vim-gist](https://github.com/mattn/vim-gist.git)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [psliwka/vim-smoothie](https://github.com/psliwka/vim-smoothie)
- [mattn/webapi-vim](https://github.com/mattn/webapi-vim.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

## LunarIde Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('telescope').extensions.bookmark.filemarks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Filemarks'})&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>#zz</code> |

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
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>*zz</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>-</code> |
| **Right hand side** | <code>:lua require'lir.float'.toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>:lua require('user.keymaps').show_documentation()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>Nzz</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>Q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Bdelete!&lt;CR&gt;</code> |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>SS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
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
| **Left hand side** | <code>[q</code> |
| **Right hand side** | <code>:cprev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\ag</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require('neoai.shortcuts').shortcut_functions['__uid2n']()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\gy</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\'</code> |
| **Right hand side** | <code>siw'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]q</code> |
| **Right hand side** | <code>:cnext&lt;CR&gt;</code> |

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
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>:silent execute '!$BROWSER ' . shellescape(expand('&lt;lt&gt;cfile&gt;'), 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g#</code> |
| **Right hand side** | <code>g#zz</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g*</code> |
| **Right hand side** | <code>g*zz</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>nzz</code> |

| **Description** | Add a surrounding pair around the current line (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>ss</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |

| **Description** | Add a surrounding pair around a motion (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("zb")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z-</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z-")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("zz")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z.</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z.")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z&lt;CR&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z\&lt;lt&gt;CR&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("zt")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z^</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z^")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z+</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z+")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>{</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("{")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>}</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("}")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;SNR&gt;26_(wise)</code> |
| **Right hand side** | <code>empty(g:v_motion_force) ? 'v' : g:v_motion_force</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-hi-surround)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#matchparen#highlight_surrounding()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieBackwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#backwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieForwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#forwards()  &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieUpwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#upwards()   &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieDownwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#downwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelUp&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;ScrollWheelUp&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelDown&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;ScrollWheelDown&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;PageUp&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;PageUp&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Up&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;S-Up&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;C-B&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;PageDown&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;PageDown&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Down&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;S-Down&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;C-F&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;C-U&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;C-D&gt;")&lt;CR&gt;</code> |

| **Description** | Float Terminal |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-3&gt;</code> |
| **Right hand side** | |

| **Description** | Vertical Terminal |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-2&gt;</code> |
| **Right hand side** | |

| **Description** | Horizontal Terminal |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-1&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('copilot.suggestion').toggle_auto_trigger()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal('mygroup')&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal('mygroup')&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-r&gt;</code> |
| **Right hand side** | <code>:silent only &#124; Jaq&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;M-q&gt;</code> |
| **Right hand side** | <code>:call QuickFixToggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-/&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('Comment.api').toggle_current_linewise()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-v&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('lsp_lines').toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Z&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ZenMode&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F7&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TSHighlightCapturesUnderCursor&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F6&gt;</code> |
| **Right hand side** | <code>:echo "hi&lt;lt&gt;" . synIDattr(synID(line("."),col("."),1),"name") . '&gt; trans&lt;lt&gt;' . synIDattr(synID(line("."),col("."),0),"name") . "&gt; lo&lt;lt&gt;" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . "&gt;" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-M&gt;</code> |
| **Right hand side** | <code>M</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;FilemarkPrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;FilemarkNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BookmarkPrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BookmarkNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-Tab&gt;</code> |
| **Right hand side** | <code>&lt;C-6&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-I&gt;</code> |
| **Right hand side** | <code>&lt;Tab&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Space&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;WhichKey \ &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Right&gt;</code> |
| **Right hand side** | <code>:vertical resize +2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

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
| **Left hand side** | <code>&lt;C-Q&gt;</code> |
| **Right hand side** | <code>:call QuickFixToggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;C-U&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;C-D&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |


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
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\as</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require('neoai.shortcuts').shortcut_functions['__uid1v']()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\gy</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('v')&lt;CR&gt;</code> |

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
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | <code>"_dP</code> |

| **Description** | Add a surrounding pair around a visual selection |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("zb")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z-</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z-")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("zz")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z.</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z.")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z&lt;CR&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z\&lt;lt&gt;CR&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("zt")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z^</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z^")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z+</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("z+")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>{</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("{")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>}</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("}")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_visual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_visual"&lt;CR&gt;g@gv</code> |

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
| **Right hand side** | <code>&lt;SNR&gt;20_(matchup-Z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;20_(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;20_(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;20_(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;20_(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;20_(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;20_(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;20_(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;20_(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;20_(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;20_(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;20_(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieBackwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#backwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieForwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#forwards()  &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieUpwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#upwards()   &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieDownwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#downwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelUp&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;ScrollWheelUp&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelDown&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;ScrollWheelDown&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;PageUp&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;PageUp&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Up&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;S-Up&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;C-B&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;PageDown&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;PageDown&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Down&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;S-Down&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;C-F&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;C-U&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let [v:hlsearch, @/, v:searchforward]=smoothie#do("\&lt;lt&gt;C-D&gt;")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal('visual')&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal('visual')&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;C-U&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;C-D&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-/&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv-gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>:m '&gt;+1&lt;CR&gt;gv-gv</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieBackwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#backwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieForwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#forwards()  &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieUpwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#upwards()   &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieDownwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#downwards() &lt;CR&gt;</code> |

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

