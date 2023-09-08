# Modern Neovim Configuration Information

Configure Neovim as a modernized development environment. Details described in [an excellent Medium article](https://alpha2phi.medium.com/modern-neovim-configuration-recipes-d68b16537698)

- Install and initialize: **`lazyman -x Modern`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Modern`**

## Git repository

[https://github.com/alpha2phi/modern-neovim](https://github.com/alpha2phi/modern-neovim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [jackMort/ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim.git)
- [dpayne/CodeGPT.nvim](https://github.com/dpayne/CodeGPT.nvim.git)
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [antoinemadec/FixCursorHold.nvim](https://github.com/antoinemadec/FixCursorHold.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [b0o/SchemaStore.nvim](https://github.com/b0o/SchemaStore.nvim)
- [aaronhallaert/advanced-git-search.nvim](https://github.com/aaronhallaert/advanced-git-search.nvim.git)
- [stevearc/aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [james1236/backseat.nvim](https://github.com/james1236/backseat.nvim.git)
- [max397574/better-escape.nvim](https://github.com/max397574/better-escape.nvim)
- [itchyny/calendar.vim](https://github.com/itchyny/calendar.vim.git)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [uga-rosa/ccc.nvim](https://github.com/uga-rosa/ccc.nvim.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [petertriho/cmp-git](https://github.com/petertriho/cmp-git.git)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Exafunction/codeium.vim](https://github.com/Exafunction/codeium.vim.git)
- [Saecki/crates.nvim](https://github.com/Saecki/crates.nvim.git)
- [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim.git)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [folke/edgy.nvim](https://github.com/folke/edgy.nvim.git)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [folke/flash.nvim](https://github.com/folke/flash.nvim.git)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [rawnly/gist.nvim](https://github.com/rawnly/gist.nvim.git)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [dnlhc/glance.nvim](https://github.com/dnlhc/glance.nvim.git)
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [m4xshen/hardtime.nvim](https://github.com/m4xshen/hardtime.nvim.git)
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)
- [lukas-reineke/headlines.nvim](https://github.com/lukas-reineke/headlines.nvim.git)
- [tzachar/highlight-undo.nvim](https://github.com/tzachar/highlight-undo.nvim.git)
- [m-demare/hlargs.nvim](https://github.com/m-demare/hlargs.nvim.git)
- [anuvyklack/hydra.nvim](https://github.com/anuvyklack/hydra.nvim.git)
- [smjonas/inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Vigemus/iron.nvim](https://github.com/Vigemus/iron.nvim.git)
- [goerz/jupytext.vim](https://github.com/goerz/jupytext.vim.git)
- [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [frabjous/knap](https://github.com/frabjous/knap.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [mrjones2014/legendary.nvim](https://github.com/mrjones2014/legendary.nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [meuter/lualine-so-fancy.nvim](https://github.com/meuter/lualine-so-fancy.nvim.git)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai.git)
- [echasnovski/mini.bracketed](https://github.com/echasnovski/mini.bracketed.git)
- [echasnovski/mini.bufremove](https://github.com/echasnovski/mini.bufremove.git)
- [echasnovski/mini.files](https://github.com/echasnovski/mini.files.git)
- [echasnovski/mini.hipatterns](https://github.com/echasnovski/mini.hipatterns.git)
- [echasnovski/mini.indentscope](https://github.com/echasnovski/mini.indentscope)
- [echasnovski/mini.map](https://github.com/echasnovski/mini.map.git)
- [echasnovski/mini.misc](https://github.com/echasnovski/mini.misc.git)
- [echasnovski/mini.operators](https://github.com/echasnovski/mini.operators.git)
- [jbyuki/nabla.nvim](https://github.com/jbyuki/nabla.nvim)
- [Bryley/neoai.nvim](https://github.com/Bryley/neoai.nvim.git)
- [folke/neoconf.nvim](https://github.com/folke/neoconf.nvim.git)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [danymat/neogen](https://github.com/danymat/neogen.git)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)
- [nvim-neotest/neotest-jest](https://github.com/nvim-neotest/neotest-jest.git)
- [thenbe/neotest-playwright](https://github.com/thenbe/neotest-playwright.git)
- [nvim-neotest/neotest-plenary](https://github.com/nvim-neotest/neotest-plenary)
- [nvim-neotest/neotest-python](https://github.com/nvim-neotest/neotest-python)
- [rouge8/neotest-rust](https://github.com/rouge8/neotest-rust.git)
- [nvim-neotest/neotest-vim-test](https://github.com/nvim-neotest/neotest-vim-test)
- [marilari88/neotest-vitest](https://github.com/marilari88/neotest-vitest.git)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [nacro90/numb.nvim](https://github.com/nacro90/numb.nvim.git)
- [AckslD/nvim-FeMaco.lua](https://github.com/AckslD/nvim-FeMaco.lua.git)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf.git)
- [akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python.git)
- [LiadOz/nvim-dap-repl-highlights](https://github.com/LiadOz/nvim-dap-repl-highlights.git)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [kevinhwang91/nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens.git)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [DaikyXendo/nvim-material-icon](https://github.com/DaikyXendo/nvim-material-icon.git)
- [SmiteshP/nvim-navbuddy](https://github.com/SmiteshP/nvim-navbuddy.git)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre.git)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [xiyaowong/nvim-transparent](https://github.com/xiyaowong/nvim-transparent)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [RRethy/nvim-treesitter-endwise](https://github.com/RRethy/nvim-treesitter-endwise)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [jbyuki/one-small-step-for-vimkind](https://github.com/jbyuki/one-small-step-for-vimkind.git)
- [stevearc/overseer.nvim](https://github.com/stevearc/overseer.nvim.git)
- [folke/persistence.nvim](https://github.com/folke/persistence.nvim.git)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [kevinhwang91/promise-async](https://github.com/kevinhwang91/promise-async)
- [ThePrimeagen/refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim.git)
- [simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
- [rust-lang/rust.vim](https://github.com/rust-lang/rust.vim.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [sourcegraph/sg.nvim](https://github.com/sourcegraph/sg.nvim.git)
- [tami5/sqlite.lua](https://github.com/tami5/sqlite.lua)
- [cshuaimin/ssr.nvim](https://github.com/cshuaimin/ssr.nvim)
- [luukvbaal/statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim)
- [folke/styler.nvim](https://github.com/folke/styler.nvim.git)
- [olacin/telescope-cc.nvim](https://github.com/olacin/telescope-cc.nvim.git)
- [nvim-telescope/telescope-dap.nvim](https://github.com/nvim-telescope/telescope-dap.nvim)
- [lpoto/telescope-docker.nvim](https://github.com/lpoto/telescope-docker.nvim.git)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [nvim-telescope/telescope-frecency.nvim](https://github.com/nvim-telescope/telescope-frecency.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [tsakirist/telescope-lazy.nvim](https://github.com/tsakirist/telescope-lazy.nvim.git)
- [benfowler/telescope-luasnip.nvim](https://github.com/benfowler/telescope-luasnip.nvim.git)
- [nvim-telescope/telescope-project.nvim](https://github.com/nvim-telescope/telescope-project.nvim.git)
- [cljoly/telescope-repo.nvim](https://github.com/cljoly/telescope-repo.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [Wansmer/treesj](https://github.com/Wansmer/treesj)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [ckolkey/ts-node-action](https://github.com/ckolkey/ts-node-action.git)
- [folke/twilight.nvim](https://github.com/folke/twilight.nvim)
- [pmizio/typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim.git)
- [linux-cultist/venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim.git)
- [tpope/vim-dadbod](https://github.com/tpope/vim-dadbod.git)
- [kristijanhusak/vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion.git)
- [kristijanhusak/vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui.git)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [mattn/vim-gist](https://github.com/mattn/vim-gist.git)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [mzlogin/vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc.git)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [tpope/vim-rhubarb](https://github.com/tpope/vim-rhubarb)
- [honza/vim-snippets](https://github.com/honza/vim-snippets.git)
- [dhruvasagar/vim-table-mode](https://github.com/dhruvasagar/vim-table-mode.git)
- [nvim-neotest/neotest-vim-test](https://github.com/nvim-neotest/neotest-vim-test)
- [lervag/vimtex](https://github.com/lervag/vimtex)
- [mattn/webapi-vim](https://github.com/mattn/webapi-vim.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [sustech-data/wildfire.nvim](https://github.com/sustech-data/wildfire.nvim.git)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

## Modern Keymaps

### Normal mode keymaps

| **Description** | Manage Plugins |
| :---- | :---- |
| **Left hand side** | <code> zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;:Lazy&lt;CR&gt;</code> |

| **Description** | Explorer (Current File) |
| :---- | :---- |
| **Left hand side** | <code> fE</code> |
| **Right hand side** | |

| **Description** | Explorer (Current Directory) |
| :---- | :---- |
| **Left hand side** | <code> fe</code> |
| **Right hand side** | |

| **Description** | Select VirtualEnv |
| :---- | :---- |
| **Left hand side** | <code> lv</code> |
| **Right hand side** | |

| **Description** | Docker |
| :---- | :---- |
| **Left hand side** | <code> fd</code> |
| **Right hand side** | |

| **Description** | Don't Save Current Session |
| :---- | :---- |
| **Left hand side** | <code> qd</code> |
| **Right hand side** | |

| **Description** | Restore Last Session |
| :---- | :---- |
| **Left hand side** | <code> ql</code> |
| **Right hand side** | |

| **Description** | Restore Session |
| :---- | :---- |
| **Left hand side** | <code> qs</code> |
| **Right hand side** | |

| **Description** | Summary |
| :---- | :---- |
| **Left hand side** | <code> tNS</code> |
| **Right hand side** | |

| **Description** | Stop |
| :---- | :---- |
| **Left hand side** | <code> tNs</code> |
| **Right hand side** | |

| **Description** | Output |
| :---- | :---- |
| **Left hand side** | <code> tNo</code> |
| **Right hand side** | |

| **Description** | Debug Nearest |
| :---- | :---- |
| **Left hand side** | <code> tNN</code> |
| **Right hand side** | |

| **Description** | Nearest |
| :---- | :---- |
| **Left hand side** | <code> tNn</code> |
| **Right hand side** | |

| **Description** | Last |
| :---- | :---- |
| **Left hand side** | <code> tNl</code> |
| **Right hand side** | |

| **Description** | File |
| :---- | :---- |
| **Left hand side** | <code> tNf</code> |
| **Right hand side** | |

| **Description** | Attach |
| :---- | :---- |
| **Left hand side** | <code> tNa</code> |
| **Right hand side** | |

| **Description** | Debug Last |
| :---- | :---- |
| **Left hand side** | <code> tNL</code> |
| **Right hand side** | |

| **Description** | Debug File |
| :---- | :---- |
| **Left hand side** | <code> tNF</code> |
| **Right hand side** | |

| **Description** | Mason |
| :---- | :---- |
| **Left hand side** | <code> lm</code> |
| **Right hand side** | |

| **Description** | Search and Replace (SSR) |
| :---- | :---- |
| **Left hand side** | <code> sR</code> |
| **Right hand side** | |

| **Description** | Toggle Zoom |
| :---- | :---- |
| **Left hand side** | <code> vz</code> |
| **Right hand side** | |

| **Description** | Step Out |
| :---- | :---- |
| **Left hand side** | <code> du</code> |
| **Right hand side** | |

| **Description** | Terminate |
| :---- | :---- |
| **Left hand side** | <code> dx</code> |
| **Right hand side** | |

| **Description** | Toggle Breakpoint |
| :---- | :---- |
| **Left hand side** | <code> dt</code> |
| **Right hand side** | |

| **Description** | Start |
| :---- | :---- |
| **Left hand side** | <code> ds</code> |
| **Right hand side** | |

| **Description** | Toggle REPL |
| :---- | :---- |
| **Left hand side** | <code> dr</code> |
| **Right hand side** | |

| **Description** | Quit |
| :---- | :---- |
| **Left hand side** | <code> dq</code> |
| **Right hand side** | |

| **Description** | Pause |
| :---- | :---- |
| **Left hand side** | <code> dp</code> |
| **Right hand side** | |

| **Description** | Run Last |
| :---- | :---- |
| **Left hand side** | <code> dl</code> |
| **Right hand side** | |

| **Description** | Step Over |
| :---- | :---- |
| **Left hand side** | <code> do</code> |
| **Right hand side** | |

| **Description** | Step Into |
| :---- | :---- |
| **Left hand side** | <code> di</code> |
| **Right hand side** | |

| **Description** | Scopes |
| :---- | :---- |
| **Left hand side** | <code> dS</code> |
| **Right hand side** | |

| **Description** | Hover Variables |
| :---- | :---- |
| **Left hand side** | <code> dh</code> |
| **Right hand side** | |

| **Description** | Get Session |
| :---- | :---- |
| **Left hand side** | <code> dg</code> |
| **Right hand side** | |

| **Description** | Evaluate |
| :---- | :---- |
| **Left hand side** | <code> de</code> |
| **Right hand side** | |

| **Description** | Disconnect |
| :---- | :---- |
| **Left hand side** | <code> dd</code> |
| **Right hand side** | |

| **Description** | Continue |
| :---- | :---- |
| **Left hand side** | <code> dc</code> |
| **Right hand side** | |

| **Description** | Step Back |
| :---- | :---- |
| **Left hand side** | <code> db</code> |
| **Right hand side** | |

| **Description** | Toggle UI |
| :---- | :---- |
| **Left hand side** | <code> dU</code> |
| **Right hand side** | |

| **Description** | Conditional Breakpoint |
| :---- | :---- |
| **Left hand side** | <code> dC</code> |
| **Right hand side** | |

| **Description** | Evaluate Input |
| :---- | :---- |
| **Left hand side** | <code> dE</code> |
| **Right hand side** | |

| **Description** | Run to Cursor |
| :---- | :---- |
| **Left hand side** | <code> dR</code> |
| **Right hand side** | |

| **Description** | Reload Buffer |
| :---- | :---- |
| **Left hand side** | <code> br</code> |
| **Right hand side** | |

| **Description** | Delete Buffer (Force) |
| :---- | :---- |
| **Left hand side** | <code> bD</code> |
| **Right hand side** | |

| **Description** | Delete Buffer |
| :---- | :---- |
| **Left hand side** | <code> bd</code> |
| **Right hand side** | |

| **Description** | Close Buffer |
| :---- | :---- |
| **Left hand side** | <code> bc</code> |
| **Right hand side** | |

| **Description** | Search and Replace (Spectre) |
| :---- | :---- |
| **Left hand side** | <code> sr</code> |
| **Right hand side** | |

| **Description** | Forward jump |
| :---- | :---- |
| **Left hand side** | <code> nj</code> |
| **Right hand side** | |

| **Description** | Toggle Preview |
| :---- | :---- |
| **Left hand side** | <code> nt</code> |
| **Right hand side** | |

| **Description** | Close Preview |
| :---- | :---- |
| **Left hand side** | <code> nc</code> |
| **Right hand side** | |

| **Description** | Preview |
| :---- | :---- |
| **Left hand side** | <code> np</code> |
| **Right hand side** | |

| **Description** | Workspace Diagnostics |
| :---- | :---- |
| **Left hand side** | <code> lD</code> |
| **Right hand side** | |

| **Description** | Document Diagnostics |
| :---- | :---- |
| **Left hand side** | <code> ld</code> |
| **Right hand side** | |

| **Description** | Task Action |
| :---- | :---- |
| **Left hand side** | <code> toa</code> |
| **Right hand side** | |

| **Description** | Run Command |
| :---- | :---- |
| **Left hand side** | <code> toR</code> |
| **Right hand side** | |

| **Description** | Toggle |
| :---- | :---- |
| **Left hand side** | <code> tot</code> |
| **Right hand side** | |

| **Description** | Save Bundle |
| :---- | :---- |
| **Left hand side** | <code> tos</code> |
| **Right hand side** | |

| **Description** | Run |
| :---- | :---- |
| **Left hand side** | <code> tor</code> |
| **Right hand side** | |

| **Description** | Quick Action |
| :---- | :---- |
| **Left hand side** | <code> toq</code> |
| **Right hand side** | |

| **Description** | Open |
| :---- | :---- |
| **Left hand side** | <code> too</code> |
| **Right hand side** | |

| **Description** | Load Bundle |
| :---- | :---- |
| **Left hand side** | <code> tol</code> |
| **Right hand side** | |

| **Description** | Delete Bundle |
| :---- | :---- |
| **Left hand side** | <code> tod</code> |
| **Right hand side** | |

| **Description** | Close |
| :---- | :---- |
| **Left hand side** | <code> toc</code> |
| **Right hand side** | |

| **Description** | Build |
| :---- | :---- |
| **Left hand side** | <code> tob</code> |
| **Right hand side** | |

| **Description** | Terminal #2 |
| :---- | :---- |
| **Left hand side** | <code> 0</code> |
| **Right hand side** | |

| **Description** | Node Action |
| :---- | :---- |
| **Left hand side** | <code> ln</code> |
| **Right hand side** | |

| **Description** | Toggle Split/Join |
| :---- | :---- |
| **Left hand side** | <code> lj</code> |
| **Right hand side** | |

| **Description** | ToDo |
| :---- | :---- |
| **Left hand side** | <code> lT</code> |
| **Right hand side** | |

| **Description** | ToDo (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> lt</code> |
| **Right hand side** | |

| **Description** | Command Palette |
| :---- | :---- |
| **Left hand side** | <code> hc</code> |
| **Right hand side** | |

| **Description** | Toggle Minimap |
| :---- | :---- |
| **Left hand side** | <code> vm</code> |
| **Right hand side** | |

| **Description** | Annotation |
| :---- | :---- |
| **Left hand side** | <code> lgd</code> |
| **Right hand side** | |

| **Description** | Type |
| :---- | :---- |
| **Left hand side** | <code> lgt</code> |
| **Right hand side** | |

| **Description** | Function |
| :---- | :---- |
| **Left hand side** | <code> lgf</code> |
| **Right hand side** | |

| **Description** | Class |
| :---- | :---- |
| **Left hand side** | <code> lgc</code> |
| **Right hand side** | |

| **Description** | Edgy Toggle |
| :---- | :---- |
| **Left hand side** | <code> ze</code> |
| **Right hand side** | |

| **Description** | Edgy Select Window |
| :---- | :---- |
| **Left hand side** | <code> zE</code> |
| **Right hand side** | |

| **Description** | Code Outline (navbuddy) |
| :---- | :---- |
| **Left hand side** | <code> vO</code> |
| **Right hand side** | |

| **Description** | Toggle Highlighter |
| :---- | :---- |
| **Left hand side** | <code> zCh</code> |
| **Right hand side** | |

| **Description** | Convert |
| :---- | :---- |
| **Left hand side** | <code> zCc</code> |
| **Right hand side** | |

| **Description** | Pick |
| :---- | :---- |
| **Left hand side** | <code> zCp</code> |
| **Right hand side** | |

| **Description** | +Color |
| :---- | :---- |
| **Left hand side** | <code> zC</code> |
| **Right hand side** | |

| **Description** | Terminal 1 |
| :---- | :---- |
| **Left hand side** | <code> 3</code> |
| **Right hand side** | |

| **Description** | File 2 |
| :---- | :---- |
| **Left hand side** | <code> 2</code> |
| **Right hand side** | |

| **Description** | File 1 |
| :---- | :---- |
| **Left hand side** | <code> 1</code> |
| **Right hand side** | |

| **Description** | Command Menu |
| :---- | :---- |
| **Left hand side** | <code> jc</code> |
| **Right hand side** | |

| **Description** | File Menu |
| :---- | :---- |
| **Left hand side** | <code> jm</code> |
| **Right hand side** | |

| **Description** | Add File |
| :---- | :---- |
| **Left hand side** | <code> ja</code> |
| **Right hand side** | |

| **Description** | Command 2 |
| :---- | :---- |
| **Left hand side** | <code> 6</code> |
| **Right hand side** | |

| **Description** | Command 1 |
| :---- | :---- |
| **Left hand side** | <code> 5</code> |
| **Right hand side** | |

| **Description** | Terminal 2 |
| :---- | :---- |
| **Left hand side** | <code> 4</code> |
| **Right hand side** | |

| **Description** | +REPL |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | |

| **Description** | Hide |
| :---- | :---- |
| **Left hand side** | <code> xH</code> |
| **Right hand side** | |

| **Description** | Focus |
| :---- | :---- |
| **Left hand side** | <code> xF</code> |
| **Right hand side** | |

| **Description** | Restart |
| :---- | :---- |
| **Left hand side** | <code> xS</code> |
| **Right hand side** | |

| **Description** | REPL |
| :---- | :---- |
| **Left hand side** | <code> xR</code> |
| **Right hand side** | |

| **Description** | Remove Mark |
| :---- | :---- |
| **Left hand side** | <code> xmr</code> |
| **Right hand side** | |

| **Description** | Mark Motion |
| :---- | :---- |
| **Left hand side** | <code> xmm</code> |
| **Right hand side** | |

| **Description** | Send Mark |
| :---- | :---- |
| **Left hand side** | <code> xms</code> |
| **Right hand side** | |

| **Description** | Clear |
| :---- | :---- |
| **Left hand side** | <code> xc</code> |
| **Right hand side** | |

| **Description** | Close REPL |
| :---- | :---- |
| **Left hand side** | <code> xC</code> |
| **Right hand side** | |

| **Description** | Interrupt |
| :---- | :---- |
| **Left hand side** | <code> xI</code> |
| **Right hand side** | |

| **Description** | ENTER |
| :---- | :---- |
| **Left hand side** | <code> x&lt;CR&gt;</code> |
| **Right hand side** | |

| **Description** | Send File |
| :---- | :---- |
| **Left hand side** | <code> xf</code> |
| **Right hand side** | |

| **Description** | Send Until Cursor |
| :---- | :---- |
| **Left hand side** | <code> xt</code> |
| **Right hand side** | |

| **Description** | Send Line |
| :---- | :---- |
| **Left hand side** | <code> xl</code> |
| **Right hand side** | |

| **Description** | Send Motion |
| :---- | :---- |
| **Left hand side** | <code> xs</code> |
| **Right hand side** | |

| **Description** | +Mark |
| :---- | :---- |
| **Left hand side** | <code> xm</code> |
| **Right hand side** | |

| **Description** | Debug Cleanup |
| :---- | :---- |
| **Left hand side** | <code> rc</code> |
| **Right hand side** | |

| **Description** | Debug Print Variable |
| :---- | :---- |
| **Left hand side** | <code> rp</code> |
| **Right hand side** | |

| **Description** | Debug Print |
| :---- | :---- |
| **Left hand side** | <code> rP</code> |
| **Right hand side** | |

| **Description** | Extract Block to File |
| :---- | :---- |
| **Left hand side** | <code> rf</code> |
| **Right hand side** | |

| **Description** | Extract Block |
| :---- | :---- |
| **Left hand side** | <code> rb</code> |
| **Right hand side** | |

| **Description** | Inline Variable |
| :---- | :---- |
| **Left hand side** | <code> ri</code> |
| **Right hand side** | |

| **Description** | Visit |
| :---- | :---- |
| **Left hand side** | <code> tv</code> |
| **Right hand side** | |

| **Description** | Suite |
| :---- | :---- |
| **Left hand side** | <code> ts</code> |
| **Right hand side** | |

| **Description** | Nearest |
| :---- | :---- |
| **Left hand side** | <code> tn</code> |
| **Right hand side** | |

| **Description** | Last |
| :---- | :---- |
| **Left hand side** | <code> tl</code> |
| **Right hand side** | |

| **Description** | File |
| :---- | :---- |
| **Left hand side** | <code> tf</code> |
| **Right hand side** | |

| **Description** | Class |
| :---- | :---- |
| **Left hand side** | <code> tc</code> |
| **Right hand side** | |

| **Description** | Status |
| :---- | :---- |
| **Left hand side** | <code> gs</code> |
| **Right hand side** | |

| **Description** | Find Buffer |
| :---- | :---- |
| **Left hand side** | <code> Df</code> |
| **Right hand side** | |

| **Description** | Toggle UI |
| :---- | :---- |
| **Left hand side** | <code> Dt</code> |
| **Right hand side** | |

| **Description** | Last Query Info |
| :---- | :---- |
| **Left hand side** | <code> Dq</code> |
| **Right hand side** | |

| **Description** | Rename Buffer |
| :---- | :---- |
| **Left hand side** | <code> Dr</code> |
| **Right hand side** | |

| **Description** | Open Yank History |
| :---- | :---- |
| **Left hand side** | <code> zp</code> |
| **Right hand side** | |

| **Description** | Recent |
| :---- | :---- |
| **Left hand side** | <code> fo</code> |
| **Right hand side** | |

| **Description** | Find Files (Cwd) |
| :---- | :---- |
| **Left hand side** | <code> fF</code> |
| **Right hand side** | |

| **Description** | Find Files (Root Dir) |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | |

| **Description** | Buffers |
| :---- | :---- |
| **Left hand side** | <code> fb</code> |
| **Right hand side** | |

| **Description** | Colorscheme |
| :---- | :---- |
| **Left hand side** | <code> zc</code> |
| **Right hand side** | |

| **Description** | Code Outline |
| :---- | :---- |
| **Left hand side** | <code> vo</code> |
| **Right hand side** | |

| **Description** | Buffer |
| :---- | :---- |
| **Left hand side** | <code> sb</code> |
| **Right hand side** | |

| **Description** | Snippets |
| :---- | :---- |
| **Left hand side** | <code> ss</code> |
| **Right hand side** | |

| **Description** | Grep (Cwd) |
| :---- | :---- |
| **Left hand side** | <code> sW</code> |
| **Right hand side** | |

| **Description** | Grep (Root Dir) |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | |

| **Description** | List |
| :---- | :---- |
| **Left hand side** | <code> pp</code> |
| **Right hand side** | |

| **Description** | Search |
| :---- | :---- |
| **Left hand side** | <code> hs</code> |
| **Right hand side** | |

| **Description** | Search |
| :---- | :---- |
| **Left hand side** | <code> ps</code> |
| **Right hand side** | |

| **Description** | Search Plugins |
| :---- | :---- |
| **Left hand side** | <code> zs</code> |
| **Right hand side** | |

| **Description** | Conventional Commits |
| :---- | :---- |
| **Left hand side** | <code> gc</code> |
| **Right hand side** | |

| **Description** | Browser |
| :---- | :---- |
| **Left hand side** | <code> fr</code> |
| **Right hand side** | |

| **Description** | Change WorkDir |
| :---- | :---- |
| **Left hand side** | <code> fc</code> |
| **Right hand side** | |

| **Description** | Generate Git Message |
| :---- | :---- |
| **Left hand side** | <code> ag</code> |
| **Right hand side** | |

| **Description** | Summarize Text |
| :---- | :---- |
| **Left hand side** | <code> as</code> |
| **Right hand side** | |

| **Description** | Edit with Instructions |
| :---- | :---- |
| **Left hand side** | <code> ae</code> |
| **Right hand side** | |

| **Description** | Chat |
| :---- | :---- |
| **Left hand side** | <code> aa</code> |
| **Right hand side** | |

| **Description** | Complete Code |
| :---- | :---- |
| **Left hand side** | <code> ac</code> |
| **Right hand side** | |

| **Description** | Notation |
| :---- | :---- |
| **Left hand side** | <code> nn</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | |

| **Description** | Put and indent left |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;p</code> |
| **Right hand side** | |

| **Description** | Put before and indent left |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;P</code> |
| **Right hand side** | |

| **Description** | Put after applying a filter |
| :---- | :---- |
| **Left hand side** | <code>=p</code> |
| **Right hand side** | |

| **Description** | Put before applying a filter |
| :---- | :---- |
| **Left hand side** | <code>=P</code> |
| **Right hand side** | |

| **Description** | Put and indent right |
| :---- | :---- |
| **Left hand side** | <code>&gt;p</code> |
| **Right hand side** | |

| **Description** | Put before and indent right |
| :---- | :---- |
| **Left hand side** | <code>&gt;P</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | |

| **Description** | Put yanked text before cursor |
| :---- | :---- |
| **Left hand side** | <code>P</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | Previous ToDo |
| :---- | :---- |
| **Left hand side** | <code>[t</code> |
| **Right hand side** | |

| **Description** | Cycle forward through yank history |
| :---- | :---- |
| **Left hand side** | <code>[y</code> |
| **Right hand side** | |

| **Description** | Put indented before cursor (linewise) |
| :---- | :---- |
| **Left hand side** | <code>[p</code> |
| **Right hand side** | |

| **Description** | Put indented before cursor (linewise) |
| :---- | :---- |
| **Left hand side** | <code>[P</code> |
| **Right hand side** | |

| **Description** | Next ToDo |
| :---- | :---- |
| **Left hand side** | <code>]t</code> |
| **Right hand side** | |

| **Description** | Cycle backward through yank history |
| :---- | :---- |
| **Left hand side** | <code>]y</code> |
| **Right hand side** | |

| **Description** | Put indented after cursor (linewise) |
| :---- | :---- |
| **Left hand side** | <code>]p</code> |
| **Right hand side** | |

| **Description** | Put indented after cursor (linewise) |
| :---- | :---- |
| **Left hand side** | <code>]P</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>g*</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g#</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | Put yanked text before selection |
| :---- | :---- |
| **Left hand side** | <code>gP</code> |
| **Right hand side** | |

| **Description** | Put yanked text after selection |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | |

| **Description** | Put yanked text after cursor |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | Yank text |
| :---- | :---- |
| **Left hand side** | <code>y</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zC</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zO</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>za</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zA</code> |
| **Right hand side** | |

| **Description** | Open Folds Except Kinds |
| :---- | :---- |
| **Left hand side** | <code>zr</code> |
| **Right hand side** | |

| **Description** | Open All Folds |
| :---- | :---- |
| **Left hand side** | <code>zR</code> |
| **Right hand side** | |

| **Description** | Close All Folds |
| :---- | :---- |
| **Left hand side** | <code>zM</code> |
| **Right hand side** | |

| **Description** | Close Folds With |
| :---- | :---- |
| **Left hand side** | <code>zm</code> |
| **Right hand side** | |

| **Description** | Peek Fold |
| :---- | :---- |
| **Left hand side** | <code>zp</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zo</code> |
| **Right hand side** | |

| **Description** | Decrement |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | Increment |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | |

| **Description** | Legendary |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S-P&gt;</code> |
| **Right hand side** | |

| **Description** | Scroll forward |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | |

| **Description** | Scroll backward |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | |

| **Description** | Previous Cell |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | |

| **Description** | Next Cell |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | |

| **Description** | Delete Cell |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-x&gt;</code> |
| **Right hand side** | |

| **Description** | Execute Cell |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-e&gt;</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Clear Highlight |
| :---- | :---- |
| **Left hand side** | <code> xL</code> |
| **Right hand side** | |

| **Description** | Send |
| :---- | :---- |
| **Left hand side** | <code> xs</code> |
| **Right hand side** | |

| **Description** | +Mark |
| :---- | :---- |
| **Left hand side** | <code> xm</code> |
| **Right hand side** | |

| **Description** | +REPL |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | |

| **Description** | Mark Visual |
| :---- | :---- |
| **Left hand side** | <code> xmv</code> |
| **Right hand side** | |

| **Description** | Evaluate |
| :---- | :---- |
| **Left hand side** | <code> de</code> |
| **Right hand side** | |

| **Description** | Complete Code |
| :---- | :---- |
| **Left hand side** | <code> ac</code> |
| **Right hand side** | |

| **Description** | Edit with Instructions |
| :---- | :---- |
| **Left hand side** | <code> ae</code> |
| **Right hand side** | |

| **Description** | Search and Replace (SSR) |
| :---- | :---- |
| **Left hand side** | <code> sR</code> |
| **Right hand side** | |

| **Description** | Inline Variable |
| :---- | :---- |
| **Left hand side** | <code> ri</code> |
| **Right hand side** | |

| **Description** | Debug Print Variable |
| :---- | :---- |
| **Left hand side** | <code> rp</code> |
| **Right hand side** | |

| **Description** | Extract Variable |
| :---- | :---- |
| **Left hand side** | <code> rx</code> |
| **Right hand side** | |

| **Description** | Refactor |
| :---- | :---- |
| **Left hand side** | <code> rs</code> |
| **Right hand side** | |

| **Description** | Extract Function to File |
| :---- | :---- |
| **Left hand side** | <code> rF</code> |
| **Right hand side** | |

| **Description** | Extract Function |
| :---- | :---- |
| **Left hand side** | <code> rf</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | Put yanked text before cursor |
| :---- | :---- |
| **Left hand side** | <code>P</code> |
| **Right hand side** | |

| **Description** | Treesitter Search |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | Decrement |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gvisual"&lt;CR&gt;g@</code> |

| **Description** | Increment |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gvisual"&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | Put yanked text before selection |
| :---- | :---- |
| **Left hand side** | <code>gP</code> |
| **Right hand side** | |

| **Description** | Put yanked text after selection |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | Put yanked text after cursor |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | Yank text |
| :---- | :---- |
| **Left hand side** | <code>y</code> |
| **Right hand side** | |

| **Description** | Decrement |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_visual"&lt;CR&gt;g@</code> |

| **Description** | Increment |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_visual"&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_visual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_visual"&lt;CR&gt;g@gv</code> |


### Operator mode keymaps

| **Description** | Treesitter Search |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | Remote Flash |
| :---- | :---- |
| **Left hand side** | <code>r</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

