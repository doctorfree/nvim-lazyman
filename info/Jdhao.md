# Jdhao Neovim Configuration Information

A modern Neovim configuration with full support for Python, Lua, C++, Markdown, LaTeX, and more

- Install and initialize: **`lazyman -w Jdhao`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Jdhao`**

## Git repository

[https://github.com/jdhao/nvim-config](https://github.com/jdhao/nvim-config)

## Neovimcraft entry

[https://neovimcraft.com/plugin/jdhao/nvim-config](https://neovimcraft.com/plugin/jdhao/nvim-config)

## Dotfyle entry

[https://dotfyle.com/jdhao/nvim-config](https://dotfyle.com/jdhao/nvim-config)

## Website

[https://jdhao.github.io](https://jdhao.github.io)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [Yggdroot/LeaderF](https://github.com/Yggdroot/LeaderF.git)
- [skywind3000/asyncrun.vim](https://github.com/skywind3000/asyncrun.vim.git)
- [nvim-zh/better-escape.vim](https://github.com/nvim-zh/better-escape.vim.git)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-emoji](https://github.com/hrsh7th/cmp-emoji.git)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [quangnguyen30192/cmp-nvim-ultisnips](https://github.com/quangnguyen30192/cmp-nvim-ultisnips.git)
- [hrsh7th/cmp-omni](https://github.com/hrsh7th/cmp-omni)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [rhysd/committia.vim](https://github.com/rhysd/committia.vim.git)
- [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [sainnhe/edge](https://github.com/sainnhe/edge.git)
- [ii14/emmylua-nvim](https://github.com/ii14/emmylua-nvim.git)
- [neanias/everforest-nvim](https://github.com/neanias/everforest-nvim)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [ruifm/gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [sainnhe/gruvbox-material](https://github.com/sainnhe/gruvbox-material)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [marko-cerovac/material.nvim](https://github.com/marko-cerovac/material.nvim.git)
- [tanvirtin/monokai.nvim](https://github.com/tanvirtin/monokai.nvim.git)
- [sbdchd/neoformat](https://github.com/sbdchd/neoformat.git)
- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
- [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [sakhnik/nvim-gdb](https://github.com/sakhnik/nvim-gdb.git)
- [kevinhwang91/nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens.git)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [olimorris/onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [sainnhe/sonokai](https://github.com/sainnhe/sonokai.git)
- [godlygeek/tabular](https://github.com/godlygeek/tabular)
- [wellle/targets.vim](https://github.com/wellle/targets.vim.git)
- [nvim-telescope/telescope-symbols.nvim](https://github.com/nvim-telescope/telescope-symbols.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [SirVer/ultisnips](https://github.com/SirVer/ultisnips.git)
- [chrisbra/unicode.vim](https://github.com/chrisbra/unicode.vim.git)
- [907th/vim-auto-save](https://github.com/907th/vim-auto-save.git)
- [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
- [christoomey/vim-conflicted](https://github.com/christoomey/vim-conflicted.git)
- [tpope/vim-eunuch](https://github.com/tpope/vim-eunuch.git)
- [rbong/vim-flog](https://github.com/rbong/vim-flog.git)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [itchyny/vim-highlighturl](https://github.com/itchyny/vim-highlighturl.git)
- [michaeljsmith/vim-indent-object](https://github.com/michaeljsmith/vim-indent-object.git)
- [preservim/vim-markdown](https://github.com/preservim/vim-markdown)
- [vim-pandoc/vim-markdownfootnotes](https://github.com/vim-pandoc/vim-markdownfootnotes.git)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [simnalamburt/vim-mundo](https://github.com/simnalamburt/vim-mundo.git)
- [tpope/vim-obsession](https://github.com/tpope/vim-obsession.git)
- [ojroques/vim-oscyank](https://github.com/ojroques/vim-oscyank.git)
- [Vimjas/vim-python-pep8-indent](https://github.com/Vimjas/vim-python-pep8-indent.git)
- [jeetsukumaran/vim-pythonsense](https://github.com/jeetsukumaran/vim-pythonsense.git)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [machakann/vim-sandwich](https://github.com/machakann/vim-sandwich.git)
- [tpope/vim-scriptease](https://github.com/tpope/vim-scriptease.git)
- [honza/vim-snippets](https://github.com/honza/vim-snippets.git)
- [machakann/vim-swap](https://github.com/machakann/vim-swap.git)
- [alexghergh/nvim-tmux-navigation](https://github.com/alexghergh/nvim-tmux-navigation)
- [cespare/vim-toml](https://github.com/cespare/vim-toml.git)
- [lervag/vimtex](https://github.com/lervag/vimtex)
- [liuchengxu/vista.vim](https://github.com/liuchengxu/vista.vim.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [jdhao/whitespace.nvim](https://github.com/jdhao/whitespace.nvim.git)
- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

## Jdhao Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> u</code> |
| **Right hand side** | <code>:MundoToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> t</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Vista!!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | |

| **Description** | insert line above |
| :---- | :---- |
| **Left hand side** | <code> O</code> |
| **Right hand side** | <code>printf('m`%sO&lt;Esc&gt;``', v:count1)</code> |

| **Description** | insert line below |
| :---- | :---- |
| **Left hand side** | <code> o</code> |
| **Right hand side** | <code>printf('m`%so&lt;Esc&gt;``', v:count1)</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,dp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;GdbStartPDB python -m pdb %&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fr</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Leaderf mru --popup --absolute-path&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fb</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Leaderf buffer --popup&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ft</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Leaderf bufTag --popup&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fh</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Leaderf help --popup&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fg</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Leaderf rg --no-messages --popup&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ff</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Leaderf file --popup&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cb</code> |
| **Right hand side** | |

| **Description** | toggle cursor column |
| :---- | :---- |
| **Left hand side** | <code>,cl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call utils#ToggleCursorCol()&lt;CR&gt;</code> |

| **Description** | yank entire buffer |
| :---- | :---- |
| **Left hand side** | <code>,y</code> |
| **Right hand side** | <code>&lt;Cmd&gt;%yank&lt;CR&gt;</code> |

| **Description** | check syntax group |
| :---- | :---- |
| **Left hand side** | <code>,st</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call utils#SynGroup()&lt;CR&gt;</code> |

| **Description** | remove trailing space |
| :---- | :---- |
| **Left hand side** | <code>, </code> |
| **Right hand side** | <code>&lt;Cmd&gt;StripTrailingWhitespace&lt;CR&gt;</code> |

| **Description** | change cwd |
| :---- | :---- |
| **Left hand side** | <code>,cd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lcd %:p:h&lt;CR&gt;&lt;Cmd&gt;pwd&lt;CR&gt;</code> |

| **Description** | reselect last pasted area |
| :---- | :---- |
| **Left hand side** | <code>,v</code> |
| **Right hand side** | <code>printf('`[%s`]', getregtype()[0])</code> |

| **Description** | reload init.lua |
| :---- | :---- |
| **Left hand side** | <code>,sv</code> |
| **Right hand side** | |

| **Description** | open init.lua |
| :---- | :---- |
| **Left hand side** | <code>,ev</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnew $MYVIMRC &#124; tcd %:h&lt;CR&gt;</code> |

| **Description** | quit nvim |
| :---- | :---- |
| **Left hand side** | <code>,Q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;qa!&lt;CR&gt;</code> |

| **Description** | quit current window |
| :---- | :---- |
| **Left hand side** | <code>,q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;x&lt;CR&gt;</code> |

| **Description** | save buffer |
| :---- | :---- |
| **Left hand side** | <code>,w</code> |
| **Right hand side** | <code>&lt;Cmd&gt;update&lt;CR&gt;</code> |

| **Description** | paste above current line |
| :---- | :---- |
| **Left hand side** | <code>,P</code> |
| **Right hand side** | <code>m`O&lt;Esc&gt;p``</code> |

| **Description** | paste below current line |
| :---- | :---- |
| **Left hand side** | <code>,p</code> |
| **Right hand side** | <code>m`o&lt;Esc&gt;p``</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>/</code> |
| **Right hand side** | <code>/\v</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>0</code> |
| **Right hand side** | <code>g0</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;</code> |
| **Right hand side** | <code>:</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>C</code> |
| **Right hand side** | <code>"_C</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>^</code> |

| **Description** | join line |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>g_</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | first qf item |
| :---- | :---- |
| **Left hand side** | <code>[Q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;cfirst&lt;CR&gt;zv</code> |

| **Description** | previous qf item |
| :---- | :---- |
| **Left hand side** | <code>[q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;cprevious&lt;CR&gt;zv</code> |

| **Description** | first location item |
| :---- | :---- |
| **Left hand side** | <code>[L</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lfirst&lt;CR&gt;zv</code> |

| **Description** | previous location item |
| :---- | :---- |
| **Left hand side** | <code>[l</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lprevious&lt;CR&gt;zv</code> |

| **Description** | delete buffer |
| :---- | :---- |
| **Left hand side** | <code>\d</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bprevious &#124; bdelete #&lt;CR&gt;</code> |

| **Description** | close qf and location list |
| :---- | :---- |
| **Left hand side** | <code>\x</code> |
| **Right hand side** | <code>&lt;Cmd&gt;windo lclose &#124; cclose &lt;CR&gt;</code> |

| **Description** | last qf item |
| :---- | :---- |
| **Left hand side** | <code>]Q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;clast&lt;CR&gt;zv</code> |

| **Description** | next qf item |
| :---- | :---- |
| **Left hand side** | <code>]q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;cnext&lt;CR&gt;zv</code> |

| **Description** | last location item |
| :---- | :---- |
| **Left hand side** | <code>]L</code> |
| **Right hand side** | <code>&lt;Cmd&gt;llast&lt;CR&gt;zv</code> |

| **Description** | next location item |
| :---- | :---- |
| **Left hand side** | <code>]l</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lnext&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>^</code> |
| **Right hand side** | <code>g^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cc</code> |
| **Right hand side** | <code>"_cc</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>"_c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ga</code> |
| **Right hand side** | <code>&lt;Plug&gt;(UnicodeGA)</code> |

| **Description** | join visual lines |
| :---- | :---- |
| **Left hand side** | <code>gJ</code> |
| **Right hand side** | |

| **Description** | go to buffer (backward) |
| :---- | :---- |
| **Left hand side** | <code>gB</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call buf_utils#GoToBuffer(v:count, "backward")&lt;CR&gt;</code> |

| **Description** | go to buffer (forward) |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call buf_utils#GoToBuffer(v:count, "forward")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>v:count == 0 ? 'gj' : 'j'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>v:count == 0 ? 'gk' : 'k'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | move line down |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call utils#SwitchLine(line("."), "down")&lt;CR&gt;</code> |

| **Description** | move line up |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call utils#SwitchLine(line("."), "up")&lt;CR&gt;</code> |

| **Description** | toggle spell |
| :---- | :---- |
| **Left hand side** | <code>&lt;F11&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;set spell!&lt;CR&gt;</code> |

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
| **Left hand side** | <code>$</code> |
| **Right hand side** | <code>g_</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;</code> |
| **Right hand side** | <code>:</code> |

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
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>g_</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>"_c</code> |

| **Description** | buffer text object |
| :---- | :---- |
| **Left hand side** | <code>iB</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call text_obj#Buffer()&lt;CR&gt;</code> |

| **Description** | URL text object |
| :---- | :---- |
| **Left hand side** | <code>iu</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call text_obj#URL()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | <code>"_c&lt;Esc&gt;p</code> |

| **Description** | move selection down |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call utils#MoveSelection("down")&lt;CR&gt;</code> |

| **Description** | move selection up |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call utils#MoveSelection("up")&lt;CR&gt;</code> |


### Operator mode keymaps

| **Description** | buffer text object |
| :---- | :---- |
| **Left hand side** | <code>iB</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call text_obj#Buffer()&lt;CR&gt;</code> |

| **Description** | URL text object |
| :---- | :---- |
| **Left hand side** | <code>iu</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call text_obj#URL()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code></code> |

