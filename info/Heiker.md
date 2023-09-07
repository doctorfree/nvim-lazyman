## Heiker Neovim Configuration Information

Neovim config of Heiker Curiel, author of [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)

- Install and initialize: **`lazyman -w Heiker`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Heiker`**

### Git repository

[https://github.com/VonHeikemen/dotfiles](https://github.com/VonHeikemen/dotfiles)

### Lazy managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [dyng/ctrlsf.vim](https://github.com/dyng/ctrlsf.vim.git)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [VonHeikemen/fine-cmdline.nvim](https://github.com/VonHeikemen/fine-cmdline.nvim.git)
- [ggandor/flit.nvim](https://github.com/ggandor/flit.nvim)
- [junegunn/goyo.vim](https://github.com/junegunn/goyo.vim.git)
- [NMAC427/guess-indent.nvim](https://github.com/NMAC427/guess-indent.nvim.git)
- [othree/html5.vim](https://github.com/othree/html5.vim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [tamago324/lir.nvim](https://github.com/tamago324/lir.nvim.git)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai.git)
- [echasnovski/mini.bracketed](https://github.com/echasnovski/mini.bracketed.git)
- [echasnovski/mini.bufremove](https://github.com/echasnovski/mini.bufremove.git)
- [echasnovski/mini.comment](https://github.com/echasnovski/mini.comment)
- [echasnovski/mini.surround](https://github.com/echasnovski/mini.surround.git)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [VonHeikemen/searchbox.nvim](https://github.com/VonHeikemen/searchbox.nvim.git)
- [nvim-telescope/telescope-fzy-native.nvim](https://github.com/nvim-telescope/telescope-fzy-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [VonHeikemen/the-good-snippets](https://github.com/VonHeikemen/the-good-snippets.git)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [tpope/vim-abolish](https://github.com/tpope/vim-abolish.git)
- [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript.git)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [lumiliet/vim-twig](https://github.com/lumiliet/vim-twig.git)

### Heiker Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>&lt;CR&gt;</code> | <code>&lt;Cmd&gt;FineCmdline&lt;CR&gt;</code> |
|  | <code> m</code> | <code>&lt;Cmd&gt;BufferNavMark&lt;CR&gt;</code> |
|  | <code> uf</code> | <code>&lt;Cmd&gt;CtrlSFToggle&lt;CR&gt;</code> |
|  | <code> fw</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;exe 'Find' expand('&lt;lt&gt;cword&gt;')&lt;CR&gt;</code> |
|  | <code> F</code> | <code>&lt;Cmd&gt;FineCmdline Find &lt;CR&gt;</code> |
|  | <code> ui</code> | <code>&lt;Cmd&gt;IndentBlanklineToggle&lt;CR&gt;</code> |
|  | <code> da</code> |  |
|  | <code> dd</code> |  |
|  | <code> bb</code> | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |
|  | <code> fh</code> | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |
|  | <code> fb</code> | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |
|  | <code> fs</code> | <code>&lt;Cmd&gt;Telescope treesitter&lt;CR&gt;</code> |
|  | <code> ff</code> | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |
|  | <code> ?</code> | <code>&lt;Cmd&gt;Telescope keymaps&lt;CR&gt;</code> |
|  | <code> fg</code> | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |
|  | <code> s</code> | <code>&lt;Cmd&gt;SearchBoxClear&lt;CR&gt;</code> |
|  | <code> uz</code> |  |
|  | <code> g</code> |  |
|  | <code> bc</code> |  |
|  | <code> j</code> | <code>&lt;Cmd&gt;let @/='\&lt;lt&gt;'.expand('&lt;lt&gt;cword&gt;').'\&gt;'&lt;CR&gt;"_ciw</code> |
|  | <code> ur</code> | <code>&lt;Cmd&gt;set invrelativenumber&lt;CR&gt;</code> |
|  | <code> un</code> | <code>&lt;Cmd&gt;set invnumber&lt;CR&gt;</code> |
|  | <code> uc</code> | <code>&lt;Cmd&gt;set invcursorline&lt;CR&gt;</code> |
|  | <code> ul</code> |  |
|  | <code> ut</code> |  |
|  | <code> uh</code> | <code>&lt;Cmd&gt;set invhlsearch&lt;CR&gt;</code> |
|  | <code> cd</code> | <code>&lt;Cmd&gt;lcd %:p:h&lt;CR&gt;&lt;Cmd&gt;pwd&lt;CR&gt;</code> |
|  | <code>  </code> | <code>&lt;Cmd&gt;echo ''&lt;CR&gt;</code> |
|  | <code> tn</code> | <code>&lt;Cmd&gt;tabnew&lt;CR&gt;</code> |
|  | <code> bl</code> | <code>&lt;Cmd&gt;buffer #&lt;CR&gt;</code> |
|  | <code> bq</code> | <code>&lt;Cmd&gt;bdelete&lt;CR&gt;</code> |
|  | <code> Q</code> | <code>&lt;Cmd&gt;quitall!&lt;CR&gt;</code> |
|  | <code> qq</code> | <code>&lt;Cmd&gt;quitall&lt;CR&gt;</code> |
|  | <code> w</code> | <code>&lt;Cmd&gt;write&lt;CR&gt;</code> |
|  | <code> l</code> | <code>g_</code> |
|  | <code> h</code> | <code>^</code> |
|  | <code> e</code> | <code>%</code> |
|  | <code> a</code> | <code>&lt;Cmd&gt;keepjumps normal! ggVG&lt;CR&gt;</code> |
|  | <code>#</code> | <code>#zz</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>*</code> | <code>*zz</code> |
|  | <code>.</code> |  |
| Jump to line below cursor | <code>B</code> |  |
|  | <code>C</code> | <code>"_C</code> |
| Jump to word (ignore _) | <code>E</code> |  |
|  | <code>F</code> |  |
|  | <code>H</code> | <code>b</code> |
|  | <code>L</code> | <code>e</code> |
|  | <code>M</code> | <code>&lt;Cmd&gt;BufferNavMenu&lt;CR&gt;</code> |
|  | <code>N</code> | <code>Nzzzv</code> |
|  | <code>R</code> | <code>&lt;Cmd&gt;exe 'SearchBoxReplace  --' expand('&lt;lt&gt;cword&gt;')&lt;CR&gt;</code> |
|  | <code>S</code> | <code>&lt;Cmd&gt;SearchBoxMatchAll title=' Match '&lt;CR&gt;</code> |
|  | <code>T</code> |  |
|  | <code>U</code> | <code>&lt;C-R&gt;</code> |
|  | <code>X</code> | <code>"_d</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>[g</code> |  |
|  | <code>[q</code> |  |
|  | <code>[t</code> | <code>&lt;Cmd&gt;tabprevious&lt;CR&gt;</code> |
|  | <code>[b</code> | <code>&lt;Cmd&gt;bprevious&lt;CR&gt;</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>]q</code> |  |
|  | <code>]g</code> |  |
|  | <code>]t</code> | <code>&lt;Cmd&gt;tabnext&lt;CR&gt;</code> |
|  | <code>]b</code> | <code>&lt;Cmd&gt;bnext&lt;CR&gt;</code> |
| Jump to line above cursor | <code>b</code> |  |
|  | <code>cr</code> |  |
|  | <code>cs</code> |  |
|  | <code>c</code> | <code>"_c</code> |
|  | <code>ds</code> |  |
| Jump to word | <code>e</code> |  |
|  | <code>f</code> |  |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>gL</code> | <code>E</code> |
|  | <code>gH</code> | <code>B</code> |
|  | <code>gB</code> |  |
|  | <code>gb</code> |  |
|  | <code>gcc</code> |  |
|  | <code>gc</code> |  |
|  | <code>gp</code> | <code>"+p</code> |
|  | <code>gy</code> | <code>"+y</code> |
|  | <code>n</code> | <code>nzzzv</code> |
|  | <code>r</code> | <code>&lt;Cmd&gt;SearchBoxReplace &lt;CR&gt;</code> |
|  | <code>s</code> | <code>&lt;Cmd&gt;SearchBoxIncSearch&lt;CR&gt;</code> |
|  | <code>t</code> |  |
|  | <code>x</code> | <code>"_x</code> |
|  | <code>ys</code> |  |
|  | <code>&lt;M-4&gt;</code> | <code>&lt;Cmd&gt;BufferNav 4&lt;CR&gt;</code> |
|  | <code>&lt;M-3&gt;</code> | <code>&lt;Cmd&gt;BufferNav 3&lt;CR&gt;</code> |
|  | <code>&lt;M-2&gt;</code> | <code>&lt;Cmd&gt;BufferNav 2&lt;CR&gt;</code> |
|  | <code>&lt;M-1&gt;</code> | <code>&lt;Cmd&gt;BufferNav 1&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;C-W&gt;f</code> | <code>&lt;Cmd&gt;ToggleTerm direction=float&lt;CR&gt;</code> |
|  | <code>&lt;C-W&gt;t</code> | <code>&lt;Cmd&gt;ToggleTerm direction=tab&lt;CR&gt;</code> |
| Toggle terminal | <code>&lt;M-i&gt;</code> | <code>&lt;Cmd&gt;Term&lt;CR&gt;</code> |
|  | <code>&lt;F8&gt;</code> | <code>gn@i</code> |
|  | <code>&lt;C-K&gt;</code> | <code>&lt;Cmd&gt;move .-2&lt;CR&gt;==</code> |
|  | <code>&lt;C-J&gt;</code> | <code>&lt;Cmd&gt;move .+1&lt;CR&gt;==</code> |
|  | <code>&lt;M-j&gt;</code> | <code>&lt;C-D&gt;M</code> |
|  | <code>&lt;M-k&gt;</code> | <code>&lt;C-U&gt;M</code> |
|  | <code>&lt;M-b&gt;</code> | <code>&lt;CR&gt;</code> |
|  | <code>&lt;M-l&gt;</code> | <code>&lt;Esc&gt;</code> |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>&lt;CR&gt;</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;FineCmdline '&lt;lt&gt;,'&gt;&lt;CR&gt;</code> |
|  | <code> F</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;GetSelection&lt;CR&gt;&lt;Cmd&gt;exe 'Find' getreg('/')&lt;CR&gt;</code> |
|  | <code> j</code> | <code>y&lt;Cmd&gt;let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')&lt;CR&gt;"_cgn</code> |
|  | <code> Y</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;GetSelection&lt;CR&gt;&lt;Cmd&gt;set hlsearch&lt;CR&gt;</code> |
|  | <code> y</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;GetSelection&lt;CR&gt;gv</code> |
|  | <code> l</code> | <code>g_</code> |
|  | <code> h</code> | <code>^</code> |
|  | <code> e</code> | <code>%</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
| Jump to line below cursor | <code>B</code> |  |
|  | <code>C</code> | <code>"_c</code> |
| Jump to word (ignore _) | <code>E</code> |  |
|  | <code>F</code> |  |
|  | <code>H</code> | <code>b</code> |
|  | <code>L</code> | <code>e</code> |
|  | <code>R</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;GetSelection&lt;CR&gt;&lt;Cmd&gt;exe 'SearchBoxReplace --' getreg('/')&lt;CR&gt;</code> |
|  | <code>S</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;'&lt;lt&gt;,'&gt;SearchBoxMatchAll title=' Match ' visual_mode=true&lt;CR&gt;</code> |
|  | <code>T</code> |  |
|  | <code>X</code> | <code>"_d</code> |
|  | <code>Y</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>[g</code> |  |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>]g</code> |  |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>a</code> |  |
| Jump to line above cursor | <code>b</code> |  |
|  | <code>cc</code> | <code>"_c</code> |
|  | <code>c</code> | <code>"_c</code> |
| Jump to word | <code>e</code> |  |
|  | <code>f</code> |  |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>gL</code> | <code>E</code> |
|  | <code>gH</code> | <code>B</code> |
|  | <code>gB</code> |  |
|  | <code>gb</code> |  |
|  | <code>gc</code> |  |
|  | <code>gp</code> | <code>"+p</code> |
|  | <code>gy</code> | <code>"+y</code> |
|  | <code>i</code> |  |
|  | <code>qi</code> | <code>y&lt;Cmd&gt;let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')&lt;CR&gt;gvqi</code> |
|  | <code>r</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;SearchBoxReplace  visual_mode=true&lt;CR&gt;</code> |
|  | <code>s</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;'&lt;lt&gt;,'&gt;SearchBoxIncSearch visual_mode=true&lt;CR&gt;</code> |
|  | <code>t</code> |  |
|  | <code>x</code> | <code>"_x</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
| Toggle terminal | <code>&lt;M-i&gt;</code> | <code>&lt;Cmd&gt;Term&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;'&lt;lt&gt;,'&gt;move '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |
|  | <code>&lt;C-J&gt;</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;'&lt;lt&gt;,'&gt;move '&gt;+1&lt;CR&gt;gv=gv</code> |
|  | <code>&lt;M-l&gt;</code> | <code>&lt;Esc&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> l</code> | <code>g_</code> |
|  | <code> h</code> | <code>^</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
| Jump to line below cursor | <code>B</code> |  |
| Jump to word (ignore _) | <code>E</code> |  |
|  | <code>F</code> |  |
|  | <code>H</code> | <code>b</code> |
|  | <code>L</code> | <code>e</code> |
|  | <code>T</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>a</code> |  |
| Jump to line above cursor | <code>b</code> |  |
| Jump to word | <code>e</code> |  |
|  | <code>f</code> |  |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>gL</code> | <code>E</code> |
|  | <code>gH</code> | <code>B</code> |
|  | <code>gB</code> |  |
|  | <code>gb</code> |  |
|  | <code>gc</code> |  |
|  | <code>gp</code> | <code>"+p</code> |
|  | <code>gy</code> | <code>"+y</code> |
|  | <code>i</code> |  |
|  | <code>t</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;M-l&gt;</code> | <code>&lt;Esc&gt;</code> |
