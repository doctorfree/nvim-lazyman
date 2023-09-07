## CatNvim Neovim Configuration Information

Neovim configuration written in the [C programming language](https://en.wikipedia.org/wiki/C_(programming_language))

- Install and initialize: **`lazyman -L CatNvim`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     [LazyVim](https://lazyvim.github.io)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-CatNvim`**

### Git repository

[https://github.com/nullchilly/CatNvim](https://github.com/nullchilly/CatNvim)

### Dotfyle entry

[https://dotfyle.com/nullchilly/catnvim](https://dotfyle.com/nullchilly/catnvim)

### Website

[https://www.lazyvim.org](https://www.lazyvim.org)

### Lazy managed plugins

- [LazyVim/LazyVim](https://github.com/LazyVim/LazyVim.git)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [ggandor/flit.nvim](https://github.com/ggandor/flit.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai.git)
- [echasnovski/mini.bufremove](https://github.com/echasnovski/mini.bufremove.git)
- [echasnovski/mini.comment](https://github.com/echasnovski/mini.comment)
- [echasnovski/mini.indentscope](https://github.com/echasnovski/mini.indentscope)
- [echasnovski/mini.pairs](https://github.com/echasnovski/mini.pairs.git)
- [echasnovski/mini.surround](https://github.com/echasnovski/mini.surround.git)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [folke/neoconf.nvim](https://github.com/folke/neoconf.nvim.git)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre.git)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [folke/persistence.nvim](https://github.com/folke/persistence.nvim.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [dstein64/vim-startuptime](https://github.com/dstein64/vim-startuptime)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### CatNvim Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Mason | <code> cm</code> |  |
| Replace in files (Spectre) | <code> sr</code> |  |
| Explorer NeoTree (cwd) | <code> fE</code> |  |
| Explorer NeoTree (root dir) | <code> fe</code> |  |
| Explorer NeoTree (root dir) | <code> e</code> |  |
| Explorer NeoTree (cwd) | <code> E</code> |  |
| Help Pages | <code> sh</code> |  |
| Grep (cwd) | <code> sG</code> |  |
| Grep (root dir) | <code> sg</code> |  |
| Workspace diagnostics | <code> sD</code> |  |
| Document diagnostics | <code> sd</code> |  |
| Commands | <code> sC</code> |  |
| Command History | <code> sc</code> |  |
| Buffer | <code> sb</code> |  |
| Auto Commands | <code> sa</code> |  |
| Registers | <code> s"</code> |  |
| status | <code> gs</code> |  |
| commits | <code> gc</code> |  |
| Recent (cwd) | <code> fR</code> |  |
| Recent | <code> fr</code> |  |
| Find Files (cwd) | <code> fF</code> |  |
| Find Files (root dir) | <code> ff</code> |  |
| Buffers | <code> fb</code> |  |
| Command History | <code> :</code> |  |
| Grep (root dir) | <code> /</code> |  |
| Switch Buffer | <code> ,</code> |  |
| Find Files (root dir) | <code>  </code> |  |
| Goto Symbol (Workspace) | <code> sS</code> |  |
| Goto Symbol | <code> ss</code> |  |
| Colorscheme with preview | <code> uC</code> |  |
| Word (cwd) | <code> sW</code> |  |
| Word (root dir) | <code> sw</code> |  |
| Resume | <code> sR</code> |  |
| Options | <code> so</code> |  |
| Jump to Mark | <code> sm</code> |  |
| Man Pages | <code> sM</code> |  |
| Key Maps | <code> sk</code> |  |
| Search Highlight Groups | <code> sH</code> |  |
| Todo (Trouble) | <code> xt</code> |  |
| Todo/Fix/Fixme | <code> sT</code> |  |
| Todo | <code> st</code> |  |
| Todo/Fix/Fixme (Trouble) | <code> xT</code> |  |
| Dismiss all Notifications | <code> un</code> |  |
| Delete Buffer | <code> bd</code> |  |
| Delete Buffer (Force) | <code> bD</code> |  |
| Delete non-pinned buffers | <code> bP</code> |  |
| Toggle pin | <code> bp</code> |  |
| Quickfix List (Trouble) | <code> xQ</code> |  |
| Location List (Trouble) | <code> xL</code> |  |
| Workspace Diagnostics (Trouble) | <code> xX</code> |  |
| Document Diagnostics (Trouble) | <code> xx</code> |  |
| Don't Save Current Session | <code> qd</code> |  |
| Restore Last Session | <code> ql</code> |  |
| Restore Session | <code> qs</code> |  |
| Dismiss All | <code> snd</code> |  |
| Noice All | <code> sna</code> |  |
| Noice History | <code> snh</code> |  |
| Noice Last Message | <code> snl</code> |  |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| Flash Treesitter | <code>S</code> |  |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
| Previous todo comment | <code>[t</code> |  |
| Prev Reference | <code>[[</code> |  |
| Previous trouble/quickfix item | <code>[q</code> |  |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| Next todo comment | <code>]t</code> |  |
| Next Reference | <code>]]</code> |  |
| Next trouble/quickfix item | <code>]q</code> |  |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| Highlight surrounding | <code>gzh</code> |  |
| Find right surrounding | <code>gzf</code> |  |
| Delete surrounding | <code>gzd</code> |  |
| Update `MiniSurround.config.n_lines` | <code>gzn</code> |  |
| Find left surrounding | <code>gzF</code> |  |
| Replace surrounding | <code>gzr</code> |  |
| Add surrounding | <code>gza</code> |  |
| Flash | <code>s</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
| Increment selection | <code>&lt;C-Space&gt;</code> |  |
| Scroll backward | <code>&lt;C-B&gt;</code> |  |
| Scroll forward | <code>&lt;C-F&gt;</code> |  |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Selection (cwd) | <code> sW</code> |  |
| Selection (root dir) | <code> sw</code> |  |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
| Treesitter Search | <code>R</code> |  |
| Flash Treesitter | <code>S</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
| Add surrounding | <code>gza</code> |  |
| Flash | <code>s</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
| Decrement selection | <code>&lt;BS&gt;</code> |  |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
| Treesitter Search | <code>R</code> |  |
| Flash Treesitter | <code>S</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
| Remote Flash | <code>r</code> |  |
| Flash | <code>s</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
