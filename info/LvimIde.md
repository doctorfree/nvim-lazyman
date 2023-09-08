# LvimIde Neovim Configuration Information

Not to be confused with 'LunarVim', this is a standalone Neovim configuration. Modular configuration with LSP support for 60+ languages. Debug support for c, cpp, dart, elixir, go, haskell, java, javascript/typescript, lua, php, python, ruby, rust

- Install and initialize: **`lazyman -L LvimIde`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-LvimIde`**

## Git repository

[https://github.com/lvim-tech/lvim](https://github.com/lvim-tech/lvim)

## Neovimcraft entry

[http://neovimcraft.com/plugin/lvim-tech/lvim](http://neovimcraft.com/plugin/lvim-tech/lvim)

## YouTube channel

[https://www.youtube.com/@lvimtech5651](https://www.youtube.com/@lvimtech5651)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [numToStr/Navigator.nvim](https://github.com/numToStr/Navigator.nvim)
- [ecthelionvi/NeoComposer.nvim](https://github.com/ecthelionvi/NeoComposer.nvim.git)
- [nyngwang/NeoZoom.lua](https://github.com/nyngwang/NeoZoom.lua.git)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [renerocksai/calendar-vim](https://github.com/renerocksai/calendar-vim.git)
- [uga-rosa/ccc.nvim](https://github.com/uga-rosa/ccc.nvim.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [kdheepak/cmp-latex-symbols](https://github.com/kdheepak/cmp-latex-symbols)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [CRAG666/code_runner.nvim](https://github.com/CRAG666/code_runner.nvim.git)
- [Saecki/crates.nvim](https://github.com/Saecki/crates.nvim.git)
- [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim.git)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [elihunter173/dirbuf.nvim](https://github.com/elihunter173/dirbuf.nvim.git)
- [folke/flash.nvim](https://github.com/folke/flash.nvim.git)
- [akinsho/flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim)
- [anuvyklack/fold-preview.nvim](https://github.com/anuvyklack/fold-preview.nvim.git)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [ibhagwan/fzf-lua](https://github.com/ibhagwan/fzf-lua.git)
- [wintermute-cell/gitignore.nvim](https://github.com/wintermute-cell/gitignore.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [DNLHC/glance.nvim](https://github.com/DNLHC/glance.nvim.git)
- [ray-x/go.nvim](https://github.com/ray-x/go.nvim)
- [ray-x/guihua.lua](https://github.com/ray-x/guihua.lua)
- [rebelot/heirline.nvim](https://github.com/rebelot/heirline.nvim.git)
- [anuvyklack/hydra.nvim](https://github.com/anuvyklack/hydra.nvim.git)
- [smjonas/inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [lvim-tech/lvim-colorscheme](https://github.com/lvim-tech/lvim-colorscheme.git)
- [lvim-tech/lvim-fm](https://github.com/lvim-tech/lvim-fm.git)
- [lvim-tech/lvim-forgit](https://github.com/lvim-tech/lvim-forgit.git)
- [lvim-tech/lvim-helper](https://github.com/lvim-tech/lvim-helper.git)
- [lvim-tech/lvim-linguistics](https://github.com/lvim-tech/lvim-linguistics.git)
- [lvim-tech/lvim-move](https://github.com/lvim-tech/lvim-move.git)
- [lvim-tech/lvim-org-utils](https://github.com/lvim-tech/lvim-org-utils.git)
- [lvim-tech/lvim-qf-loc](https://github.com/lvim-tech/lvim-qf-loc.git)
- [lvim-tech/lvim-shell](https://github.com/lvim-tech/lvim-shell.git)
- [lvim-tech/lvim-ui-config](https://github.com/lvim-tech/lvim-ui-config.git)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.clue](https://github.com/echasnovski/mini.clue.git)
- [echasnovski/mini.files](https://github.com/echasnovski/mini.files.git)
- [mrbjarksen/neo-tree-diagnostics.nvim](https://github.com/mrbjarksen/neo-tree-diagnostics.nvim.git)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [folke/neoconf.nvim](https://github.com/folke/neoconf.nvim.git)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [danymat/neogen](https://github.com/danymat/neogen.git)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)
- [sidlatau/neotest-dart](https://github.com/sidlatau/neotest-dart.git)
- [jfpedroza/neotest-elixir](https://github.com/jfpedroza/neotest-elixir.git)
- [nvim-neotest/neotest-go](https://github.com/nvim-neotest/neotest-go.git)
- [MrcJkb/neotest-haskell](https://github.com/MrcJkb/neotest-haskell.git)
- [olimorris/neotest-phpunit](https://github.com/olimorris/neotest-phpunit.git)
- [nvim-neotest/neotest-python](https://github.com/nvim-neotest/neotest-python)
- [rouge8/neotest-rust](https://github.com/rouge8/neotest-rust.git)
- [prichrd/netrw.nvim](https://github.com/prichrd/netrw.nvim.git)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [mxsdev/nvim-dap-vscode-js](https://github.com/mxsdev/nvim-dap-vscode-js.git)
- [kevinhwang91/nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens.git)
- [mfussenegger/nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls)
- [ethanholz/nvim-lastplace](https://github.com/ethanholz/nvim-lastplace.git)
- [kosayoda/nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [scalameta/nvim-metals](https://github.com/scalameta/nvim-metals.git)
- [SmiteshP/nvim-navbuddy](https://github.com/SmiteshP/nvim-navbuddy.git)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [gennaro-tedesco/nvim-peekup](https://github.com/gennaro-tedesco/nvim-peekup.git)
- [yorickpeterse/nvim-pqf](https://github.com/yorickpeterse/nvim-pqf.git)
- [windwp/nvim-spectre](https://github.com/windwp/nvim-spectre.git)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [chrisgrieser/nvim-various-textobjs](https://github.com/chrisgrieser/nvim-various-textobjs.git)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [s1n7ax/nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)
- [pwntester/octo.nvim](https://github.com/pwntester/octo.nvim)
- [jbyuki/one-small-step-for-vimkind](https://github.com/jbyuki/one-small-step-for-vimkind.git)
- [nvim-orgmode/orgmode](https://github.com/nvim-orgmode/orgmode.git)
- [vuki656/package-info.nvim](https://github.com/vuki656/package-info.nvim.git)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [anuvyklack/pretty-fold.nvim](https://github.com/anuvyklack/pretty-fold.nvim.git)
- [akinsho/pubspec-assist.nvim](https://github.com/akinsho/pubspec-assist.nvim.git)
- [neanias/everforest-nvim](https://github.com/neanias/everforest-nvim)
- [winston0410/rg.nvim](https://github.com/winston0410/rg.nvim.git)
- [simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
- [michaelb/sniprun](https://github.com/michaelb/sniprun.git)
- [tami5/sqlite.lua](https://github.com/tami5/sqlite.lua)
- [gbprod/stay-in-place.nvim](https://github.com/gbprod/stay-in-place.nvim.git)
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [nanozuki/tabby.nvim](https://github.com/nanozuki/tabby.nvim.git)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [camgraff/telescope-tmux.nvim](https://github.com/camgraff/telescope-tmux.nvim.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [folke/twilight.nvim](https://github.com/folke/twilight.nvim)
- [pmizio/typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim.git)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [ton/vim-bufsurf](https://github.com/ton/vim-bufsurf.git)
- [vim-ctrlspace/vim-ctrlspace](https://github.com/vim-ctrlspace/vim-ctrlspace.git)
- [tpope/vim-dadbod](https://github.com/tpope/vim-dadbod.git)
- [kristijanhusak/vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion.git)
- [kristijanhusak/vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui.git)
- [lervag/vimtex](https://github.com/lervag/vimtex)
- [sindrets/winshift.nvim](https://github.com/sindrets/winshift.nvim.git)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

## LvimIde Keymaps

### Normal mode keymaps

| **Description** | Esc |
| :---- | :---- |
| **Left hand side** | <code>&lt;Esc&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;:noh&lt;CR&gt;</code> |

| **Description** | CtrlSpace |
| :---- | :---- |
| **Left hand side** | <code>  </code> |
| **Right hand side** | <code>&lt;Cmd&gt;CtrlSpace&lt;CR&gt;</code> |

| **Description** | Macro delete all |
| :---- | :---- |
| **Left hand side** | <code> qd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.store').clear_macros()&lt;CR&gt;</code> |

| **Description** | Macro delay toggle |
| :---- | :---- |
| **Left hand side** | <code> qt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.macro').toggle_delay()&lt;CR&gt;</code> |

| **Description** | Macro edit |
| :---- | :---- |
| **Left hand side** | <code> qe</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.ui').edit_macros()&lt;CR&gt;</code> |

| **Description** | Macro menu |
| :---- | :---- |
| **Left hand side** | <code> qm</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.ui').toggle_macro_menu()&lt;CR&gt;</code> |

| **Description** | Macro Play |
| :---- | :---- |
| **Left hand side** | <code> qq</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.macro').toggle_play_macro()&lt;CR&gt;</code> |

| **Description** | Macro Record Start/Stop |
| :---- | :---- |
| **Left hand side** | <code> qr</code> |
| **Right hand side** | |

| **Description** | Macro stop |
| :---- | :---- |
| **Left hand side** | <code> qs</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.macro').halt_macro()&lt;CR&gt;</code> |

| **Description** | Macro yank |
| :---- | :---- |
| **Left hand side** | <code> qy</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.macro').yank_macro()&lt;CR&gt;</code> |

| **Description** | Macro prev |
| :---- | :---- |
| **Left hand side** | <code> qp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.ui').cycle_prev()&lt;CR&gt;</code> |

| **Description** | Macro next |
| :---- | :---- |
| **Left hand side** | <code> qn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.ui').cycle_next()&lt;CR&gt;</code> |

| **Description** | Lvim file manager |
| :---- | :---- |
| **Left hand side** | <code> =</code> |
| **Right hand side** | |

| **Description** | FzfLua files |
| :---- | :---- |
| **Left hand side** | <code> f</code> |
| **Right hand side** | |

| **Description** | FzfLua buffers |
| :---- | :---- |
| **Left hand side** | <code> b</code> |
| **Right hand side** | |

| **Description** | FzfLua marks |
| :---- | :---- |
| **Left hand side** | <code> m</code> |
| **Right hand side** | |

| **Description** | FzfLua search |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | |

| **Description** | Mini files |
| :---- | :---- |
| **Left hand side** | <code> i</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | [Hydra] HYDRA KEYS |
| :---- | :---- |
| **Left hand side** | <code>;;</code> |
| **Right hand side** | |

| **Description** | [Hydra] PLUGINS |
| :---- | :---- |
| **Left hand side** | <code>;p</code> |
| **Right hand side** | |

| **Description** | [Hydra] TERMINAL |
| :---- | :---- |
| **Left hand side** | <code>;m</code> |
| **Right hand side** | |

| **Description** | [Hydra] NEOTEST |
| :---- | :---- |
| **Left hand side** | <code>;'</code> |
| **Right hand side** | |

| **Description** | [Hydra] LOCATION |
| :---- | :---- |
| **Left hand side** | <code>;o</code> |
| **Right hand side** | |

| **Description** | [Hydra] QUICKFIX |
| :---- | :---- |
| **Left hand side** | <code>;q</code> |
| **Right hand side** | |

| **Description** | [Hydra] TELESCOPE |
| :---- | :---- |
| **Left hand side** | <code>;t</code> |
| **Right hand side** | |

| **Description** | [Hydra] SPECTRE |
| :---- | :---- |
| **Left hand side** | <code>;r</code> |
| **Right hand side** | |

| **Description** | [Hydra] NAVIGATION |
| :---- | :---- |
| **Left hand side** | <code>;n</code> |
| **Right hand side** | |

| **Description** | [Hydra] LVIM |
| :---- | :---- |
| **Left hand side** | <code>;l</code> |
| **Right hand side** | |

| **Description** | [Hydra] LINGUISTICS |
| :---- | :---- |
| **Left hand side** | <code>;u</code> |
| **Right hand side** | |

| **Description** | [Hydra] GLANCE |
| :---- | :---- |
| **Left hand side** | <code>;s</code> |
| **Right hand side** | |

| **Description** | [Hydra] GIT |
| :---- | :---- |
| **Left hand side** | <code>;g</code> |
| **Right hand side** | |

| **Description** | [Hydra] FZF |
| :---- | :---- |
| **Left hand side** | <code>;f</code> |
| **Right hand side** | |

| **Description** | [Hydra] EXPLORER |
| :---- | :---- |
| **Left hand side** | <code>;e</code> |
| **Right hand side** | |

| **Description** | [Hydra] LSP |
| :---- | :---- |
| **Left hand side** | <code>;d</code> |
| **Right hand side** | |

| **Description** | [Hydra] COMMON |
| :---- | :---- |
| **Left hand side** | <code>;a</code> |
| **Right hand side** | |

| **Description** | [Hydra] COMMENT, ANNOTATION, FOLD |
| :---- | :---- |
| **Left hand side** | <code>;c</code> |
| **Right hand side** | |

| **Description** | NeoTree close |
| :---- | :---- |
| **Left hand side** | <code>Q</code> |
| **Right hand side** | |

| **Description** | NeoTree filesystem |
| :---- | :---- |
| **Left hand side** | <code>X</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | LocMenuSave |
| :---- | :---- |
| **Left hand side** | <code>[s</code> |
| **Right hand side** | |

| **Description** | LocMenuLoad |
| :---- | :---- |
| **Left hand side** | <code>[l</code> |
| **Right hand side** | |

| **Description** | LocMenuDelete |
| :---- | :---- |
| **Left hand side** | <code>[d</code> |
| **Right hand side** | |

| **Description** | LocMenuChoice |
| :---- | :---- |
| **Left hand side** | <code>[c</code> |
| **Right hand side** | |

| **Description** | LocClose |
| :---- | :---- |
| **Left hand side** | <code>[q</code> |
| **Right hand side** | |

| **Description** | LocOpen |
| :---- | :---- |
| **Left hand side** | <code>[o</code> |
| **Right hand side** | |

| **Description** | LocPrev |
| :---- | :---- |
| **Left hand side** | <code>[[</code> |
| **Right hand side** | |

| **Description** | LocNext |
| :---- | :---- |
| **Left hand side** | <code>[]</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | QfMenuSave |
| :---- | :---- |
| **Left hand side** | <code>]s</code> |
| **Right hand side** | |

| **Description** | QfMenuLoad |
| :---- | :---- |
| **Left hand side** | <code>]l</code> |
| **Right hand side** | |

| **Description** | QfMenuDelete |
| :---- | :---- |
| **Left hand side** | <code>]d</code> |
| **Right hand side** | |

| **Description** | QfMenuChoice |
| :---- | :---- |
| **Left hand side** | <code>]c</code> |
| **Right hand side** | |

| **Description** | QfClose |
| :---- | :---- |
| **Left hand side** | <code>]q</code> |
| **Right hand side** | |

| **Description** | QfOpen |
| :---- | :---- |
| **Left hand side** | <code>]o</code> |
| **Right hand side** | |

| **Description** | QfPrev |
| :---- | :---- |
| **Left hand side** | <code>][</code> |
| **Right hand side** | |

| **Description** | QfNext |
| :---- | :---- |
| **Left hand side** | <code>]]</code> |
| **Right hand side** | |

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

| **Description** | LspShowDiagnosticPrev |
| :---- | :---- |
| **Left hand side** | <code>dp</code> |
| **Right hand side** | |

| **Description** | LspShowDiagnosticNext |
| :---- | :---- |
| **Left hand side** | <code>dn</code> |
| **Right hand side** | |

| **Description** | LspShowDiagnosticCurrent |
| :---- | :---- |
| **Left hand side** | <code>dc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | WindowPicker |
| :---- | :---- |
| **Left hand side** | <code>gw</code> |
| **Right hand side** | |

| **Description** | j |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>gj</code> |

| **Description** | k |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>gk</code> |

| **Description** | q |
| :---- | :---- |
| **Left hand side** | <code>q</code> |
| **Right hand side** | <code></code> |

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

| **Description** | Terminal Float |
| :---- | :---- |
| **Left hand side** | <code>&lt;F4&gt;</code> |
| **Right hand side** | |

| **Description** | Terminal Three |
| :---- | :---- |
| **Left hand side** | <code>&lt;F3&gt;</code> |
| **Right hand side** | |

| **Description** | Terminal Two |
| :---- | :---- |
| **Left hand side** | <code>&lt;F2&gt;</code> |
| **Right hand side** | |

| **Description** | Terminal One |
| :---- | :---- |
| **Left hand side** | <code>&lt;F1&gt;</code> |
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
| **Left hand side** | <code>&lt;Plug&gt;(fzf-normal)</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-insert)</code> |
| **Right hand side** | <code>i</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | |

| **Description** | Navbuddy |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;v</code> |
| **Right hand side** | |

| **Description** | Ranger |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-f&gt;</code> |
| **Right hand side** | |

| **Description** | Ranger |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-r&gt;</code> |
| **Right hand side** | |

| **Description** | Lazydocker |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-d&gt;</code> |
| **Right hand side** | |

| **Description** | Lazygit |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-g&gt;</code> |
| **Right hand side** | |

| **Description** | LspDiagnostic QF |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;&lt;C-H&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Nul&gt;</code> |
| **Right hand side** | <code>:CtrlSpace&lt;CR&gt;</code> |

| **Description** | GitSignsBlameLine |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;m</code> |
| **Right hand side** | |

| **Description** | GitSignsToggleLineBlame |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;b</code> |
| **Right hand side** | |

| **Description** | GitSignsPreviewHunk |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-;&gt;</code> |
| **Right hand side** | |

| **Description** | GitSignsPrevHunk |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-[&gt;</code> |
| **Right hand side** | |

| **Description** | GitSignsNextHunk |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-]&gt;</code> |
| **Right hand side** | |

| **Description** | LvimLinguisticsTOGGLESpelling |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;k</code> |
| **Right hand side** | |

| **Description** | LvimLinguisticsTOGGLEInsertModeLanguage |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;l</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | DAPLocal |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;&lt;C-L&gt;</code> |
| **Right hand side** | |

| **Description** | WinShift |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;w</code> |
| **Right hand side** | |

| **Description** | Lvim forgit |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-t&gt;</code> |
| **Right hand side** | |

| **Description** | Undotree |
| :---- | :---- |
| **Left hand side** | <code>&lt;F5&gt;</code> |
| **Right hand side** | |

| **Description** | Neogit |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-n&gt;</code> |
| **Right hand side** | |

| **Description** | NeoTree git status |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;&lt;C-G&gt;</code> |
| **Right hand side** | |

| **Description** | NeoTree buffers |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;&lt;C-B&gt;</code> |
| **Right hand side** | |

| **Description** | NeoTree filesystem |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;&lt;C-F&gt;</code> |
| **Right hand side** | |

| **Description** | Telescope find files |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-,&gt;</code> |
| **Right hand side** | |

| **Description** | Telescope tmux session |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;t</code> |
| **Right hand side** | |

| **Description** | Telescope buffers |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-b&gt;</code> |
| **Right hand side** | |

| **Description** | Telescope file browser |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-/&gt;</code> |
| **Right hand side** | |

| **Description** | Telescope live grep |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-.&gt;</code> |
| **Right hand side** | |

| **Description** | NeoZoom |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;z</code> |
| **Right hand side** | |

| **Description** | Trouble |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;&lt;C-V&gt;</code> |
| **Right hand side** | |

| **Description** | LvimHelper |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;h</code> |
| **Right hand side** | |

| **Description** | LvimHelper |
| :---- | :---- |
| **Left hand side** | <code>&lt;F11&gt;</code> |
| **Right hand side** | |

| **Description** | Inspect |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;c</code> |
| **Right hand side** | <code>:Inspect&lt;CR&gt;</code> |

| **Description** | Close float windows |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;ff</code> |
| **Right hand side** | <code>:CloseFloatWindows&lt;CR&gt;</code> |

| **Description** | Tab prev |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;p</code> |
| **Right hand side** | <code>:tabp&lt;CR&gt;</code> |

| **Description** | Tab next |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;n</code> |
| **Right hand side** | <code>:tabn&lt;CR&gt;</code> |

| **Description** | Resize height + |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Down&gt;</code> |
| **Right hand side** | <code>:resize +2&lt;CR&gt;</code> |

| **Description** | Resize height - |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Up&gt;</code> |
| **Right hand side** | <code>:resize -2&lt;CR&gt;</code> |

| **Description** | Resize width + |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Right&gt;</code> |
| **Right hand side** | <code>:vertical resize +2&lt;CR&gt;</code> |

| **Description** | Resize width - |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Left&gt;</code> |
| **Right hand side** | <code>:vertical resize -2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NavigatorUp&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NavigatorDown&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NavigatorLeft&lt;CR&gt;</code> |

| **Description** | Win resize = |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;=</code> |
| **Right hand side** | <code>:wincmd=&lt;CR&gt;</code> |

| **Description** | Delete buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;d</code> |
| **Right hand side** | <code>:bdelete&lt;CR&gt;</code> |

| **Description** | Close other windows |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;o</code> |
| **Right hand side** | <code>&lt;C-W&gt;o</code> |

| **Description** | Close current window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;x</code> |
| **Right hand side** | <code>&lt;C-W&gt;c</code> |

| **Description** | Close LvimIDE |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;e</code> |
| **Right hand side** | <code>:Quit&lt;CR&gt;</code> |

| **Description** | Save all |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;a</code> |
| **Right hand side** | <code>:wa&lt;CR&gt;</code> |

| **Description** | Save |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;s</code> |
| **Right hand side** | <code>:Save&lt;CR&gt;</code> |

| **Description** | Create empty buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;N</code> |
| **Right hand side** | <code>:enew&lt;CR&gt;</code> |

| **Description** | C-b |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;C-B&gt;zz</code> |

| **Description** | C-f |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;C-F&gt;zz</code> |

| **Description** | Scroll Up |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | |

| **Description** | Scroll Down |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NavigatorRight&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Macro Play |
| :---- | :---- |
| **Left hand side** | <code> qq</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('NeoComposer.macro').toggle_play_macro()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>&lt;Esc&gt;?\%V</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>&lt;Esc&gt;/\%V</code> |

| **Description** | [Hydra] HYDRA KEYS |
| :---- | :---- |
| **Left hand side** | <code>;;</code> |
| **Right hand side** | |

| **Description** | [Hydra] PLUGINS |
| :---- | :---- |
| **Left hand side** | <code>;p</code> |
| **Right hand side** | |

| **Description** | [Hydra] TERMINAL |
| :---- | :---- |
| **Left hand side** | <code>;m</code> |
| **Right hand side** | |

| **Description** | [Hydra] NEOTEST |
| :---- | :---- |
| **Left hand side** | <code>;'</code> |
| **Right hand side** | |

| **Description** | [Hydra] LOCATION |
| :---- | :---- |
| **Left hand side** | <code>;o</code> |
| **Right hand side** | |

| **Description** | [Hydra] QUICKFIX |
| :---- | :---- |
| **Left hand side** | <code>;q</code> |
| **Right hand side** | |

| **Description** | [Hydra] TELESCOPE |
| :---- | :---- |
| **Left hand side** | <code>;t</code> |
| **Right hand side** | |

| **Description** | [Hydra] SPECTRE |
| :---- | :---- |
| **Left hand side** | <code>;r</code> |
| **Right hand side** | |

| **Description** | [Hydra] NAVIGATION |
| :---- | :---- |
| **Left hand side** | <code>;n</code> |
| **Right hand side** | |

| **Description** | [Hydra] LVIM |
| :---- | :---- |
| **Left hand side** | <code>;l</code> |
| **Right hand side** | |

| **Description** | [Hydra] LINGUISTICS |
| :---- | :---- |
| **Left hand side** | <code>;u</code> |
| **Right hand side** | |

| **Description** | [Hydra] GLANCE |
| :---- | :---- |
| **Left hand side** | <code>;s</code> |
| **Right hand side** | |

| **Description** | [Hydra] GIT |
| :---- | :---- |
| **Left hand side** | <code>;g</code> |
| **Right hand side** | |

| **Description** | [Hydra] FZF |
| :---- | :---- |
| **Left hand side** | <code>;f</code> |
| **Right hand side** | |

| **Description** | [Hydra] EXPLORER |
| :---- | :---- |
| **Left hand side** | <code>;e</code> |
| **Right hand side** | |

| **Description** | [Hydra] LSP |
| :---- | :---- |
| **Left hand side** | <code>;d</code> |
| **Right hand side** | |

| **Description** | [Hydra] COMMON |
| :---- | :---- |
| **Left hand side** | <code>;a</code> |
| **Right hand side** | |

| **Description** | [Hydra] COMMENT, ANNOTATION, FOLD |
| :---- | :---- |
| **Left hand side** | <code>;c</code> |
| **Right hand side** | |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>gj</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>gk</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

