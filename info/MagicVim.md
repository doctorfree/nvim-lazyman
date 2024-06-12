# MagicVim Neovim Configuration Information

Custom Neovim configuration designed to be light and fast. LSP, Treesitter & Code Completion all work out of the box and auto install when you open a file type that doesn't have code completion for it yet.

- Install and initialize: **`lazyman -m`**
- Configuration category: [Base](https://lazyman.dev/configurations/#base-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-MagicVim`**

## Git repository

[https://gitlab.com/GitMaster210/magicvim](https://gitlab.com/GitMaster210/magicvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [mrjones2014/legendary.nvim](https://github.com/mrjones2014/legendary.nvim)
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [sanfusu/neovim-undotree](https://github.com/sanfusu/neovim-undotree)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [RRethy/nvim-base16](https://github.com/RRethy/nvim-base16)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [noib3/nvim-cokeline](https://github.com/noib3/nvim-cokeline)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [sgtpep/pmenu](https://github.com/sgtpep/pmenu)
- [kamykn/popup-menu.nvim](https://github.com/kamykn/popup-menu.nvim)
- [lambdalisue/suda.vim](https://github.com/lambdalisue/suda.vim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)

## MagicVim Keymaps

### Normal mode keymaps

| **Description** | Close NvimTree |
| :---- | :---- |
| **Left hand side** | <code> Fc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NvimTreeClose&lt;CR&gt;</code> |

| **Description** | Open NvimTree |
| :---- | :---- |
| **Left hand side** | <code> Fo</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NvimTreeOpen&lt;CR&gt;</code> |

| **Description** | Take Action |
| :---- | :---- |
| **Left hand side** | <code> la</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.code_action()&lt;CR&gt;</code> |

| **Description** | Update Mason(LSP) |
| :---- | :---- |
| **Left hand side** | <code> lu</code> |
| **Right hand side** | <code>&lt;Cmd&gt;MasonUpdate&lt;CR&gt;</code> |

| **Description** | Open Mason |
| :---- | :---- |
| **Left hand side** | <code> lm</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Mason&lt;CR&gt;</code> |

| **Description** | Previous Diagnostic |
| :---- | :---- |
| **Left hand side** | <code> lp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_prev()&lt;CR&gt;</code> |

| **Description** | Next Diagnostic |
| :---- | :---- |
| **Left hand side** | <code> ln</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_next()&lt;CR&gt;</code> |

| **Description** | Diagnostics |
| :---- | :---- |
| **Left hand side** | <code> lh</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.open_float()&lt;CR&gt;</code> |

| **Description** | Jump to Definition |
| :---- | :---- |
| **Left hand side** | <code> ld</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.definition()&lt;CR&gt;</code> |

| **Description** | Rename Buffer |
| :---- | :---- |
| **Left hand side** | <code> lr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.rename()&lt;CR&gt;</code> |

| **Description** | Open Lazy |
| :---- | :---- |
| **Left hand side** | <code> Lo</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Lazy show&lt;CR&gt;</code> |

| **Description** | Clean Up |
| :---- | :---- |
| **Left hand side** | <code> Lc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Lazy clean&lt;CR&gt;</code> |

| **Description** | Sync Lazy |
| :---- | :---- |
| **Left hand side** | <code> Ls</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Lazy sync&lt;CR&gt;</code> |

| **Description** | Install Plugin |
| :---- | :---- |
| **Left hand side** | <code> Li</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Lazy install&lt;CR&gt;</code> |

| **Description** | Search Help Pages |
| :---- | :---- |
| **Left hand side** | <code> th</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope help_tags&lt;CR&gt;</code> |

| **Description** | Clear Yank History |
| :---- | :---- |
| **Left hand side** | <code> tY</code> |
| **Right hand side** | <code>&lt;Cmd&gt;YankyClearHistory&lt;CR&gt;</code> |

| **Description** | Change Colorscheme |
| :---- | :---- |
| **Left hand side** | <code> tc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope colorscheme&lt;CR&gt;</code> |

| **Description** | Find Man Pages |
| :---- | :---- |
| **Left hand side** | <code> tm</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope man_pages&lt;CR&gt;</code> |

| **Description** | Open Buffers |
| :---- | :---- |
| **Left hand side** | <code> tb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |

| **Description** | Spelling |
| :---- | :---- |
| **Left hand side** | <code> ts</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope spell_suggest&lt;CR&gt;</code> |

| **Description** | Diagnostics |
| :---- | :---- |
| **Left hand side** | <code> td</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope diagnostics&lt;CR&gt;</code> |

| **Description** | Live Grep |
| :---- | :---- |
| **Left hand side** | <code> tg</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |

| **Description** | Find File |
| :---- | :---- |
| **Left hand side** | <code> tf</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |

| **Description** | Select ALL |
| :---- | :---- |
| **Left hand side** | <code> a</code> |
| **Right hand side** | <code>ggVG</code> |

| **Description** | Close Window |
| :---- | :---- |
| **Left hand side** | <code> X</code> |
| **Right hand side** | <code>&lt;C-W&gt;c&lt;CR&gt;</code> |

| **Description** | Paste |
| :---- | :---- |
| **Left hand side** | <code> p</code> |
| **Right hand side** | <code>"+p&lt;CR&gt;</code> |

| **Description** | Copy |
| :---- | :---- |
| **Left hand side** | <code> c</code> |
| **Right hand side** | <code>"+y&lt;CR&gt;</code> |

| **Description** | Open LazyGit |
| :---- | :---- |
| **Left hand side** | <code> g</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua _lazygit_toggle()&lt;CR&gt;</code> |

| **Description** | Comment Out THIS Line |
| :---- | :---- |
| **Left hand side** | <code> '</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |

| **Description** | Yank List |
| :---- | :---- |
| **Left hand side** | <code> y</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope yank_history&lt;CR&gt;</code> |

| **Description** | Search Key Maps |
| :---- | :---- |
| **Left hand side** | <code> k</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Legendary&lt;CR&gt;</code> |

| **Description** | Hop to a Word |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>&lt;Cmd&gt;HopWord&lt;CR&gt;</code> |

| **Description** | Write with Sudo |
| :---- | :---- |
| **Left hand side** | <code> S</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SudaWrite&lt;CR&gt;</code> |

| **Description** | Search |
| :---- | :---- |
| **Left hand side** | <code> /</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |

| **Description** | Show Colors in THIS File |
| :---- | :---- |
| **Left hand side** | <code> C</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ColorizerToggle&lt;CR&gt;</code> |

| **Description** | Make THIS File Executable |
| :---- | :---- |
| **Left hand side** | <code> E</code> |
| **Right hand side** | <code>&lt;Cmd&gt;!chmod +x %&lt;CR&gt;</code> |

| **Description** | Floating Terminal |
| :---- | :---- |
| **Left hand side** | <code> T</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ToggleTerm direction=float&lt;CR&gt;</code> |

| **Description** | Source THIS File |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>&lt;Cmd&gt;so%&lt;CR&gt;</code> |

| **Description** | Open Undo Tree |
| :---- | :---- |
| **Left hand side** | <code> u</code> |
| **Right hand side** | <code>&lt;Cmd&gt;UndotreeToggle&lt;CR&gt;</code> |

| **Description** | Open NvimTree |
| :---- | :---- |
| **Left hand side** | <code> f</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NvimTreeFindFileToggle&lt;CR&gt;</code> |

| **Description** | Open Recent Files |
| :---- | :---- |
| **Left hand side** | <code> r</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |

| **Description** | Save & Quit |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | <code>&lt;Cmd&gt;wq&lt;CR&gt;</code> |

| **Description** | Quit |
| :---- | :---- |
| **Left hand side** | <code> q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;q!&lt;CR&gt;</code> |

| **Description** | Write |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>&lt;Cmd&gt;w&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

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
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

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

| **Description** | Toggle Terminal |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-20)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-20)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-19)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-19)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-18)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-18)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-17)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-17)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-16)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-16)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-15)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-15)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-14)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-14)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-13)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-13)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-12)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-12)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-11)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-11)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-10)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-10)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-9)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-9)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-8)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-8)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-7)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-7)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-6)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-6)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-5)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-5)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-4)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-4)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-3)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-3)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-2)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-2)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-1)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-1)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-pick-close)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-pick-focus)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-next)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-focus-prev)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-next)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(cokeline-switch-prev)</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>&lt;M-o&gt;</code> |
| **Right hand side** | <code>:RnvimrToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-normal)</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-insert)</code> |
| **Right hand side** | <code>i</code> |

| **Description** | LuaSnip: Repeat last node expansion |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | LuaSnip: Removes current snippet from jumplist |
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
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBefore)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBefore)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBefore)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyYank)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyNextEntry)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPreviousEntry)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyCycleBackward)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyCycleForward)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bdelete&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Left&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bp&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Right&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bn&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-Right&gt;</code> |
| **Right hand side** | <code>w</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-Left&gt;</code> |
| **Right hand side** | <code>b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Down&gt;</code> |
| **Right hand side** | <code>G</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Up&gt;</code> |
| **Right hand side** | <code>gg</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Left&gt;</code> |
| **Right hand side** | <code>^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Right&gt;</code> |
| **Right hand side** | <code>$</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Copy |
| :---- | :---- |
| **Left hand side** | <code> c</code> |
| **Right hand side** | <code>"+y&lt;CR&gt;</code> |

| **Description** | Add Text to End of Selected Lines |
| :---- | :---- |
| **Left hand side** | <code> a</code> |
| **Right hand side** | <code>:norm A</code> |

| **Description** | Add Text to Start of Selected Lines |
| :---- | :---- |
| **Left hand side** | <code> i</code> |
| **Right hand side** | <code>:norm I</code> |

| **Description** | Comment Out Selected Lines |
| :---- | :---- |
| **Left hand side** | <code> '</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

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

| **Description** | LuaSnip: Repeat last node expansion |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBeforeJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutBefore)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutAfter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBeforeJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentBefore)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutIndentAfter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyPutAfter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRightJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRight)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeFilterJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeFilter)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeftJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeft)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeCharwiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeCharwise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeLinewiseJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeLinewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBeforeJoined)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyGPutBefore)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(YankyYank)</code> |
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
| **Left hand side** | <code>&lt;M-Down&gt;</code> |
| **Right hand side** | <code>:move '&gt;+1&lt;CR&gt;gv-gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-Up&gt;</code> |
| **Right hand side** | <code>:move '&lt;lt&gt;-2&lt;CR&gt;gv-gv</code> |


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

| **Description** | LuaSnip: Repeat last node expansion |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

