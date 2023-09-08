# Kristijan Neovim Configuration Information

Personal Neovim configuration of Kristijan Husak, author of several Neovim plugins including `orgmode` and `vim-dadbod-ui`

- Install and initialize: **`lazyman -w Kristijan`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Kristijan`**

## Git repository

[https://github.com/kristijanhusak/neovim-config](https://github.com/kristijanhusak/neovim-config)

## Dotfyle entry

[https://dotfyle.com/kristijanhusak/neovim-config-nvim](https://dotfyle.com/kristijanhusak/neovim-config-nvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [LunarVim/bigfile.nvim](https://github.com/LunarVim/bigfile.nvim.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer.git)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp.git)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path.git)
- [lukas-reineke/cmp-rg](https://github.com/lukas-reineke/cmp-rg.git)
- [hrsh7th/cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip.git)
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim.git)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua.git)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [ruifm/gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim.git)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim.git)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim.git)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim.git)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim.git)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim.git)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp.git)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig.git)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic.git)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify.git)
- [yorickpeterse/nvim-pqf](https://gitlab.com/yorickpeterse/nvim-pqf)
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua.git)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter.git)
- [nvim-treesitter/nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor.git)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects.git)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag.git)
- [yioneko/nvim-vtsls](https://github.com/yioneko/nvim-vtsls.git)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons.git)
- [yioneko/nvim-yati](https://github.com/yioneko/nvim-yati.git)
- [rmehri01/onenord.nvim](https://github.com/rmehri01/onenord.nvim.git)
- [akinsho/org-bullets.nvim](https://github.com/akinsho/org-bullets.nvim.git)
- [nvim-orgmode/orgmode](https://github.com/nvim-orgmode/orgmode.git)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim.git)
- [stefandtw/quickfix-reflector.vim](https://github.com/stefandtw/quickfix-reflector.vim.git)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim.git)
- [smartpde/telescope-recent-files](https://github.com/smartpde/telescope-recent-files.git)
- [axelvc/template-string.nvim](https://github.com/axelvc/template-string.nvim.git)
- [Wansmer/treesj](https://github.com/Wansmer/treesj.git)
- [tpope/vim-abolish](https://github.com/tpope/vim-abolish.git)
- [kristijanhusak/vim-dadbod-completion](https://github.com/kristijanhusak/vim-dadbod-completion.git)
- [tpope/vim-dadbod](https://github.com/tpope/vim-dadbod.git)
- [kristijanhusak/vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui.git)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive.git)
- [kristijanhusak/vim-js-file-import](https://github.com/kristijanhusak/vim-js-file-import.git)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup.git)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat.git)
- [tpope/vim-sleuth](https://github.com/tpope/vim-sleuth.git)
- [puremourning/vimspector](https://github.com/puremourning/vimspector.git)
- [tpope/vim-surround](https://github.com/tpope/vim-surround.git)
- [yioneko/vim-tmindent](https://github.com/yioneko/vim-tmindent.git)
- [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip.git)

## Kristijan Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>#N</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>*N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>+</code> |
| **Right hand side** | <code>&lt;C-W&gt;5&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,Q</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,q</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,db</code> |
| **Right hand side** | <code>:silent w &#124; :silent %bd | e#&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,]</code> |
| **Right hand side** | <code>&lt;C-W&gt;v&lt;C-]&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,&lt;Tab&gt;</code> |
| **Right hand side** | <code>&lt;C-^&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,h</code> |
| **Right hand side** | <code>viw"0p</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,p</code> |
| **Right hand side** | <code>"0p</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>, </code> |
| **Right hand side** | <code>:noh&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,v</code> |
| **Right hand side** | <code>&lt;C-W&gt;v</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,s</code> |
| **Right hand side** | <code>:w&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,F</code> |
| **Right hand side** | <code>:call v:lua.kris.search.run(expand("&lt;lt&gt;cword&gt;"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,f</code> |
| **Right hand side** | <code>:call v:lua.kris.search.run("")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,df</code> |
| **Right hand side** | <code>:Git push --force-with-lease&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,dp</code> |
| **Right hand side** | <code>:Git push&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,da</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,dc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,dh</code> |
| **Right hand side** | <code>:DiffviewFileHistory %&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,do</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,yg</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hf</code> |
| **Right hand side** | <code>:NvimTreeToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,n</code> |
| **Right hand side** | <code>:NvimTreeToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,lt</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,lT</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,g</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,m</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,b</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,G</code> |
| **Right hand side** | <code>:vert G&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,oa</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,oc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,c</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>Nzz</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>Q</code> |
| **Right hand side** | <code>&lt;C-Z&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>[B</code> |
| **Right hand side** | <code>:bfirst&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[b</code> |
| **Right hand side** | <code>:bprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[T</code> |
| **Right hand side** | <code>:tfirst&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[t</code> |
| **Right hand side** | <code>:tprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[L</code> |
| **Right hand side** | <code>:lopen</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[e</code> |
| **Right hand side** | <code>:lprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[Q</code> |
| **Right hand side** | <code>:copen&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[q</code> |
| **Right hand side** | <code>:cprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]B</code> |
| **Right hand side** | <code>:blast&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]b</code> |
| **Right hand side** | <code>:bnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]T</code> |
| **Right hand side** | <code>:tlast&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]t</code> |
| **Right hand side** | <code>:tnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]L</code> |
| **Right hand side** | <code>:lclose&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]e</code> |
| **Right hand side** | <code>:lnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]Q</code> |
| **Right hand side** | <code>:cclose&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]q</code> |
| **Right hand side** | <code>:cnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>_</code> |
| **Right hand side** | <code>&lt;C-W&gt;5&lt;lt&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gF</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | <code>:%s/</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | <code>'`[' . strpart(getregtype(), 0, 1) . '`]'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g#</code> |
| **Right hand side** | <code>g#N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g*</code> |
| **Right hand side** | <code>g*N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gJ</code> |
| **Right hand side** | <code>:TSJJoin&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>:TSJSplit&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcip</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>nzz</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | <code>p`]</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;C-\&gt;&lt;C-N&gt;&lt;C-W&gt;h</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>:w&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-P&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F1&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F5&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;C-\&gt;&lt;C-N&gt;&lt;C-W&gt;l</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | <code>&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>"yy?\V&lt;C-R&gt;=escape(getreg('y'), '\/?')&lt;CR&gt;&lt;CR&gt;N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>"yy/\V&lt;C-R&gt;=escape(getreg('y'), '\/?')&lt;CR&gt;&lt;CR&gt;N</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,p</code> |
| **Right hand side** | <code>"0p</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,F</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call v:lua.kris.search.run("", 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,kS</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call v:lua.kris.calculate_selection(v:true)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ks</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call v:lua.kris.calculate_selection()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,yg</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,c</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>Q</code> |
| **Right hand side** | <code>&lt;C-Z&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a#</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F#vf#&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F-vf-&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a+</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F+vf+&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a*</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F*vf*&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a\</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F\vf\&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a/</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F/vf/&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a&#124;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F&#124;vf|&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F;vf;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a,</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F,vf,&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a:</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F:vf:&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a.</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F.vf.&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a_</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! F_vf_&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | <code>:s/</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i#</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T#vt#&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T-vt-&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i+</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T+vt+&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i*</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T*vt*&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i\</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T\vt\&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i/</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T/vt/&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i&#124;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T&#124;vt|&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T;vt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i,</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T,vt,&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i:</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T:vt:&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i.</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T.vt.&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i_</code> |
| **Right hand side** | <code>:&lt;C-U&gt;normal! T_vt_&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | <code>p`]</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y</code> |
| **Right hand side** | <code>y`]</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Tab&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-C&gt;</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>:w&lt;CR&gt;</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>Q</code> |
| **Right hand side** | <code>&lt;C-Z&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a#</code> |
| **Right hand side** | <code>:normal va#&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a-</code> |
| **Right hand side** | <code>:normal va-&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a+</code> |
| **Right hand side** | <code>:normal va+&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a*</code> |
| **Right hand side** | <code>:normal va*&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a\</code> |
| **Right hand side** | <code>:normal va\&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a/</code> |
| **Right hand side** | <code>:normal va/&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a&#124;</code> |
| **Right hand side** | <code>:normal va&#124;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a;</code> |
| **Right hand side** | <code>:normal va;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a,</code> |
| **Right hand side** | <code>:normal va,&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a:</code> |
| **Right hand side** | <code>:normal va:&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a.</code> |
| **Right hand side** | <code>:normal va.&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a_</code> |
| **Right hand side** | <code>:normal va_&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i#</code> |
| **Right hand side** | <code>:normal vi#&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i-</code> |
| **Right hand side** | <code>:normal vi-&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i+</code> |
| **Right hand side** | <code>:normal vi+&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i*</code> |
| **Right hand side** | <code>:normal vi*&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i\</code> |
| **Right hand side** | <code>:normal vi\&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i/</code> |
| **Right hand side** | <code>:normal vi/&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i&#124;</code> |
| **Right hand side** | <code>:normal vi&#124;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i;</code> |
| **Right hand side** | <code>:normal vi;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i,</code> |
| **Right hand side** | <code>:normal vi,&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i:</code> |
| **Right hand side** | <code>:normal vi:&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i.</code> |
| **Right hand side** | <code>:normal vi.&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i_</code> |
| **Right hand side** | <code>:normal vi_&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>:w&lt;CR&gt;</code> |

