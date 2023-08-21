## Abstract Neovim Configuration Information

Preconfigured Neovim as an IDE

- Install and initialize: **`lazyman -g`**
- Configuration category: [Base](https://lazyman.dev/configurations/#base-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Abstract`**

### Git repository

[https://github.com/Abstract-IDE/Abstract](https://github.com/Abstract-IDE/Abstract)

### Neovimcraft entry

[https://neovimcraft.com/plugin/Abstract-IDE/Abstract](https://neovimcraft.com/plugin/Abstract-IDE/Abstract)

### Dotfyle entry

[https://dotfyle.com/plugins/Abstract-IDE/Abstract](https://dotfyle.com/plugins/Abstract-IDE/Abstract)

### Website

[https://abstract-ide.github.io/site](https://abstract-ide.github.io/site)

### Packer managed plugins

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

### Abstract Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  R | <Cmd>lua require("renamer").rename()<CR> |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | ;9 | :BufferLineGoToBuffer 9<CR> |
|  | ;8 | :BufferLineGoToBuffer 8<CR> |
|  | ;7 | :BufferLineGoToBuffer 7<CR> |
|  | ;6 | :BufferLineGoToBuffer 6<CR> |
|  | ;5 | :BufferLineGoToBuffer 5<CR> |
|  | ;4 | :BufferLineGoToBuffer 4<CR> |
|  | ;3 | :BufferLineGoToBuffer 3<CR> |
|  | ;2 | :BufferLineGoToBuffer 2<CR> |
|  | ;1 | :BufferLineGoToBuffer 1<CR> |
|  | ;<lt>\> | :BufferLinePick<CR> |
|  | ;, | :BufferLineMovePrev<CR> |
|  | ;. | :BufferLineMoveNext<CR> |
|  | ;f | :Neotree toggle<CR> |
|  | ;m | :MaximizerToggle <CR> |
|  | ;O | :w | :FloatermNew time python ~/.local/share/nvim-Abstract/custom_tools/lazy-builder/build.py -o ~/.cache/build_files -br 1  <CR> |
|  | ;o | :w | :FloatermNew time python ~/.local/share/nvim-Abstract/custom_tools/lazy-builder/build.py -o ~/.cache/build_files -b 1  <CR> |
|  | ;r | :w | :FloatermNew python ~/.local/share/nvim-Abstract/custom_tools/lazy-builder/build.py -o ~/.cache/build_files -r 1  <CR> |
|  | ;h | :vertical resize -3 <CR> |
|  | ;l | :vertical resize +3 <CR> |
|  | ;j | :resize -3 <CR> |
|  | ;k | :resize +3 <CR> |
|  | ;n | :set rnu! <CR> |
|  | <lt>C> | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C>", prefix = "" }, _G.packer_plugins)<CR> |
|  | ?? | :noh <CR> |
|  | F | <Cmd>lua require'hop'.hint_words()<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | \ | :BufferLineCycleNext<CR> |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | cc | <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "cc", prefix = "" }, _G.packer_plugins)<CR> |
|  | c | <Cmd>lua require("packer.load")({'nvim-surround'}, { keys = "c", prefix = "" }, _G.packer_plugins)<CR> |
|  | dd |  |
|  | gc | <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<CR> |
|  | gp | <Cmd>lua require("packer.load")({'goto-preview'}, { keys = "gp", prefix = "" }, _G.packer_plugins)<CR> |
|  | gb | <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<CR> |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | t | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)<CR> |
|  | tq | :FloatermKill<CR> |
|  | tn | :FloatermNew<CR> |
|  | tj | :FloatermNext<CR> |
|  | tk | :FloatermPrev<CR> |
|  | | | :BufferLineCyclePrev<CR> |
|  | <C-Z> |  |
|  | <C-T> | :FloatermToggle<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <C-F> | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-f>", prefix = "" }, _G.packer_plugins)<CR> |
|  | <C-P> | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-p>", prefix = "" }, _G.packer_plugins)<CR> |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <M-q> | :only<CR> |
|  | <C-H> | zh |
|  | <C-S> | <Esc>ma<Esc>:update <CR>`a |
|  | <C-L> | zl |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  R | <Cmd>lua require("renamer").rename()<CR> |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | <lt>C> | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C>", prefix = "" }, _G.packer_plugins)<CR> |
|  | <lt> | <lt>gv |
|  | > | >gv |
|  | J | :m '>+1<CR>gv=gv |
|  | K | :m '<lt>-2<CR>gv=gv |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | cc | <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "cc", prefix = "" }, _G.packer_plugins)<CR> |
|  | c | <Cmd>lua require("packer.load")({'nvim-surround'}, { keys = "c", prefix = "" }, _G.packer_plugins)<CR> |
|  | gc | <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<CR> |
|  | gp | <Cmd>lua require("packer.load")({'goto-preview'}, { keys = "gp", prefix = "" }, _G.packer_plugins)<CR> |
|  | gb | <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<CR> |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | t | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)<CR> |
|  | <C-F> | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-f>", prefix = "" }, _G.packer_plugins)<CR> |
|  | <C-P> | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-p>", prefix = "" }, _G.packer_plugins)<CR> |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
|  | <lt>C> | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C>", prefix = "" }, _G.packer_plugins)<CR> |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | cc | <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "cc", prefix = "" }, _G.packer_plugins)<CR> |
|  | c | <Cmd>lua require("packer.load")({'nvim-surround'}, { keys = "c", prefix = "" }, _G.packer_plugins)<CR> |
|  | gc | <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<CR> |
|  | gp | <Cmd>lua require("packer.load")({'goto-preview'}, { keys = "gp", prefix = "" }, _G.packer_plugins)<CR> |
|  | gb | <Cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<CR> |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | t | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "t", prefix = "" }, _G.packer_plugins)<CR> |
|  | <C-F> | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-f>", prefix = "" }, _G.packer_plugins)<CR> |
|  | <C-P> | <Cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>C-p>", prefix = "" }, _G.packer_plugins)<CR> |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
