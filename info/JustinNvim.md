# JustinNvim Neovim Configuration Information

LazyVim based Neovim configuration by Justin Angeles. Justin has created a series of YouTube videos on configuring LazyVim: [Part 1 - Colorschemne](https://youtu.be/LznwxUSZz_8), [Part 2 - Options](https://youtu.be/I4flypojhUk), [Part 3 - Keymaps](https://youtu.be/Vc_5feJ9F5k), [Part 4 - Final Thoughts](https://youtu.be/eRQHWeJ3D7I)

- Install and initialize: **`lazyman -w JustinNvim`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     [LazyVim](https://lazyvim.github.io)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-JustinNvim`**

## Git repository

[https://github.com/justinsgithub/dotfiles](https://github.com/justinsgithub/dotfiles)

## Website

[https://www.lazyvim.org](https://www.lazyvim.org)

## YouTube channel

[https://www.youtube.com/@justindevelops](https://www.youtube.com/@justindevelops)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [LazyVim/LazyVim](https://github.com/LazyVim/LazyVim.git)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [b0o/SchemaStore.nvim](https://github.com/b0o/SchemaStore.nvim)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [folke/flash.nvim](https://github.com/folke/flash.nvim.git)
- [ggandor/flit.nvim](https://github.com/ggandor/flit.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai.git)
- [echasnovski/mini.bufremove](https://github.com/echasnovski/mini.bufremove.git)
- [echasnovski/mini.comment](https://github.com/echasnovski/mini.comment)
- [echasnovski/mini.indentscope](https://github.com/echasnovski/mini.indentscope)
- [echasnovski/mini.pairs](https://github.com/echasnovski/mini.pairs.git)
- [echasnovski/mini.surround](https://github.com/echasnovski/mini.surround.git)
- [folke/neoconf.nvim](https://github.com/folke/neoconf.nvim.git)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre.git)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [justinsgithub/oh-my-monokai.nvim](https://github.com/justinsgithub/oh-my-monokai.nvim.git)
- [folke/persistence.nvim](https://github.com/folke/persistence.nvim.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [Wansmer/treesj](https://github.com/Wansmer/treesj)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [jose-elias-alvarez/typescript.nvim](https://github.com/jose-elias-alvarez/typescript.nvim)
- [panozzaj/vim-autocorrect](https://github.com/panozzaj/vim-autocorrect.git)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [dstein64/vim-startuptime](https://github.com/dstein64/vim-startuptime)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

## JustinNvim Keymaps

### Normal mode keymaps

| **Description** | Word (cwd) |
| :---- | :---- |
| **Left hand side** | <code> fW</code> |
| **Right hand side** | |

| **Description** | Word (root dir) |
| :---- | :---- |
| **Left hand side** | <code> fw</code> |
| **Right hand side** | |

| **Description** | All Buffers |
| :---- | :---- |
| **Left hand side** | <code> fB</code> |
| **Right hand side** | |

| **Description** | Text |
| :---- | :---- |
| **Left hand side** | <code> ft</code> |
| **Right hand side** | |

| **Description** | Command History |
| :---- | :---- |
| **Left hand side** | <code> fc</code> |
| **Right hand side** | |

| **Description** | Goto Symbol (Workspace) |
| :---- | :---- |
| **Left hand side** | <code> sS</code> |
| **Right hand side** | |

| **Description** | Goto Symbol |
| :---- | :---- |
| **Left hand side** | <code> ss</code> |
| **Right hand side** | |

| **Description** | Colorscheme with preview |
| :---- | :---- |
| **Left hand side** | <code> uC</code> |
| **Right hand side** | |

| **Description** | Word (cwd) |
| :---- | :---- |
| **Left hand side** | <code> sW</code> |
| **Right hand side** | |

| **Description** | Word (root dir) |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | |

| **Description** | Resume |
| :---- | :---- |
| **Left hand side** | <code> sR</code> |
| **Right hand side** | |

| **Description** | Options |
| :---- | :---- |
| **Left hand side** | <code> so</code> |
| **Right hand side** | |

| **Description** | Jump to Mark |
| :---- | :---- |
| **Left hand side** | <code> sm</code> |
| **Right hand side** | |

| **Description** | Man Pages |
| :---- | :---- |
| **Left hand side** | <code> sM</code> |
| **Right hand side** | |

| **Description** | Key Maps |
| :---- | :---- |
| **Left hand side** | <code> sk</code> |
| **Right hand side** | |

| **Description** | Search Highlight Groups |
| :---- | :---- |
| **Left hand side** | <code> sH</code> |
| **Right hand side** | |

| **Description** | Help Pages |
| :---- | :---- |
| **Left hand side** | <code> sh</code> |
| **Right hand side** | |

| **Description** | Grep (cwd) |
| :---- | :---- |
| **Left hand side** | <code> sG</code> |
| **Right hand side** | |

| **Description** | Grep (root dir) |
| :---- | :---- |
| **Left hand side** | <code> sg</code> |
| **Right hand side** | |

| **Description** | Workspace diagnostics |
| :---- | :---- |
| **Left hand side** | <code> sD</code> |
| **Right hand side** | |

| **Description** | Document diagnostics |
| :---- | :---- |
| **Left hand side** | <code> sd</code> |
| **Right hand side** | |

| **Description** | Commands |
| :---- | :---- |
| **Left hand side** | <code> sC</code> |
| **Right hand side** | |

| **Description** | Command History |
| :---- | :---- |
| **Left hand side** | <code> sc</code> |
| **Right hand side** | |

| **Description** | Buffer |
| :---- | :---- |
| **Left hand side** | <code> sb</code> |
| **Right hand side** | |

| **Description** | Auto Commands |
| :---- | :---- |
| **Left hand side** | <code> sa</code> |
| **Right hand side** | |

| **Description** | Registers |
| :---- | :---- |
| **Left hand side** | <code> s"</code> |
| **Right hand side** | |

| **Description** | status |
| :---- | :---- |
| **Left hand side** | <code> gs</code> |
| **Right hand side** | |

| **Description** | commits |
| :---- | :---- |
| **Left hand side** | <code> gc</code> |
| **Right hand side** | |

| **Description** | Recent (cwd) |
| :---- | :---- |
| **Left hand side** | <code> fR</code> |
| **Right hand side** | |

| **Description** | Recent |
| :---- | :---- |
| **Left hand side** | <code> fr</code> |
| **Right hand side** | |

| **Description** | Find Files (cwd) |
| :---- | :---- |
| **Left hand side** | <code> fF</code> |
| **Right hand side** | |

| **Description** | Find Files (root dir) |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | |

| **Description** | Buffers |
| :---- | :---- |
| **Left hand side** | <code> fb</code> |
| **Right hand side** | |

| **Description** | Todo (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> dt</code> |
| **Right hand side** | |

| **Description** | Todo/Fix/Fixme |
| :---- | :---- |
| **Left hand side** | <code> sT</code> |
| **Right hand side** | |

| **Description** | Todo |
| :---- | :---- |
| **Left hand side** | <code> st</code> |
| **Right hand side** | |

| **Description** | Todo (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xt</code> |
| **Right hand side** | |

| **Description** | Todo/Fix/Fixme (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xT</code> |
| **Right hand side** | |

| **Description** | Todo/Fix/Fixme (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> dT</code> |
| **Right hand side** | |

| **Description** | Close Buffer |
| :---- | :---- |
| **Left hand side** | <code> bc</code> |
| **Right hand side** | |

| **Description** | Close Buffer (Force) |
| :---- | :---- |
| **Left hand side** | <code> bC</code> |
| **Right hand side** | |

| **Description** | Quickfix List (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> dQ</code> |
| **Right hand side** | |

| **Description** | Location List (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> dL</code> |
| **Right hand side** | |

| **Description** | Workspace Diagnostics (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> dX</code> |
| **Right hand side** | |

| **Description** | Document Diagnostics (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> dx</code> |
| **Right hand side** | |

| **Description** | Quickfix List (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xQ</code> |
| **Right hand side** | |

| **Description** | Location List (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xL</code> |
| **Right hand side** | |

| **Description** | Workspace Diagnostics (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xX</code> |
| **Right hand side** | |

| **Description** | Document Diagnostics (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xx</code> |
| **Right hand side** | |

| **Description** | Mason |
| :---- | :---- |
| **Left hand side** | <code> cm</code> |
| **Right hand side** | |

| **Description** | Dismiss All |
| :---- | :---- |
| **Left hand side** | <code> snd</code> |
| **Right hand side** | |

| **Description** | Noice All |
| :---- | :---- |
| **Left hand side** | <code> sna</code> |
| **Right hand side** | |

| **Description** | Noice History |
| :---- | :---- |
| **Left hand side** | <code> snh</code> |
| **Right hand side** | |

| **Description** | Noice Last Message |
| :---- | :---- |
| **Left hand side** | <code> snl</code> |
| **Right hand side** | |

| **Description** | Replace in files (Spectre) |
| :---- | :---- |
| **Left hand side** | <code> sr</code> |
| **Right hand side** | |

| **Description** | Projects |
| :---- | :---- |
| **Left hand side** | <code> fp</code> |
| **Right hand side** | |

| **Description** | Toggle pin |
| :---- | :---- |
| **Left hand side** | <code> bp</code> |
| **Right hand side** | |

| **Description** | Delete non-pinned buffers |
| :---- | :---- |
| **Left hand side** | <code> bP</code> |
| **Right hand side** | |

| **Description** | Dismiss all Notifications |
| :---- | :---- |
| **Left hand side** | <code> un</code> |
| **Right hand side** | |

| **Description** | Explorer |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | |

| **Description** | Restore Last Session |
| :---- | :---- |
| **Left hand side** | <code> ql</code> |
| **Right hand side** | |

| **Description** | Restore Session |
| :---- | :---- |
| **Left hand side** | <code> qs</code> |
| **Right hand side** | |

| **Description** | Don't Save Current Session |
| :---- | :---- |
| **Left hand side** | <code> qd</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | Previous todo comment |
| :---- | :---- |
| **Left hand side** | <code>[t</code> |
| **Right hand side** | |

| **Description** | Previous trouble/quickfix item |
| :---- | :---- |
| **Left hand side** | <code>[q</code> |
| **Right hand side** | |

| **Description** | Prev Reference |
| :---- | :---- |
| **Left hand side** | <code>[[</code> |
| **Right hand side** | |

| **Description** | Close Buffer |
| :---- | :---- |
| **Left hand side** | <code>\c</code> |
| **Right hand side** | |

| **Description** | Toggle TreeSJ |
| :---- | :---- |
| **Left hand side** | <code>\j</code> |
| **Right hand side** | |

| **Description** | Find left surrounding |
| :---- | :---- |
| **Left hand side** | <code>\sF</code> |
| **Right hand side** | |

| **Description** | Find right surrounding |
| :---- | :---- |
| **Left hand side** | <code>\sf</code> |
| **Right hand side** | |

| **Description** | Delete surrounding |
| :---- | :---- |
| **Left hand side** | <code>\sd</code> |
| **Right hand side** | |

| **Description** | Add surrounding |
| :---- | :---- |
| **Left hand side** | <code>\sa</code> |
| **Right hand side** | |

| **Description** | Update `MiniSurround.config.n_lines` |
| :---- | :---- |
| **Left hand side** | <code>\sn</code> |
| **Right hand side** | |

| **Description** | Replace surrounding |
| :---- | :---- |
| **Left hand side** | <code>\sr</code> |
| **Right hand side** | |

| **Description** | Highlight surrounding |
| :---- | :---- |
| **Left hand side** | <code>\sh</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | Next todo comment |
| :---- | :---- |
| **Left hand side** | <code>]t</code> |
| **Right hand side** | |

| **Description** | Next trouble/quickfix item |
| :---- | :---- |
| **Left hand side** | <code>]q</code> |
| **Right hand side** | |

| **Description** | Next Reference |
| :---- | :---- |
| **Left hand side** | <code>]]</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
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

| **Description** | Scroll forward |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | |

| **Description** | Scroll backward |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | |

| **Description** | Increment selection |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Space&gt;</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Selection (cwd) |
| :---- | :---- |
| **Left hand side** | <code> sW</code> |
| **Right hand side** | |

| **Description** | Selection (root dir) |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | |

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

| **Description** | Treesitter Search |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

| **Description** | Add surrounding |
| :---- | :---- |
| **Left hand side** | <code>\sa</code> |
| **Right hand side** | |

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

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

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

| **Description** | Decrement selection |
| :---- | :---- |
| **Left hand side** | <code>&lt;BS&gt;</code> |
| **Right hand side** | |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | Treesitter Search |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

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

| **Description** | Remote Flash |
| :---- | :---- |
| **Left hand side** | <code>r</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
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

