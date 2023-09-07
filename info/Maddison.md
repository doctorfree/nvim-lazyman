# Maddison Neovim Configuration Information

Personal Neovim configuration of Maddison Hellstrom, author of 'incline.nvim' floating statuslines, 'SchemaStore.nvim' JSON schemas, 'mapx.nvim' better keymaps

- Install and initialize: **`lazyman -w Maddison`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Maddison`**

## Git repository

[https://github.com/b0o/nvim-conf](https://github.com/b0o/nvim-conf)

## Dotfyle entry

[https://dotfyle.com/b0o/nvim-conf](https://dotfyle.com/b0o/nvim-conf)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [chrisbra/Recover.vim](https://github.com/chrisbra/Recover.vim.git)
- [aznhe21/actions-preview.nvim](https://github.com/aznhe21/actions-preview.nvim.git)
- [stevearc/aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [chriskempson/base16-vim](https://github.com/chriskempson/base16-vim.git)
- [winston0410/cmd-parser.nvim](https://github.com/winston0410/cmd-parser.nvim.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [dcampos/cmp-emmet-vim](https://github.com/dcampos/cmp-emmet-vim.git)
- [petertriho/cmp-git](https://github.com/petertriho/cmp-git.git)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [andersevenrud/cmp-tmux](https://github.com/andersevenrud/cmp-tmux.git)
- [ray-x/cmp-treesitter](https://github.com/ray-x/cmp-treesitter.git)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [simrat39/desktop-notify.nvim](https://github.com/simrat39/desktop-notify.nvim.git)
- [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim.git)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [axkirillov/easypick.nvim](https://github.com/axkirillov/easypick.nvim.git)
- [editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim.git)
- [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
- [jinh0/eyeliner.nvim](https://github.com/jinh0/eyeliner.nvim.git)
- [feline-nvim/feline.nvim](https://github.com/feline-nvim/feline.nvim)
- [mattn/gist-vim](https://github.com/mattn/gist-vim.git)
- [ThePrimeagen/git-worktree.nvim](https://github.com/ThePrimeagen/git-worktree.nvim.git)
- [ruifm/gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [DNLHC/glance.nvim](https://github.com/DNLHC/glance.nvim.git)
- [lewis6991/hover.nvim](https://github.com/lewis6991/hover.nvim.git)
- [mboughaba/i3config.vim](https://github.com/mboughaba/i3config.vim.git)
- [b0o/incline.nvim](https://github.com/b0o/incline.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [smjonas/live-command.nvim](https://github.com/smjonas/live-command.nvim.git)
- [folke/lsp-colors.nvim](https://github.com/folke/lsp-colors.nvim.git)
- [lukas-reineke/lsp-format.nvim](https://github.com/lukas-reineke/lsp-format.nvim.git)
- [nvim-lua/lsp-status.nvim](https://github.com/nvim-lua/lsp-status.nvim.git)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [rktjmp/lush.nvim](https://github.com/rktjmp/lush.nvim.git)
- [b0o/mapx.nvim](https://github.com/b0o/mapx.nvim.git)
- [chentoast/marks.nvim](https://github.com/chentoast/marks.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)
- [marilari88/neotest-vitest](https://github.com/marilari88/neotest-vitest.git)
- [Shatur/neovim-session-manager](https://github.com/Shatur/neovim-session-manager)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [SmiteshP/nvim-gps](https://github.com/SmiteshP/nvim-gps.git)
- [kevinhwang91/nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens.git)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [bfredl/nvim-luadev](https://github.com/bfredl/nvim-luadev.git)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [chrisgrieser/nvim-recorder](https://github.com/chrisgrieser/nvim-recorder.git)
- [akinsho/nvim-toggleterm.lua](https://github.com/akinsho/nvim-toggleterm.lua)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [s1n7ax/nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)
- [jakemason/ouroboros.nvim](https://github.com/jakemason/ouroboros.nvim.git)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [winston0410/range-highlight.nvim](https://github.com/winston0410/range-highlight.nvim.git)
- [ThePrimeagen/refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim.git)
- [b0o/schemastore.nvim](https://github.com/b0o/schemastore.nvim)
- [Wansmer/sibling-swap.nvim](https://github.com/Wansmer/sibling-swap.nvim.git)
- [mrjones2014/smart-splits.nvim](https://github.com/mrjones2014/smart-splits.nvim)
- [aouelete/sway-vim-syntax](https://github.com/aouelete/sway-vim-syntax.git)
- [godlygeek/tabular](https://github.com/godlygeek/tabular)
- [nvim-telescope/telescope-github.nvim](https://github.com/nvim-telescope/telescope-github.nvim)
- [nvim-telescope/telescope-live-grep-args.nvim](https://github.com/nvim-telescope/telescope-live-grep-args.nvim)
- [kyoh86/telescope-windows.nvim](https://github.com/kyoh86/telescope-windows.nvim.git)
- [natecraddock/telescope-zf-native.nvim](https://github.com/natecraddock/telescope-zf-native.nvim.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [aserowy/tmux.nvim](https://github.com/aserowy/tmux.nvim.git)
- [Wansmer/treesj](https://github.com/Wansmer/treesj)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [pmizio/typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim.git)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [KabbAmine/vCoolor.vim](https://github.com/KabbAmine/vCoolor.vim.git)
- [tpope/vim-abolish](https://github.com/tpope/vim-abolish.git)
- [christoomey/vim-conflicted](https://github.com/christoomey/vim-conflicted.git)
- [tpope/vim-eunuch](https://github.com/tpope/vim-eunuch.git)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [fatih/vim-go](https://github.com/fatih/vim-go)
- [rrethy/vim-hexokinase](https://github.com/rrethy/vim-hexokinase.git)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [matze/vim-move](https://github.com/matze/vim-move.git)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [dstein64/vim-startuptime](https://github.com/dstein64/vim-startuptime)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [kana/vim-textobj-fold](https://github.com/kana/vim-textobj-fold.git)
- [kana/vim-textobj-indent](https://github.com/kana/vim-textobj-indent.git)
- [kana/vim-textobj-line](https://github.com/kana/vim-textobj-line.git)
- [sgur/vim-textobj-parameter](https://github.com/sgur/vim-textobj-parameter.git)
- [kana/vim-textobj-user](https://github.com/kana/vim-textobj-user.git)
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi.git)
- [chaoren/vim-wordmotion](https://github.com/chaoren/vim-wordmotion.git)
- [alx741/vinfo](https://github.com/alx741/vinfo.git)
- [wellle/visual-split.vim](https://github.com/wellle/visual-split.vim.git)
- [mattn/webapi-vim](https://github.com/mattn/webapi-vim.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [sindrets/winshift.nvim](https://github.com/sindrets/winshift.nvim.git)
- [ziglang/zig.vim](https://github.com/ziglang/zig.vim)

## Maddison Keymaps

### Normal mode keymaps

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
| **Left hand side** | <code>Q</code> |
| **Right hand side** | <code></code> |

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
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>b</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cr</code> |
| **Right hand side** | <code>&lt;Plug&gt;(abolish-coerce-word)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cS</code> |
| **Right hand side** | <code>&lt;Plug&gt;CSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;Csurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | <code>&lt;Plug&gt;Dsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm3</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm2</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm </code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_buf()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm1</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm8</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm-</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_line()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm=</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm0</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm6</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm5</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm7</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm4</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm9</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>e</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_e</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ge</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_ge</code> |

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
| **Left hand side** | <code>g&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m:</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.preview()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m[</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.prev()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m2</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m,</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m3</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m8</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m}</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.next_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m0</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m{</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.prev_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m6</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m]</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m7</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m5</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m4</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m1</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m9</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>q?</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>q/</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>q:</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>w</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_w</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ySs</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | <code>&lt;Plug&gt;Yssurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | <code>&lt;Plug&gt;Ysurround</code> |

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
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;MoveCharLeft</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;MoveLineUp</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;MoveLineDown</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveCharLeft</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;58_MoveCharHorizontally(-v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveCharRight</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;58_MoveCharHorizontally( v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveLineHalfPageUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;58_MoveLineVertically(-v:count1 * &lt;SNR&gt;58_HalfPageSize())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveLineHalfPageDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;58_MoveLineVertically( v:count1 * &lt;SNR&gt;58_HalfPageSize())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveLineUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;58_MoveLineVertically(-v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveLineDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;58_MoveLineVertically( v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(abolish-coerce-word)</code> |
| **Right hand side** | <code>&lt;SNR&gt;51_coerce(nr2char(getchar())).'iw'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(abolish-coerce)</code> |
| **Right hand side** | <code>&lt;SNR&gt;51_coerce(nr2char(getchar()))</code> |

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
| **Left hand side** | <code>&lt;SNR&gt;44_(wise)</code> |
| **Right hand side** | <code>empty(g:v_motion_force) ? 'v' : g:v_motion_force</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-hi-surround)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#matchparen#highlight_surrounding()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;YSurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;37_opfunc2('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Ysurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;37_opfunc('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSsurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;37_opfunc2('setup').'_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Yssurround</code> |
| **Right hand side** | <code>'^'.v:count1.&lt;SNR&gt;37_opfunc('setup').'g_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;37_changesurround(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Csurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;37_changesurround()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Dsurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;37_dosurround(&lt;SNR&gt;37_inputtarget())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;SurroundRepeat</code> |
| **Right hand side** | <code>.</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_ge</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'n', 'be', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_b</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'n', 'b', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_e</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'n', 'e', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'n', '', 0, [])&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;SNR&gt;26_</code> |
| **Right hand side** | <code>&lt;SNR&gt;26_</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;26_(save-cursor-pos)</code> |
| **Right hand side** | <code>&lt;SNR&gt;26_save_cursor_pos()</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-preview)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.preview()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-deletebuf)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_buf()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-deleteline)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_line()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-setnext)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-/&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'mapx'.mapper:func(63, vim.v.count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F24&gt;</code> |
| **Right hand side** | <code>:if @l != "" &#124; let @k=@l | end&lt;CR&gt;"KgP:let @l=@k&lt;CR&gt;:let @k=""&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F30&gt;</code> |
| **Right hand side** | <code>"ldd:let @k=@k.@l &#124; let @l=@k&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;</code> |
| **Right hand side** | <code>pumvisible() ? "\&lt;C-Y&gt;" : '"+yy'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Z&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;MoveCharRight</code> |

| **Description** | Toggle Terminal |
| :---- | :---- |
| **Left hand side** | <code>Ö</code> |
| **Right hand side** | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |


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
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;VSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

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
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>aw</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_aw</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ai</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-indent-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>aI</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-indent-same-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-parameter-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>az</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-fold-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>al</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-line-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>b</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>e</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_e</code> |

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
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;VgSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ge</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_ge</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

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
| **Left hand side** | <code>iw</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_iw</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ii</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-indent-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>iI</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-indent-same-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-parameter-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i2,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-parameter-greedy-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>iz</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-fold-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>il</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-line-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | <code>user#fn#pasteRestore()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>w</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_w</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;VgSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;61_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;61_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |

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
| **Right hand side** | <code>&lt;SNR&gt;58_Visual('under')</code> |

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
| **Right hand side** | <code>&lt;SNR&gt;58_Visual('all')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Find)</code> |
| **Right hand side** | <code>vm#operators#find(1, 1)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_iw</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#object(v:count1, 'x', 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_aw</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#object(v:count1, 'x', 0, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_ge</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'x', 'be', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_b</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'x', 'b', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_e</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'x', 'e', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'x', '', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-indent-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_indent.do_by_function("select-i","-","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-indent-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_indent.do_by_function("select-a","-","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-indent-same-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_indent.do_by_function("select-i","same","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-indent-same-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_indent.do_by_function("select-a","same","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-parameter-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_parameter.do_by_function("select-i","-","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-parameter-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_parameter.do_by_function("select-a","-","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-parameter-greedy-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_parameter.do_by_function("select-i","greedy","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-fold-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_fold.do_by_function("select-i","-","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-fold-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_fold.do_by_function("select-a","-","v")&lt;CR&gt;</code> |

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
| **Right hand side** | <code>&lt;SNR&gt;35_(matchup-Z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;35_(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;35_(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;35_(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;35_(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;35_(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;35_(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;35_(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;35_(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;35_(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;35_(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;35_(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 1)&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;M-/&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'mapx'.mapper:func(64, vim.v.count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;</code> |
| **Right hand side** | <code>pumvisible() ? "\&lt;C-Y&gt;" : '"+y'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Z&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-line-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_line.do_by_function("select-i","-","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-line-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_line.do_by_function("select-a","-","v")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;23_(save-cursor-pos)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_save_cursor_pos()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(abolish-coerce)</code> |
| **Right hand side** | <code>&lt;SNR&gt;17_coerce(nr2char(getchar()))</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;MoveBlockRight</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;MoveBlockLeft</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;MoveBlockUp</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;MoveBlockDown</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveBlockLeft</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;7_MoveBlockHorizontally(-v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveBlockRight</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;7_MoveBlockHorizontally( v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveBlockHalfPageUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;7_MoveBlockVertically(-v:count1 * &lt;SNR&gt;7_HalfPageSize())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveBlockHalfPageDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;7_MoveBlockVertically( v:count1 * &lt;SNR&gt;7_HalfPageSize())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveBlockUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;7_MoveBlockVertically(-v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;MoveBlockDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt; silent call &lt;SNR&gt;7_MoveBlockVertically( v:count1)&lt;CR&gt;</code> |


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
| **Left hand side** | <code>ai</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-indent-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>aI</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-indent-same-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>al</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-line-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>az</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-fold-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>aw</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_aw</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-parameter-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>b</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>e</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_e</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ge</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_ge</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ii</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-indent-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>iI</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-indent-same-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>il</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-line-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>iz</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-fold-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>iw</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_iw</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-parameter-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i2,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-parameter-greedy-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>w</code> |
| **Right hand side** | <code>&lt;Plug&gt;WordMotion_w</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-indent-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_indent.do_by_function("select-i","-","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-indent-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_indent.do_by_function("select-a","-","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-indent-same-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_indent.do_by_function("select-i","same","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-indent-same-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_indent.do_by_function("select-a","same","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-line-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_line.do_by_function("select-i","-","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-line-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_line.do_by_function("select-a","-","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-fold-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_fold.do_by_function("select-i","-","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-fold-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_fold.do_by_function("select-a","-","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_iw</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#object(v:count1, 'o', 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_aw</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#object(v:count1, 'o', 0, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_ge</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'o', 'be', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_b</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'o', 'b', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_e</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'o', 'e', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;WordMotion_w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call wordmotion#motion(v:count1, 'o', '', 0, [])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-parameter-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_parameter.do_by_function("select-i","-","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-parameter-a)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_parameter.do_by_function("select-a","-","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-parameter-greedy-i)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos):&lt;C-U&gt;call g:__textobj_parameter.do_by_function("select-i","greedy","o")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;29_(save-cursor-pos)</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_save_cursor_pos()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Z&gt;</code> |
| **Right hand side** | <code></code> |

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

