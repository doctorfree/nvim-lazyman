## MagicVim Neovim Configuration Information

Custom Neovim configuration designed to be light and fast. LSP, Treesitter & Code Completion all work out of the box and auto install when you open a file type that doesn't have code completion for it yet.

- Install and initialize: **`lazyman -m`**
- Configuration category: [Base](https://lazyman.dev/configurations/#base-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-MagicVim`**

### Git repository

[https://gitlab.com/GitMaster210/magicvim](https://gitlab.com/GitMaster210/magicvim)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [jcdickinson/codeium.nvim](https://github.com/jcdickinson/codeium.nvim)
- [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [mrjones2014/legendary.nvim](https://github.com/mrjones2014/legendary.nvim)
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [sanfusu/neovim-undotree](https://github.com/sanfusu/neovim-undotree)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [RRethy/nvim-base16](https://github.com/RRethy/nvim-base16)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [noib3/nvim-cokeline](https://github.com/noib3/nvim-cokeline)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [sgtpep/pmenu](https://github.com/sgtpep/pmenu)
- [kamykn/popup-menu.nvim](https://github.com/kamykn/popup-menu.nvim)
- [kevinhwang91/rnvimr](https://github.com/kevinhwang91/rnvimr)
- [lambdalisue/suda.vim](https://github.com/lambdalisue/suda.vim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)

### MagicVim Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Take Action | <code> la</code> | <code>&lt;Cmd&gt;lua vim.lsp.buf.code_action()&lt;CR&gt;</code> |
| Update Mason(LSP) | <code> lu</code> | <code>&lt;Cmd&gt;MasonUpdate&lt;CR&gt;</code> |
| Open Mason | <code> lm</code> | <code>&lt;Cmd&gt;Mason&lt;CR&gt;</code> |
| Previous Diagnostic | <code> lp</code> | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_prev()&lt;CR&gt;</code> |
| Next Diagnostic | <code> ln</code> | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_next()&lt;CR&gt;</code> |
| Diagnostics | <code> lh</code> | <code>&lt;Cmd&gt;lua vim.diagnostic.open_float()&lt;CR&gt;</code> |
| Jump to Definition | <code> ld</code> | <code>&lt;Cmd&gt;lua vim.lsp.buf.definition()&lt;CR&gt;</code> |
| Rename Buffer | <code> lr</code> | <code>&lt;Cmd&gt;lua vim.lsp.buf.rename()&lt;CR&gt;</code> |
| List Plugins | <code> Pl</code> | <code>&lt;Cmd&gt;PackerStatus&lt;CR&gt;</code> |
| Clean Up | <code> Pc</code> | <code>&lt;Cmd&gt;PackerClean&lt;CR&gt;</code> |
| Update Plugins | <code> Pu</code> | <code>&lt;Cmd&gt;PackerSync&lt;CR&gt;</code> |
| Install Plugin | <code> Pi</code> | <code>&lt;Cmd&gt;PackerInstall&lt;CR&gt;</code> |
| Search Help Pages | <code> th</code> | <code>&lt;Cmd&gt;Telescope help_tags&lt;CR&gt;</code> |
| Clear Yank History | <code> tY</code> | <code>&lt;Cmd&gt;YankyClearHistory&lt;CR&gt;</code> |
| Change Colorscheme | <code> tc</code> | <code>&lt;Cmd&gt;Telescope colorscheme&lt;CR&gt;</code> |
| Find Man Pages | <code> tm</code> | <code>&lt;Cmd&gt;Telescope man_pages&lt;CR&gt;</code> |
| Open Buffers | <code> tb</code> | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |
| Spelling | <code> ts</code> | <code>&lt;Cmd&gt;Telescope spell_suggest&lt;CR&gt;</code> |
| Diagnostics | <code> td</code> | <code>&lt;Cmd&gt;Telescope diagnostics&lt;CR&gt;</code> |
| Live Grep | <code> tg</code> | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |
| Find File | <code> tf</code> | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |
| Select ALL | <code> a</code> | <code>ggVG</code> |
| Close Window | <code> X</code> | <code>&lt;C-W&gt;c&lt;CR&gt;</code> |
| Paste | <code> p</code> | <code>"+p&lt;CR&gt;</code> |
| Copy | <code> c</code> | <code>"+y&lt;CR&gt;</code> |
|  | <code> g</code> | <code>&lt;Cmd&gt;lua _lazygit_toggle()&lt;CR&gt;</code> |
| Comment Out THIS Line | <code> '</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |
| Yank List | <code> y</code> | <code>&lt;Cmd&gt;Telescope yank_history&lt;CR&gt;</code> |
| Search Key Maps | <code> k</code> | <code>&lt;Cmd&gt;Legendary&lt;CR&gt;</code> |
| Hop to a Word | <code> h</code> | <code>&lt;Cmd&gt;HopWord&lt;CR&gt;</code> |
| Write with Sudo | <code> S</code> | <code>&lt;Cmd&gt;SudaWrite&lt;CR&gt;</code> |
| Search | <code> /</code> | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |
| Show Colors in THIS File | <code> C</code> | <code>&lt;Cmd&gt;ColorizerToggle&lt;CR&gt;</code> |
| Make THIS File Executable | <code> E</code> | <code>&lt;Cmd&gt;!chmod +x %&lt;CR&gt;</code> |
| Open Nvim-Tree | <code> F</code> | <code>&lt;Cmd&gt;NvimTreeFindFileToggle&lt;CR&gt;</code> |
| Floating Terminal | <code> T</code> | <code>&lt;Cmd&gt;ToggleTerm direction=float&lt;CR&gt;</code> |
| Source THIS File | <code> s</code> | <code>&lt;Cmd&gt;so%&lt;CR&gt;</code> |
| Open Undo Tree | <code> u</code> | <code>&lt;Cmd&gt;UndotreeToggle&lt;CR&gt;</code> |
| Open Ranger | <code> f</code> | <code>&lt;Cmd&gt;RnvimrToggle&lt;CR&gt;</code> |
| Open Recent Files | <code> r</code> | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |
| Save & Quit | <code> x</code> | <code>&lt;Cmd&gt;wq&lt;CR&gt;</code> |
| Quit | <code> q</code> | <code>&lt;Cmd&gt;q!&lt;CR&gt;</code> |
| Write | <code> w</code> | <code>&lt;Cmd&gt;w&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| Toggle Terminal | <code>&lt;C-Q&gt;</code> | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(cokeline-focus-20)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-20)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-19)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-19)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-18)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-18)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-17)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-17)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-16)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-16)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-15)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-15)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-14)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-14)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-13)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-13)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-12)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-12)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-11)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-11)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-10)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-10)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-9)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-9)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-8)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-8)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-7)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-7)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-6)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-6)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-5)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-5)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-4)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-4)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-3)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-3)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-2)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-2)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-1)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-1)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-pick-close)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-pick-focus)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-next)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-focus-prev)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-next)</code> |  |
|  | <code>&lt;Plug&gt;(cokeline-switch-prev)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyYank)</code> |  |
|  | <code>&lt;Plug&gt;(YankyCycleBackward)</code> |  |
|  | <code>&lt;Plug&gt;(YankyCycleForward)</code> |  |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(fzf-normal)</code> | <code></code> |
|  | <code>&lt;Plug&gt;(fzf-insert)</code> | <code>i</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;M-o&gt;</code> | <code>:RnvimrToggle&lt;CR&gt;</code> |
|  | <code>&lt;C-D&gt;</code> | <code>&lt;Cmd&gt;bdelete&lt;CR&gt;</code> |
|  | <code>&lt;S-Left&gt;</code> | <code>&lt;Cmd&gt;bp&lt;CR&gt;</code> |
|  | <code>&lt;S-Right&gt;</code> | <code>&lt;Cmd&gt;bn&lt;CR&gt;</code> |
|  | <code>&lt;M-Right&gt;</code> | <code>w</code> |
|  | <code>&lt;M-Left&gt;</code> | <code>b</code> |
|  | <code>&lt;C-Down&gt;</code> | <code>G</code> |
|  | <code>&lt;C-Up&gt;</code> | <code>gg</code> |
|  | <code>&lt;C-Left&gt;</code> | <code>^</code> |
|  | <code>&lt;C-Right&gt;</code> | <code>$</code> |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Copy | <code> c</code> | <code>"+y&lt;CR&gt;</code> |
| Add Text to End of Selected Lines | <code> a</code> | <code>:norm A</code> |
| Add Text to Start of Selected Lines | <code> i</code> | <code>:norm I</code> |
| Comment Out Selected Lines | <code> '</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyYank)</code> |  |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;M-Down&gt;</code> | <code>:move '&gt;+1&lt;CR&gt;gv-gv</code> |
|  | <code>&lt;M-Up&gt;</code> | <code>:move '&lt;lt&gt;-2&lt;CR&gt;gv-gv</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
