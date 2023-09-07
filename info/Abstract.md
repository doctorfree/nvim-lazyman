# Abstract Neovim Configuration Information

Preconfigured Neovim as an IDE

- Install and initialize: **`lazyman -g`**
- Configuration category: [Base](https://lazyman.dev/configurations/#base-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Abstract`**

## Git repository

[https://github.com/Abstract-IDE/Abstract](https://github.com/Abstract-IDE/Abstract)

## Neovimcraft entry

[https://neovimcraft.com/plugin/Abstract-IDE/Abstract](https://neovimcraft.com/plugin/Abstract-IDE/Abstract)

## Dotfyle entry

[https://dotfyle.com/plugins/Abstract-IDE/Abstract](https://dotfyle.com/plugins/Abstract-IDE/Abstract)

## Website

[https://abstract-ide.github.io/site](https://abstract-ide.github.io/site)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Packer managed plugins

- [Abstract-IDE/Abstract-cs](https://github.com/Abstract-IDE/Abstract-cs)
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [Neevash/awesome-flutter-snippets](https://github.com/Neevash/awesome-flutter-snippets)
- [turbio/bracey.vim](https://github.com/turbio/bracey.vim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [dart-lang/dart-vim-plugin](https://github.com/dart-lang/dart-vim-plugin)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [akinsho/flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [rmagatti/goto-preview](https://github.com/rmagatti/goto-preview)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [lewis6991/impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Shatur/neovim-session-manager](https://github.com/Shatur/neovim-session-manager)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [NvChad/nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [Abstract-IDE/penvim](https://github.com/Abstract-IDE/penvim)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [filipdutescu/renamer.nvim](https://github.com/filipdutescu/renamer.nvim)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope-media-files.nvim](https://github.com/nvim-telescope/telescope-media-files.nvim)
- [nvim-telescope/telescope-symbols.nvim](https://github.com/nvim-telescope/telescope-symbols.nvim)
- [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)
- [szw/vim-maximizer](https://github.com/szw/vim-maximizer)

## Abstract Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> R</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("renamer").rename()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>;9</code> |
| **Right hand side** | <code>:BufferLineGoToBuffer 9&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;8</code> |
| **Right hand side** | <code>:BufferLineGoToBuffer 8&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;7</code> |
| **Right hand side** | <code>:BufferLineGoToBuffer 7&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;6</code> |
| **Right hand side** | <code>:BufferLineGoToBuffer 6&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;5</code> |
| **Right hand side** | <code>:BufferLineGoToBuffer 5&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;4</code> |
| **Right hand side** | <code>:BufferLineGoToBuffer 4&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;3</code> |
| **Right hand side** | <code>:BufferLineGoToBuffer 3&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;2</code> |
| **Right hand side** | <code>:BufferLineGoToBuffer 2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;1</code> |
| **Right hand side** | <code>:BufferLineGoToBuffer 1&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;&lt;lt&gt;\&gt;</code> |
| **Right hand side** | <code>:BufferLinePick&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;,</code> |
| **Right hand side** | <code>:BufferLineMovePrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;.</code> |
| **Right hand side** | <code>:BufferLineMoveNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;f</code> |
| **Right hand side** | <code>:Neotree toggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;O</code> |
| **Right hand side** | <code>:w &#124; :FloatermNew time python ~/.local/share/nvim-Abstract/custom_tools/lazy-builder/build.py -o ~/.cache/build_files -br 1  &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;o</code> |
| **Right hand side** | <code>:w &#124; :FloatermNew time python ~/.local/share/nvim-Abstract/custom_tools/lazy-builder/build.py -o ~/.cache/build_files -b 1  &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;r</code> |
| **Right hand side** | <code>:w &#124; :FloatermNew python ~/.local/share/nvim-Abstract/custom_tools/lazy-builder/build.py -o ~/.cache/build_files -r 1  &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;m</code> |
| **Right hand side** | <code>:MaximizerToggle &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;h</code> |
| **Right hand side** | <code>:vertical resize -3 &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;l</code> |
| **Right hand side** | <code>:vertical resize +3 &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;j</code> |
| **Right hand side** | <code>:resize -3 &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;k</code> |
| **Right hand side** | <code>:resize +3 &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;n</code> |
| **Right hand side** | <code>:set rnu! &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;C&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "&lt;lt&gt;C&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>??</code> |
| **Right hand side** | <code>:noh &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_words()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>\</code> |
| **Right hand side** | <code>:BufferLineCycleNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'nvim-surround'}, { keys = "c", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'Comment.nvim'}, { keys = "cc", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dd</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'goto-preview'}, { keys = "gp", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>tq</code> |
| **Right hand side** | <code>:FloatermKill&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>tn</code> |
| **Right hand side** | <code>:FloatermNew&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>tj</code> |
| **Right hand side** | <code>:FloatermNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>tk</code> |
| **Right hand side** | <code>:FloatermPrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&#124;</code> |
| **Right hand side** | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Z&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-T&gt;</code> |
| **Right hand side** | <code>:FloatermToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-P&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "&lt;lt&gt;C-p&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "&lt;lt&gt;C-f&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;M-q&gt;</code> |
| **Right hand side** | <code>:only&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>zh</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;ma&lt;Esc&gt;:update &lt;CR&gt;`a</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>zl</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> R</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("renamer").rename()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;lt&gt;C&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "&lt;lt&gt;C&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

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
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |

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
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'nvim-surround'}, { keys = "c", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'Comment.nvim'}, { keys = "cc", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'goto-preview'}, { keys = "gp", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-P&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "&lt;lt&gt;C-p&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "&lt;lt&gt;C-f&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

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


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;C&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "&lt;lt&gt;C&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

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
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'nvim-surround'}, { keys = "c", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'Comment.nvim'}, { keys = "cc", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'goto-preview'}, { keys = "gp", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-P&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "&lt;lt&gt;C-p&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("packer.load")({'telescope.nvim'}, { keys = "&lt;lt&gt;C-f&gt;", prefix = "" }, _G.packer_plugins)&lt;CR&gt;</code> |

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

