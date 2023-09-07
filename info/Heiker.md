# Heiker Neovim Configuration Information

Neovim config of Heiker Curiel, author of [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)

- Install and initialize: **`lazyman -w Heiker`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Heiker`**

## Git repository

[https://github.com/VonHeikemen/dotfiles](https://github.com/VonHeikemen/dotfiles)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

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

## Heiker Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;CR&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;FineCmdline&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> m</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferNavMark&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ui</code> |
| **Right hand side** | <code>&lt;Cmd&gt;IndentBlanklineToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> uf</code> |
| **Right hand side** | <code>&lt;Cmd&gt;CtrlSFToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fw</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;exe 'Find' expand('&lt;lt&gt;cword&gt;')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> F</code> |
| **Right hand side** | <code>&lt;Cmd&gt;FineCmdline Find &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SearchBoxClear&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> bb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fh</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fs</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope treesitter&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ?</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope keymaps&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fg</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> da</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dd</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> bc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> uz</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> g</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> j</code> |
| **Right hand side** | <code>&lt;Cmd&gt;let @/='\&lt;lt&gt;'.expand('&lt;lt&gt;cword&gt;').'\&gt;'&lt;CR&gt;"_ciw</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ur</code> |
| **Right hand side** | <code>&lt;Cmd&gt;set invrelativenumber&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> un</code> |
| **Right hand side** | <code>&lt;Cmd&gt;set invnumber&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> uc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;set invcursorline&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ul</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ut</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> uh</code> |
| **Right hand side** | <code>&lt;Cmd&gt;set invhlsearch&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> cd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lcd %:p:h&lt;CR&gt;&lt;Cmd&gt;pwd&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>  </code> |
| **Right hand side** | <code>&lt;Cmd&gt;echo ''&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnew&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> bl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;buffer #&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> bq</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bdelete&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> Q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;quitall!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> qq</code> |
| **Right hand side** | <code>&lt;Cmd&gt;quitall&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>&lt;Cmd&gt;write&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> l</code> |
| **Right hand side** | <code>g_</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | <code>%</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> a</code> |
| **Right hand side** | <code>&lt;Cmd&gt;keepjumps normal! ggVG&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>#zz</code> |

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
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>*zz</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>.</code> |
| **Right hand side** | |

| **Description** | Jump to line below cursor |
| :---- | :---- |
| **Left hand side** | <code>B</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>C</code> |
| **Right hand side** | <code>"_C</code> |

| **Description** | Jump to word (ignore _) |
| :---- | :---- |
| **Left hand side** | <code>E</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>e</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>M</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferNavMenu&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>Nzzzv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | <code>&lt;Cmd&gt;exe 'SearchBoxReplace  --' expand('&lt;lt&gt;cword&gt;')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SearchBoxMatchAll title=' Match '&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>U</code> |
| **Right hand side** | <code>&lt;C-R&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>X</code> |
| **Right hand side** | <code>"_d</code> |

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
| **Left hand side** | <code>[g</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[q</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[t</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[b</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]q</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]g</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]t</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]b</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bnext&lt;CR&gt;</code> |

| **Description** | Jump to line above cursor |
| :---- | :---- |
| **Left hand side** | <code>b</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cr</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>"_c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | |

| **Description** | Jump to word |
| :---- | :---- |
| **Left hand side** | <code>e</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gL</code> |
| **Right hand side** | <code>E</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gH</code> |
| **Right hand side** | <code>B</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gB</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | <code>"+p</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gy</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>nzzzv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>r</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SearchBoxReplace &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SearchBoxIncSearch&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>x</code> |
| **Right hand side** | <code>"_x</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-4&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferNav 4&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-3&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferNav 3&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-2&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferNav 2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-1&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferNav 1&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;f</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ToggleTerm direction=float&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;t</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ToggleTerm direction=tab&lt;CR&gt;</code> |

| **Description** | Toggle terminal |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-i&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Term&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F8&gt;</code> |
| **Right hand side** | <code>gn@i</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;move .-2&lt;CR&gt;==</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;move .+1&lt;CR&gt;==</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;C-D&gt;M</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;C-U&gt;M</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-b&gt;</code> |
| **Right hand side** | <code>&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;CR&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;FineCmdline '&lt;lt&gt;,'&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> F</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;GetSelection&lt;CR&gt;&lt;Cmd&gt;exe 'Find' getreg('/')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> j</code> |
| **Right hand side** | <code>y&lt;Cmd&gt;let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')&lt;CR&gt;"_cgn</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> Y</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;GetSelection&lt;CR&gt;&lt;Cmd&gt;set hlsearch&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> y</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;GetSelection&lt;CR&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> l</code> |
| **Right hand side** | <code>g_</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | <code>%</code> |

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

| **Description** | Jump to line below cursor |
| :---- | :---- |
| **Left hand side** | <code>B</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>C</code> |
| **Right hand side** | <code>"_c</code> |

| **Description** | Jump to word (ignore _) |
| :---- | :---- |
| **Left hand side** | <code>E</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>e</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;GetSelection&lt;CR&gt;&lt;Cmd&gt;exe 'SearchBoxReplace --' getreg('/')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;'&lt;lt&gt;,'&gt;SearchBoxMatchAll title=' Match ' visual_mode=true&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>X</code> |
| **Right hand side** | <code>"_d</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[g</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]g</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a</code> |
| **Right hand side** | |

| **Description** | Jump to line above cursor |
| :---- | :---- |
| **Left hand side** | <code>b</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cc</code> |
| **Right hand side** | <code>"_c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>"_c</code> |

| **Description** | Jump to word |
| :---- | :---- |
| **Left hand side** | <code>e</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gL</code> |
| **Right hand side** | <code>E</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gH</code> |
| **Right hand side** | <code>B</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gB</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | <code>"+p</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gy</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>qi</code> |
| **Right hand side** | <code>y&lt;Cmd&gt;let @/=substitute(escape(@", '/'), '\n', '\\n', 'g')&lt;CR&gt;gvqi</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>r</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;SearchBoxReplace  visual_mode=true&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;'&lt;lt&gt;,'&gt;SearchBoxIncSearch visual_mode=true&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>x</code> |
| **Right hand side** | <code>"_x</code> |

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

| **Description** | Toggle terminal |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-i&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Term&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;'&lt;lt&gt;,'&gt;move '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;'&lt;lt&gt;,'&gt;move '&gt;+1&lt;CR&gt;gv=gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> l</code> |
| **Right hand side** | <code>g_</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | Jump to line below cursor |
| :---- | :---- |
| **Left hand side** | <code>B</code> |
| **Right hand side** | |

| **Description** | Jump to word (ignore _) |
| :---- | :---- |
| **Left hand side** | <code>E</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>b</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>e</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
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
| **Left hand side** | <code>a</code> |
| **Right hand side** | |

| **Description** | Jump to line above cursor |
| :---- | :---- |
| **Left hand side** | <code>b</code> |
| **Right hand side** | |

| **Description** | Jump to word |
| :---- | :---- |
| **Left hand side** | <code>e</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gL</code> |
| **Right hand side** | <code>E</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gH</code> |
| **Right hand side** | <code>B</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gB</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | <code>"+p</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gy</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;</code> |

