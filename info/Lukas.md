# Lukas Neovim Configuration Information

Personal Neovim configuration of Lukas Reineke, author of many excellent Neovim plugins. Requires an externally installed `lua-language-server` and `efm-langserver`

- Install and initialize: **`lazyman -w Lukas`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Lukas`**

## Git repository

[https://github.com/lukas-reineke/dotfiles](https://github.com/lukas-reineke/dotfiles)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [antoinemadec/FixCursorHold.nvim](https://github.com/antoinemadec/FixCursorHold.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [numToStr/Navigator.nvim](https://github.com/numToStr/Navigator.nvim)
- [vim-scripts/ReplaceWithRegister](https://github.com/vim-scripts/ReplaceWithRegister)
- [vim-scripts/ReplaceWithSameIndentRegister](https://github.com/vim-scripts/ReplaceWithSameIndentRegister)
- [vim-scripts/UnconditionalPaste](https://github.com/vim-scripts/UnconditionalPaste)
- [rmagatti/auto-session](https://github.com/rmagatti/auto-session)
- [bkad/camelcasemotion](https://github.com/bkad/camelcasemotion)
- [rhysd/clever-f.vim](https://github.com/rhysd/clever-f.vim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [dmitmel/cmp-cmdline-history](https://github.com/dmitmel/cmp-cmdline-history)
- [rcarriga/cmp-dap](https://github.com/rcarriga/cmp-dap)
- [petertriho/cmp-git](https://github.com/petertriho/cmp-git)
- [lttr/cmp-jira](https://github.com/lttr/cmp-jira)
- [octaltree/cmp-look](https://github.com/octaltree/cmp-look)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [lukas-reineke/cmp-rg](https://github.com/lukas-reineke/cmp-rg)
- [andersevenrud/cmp-tmux](https://github.com/andersevenrud/cmp-tmux)
- [lukas-reineke/cmp-under-comparator](https://github.com/lukas-reineke/cmp-under-comparator)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Saecki/crates.nvim](https://github.com/Saecki/crates.nvim)
- [spywhere/detect-language.nvim](https://github.com/spywhere/detect-language.nvim)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [famiu/feline.nvim](https://github.com/famiu/feline.nvim)
- [jghauser/follow-md-links.nvim](https://github.com/jghauser/follow-md-links.nvim)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
- [lukas-reineke/headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)
- [m-demare/hlargs.nvim](https://github.com/m-demare/hlargs.nvim)
- [smjonas/inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [haya14busa/is.vim](https://github.com/haya14busa/is.vim)
- [cohama/lexima.vim](https://github.com/cohama/lexima.vim)
- [lukas-reineke/lsp-format.nvim](https://github.com/lukas-reineke/lsp-format.nvim)
- [lvimuser/lsp-inlayhints.nvim](https://github.com/lvimuser/lsp-inlayhints.nvim)
- [~whynothugo/lsp_lines.nvim](https://git.sr.ht/~whynothugo/lsp_lines.nvim)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [mrbjarksen/neo-tree-diagnostics.nvim](https://github.com/mrbjarksen/neo-tree-diagnostics.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)
- [nvim-neotest/neotest-go](https://github.com/nvim-neotest/neotest-go)
- [haydenmeade/neotest-jest](https://github.com/haydenmeade/neotest-jest)
- [nvim-neotest/neotest-plenary](https://github.com/nvim-neotest/neotest-plenary)
- [nvim-neotest/neotest-python](https://github.com/nvim-neotest/neotest-python)
- [rouge8/neotest-rust](https://github.com/rouge8/neotest-rust)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [andythigpen/nvim-coverage](https://github.com/andythigpen/nvim-coverage)
- [Kasama/nvim-custom-diagnostic-highlight](https://github.com/Kasama/nvim-custom-diagnostic-highlight)
- [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go)
- [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [mxsdev/nvim-dap-vscode-js](https://github.com/mxsdev/nvim-dap-vscode-js)
- [vijaymarupudi/nvim-fzf](https://github.com/vijaymarupudi/nvim-fzf)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [milisims/nvim-luaref](https://github.com/milisims/nvim-luaref)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [yorickpeterse/nvim-pqf](https://gitlab.com/yorickpeterse/nvim-pqf)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [RRethy/nvim-treesitter-textsubjects](https://github.com/RRethy/nvim-treesitter-textsubjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [pwntester/octo.nvim](https://github.com/pwntester/octo.nvim)
- [jbyuki/one-small-step-for-vimkind](https://github.com/jbyuki/one-small-step-for-vimkind)
- [lukas-reineke/onedark.nvim](https://github.com/lukas-reineke/onedark.nvim)
- [tyru/open-browser.vim](https://github.com/tyru/open-browser.vim)
- [akinsho/org-bullets.nvim](https://github.com/akinsho/org-bullets.nvim)
- [kristijanhusak/orgmode.nvim](https://github.com/kristijanhusak/orgmode.nvim)
- [vuki656/package-info.nvim](https://github.com/vuki656/package-info.nvim)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [bounceme/poppy.vim](https://github.com/bounceme/poppy.vim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [kepbod/quick-scope](https://github.com/kepbod/quick-scope)
- [ThePrimeagen/refactoring.nvim](https://github.com/ThePrimeagen/refactoring.nvim)
- [lewis6991/spellsitter.nvim](https://github.com/lewis6991/spellsitter.nvim)
- [wellle/targets.vim](https://github.com/wellle/targets.vim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [David-Kunz/treesitter-unit](https://github.com/David-Kunz/treesitter-unit)
- [Wansmer/treesj](https://github.com/Wansmer/treesj)
- [arthurxavierx/vim-caser](https://github.com/arthurxavierx/vim-caser)
- [tpope/vim-eunuch](https://github.com/tpope/vim-eunuch)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [rrethy/vim-hexokinase](https://github.com/rrethy/vim-hexokinase)
- [michaeljsmith/vim-indent-object](https://github.com/michaeljsmith/vim-indent-object)
- [kana/vim-niceblock](https://github.com/kana/vim-niceblock)
- [tpope/vim-obsession](https://github.com/tpope/vim-obsession)
- [krisajenkins/vim-projectlocal](https://github.com/krisajenkins/vim-projectlocal)
- [romainl/vim-qf](https://github.com/romainl/vim-qf)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [tpope/vim-rhubarb](https://github.com/tpope/vim-rhubarb)
- [machakann/vim-sandwich](https://github.com/machakann/vim-sandwich)
- [kshenoy/vim-signature](https://github.com/kshenoy/vim-signature)
- [tpope/vim-sleuth](https://github.com/tpope/vim-sleuth)
- [z1mm32m4n/vim-superman](https://github.com/z1mm32m4n/vim-superman)
- [dhruvasagar/vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)
- [lukas-reineke/virt-column.nvim](https://github.com/lukas-reineke/virt-column.nvim)
- [microsoft/vscode-js-debug](https://github.com/microsoft/vscode-js-debug)

## Lukas Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> k</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'luasnip'.jump(-1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> j</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'luasnip'.jump(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gl</code> |
| **Right hand side** | <code>:diffget //3&lt;CR&gt; :diffupdate&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gh</code> |
| **Right hand side** | <code>:diffget //2&lt;CR&gt; :diffupdate&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gn</code> |
| **Right hand side** | <code>:lua require('lists').change_active('Quickfix')&lt;CR&gt;:Git mergetool&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gg</code> |
| **Right hand side** | <code>:lua require('lists').change_active('Quickfix')&lt;CR&gt;:execute 'Git difftool ' .. g:git_base&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gc</code> |
| **Right hand side** | <code>:0Gclog&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ga</code> |
| **Right hand side** | <code>&lt;Plug&gt;(GitGutterStageHunk)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gu</code> |
| **Right hand side** | <code>&lt;Plug&gt;(GitGutterUndoHunk)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gm</code> |
| **Right hand side** | <code>&lt;Plug&gt;(git-messenger)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gs</code> |
| **Right hand side** | <code>:Git&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gb</code> |
| **Right hand side** | <code>:Git blame&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gr</code> |
| **Right hand side** | <code>:Gread&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gd</code> |
| **Right hand side** | <code>:set nosplitright&lt;CR&gt;:execute 'Gvdiff ' .. g:git_base&lt;CR&gt;:set splitright&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> f</code> |
| **Right hand side** | <code>:lua require('fuzzy').symbols()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> m</code> |
| **Right hand side** | <code>:Marks&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> &lt;C-H&gt;</code> |
| **Right hand side** | <code>:Helptags&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> &lt;C-P&gt;</code> |
| **Right hand side** | <code>:Commands&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> p</code> |
| **Right hand side** | <code>:Buffers&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> n</code> |
| **Right hand side** | <code>:lua require('fuzzy').files(vim.fn.expand('%:h'))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gf</code> |
| **Right hand side** | <code>:lua require('fuzzy').git_files()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> a</code> |
| **Right hand side** | <code>:lua require('lists').change_active('Quickfix')&lt;CR&gt;:silent grep </code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> b</code> |
| **Right hand side** | <code>:lua require('lists').toggle_active()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> v</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_loc_toggle_stay):lua require('lists').change_active('Location')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> c</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_qf_toggle_stay):lua require('lists').change_active('Quickfix')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dl</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dk</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dj</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dh</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> d&lt;CR&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dp</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> di</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> do</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dB</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> db</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> td</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tf</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ts</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> to</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tt</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ll</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> oa</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('orgmode').action('agenda.prompt')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> of</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('orgmode').action('capture.prompt')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> N</code> |
| **Right hand side** | <code>:e %:h/</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> rr</code> |
| **Right hand side** | <code>:%s/\v()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> z</code> |
| **Right hand side** | <code>1z=</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>:update&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> q</code> |
| **Right hand side** | <code>:lua require 'buffers'.close()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> &lt;C-O&gt;</code> |
| **Right hand side** | <code>:lua require 'buffers'.close_others()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>  </code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe v:count ? v:count . 'b' : 'b' . (bufloaded(0) ? '#' : 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-#)</code> |

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
| **Left hand side** | <code>'[</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "line", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>']</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "line", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-*)N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>-</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-10&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteUnjoinAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-9&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteUnjoinBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-8&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;VimwikiDecrementListItem</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-7&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;VimwikiIncrementListItem</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-6&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaSingleQuoteBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-5&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaSingleQuoteAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-4&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-3&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-2&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteLineBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;CLEAR-1&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteLineAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-F)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>5j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>5k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-N)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-T)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

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
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\&lt;lt&gt;Space&gt;tt</code> |
| **Right hand side** | <code>&lt;Plug&gt;(table-mode-tableize)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\&lt;lt&gt;Space&gt;tm</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#Toggle()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>`[</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "spot", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>`]</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "spot", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>b</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#utils#Remove(v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>e</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_e</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-f)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs.</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserDotCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsK</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserTitleKebabCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs-</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserKebabCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsk</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserKebabCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs </code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserSpaceCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gss</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserSentenceCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gst</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserTitleCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsU</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserUpperCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsu</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserUpperCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs_</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserSnakeCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsc</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserCamelCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsm</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserMixedCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gPP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteGPlusBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gPp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteGPlusAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gpP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPastePlusBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gpp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPastePlusAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gUP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallUnjoinBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gUp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallUnjoinAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gQP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallQueriedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gQp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallQueriedAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gqP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteQueriedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gqp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteQueriedAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gQBP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallDelimitedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gQBp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallDelimitedAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gqbP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteDelimitedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gqbp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteDelimitedAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gBP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteJaggedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gBp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteJaggedAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteSpacedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsp</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserMixedCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g#P</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommentedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g#p</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommentedAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&gt;P</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteShiftedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&gt;p</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteShiftedAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g[[P</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteLessIndentBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g[[p</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteLessIndentAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g]]P</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteMoreIndentBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g]]p</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteMoreIndentAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g[p</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteIndentedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g[P</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteIndentedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g]P</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteIndentedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g,"P</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaDoubleQuoteBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g,"p</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaDoubleQuoteAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gbP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteBlockBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gbp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteBlockAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCharBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteCharAfter</code> |

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
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;(openbrowser-smart-search)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gk</code> |
| **Right hand side** | <code>&lt;Plug&gt;(GitGutterPrevHunk)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gj</code> |
| **Right hand side** | <code>&lt;Plug&gt;(GitGutterNextHunk)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g*</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-g*)N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gck</code> |
| **Right hand side** | <code>m'yypgcc`'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>glP</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteIndentedBefore</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>glp</code> |
| **Right hand side** | <code>&lt;Plug&gt;UnconditionalPasteIndentedAfter</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gr</code> |
| **Right hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterOperator</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>grR</code> |
| **Right hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterLine</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>grr</code> |
| **Right hand side** | <code>&lt;Plug&gt;ReplaceWithSameIndentRegisterLine</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g-</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ge</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ge</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>v:count ? (v:count &gt; 5 ? "m'" . v:count : '') . 'j' : 'gj'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>v:count ? (v:count &gt; 5 ? "m'" . v:count : '') . 'k' : 'gk'</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-n)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>srb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-replace-auto)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sr</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-replace)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sdb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-delete-auto)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sd</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-delete)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sa</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-t)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>w</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_w</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>x</code> |
| **Right hand side** | <code>"_x</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-sort)</code> |
| **Right hand side** | <code>:call tablemode#spreadsheet#Sort('')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-echo-cell)</code> |
| **Right hand side** | <code>:call tablemode#spreadsheet#EchoCell()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-eval-formula)</code> |
| **Right hand side** | <code>:call tablemode#spreadsheet#formula#EvaluateFormulaLine()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-add-formula)</code> |
| **Right hand side** | <code>:call tablemode#spreadsheet#formula#Add()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-insert-column-after)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#InsertColumn(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-insert-column-before)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#InsertColumn(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-delete-column)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#DeleteColumn()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-delete-row)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#DeleteRow()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-motion-right)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#cell#Motion('l')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-motion-left)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#cell#Motion('h')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-motion-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#cell#Motion('j')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-motion-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#cell#Motion('k')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-realign)</code> |
| **Right hand side** | <code>:call tablemode#table#Realign('.')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-tableize)</code> |
| **Right hand side** | <code>:Tableize&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('n', 'a', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('n', 'i', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('n', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('n', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('n', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('n', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-replace-auto)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-delete-auto)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-query-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-query-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-gv)</code> |
| **Right hand side** | <code>gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |
| **Right hand side** | <code>g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('replace')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('delete')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('add')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-dot)</code> |
| **Right hand side** | <code>operator#sandwich#dot()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-predot)</code> |
| **Right hand side** | <code>operator#sandwich#predot()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-query1st)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#query1st('replace', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-query1st)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#query1st('add', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#prerequisite('replace', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#prerequisite('delete', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-pre)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#prerequisite('add', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-pre)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_switch)</code> |
| **Right hand side** | <code>&filetype ==# 'qf' ? '&lt;C-W&gt;p' : '&lt;C-W&gt;b'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_loc_toggle_stay)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#toggle#ToggleLocWindow(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_loc_toggle)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#toggle#ToggleLocWindow(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_toggle_stay)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#toggle#ToggleQfWindow(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_toggle)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#toggle#ToggleQfWindow(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_loc_next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#wrap#WrapCommand('down', 'l')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_loc_previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#wrap#WrapCommand('up', 'l')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#wrap#WrapCommand('down', 'c')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#wrap#WrapCommand('up', 'c')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfSwitch</code> |
| **Right hand side** | <code>&filetype ==# 'qf' ? '&lt;C-W&gt;p' : '&lt;C-W&gt;b'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfLtoggle</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_loc_toggle)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfCtoggle</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_qf_toggle)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfLnext</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_loc_next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfLprevious</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_loc_previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfCnext</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_qf_next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfCprevious</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_qf_previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;GitGutterPreviewHunk</code> |
| **Right hand side** | <code>:call gitgutter#utility#warn('Please change your map &lt;lt&gt;Plug&gt;GitGutterPreviewHunk to &lt;lt&gt;Plug&gt;(GitGutterPreviewHunk)')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterPreviewHunk)</code> |
| **Right hand side** | <code>:GitGutterPreviewHunk&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;GitGutterUndoHunk</code> |
| **Right hand side** | <code>:call gitgutter#utility#warn('Please change your map &lt;lt&gt;Plug&gt;GitGutterUndoHunk to &lt;lt&gt;Plug&gt;(GitGutterUndoHunk)')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterUndoHunk)</code> |
| **Right hand side** | <code>:GitGutterUndoHunk&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;GitGutterStageHunk</code> |
| **Right hand side** | <code>:call gitgutter#utility#warn('Please change your map &lt;lt&gt;Plug&gt;GitGutterStageHunk to &lt;lt&gt;Plug&gt;(GitGutterStageHunk)')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterStageHunk)</code> |
| **Right hand side** | <code>:GitGutterStageHunk&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;GitGutterPrevHunk</code> |
| **Right hand side** | <code>&diff ? '[c' : ":\&lt;C-U&gt;call gitgutter#utility#warn('Please change your map \&lt;lt&gt;Plug&gt;GitGutterPrevHunk to \&lt;lt&gt;Plug&gt;(GitGutterPrevHunk)')\&lt;CR&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterPrevHunk)</code> |
| **Right hand side** | <code>&diff ? '[c' : ":\&lt;C-U&gt;execute v:count1 . 'GitGutterPrevHunk'\&lt;CR&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;GitGutterNextHunk</code> |
| **Right hand side** | <code>&diff ? ']c' : ":\&lt;C-U&gt;call gitgutter#utility#warn('Please change your map \&lt;lt&gt;Plug&gt;GitGutterNextHunk to \&lt;lt&gt;Plug&gt;(GitGutterNextHunk)')\&lt;CR&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterNextHunk)</code> |
| **Right hand side** | <code>&diff ? ']c' : ":\&lt;C-U&gt;execute v:count1 . 'GitGutterNextHunk'\&lt;CR&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserDotCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("DotCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserTitleKebabCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("TitleKebabCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserKebabCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("KebabCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserSpaceCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("SpaceCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserSentenceCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("SentenceCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserTitleCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("TitleCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserUpperCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("UpperCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserSnakeCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("SnakeCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserCamelCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("CamelCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserMixedCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#ActionSetup("MixedCase")&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(QuickScopeToggle)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;82_toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(openbrowser-smart-search)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call openbrowser#_keymap_smart_search('n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(openbrowser-search)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call openbrowser#_keymap_search('n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(openbrowser-open-incognito)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call openbrowser#_keymap_open('n', 0, ['--incognito'])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(openbrowser-open)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call openbrowser#_keymap_open('n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-g#)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-g#)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-g*)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-g*)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-#)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-#)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-*)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-*)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-N)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-N)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-n)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-n)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-g#)</code> |
| **Right hand side** | <code>g#</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-g*)</code> |
| **Right hand side** | <code>g*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-#)</code> |
| **Right hand side** | <code>#</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-*)</code> |
| **Right hand side** | <code>*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-N)</code> |
| **Right hand side** | <code>N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-n)</code> |
| **Right hand side** | <code>n</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl-2)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl-3)</code> |
| **Right hand side** | <code>is#auto_nohlsearch(3)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl-2)</code> |
| **Right hand side** | <code>is#auto_nohlsearch(2)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl-1)</code> |
| **Right hand side** | <code>is#auto_nohlsearch(1)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-scroll-b)</code> |
| **Right hand side** | <code>is#scroll_count(0, @/) . 'Nzz'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-scroll-f)</code> |
| **Right hand side** | <code>is#scroll_count(1, @/) . 'nzz'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-maps-n)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call fzf#vim#maps('n', 0)&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-repeat-back)</code> |
| **Right hand side** | <code>clever_f#repeat(1)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-repeat-forward)</code> |
| **Right hand side** | <code>clever_f#repeat(0)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-reset)</code> |
| **Right hand side** | <code>clever_f#reset()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-T)</code> |
| **Right hand side** | <code>clever_f#find_with('T')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-t)</code> |
| **Right hand side** | <code>clever_f#find_with('t')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-F)</code> |
| **Right hand side** | <code>clever_f#find_with('F')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-f)</code> |
| **Right hand side** | <code>clever_f#find_with('f')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ge</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('ge',v:count1,'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_e</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('e',v:count1,'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_b</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('b',v:count1,'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('w',v:count1,'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteGPlusRepeatBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteGPlusRepeatBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, '.P', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteGPlusRepeatBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteGPlusRepeatAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteGPlusRepeatAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, '.P', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteGPlusRepeatAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteGPlusBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteGPlusRepeatBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'P', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteGPlusRepeatBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteGPlusAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteGPlusRepeatAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'P', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteGPlusRepeatAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPastePlusRepeatBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPastePlusRepeatBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, '.p', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPastePlusRepeatBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPastePlusRepeatAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPastePlusRepeatAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, '.p', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPastePlusRepeatAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPastePlusBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPastePlusRepeatBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'p', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPastePlusRepeatBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPastePlusAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPastePlusRepeatAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'p', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPastePlusRepeatAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallUnjoinBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallUnjoinBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'U', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallUnjoinBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallUnjoinAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallUnjoinAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'U', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallUnjoinAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteUnjoinBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallUnjoinBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'u', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallUnjoinBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteUnjoinAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallUnjoinAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'u', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallUnjoinAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallQueriedBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallQueriedBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'Q', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallQueriedBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallQueriedAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallQueriedAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'Q', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallQueriedAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteQueriedBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallQueriedBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'q', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallQueriedBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteQueriedAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallQueriedAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'q', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallQueriedAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallDelimitedBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallDelimitedBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'QB', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallDelimitedBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteRecallDelimitedAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallDelimitedAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'QB', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallDelimitedAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteDelimitedBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallDelimitedBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'qb', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallDelimitedBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteDelimitedAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallDelimitedAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'qb', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteRecallDelimitedAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteJaggedBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteJaggedBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'B', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteJaggedBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteJaggedAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteJaggedAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'B', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteJaggedAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteSpacedBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteSpacedBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 's', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteSpacedBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteSpacedAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteSpacedAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 's', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteSpacedAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommentedBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommentedBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, '#', ']P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommentedBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommentedAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommentedAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, '#', ']p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommentedAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteShiftedBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteShiftedBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, '&gt;', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteShiftedBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteShiftedAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteShiftedAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, '&gt;', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteShiftedAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteLessIndentBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteLessIndentBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'n', ']P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteLessIndentBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteLessIndentAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteLessIndentAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'n', ']p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteLessIndentAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteMoreIndentBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteMoreIndentBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'm', ']P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteMoreIndentBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteMoreIndentAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteMoreIndentAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'm', ']p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteMoreIndentAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteIndentedBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteIndentedBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'l', ']P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteIndentedBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteIndentedAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteIndentedAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'l', ']p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteIndentedAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaDoubleQuoteBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaDoubleQuoteBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, ',"', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaDoubleQuoteBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaDoubleQuoteAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaDoubleQuoteAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, ',"', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaDoubleQuoteAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaSingleQuoteBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaSingleQuoteBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, ',''', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaSingleQuoteBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaSingleQuoteAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaSingleQuoteAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, ',''', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaSingleQuoteAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, ',', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCommaAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, ',', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCommaAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteBlockBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteBlockBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'b', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteBlockBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteBlockAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteBlockAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'b', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteBlockAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteLineBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteLineBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'l', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteLineBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteLineAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteLineAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'l', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteLineAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCharBefore</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCharBefore", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'c', 'P')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCharBefore", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;UnconditionalPasteCharAfter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;UnconditionalPasteCharAfter", v:register)'&#124;if v:register ==# "="|    call UnconditionalPaste#HandleExprReg(getreg("="))|endif|call UnconditionalPaste#Paste(v:register, 'c', 'p')|silent! call repeat#set("\&lt;lt&gt;Plug&gt;UnconditionalPasteCharAfter", UnconditionalPaste#GetCount())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithSameIndentRegisterVisual</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithSameIndentRegisterVisual", v:register)'|call ReplaceWithSameIndentRegister#SetRegister()|if ReplaceWithSameIndentRegister#IsExprReg()|    let g:ReplaceWithSameIndentRegister_expr = getreg('=')|endif|execute 'normal!' ReplaceWithSameIndentRegister#VisualMode()|call ReplaceWithSameIndentRegister#Visual("\&lt;lt&gt;Plug&gt;ReplaceWithSameIndentRegisterVisual")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithSameIndentRegisterLine</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithSameIndentRegisterLine", v:register)'|call ReplaceWithSameIndentRegister#SetRegister()|if ReplaceWithSameIndentRegister#IsExprReg()|    let g:ReplaceWithSameIndentRegister_expr = getreg('=')|endif|execute 'normal! V' . v:count1 . "_\&lt;lt&gt;Esc&gt;"|call ReplaceWithSameIndentRegister#Visual("\&lt;lt&gt;Plug&gt;ReplaceWithSameIndentRegisterLine")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterVisual</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister_expr = getreg('=')|endif|execute 'normal!' ReplaceWithRegister#VisualMode()|call ReplaceWithRegister#Operator('visual', "\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterLine</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithRegisterLine", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister_expr = getreg('=')|endif|execute 'normal! V' . v:count1 . "_\&lt;lt&gt;Esc&gt;"|call ReplaceWithRegister#Operator('visual', "\&lt;lt&gt;Plug&gt;ReplaceWithRegisterLine")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterExpressionSpecial</code> |
| **Right hand side** | <code>:&lt;C-U&gt;let g:ReplaceWithRegister_expr = getreg('=')&#124;execute 'normal!' v:count1 . '.'&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterOperator</code> |
| **Right hand side** | <code>ReplaceWithRegister#OperatorExpression()</code> |

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
| **Left hand side** | <code>&lt;C-P&gt;</code> |
| **Right hand side** | <code>:lua require('fuzzy').files('')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;j</code> |
| **Right hand side** | <code>&lt;C-W&gt;5-</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;k</code> |
| **Right hand side** | <code>&lt;C-W&gt;5+</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;h</code> |
| **Right hand side** | <code>&lt;C-W&gt;5&lt;lt&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;l</code> |
| **Right hand side** | <code>&lt;C-W&gt;5&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('Navigator').up()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('Navigator').down()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('Navigator').left()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code>:lua require('lists').move('right')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code>:lua require('lists').move('left')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code>:lua require('lists').move('down')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code>:lua require('lists').move('up')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('Navigator').right()&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> rr</code> |
| **Right hand side** | <code>:s/\v%V()</code> |

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
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>@(targets)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call targets#do()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>A</code> |
| **Right hand side** | <code>&lt;Plug&gt;(niceblock-A)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-F)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>I</code> |
| **Right hand side** | <code>&lt;Plug&gt;(niceblock-I)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>5j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>5k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-N)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>P</code> |
| **Right hand side** | <code>'"_d"'.v:register.'P'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-T)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\&lt;lt&gt;Space&gt;T</code> |
| **Right hand side** | <code>&lt;Plug&gt;(table-mode-tableize-delimiter)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\&lt;lt&gt;Space&gt;tt</code> |
| **Right hand side** | <code>&lt;Plug&gt;(table-mode-tableize)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>as</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ab</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>aI</code> |
| **Right hand side** | <code>:&lt;C-U&gt;cal &lt;SNR&gt;95_HandleTextObjectMapping(0, 1, 1, [line("'&lt;lt&gt;"), line("'&gt;"), col("'&lt;lt&gt;"), col("'&gt;")])&lt;CR&gt;&lt;Esc&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ai</code> |
| **Right hand side** | <code>:&lt;C-U&gt;cal &lt;SNR&gt;95_HandleTextObjectMapping(0, 0, 1, [line("'&lt;lt&gt;"), line("'&gt;"), col("'&lt;lt&gt;"), col("'&gt;")])&lt;CR&gt;&lt;Esc&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a</code> |
| **Right hand side** | <code>targets#e('o', 'a', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>au</code> |
| **Right hand side** | <code>:lua require"treesitter-unit".select(true)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>b</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>e</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_e</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-f)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs.</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVDotCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsK</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVTitleKebabCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs-</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVKebabCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsk</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVKebabCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs </code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVSpaceCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gss</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVSentenceCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gst</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVTitleCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsU</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVUpperCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsu</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVUpperCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs_</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVSnakeCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsc</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVCamelCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsp</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVMixedCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gsm</code> |
| **Right hand side** | <code>&lt;Plug&gt;CaserVMixedCase</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g#</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-g#)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g*</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-g*)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gR</code> |
| **Right hand side** | <code>&lt;Plug&gt;ReplaceWithSameIndentRegisterVisual</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gr</code> |
| **Right hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterVisual</code> |

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
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gI</code> |
| **Right hand side** | <code>&lt;Plug&gt;(niceblock-gI)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;(openbrowser-smart-search)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ge</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ge</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>is</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ib</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>iI</code> |
| **Right hand side** | <code>:&lt;C-U&gt;cal &lt;SNR&gt;95_HandleTextObjectMapping(1, 1, 1, [line("'&lt;lt&gt;"), line("'&gt;"), col("'&lt;lt&gt;"), col("'&gt;")])&lt;CR&gt;&lt;Esc&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ii</code> |
| **Right hand side** | <code>:&lt;C-U&gt;cal &lt;SNR&gt;95_HandleTextObjectMapping(1, 0, 1, [line("'&lt;lt&gt;"), line("'&gt;"), col("'&lt;lt&gt;"), col("'&gt;")])&lt;CR&gt;&lt;Esc&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i</code> |
| **Right hand side** | <code>targets#e('o', 'i', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>iu</code> |
| **Right hand side** | <code>:lua require"treesitter-unit".select()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>v:count ? (v:count &gt; 5 ? "m'" . v:count : '') . 'j' : 'gj'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>v:count ? (v:count &gt; 5 ? "m'" . v:count : '') . 'k' : 'gk'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-n)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sr</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-replace)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sd</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-delete)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sa</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-t)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>w</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_w</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-cell-text-object-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#cell#TextObject(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-cell-text-object-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#cell#TextObject(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-tableize-delimiter)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#TableizeByDelimiter()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-tableize)</code> |
| **Right hand side** | <code>:Tableize&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('x', 'a', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('x', 'i', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('x', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('x', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('x', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('x', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tag-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#at()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tag-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#it()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tagname-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#a()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tagname-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#i()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#a('x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-ap)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ap('x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#i('x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-ip)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ip('x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |
| **Right hand side** | <code>g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('replace')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('delete')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('add')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-query1st)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#query1st('replace', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-query1st)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#query1st('add', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#prerequisite('replace', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#prerequisite('delete', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-pre)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#prerequisite('add', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)&lt;Plug&gt;(operator-sandwich-gv)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)&lt;Plug&gt;(operator-sandwich-gv)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-pre)&lt;Plug&gt;(operator-sandwich-gv)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(niceblock-A)</code> |
| **Right hand side** | <code>niceblock#force_blockwise('A')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(niceblock-gI)</code> |
| **Right hand side** | <code>niceblock#force_blockwise('gI')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(niceblock-I)</code> |
| **Right hand side** | <code>niceblock#force_blockwise('I')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;GitGutterStageHunk</code> |
| **Right hand side** | <code>:call gitgutter#utility#warn('Please change your map &lt;lt&gt;Plug&gt;GitGutterStageHunk to &lt;lt&gt;Plug&gt;(GitGutterStageHunk)')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterStageHunk)</code> |
| **Right hand side** | <code>:GitGutterStageHunk&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterTextObjectOuterVisual)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call gitgutter#hunk#text_object(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterTextObjectInnerVisual)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call gitgutter#hunk#text_object(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVDotCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("DotCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVTitleKebabCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("TitleKebabCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVKebabCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("KebabCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVSpaceCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("SpaceCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVSentenceCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("SentenceCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVTitleCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("TitleCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVUpperCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("UpperCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVSnakeCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("SnakeCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVCamelCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("CamelCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CaserVMixedCase</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call caser#DoAction("MixedCase",visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(QuickScopeToggle)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;82_toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(openbrowser-smart-search)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call openbrowser#_keymap_smart_search('v')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(openbrowser-search)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call openbrowser#_keymap_search('v')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(openbrowser-open-incognito)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call openbrowser#_keymap_open('v', 0, ['--incognito'])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(openbrowser-open)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call openbrowser#_keymap_open('v')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-g#)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-g#)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-g*)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-g*)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-#)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-#)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-*)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-*)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-N)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-N)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-n)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-n)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-g#)</code> |
| **Right hand side** | <code>g#</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-g*)</code> |
| **Right hand side** | <code>g*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-#)</code> |
| **Right hand side** | <code>#</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-*)</code> |
| **Right hand side** | <code>*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-N)</code> |
| **Right hand side** | <code>N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-n)</code> |
| **Right hand side** | <code>n</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl-2)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl-3)</code> |
| **Right hand side** | <code>is#auto_nohlsearch(3)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl-2)</code> |
| **Right hand side** | <code>is#auto_nohlsearch(2)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl-1)</code> |
| **Right hand side** | <code>is#auto_nohlsearch(1)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-scroll-b)</code> |
| **Right hand side** | <code>is#scroll_count(0, @/) . 'Nzz'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-scroll-f)</code> |
| **Right hand side** | <code>is#scroll_count(1, @/) . 'nzz'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-maps-x)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call fzf#vim#maps('x', 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-repeat-back)</code> |
| **Right hand side** | <code>clever_f#repeat(1)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-repeat-forward)</code> |
| **Right hand side** | <code>clever_f#repeat(0)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-reset)</code> |
| **Right hand side** | <code>clever_f#reset()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-T)</code> |
| **Right hand side** | <code>clever_f#find_with('T')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-t)</code> |
| **Right hand side** | <code>clever_f#find_with('t')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-F)</code> |
| **Right hand side** | <code>clever_f#find_with('F')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-f)</code> |
| **Right hand side** | <code>clever_f#find_with('f')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ige</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#InnerMotion('ge',v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ie</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#InnerMotion('e',v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ib</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#InnerMotion('b',v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_iw</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#InnerMotion('w',v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ge</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('ge',v:count1,'v')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_e</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('e',v:count1,'v')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_b</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('b',v:count1,'v')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('w',v:count1,'v')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithSameIndentRegisterVisual</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithSameIndentRegisterVisual", v:register)'|call ReplaceWithSameIndentRegister#SetRegister()|if ReplaceWithSameIndentRegister#IsExprReg()|    let g:ReplaceWithSameIndentRegister_expr = getreg('=')|endif|call ReplaceWithSameIndentRegister#Visual("\&lt;lt&gt;Plug&gt;ReplaceWithSameIndentRegisterVisual")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterVisual</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister_expr = getreg('=')|endif|call ReplaceWithRegister#Operator('visual', "\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
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
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-#)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-*)N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>@(targets)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call targets#do()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>A</code> |
| **Right hand side** | <code>targets#e('o', 'A', 'A')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-F)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>I</code> |
| **Right hand side** | <code>targets#e('o', 'I', 'I')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-N)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-T)</code> |

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
| **Left hand side** | <code>as</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ab</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>aI</code> |
| **Right hand side** | <code>:&lt;C-U&gt;cal &lt;SNR&gt;95_HandleTextObjectMapping(0, 1, 0, [line("."), line("."), col("."), col(".")])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ai</code> |
| **Right hand side** | <code>:&lt;C-U&gt;cal &lt;SNR&gt;95_HandleTextObjectMapping(0, 0, 0, [line("."), line("."), col("."), col(".")])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a</code> |
| **Right hand side** | <code>targets#e('o', 'a', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>au</code> |
| **Right hand side** | <code>:&lt;C-U&gt;lua require"treesitter-unit".select(true)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>b</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>e</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_e</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-f)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g#</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-g#)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g*</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-g*)N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ge</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ge</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>is</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ib</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>iI</code> |
| **Right hand side** | <code>:&lt;C-U&gt;cal &lt;SNR&gt;95_HandleTextObjectMapping(1, 1, 0, [line("."), line("."), col("."), col(".")])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ii</code> |
| **Right hand side** | <code>:&lt;C-U&gt;cal &lt;SNR&gt;95_HandleTextObjectMapping(1, 0, 0, [line("."), line("."), col("."), col(".")])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i</code> |
| **Right hand side** | <code>targets#e('o', 'i', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>iu</code> |
| **Right hand side** | <code>:&lt;C-U&gt;lua require"treesitter-unit".select()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-n)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sa</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | <code>&lt;Plug&gt;(clever-f-t)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>w</code> |
| **Right hand side** | <code>&lt;Plug&gt;CamelCaseMotion_w</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-cell-text-object-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#cell#TextObject(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(table-mode-cell-text-object-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call tablemode#spreadsheet#cell#TextObject(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('o', 'a', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('o', 'i', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('o', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('o', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('o', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('o', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tag-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#at()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tag-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#it()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tagname-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#a()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tagname-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#i()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#a('o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-ap)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ap('o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#i('o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-ip)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ip('o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |
| **Right hand side** | <code>g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('replace')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('delete')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('add')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-squash-count)</code> |
| **Right hand side** | <code>operator#sandwich#squash_count()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-release-count)</code> |
| **Right hand side** | <code>operator#sandwich#release_count()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-synchro-count)</code> |
| **Right hand side** | <code>operator#sandwich#synchro_count()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterTextObjectOuterPending)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call gitgutter#hunk#text_object(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GitGutterTextObjectInnerPending)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call gitgutter#hunk#text_object(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-g#)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-g#)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-g*)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-g*)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-#)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-#)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-*)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-*)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-N)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-N)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-n)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl)&lt;Plug&gt;(_is-n)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-g#)</code> |
| **Right hand side** | <code>g#</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-g*)</code> |
| **Right hand side** | <code>g*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-#)</code> |
| **Right hand side** | <code>#</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-*)</code> |
| **Right hand side** | <code>*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-N)</code> |
| **Right hand side** | <code>N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(_is-n)</code> |
| **Right hand side** | <code>n</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(is-nohl-2)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl-3)</code> |
| **Right hand side** | <code>is#auto_nohlsearch(3)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl-2)</code> |
| **Right hand side** | <code>is#auto_nohlsearch(2)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-nohl-1)</code> |
| **Right hand side** | <code>is#auto_nohlsearch(1)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-scroll-b)</code> |
| **Right hand side** | <code>is#scroll_count(0, @/) . 'Nzz'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(is-scroll-f)</code> |
| **Right hand side** | <code>is#scroll_count(1, @/) . 'nzz'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-maps-o)</code> |
| **Right hand side** | <code>&lt;C-C&gt;:&lt;C-U&gt;call fzf#vim#maps('o', 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-repeat-back)</code> |
| **Right hand side** | <code>clever_f#repeat(1)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-repeat-forward)</code> |
| **Right hand side** | <code>clever_f#repeat(0)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-reset)</code> |
| **Right hand side** | <code>clever_f#reset()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-T)</code> |
| **Right hand side** | <code>clever_f#find_with('T')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-t)</code> |
| **Right hand side** | <code>clever_f#find_with('t')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-F)</code> |
| **Right hand side** | <code>clever_f#find_with('F')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(clever-f-f)</code> |
| **Right hand side** | <code>clever_f#find_with('f')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ige</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#InnerMotion('ge',v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ie</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#InnerMotion('e',v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ib</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#InnerMotion('b',v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_iw</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#InnerMotion('w',v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_ge</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('ge',v:count1,'o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_e</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('e',v:count1,'o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_b</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('b',v:count1,'o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CamelCaseMotion_w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call camelcasemotion#Motion('w',v:count1,'o')&lt;CR&gt;</code> |

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

