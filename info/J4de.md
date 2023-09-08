# J4de Neovim Configuration Information

Personal Neovim configuration of Jade Fox

- Install and initialize: **`lazyman -w J4de`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-J4de`**

## Git repository

[https://codeberg.org/j4de/nvim](https://codeberg.org/j4de/nvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/BufOnly.nvim](https://github.com/numToStr/BufOnly.nvim.git)
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [aznhe21/actions-preview.nvim](https://github.com/aznhe21/actions-preview.nvim.git)
- [anuvyklack/animation.nvim](https://github.com/anuvyklack/animation.nvim.git)
- [max397574/better-escape.nvim](https://github.com/max397574/better-escape.nvim)
- [famiu/bufdelete.nvim](https://github.com/famiu/bufdelete.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [FelipeLema/cmp-async-path](https://github.com/FelipeLema/cmp-async-path.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-calc](https://github.com/hrsh7th/cmp-calc)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lsp-signature-help](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help.git)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [ggandor/flit.nvim](https://github.com/ggandor/flit.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [tzachar/highlight-undo.nvim](https://github.com/tzachar/highlight-undo.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [~whynothugo/lsp_lines.nvim](https://git.sr.ht/~whynothugo/lsp_lines.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [anuvyklack/middleclass](https://github.com/anuvyklack/middleclass.git)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [booperlv/nvim-gomove](https://github.com/booperlv/nvim-gomove.git)
- [kevinhwang91/nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens.git)
- [kosayoda/nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [chrisgrieser/nvim-origami](https://github.com/chrisgrieser/nvim-origami.git)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [folke/persistence.nvim](https://github.com/folke/persistence.nvim.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [kevinhwang91/promise-async](https://github.com/kevinhwang91/promise-async)
- [hiphish/rainbow-delimiters.nvim](https://github.com/hiphish/rainbow-delimiters.nvim.git)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [Wansmer/treesj](https://github.com/Wansmer/treesj)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [folke/twilight.nvim](https://github.com/folke/twilight.nvim)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [romainl/vim-cool](https://github.com/romainl/vim-cool.git)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [dmmulroy/vim-kitty-navigator](https://github.com/dmmulroy/vim-kitty-navigator)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [anuvyklack/windows.nvim](https://github.com/anuvyklack/windows.nvim.git)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

## J4de Keymaps

### Normal mode keymaps

| **Description** | Go to next buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | |

| **Description** | Delete the current buffer |
| :---- | :---- |
| **Left hand side** | <code> bk</code> |
| **Right hand side** | |

| **Description** | Delete the current buffer forcefully |
| :---- | :---- |
| **Left hand side** | <code> bK</code> |
| **Right hand side** | |

| **Description** | Open location list |
| :---- | :---- |
| **Left hand side** | <code> xl</code> |
| **Right hand side** | |

| **Description** | Open quickfix |
| :---- | :---- |
| **Left hand side** | <code> xq</code> |
| **Right hand side** | |

| **Description** | Open document diagnostics |
| :---- | :---- |
| **Left hand side** | <code> xd</code> |
| **Right hand side** | |

| **Description** | Open workspace diagnostics |
| :---- | :---- |
| **Left hand side** | <code> xw</code> |
| **Right hand side** | |

| **Description** | Toggle trouble.nvim |
| :---- | :---- |
| **Left hand side** | <code> xx</code> |
| **Right hand side** | |

| **Description** | Open lsp references |
| :---- | :---- |
| **Left hand side** | <code> xr</code> |
| **Right hand side** | |

| **Description** | Open neogit |
| :---- | :---- |
| **Left hand side** | <code> gg</code> |
| **Right hand side** | |

| **Description** | Reset the hunk |
| :---- | :---- |
| **Left hand side** | <code> gr</code> |
| **Right hand side** | |

| **Description** | Stage the buffer |
| :---- | :---- |
| **Left hand side** | <code> gS</code> |
| **Right hand side** | |

| **Description** | Reset the buffer |
| :---- | :---- |
| **Left hand side** | <code> gR</code> |
| **Right hand side** | |

| **Description** | Preview the hunk |
| :---- | :---- |
| **Left hand side** | <code> gp</code> |
| **Right hand side** | |

| **Description** | Open git blame |
| :---- | :---- |
| **Left hand side** | <code> gl</code> |
| **Right hand side** | |

| **Description** | Previous hunk |
| :---- | :---- |
| **Left hand side** | <code> gk</code> |
| **Right hand side** | |

| **Description** | Next hunk |
| :---- | :---- |
| **Left hand side** | <code> gj</code> |
| **Right hand side** | |

| **Description** | Stage the hunk |
| :---- | :---- |
| **Left hand side** | <code> gs</code> |
| **Right hand side** | |

| **Description** | Unstage the hunk |
| :---- | :---- |
| **Left hand side** | <code> gu</code> |
| **Right hand side** | |

| **Description** | Open a diff |
| :---- | :---- |
| **Left hand side** | <code> gd</code> |
| **Right hand side** | |

| **Description** | Open neo-tree.nvim |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | |

| **Description** | Split node under cursor |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | |

| **Description** | Join node under cursor |
| :---- | :---- |
| **Left hand side** | <code> j</code> |
| **Right hand side** | |

| **Description** | Toggle node under cursor |
| :---- | :---- |
| **Left hand side** | <code> m</code> |
| **Right hand side** | |

| **Description** | Jump to fourth buffer |
| :---- | :---- |
| **Left hand side** | <code> b4</code> |
| **Right hand side** | |

| **Description** | Jump to third buffer |
| :---- | :---- |
| **Left hand side** | <code> b3</code> |
| **Right hand side** | |

| **Description** | Jump to second buffer |
| :---- | :---- |
| **Left hand side** | <code> b2</code> |
| **Right hand side** | |

| **Description** | Jump to first buffer |
| :---- | :---- |
| **Left hand side** | <code> b1</code> |
| **Right hand side** | |

| **Description** | Jump to last buffer |
| :---- | :---- |
| **Left hand side** | <code> b$</code> |
| **Right hand side** | |

| **Description** | Jump to ninth buffer |
| :---- | :---- |
| **Left hand side** | <code> b9</code> |
| **Right hand side** | |

| **Description** | Jump to eighth buffer |
| :---- | :---- |
| **Left hand side** | <code> b8</code> |
| **Right hand side** | |

| **Description** | Jump to seventh buffer |
| :---- | :---- |
| **Left hand side** | <code> b7</code> |
| **Right hand side** | |

| **Description** | Jump to sixth buffer |
| :---- | :---- |
| **Left hand side** | <code> b6</code> |
| **Right hand side** | |

| **Description** | Jump to fifth buffer |
| :---- | :---- |
| **Left hand side** | <code> b5</code> |
| **Right hand side** | |

| **Description** | Stop persistence |
| :---- | :---- |
| **Left hand side** | <code> qd</code> |
| **Right hand side** | |

| **Description** | Restore the last session |
| :---- | :---- |
| **Left hand side** | <code> ql</code> |
| **Right hand side** | |

| **Description** | Restore the session for the current dir |
| :---- | :---- |
| **Left hand side** | <code> qs</code> |
| **Right hand side** | |

| **Description** | Dap UI |
| :---- | :---- |
| **Left hand side** | <code> du</code> |
| **Right hand side** | |

| **Description** | Eval |
| :---- | :---- |
| **Left hand side** | <code> de</code> |
| **Right hand side** | |

| **Description** | Open undo tree |
| :---- | :---- |
| **Left hand side** | <code> u</code> |
| **Right hand side** | |

| **Description** | Step Into |
| :---- | :---- |
| **Left hand side** | <code> di</code> |
| **Right hand side** | |

| **Description** | Go to line (no execute) |
| :---- | :---- |
| **Left hand side** | <code> dg</code> |
| **Right hand side** | |

| **Description** | Run to Cursor |
| :---- | :---- |
| **Left hand side** | <code> dC</code> |
| **Right hand side** | |

| **Description** | Continue |
| :---- | :---- |
| **Left hand side** | <code> dc</code> |
| **Right hand side** | |

| **Description** | Toggle Breakpoint |
| :---- | :---- |
| **Left hand side** | <code> db</code> |
| **Right hand side** | |

| **Description** | Breakpoint Condition |
| :---- | :---- |
| **Left hand side** | <code> dB</code> |
| **Right hand side** | |

| **Description** | Widgets |
| :---- | :---- |
| **Left hand side** | <code> dw</code> |
| **Right hand side** | |

| **Description** | Terminate |
| :---- | :---- |
| **Left hand side** | <code> dt</code> |
| **Right hand side** | |

| **Description** | Session |
| :---- | :---- |
| **Left hand side** | <code> ds</code> |
| **Right hand side** | |

| **Description** | Toggle REPL |
| :---- | :---- |
| **Left hand side** | <code> dr</code> |
| **Right hand side** | |

| **Description** | Pause |
| :---- | :---- |
| **Left hand side** | <code> dp</code> |
| **Right hand side** | |

| **Description** | Step Over |
| :---- | :---- |
| **Left hand side** | <code> dO</code> |
| **Right hand side** | |

| **Description** | Step Out |
| :---- | :---- |
| **Left hand side** | <code> do</code> |
| **Right hand side** | |

| **Description** | Run Last |
| :---- | :---- |
| **Left hand side** | <code> dl</code> |
| **Right hand side** | |

| **Description** | Up |
| :---- | :---- |
| **Left hand side** | <code> dk</code> |
| **Right hand side** | |

| **Description** | Down |
| :---- | :---- |
| **Left hand side** | <code> dj</code> |
| **Right hand side** | |

| **Description** | Delete all other buffers except current |
| :---- | :---- |
| **Left hand side** | <code> bo</code> |
| **Right hand side** | |

| **Description** | Commands |
| :---- | :---- |
| **Left hand side** | <code> fc</code> |
| **Right hand side** | |

| **Description** | Keymaps |
| :---- | :---- |
| **Left hand side** | <code> fk</code> |
| **Right hand side** | |

| **Description** | Registers |
| :---- | :---- |
| **Left hand side** | <code> fR</code> |
| **Right hand side** | |

| **Description** | Recently opened |
| :---- | :---- |
| **Left hand side** | <code> fr</code> |
| **Right hand side** | |

| **Description** | Man pages |
| :---- | :---- |
| **Left hand side** | <code> fm</code> |
| **Right hand side** | |

| **Description** | Help |
| :---- | :---- |
| **Left hand side** | <code> fh</code> |
| **Right hand side** | |

| **Description** | Buffers |
| :---- | :---- |
| **Left hand side** | <code> fb</code> |
| **Right hand side** | |

| **Description** | Words |
| :---- | :---- |
| **Left hand side** | <code> fw</code> |
| **Right hand side** | |

| **Description** | Files |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | |

| **Description** | Search and checkout git commits |
| :---- | :---- |
| **Left hand side** | <code> gc</code> |
| **Right hand side** | |

| **Description** | Search through git branches |
| :---- | :---- |
| **Left hand side** | <code> gb</code> |
| **Right hand side** | |

| **Description** | Seach through changed files |
| :---- | :---- |
| **Left hand side** | <code> go</code> |
| **Right hand side** | |

| **Description** | Workspace diagnostics |
| :---- | :---- |
| **Left hand side** | <code> fD</code> |
| **Right hand side** | |

| **Description** | Document diagnostics |
| :---- | :---- |
| **Left hand side** | <code> fd</code> |
| **Right hand side** | |

| **Description** | Resume |
| :---- | :---- |
| **Left hand side** | <code> fl</code> |
| **Right hand side** | |

| **Description** | Todo comments |
| :---- | :---- |
| **Left hand side** | <code> ft</code> |
| **Right hand side** | |

| **Description** | Toggle twilight.nvim |
| :---- | :---- |
| **Left hand side** | <code> t</code> |
| **Right hand side** | |

| **Description** | Toggle zen-mode.nvim |
| :---- | :---- |
| **Left hand side** | <code> z</code> |
| **Right hand side** | |

| **Description** | Open lazy.nvim |
| :---- | :---- |
| **Left hand side** | <code> l</code> |
| **Right hand side** | |

| **Description** | Save the current file |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>&lt;Cmd&gt;w&lt;CR&gt;</code> |

| **Description** | Quit the current file |
| :---- | :---- |
| **Left hand side** | <code> qq</code> |
| **Right hand side** | <code>&lt;Cmd&gt;q&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>"</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>'</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>.</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>/</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>?</code> |
| **Right hand side** | |

| **Description** | F |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | Go to next buffer |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | |

| **Description** | Hover |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | |

| **Description** | Go to previous buffer |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | |

| **Description** | Leap backward to |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | T |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | Previous hunk |
| :---- | :---- |
| **Left hand side** | <code>[g</code> |
| **Right hand side** | |

| **Description** | Prev Reference |
| :---- | :---- |
| **Left hand side** | <code>[[</code> |
| **Right hand side** | |

| **Description** | Jump to previous todo comment |
| :---- | :---- |
| **Left hand side** | <code>[t</code> |
| **Right hand side** | |

| **Description** | Go to next buffer |
| :---- | :---- |
| **Left hand side** | <code>[b</code> |
| **Right hand side** | |

| **Description** | Next hunk |
| :---- | :---- |
| **Left hand side** | <code>]g</code> |
| **Right hand side** | |

| **Description** | Next Reference |
| :---- | :---- |
| **Left hand side** | <code>]]</code> |
| **Right hand side** | |

| **Description** | Jump to next todo comment |
| :---- | :---- |
| **Left hand side** | <code>]t</code> |
| **Right hand side** | |

| **Description** | Go to previous buffer |
| :---- | :---- |
| **Left hand side** | <code>]b</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>`</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | |

| **Description** | Change surroundings |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>d</code> |
| **Right hand side** | |

| **Description** | Delete surroundings |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | |

| **Description** | f |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | Leap from windows |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | |

| **Description** | Toggle comments |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | Toggle block comments |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g*</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g#</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g</code> |
| **Right hand side** | |

| **Description** | Open actions-preview.nvim |
| :---- | :---- |
| **Left hand side** | <code>gf</code> |
| **Right hand side** | |

| **Description** | Multiline increment |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-A&gt;</code> |
| **Right hand side** | |

| **Description** | Multiline decrement |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-X&gt;</code> |
| **Right hand side** | |

| **Description** | Goto Implementation |
| :---- | :---- |
| **Left hand side** | <code>gI</code> |
| **Right hand side** | |

| **Description** | Goto Definition |
| :---- | :---- |
| **Left hand side** | <code>gd</code> |
| **Right hand side** | |

| **Description** | Goto T[y]pe Definition |
| :---- | :---- |
| **Left hand side** | <code>gy</code> |
| **Right hand side** | |

| **Description** | References |
| :---- | :---- |
| **Left hand side** | <code>gr</code> |
| **Right hand side** | |

| **Description** | Goto Declaration |
| :---- | :---- |
| **Left hand side** | <code>gD</code> |
| **Right hand side** | |

| **Description** | Signature Help |
| :---- | :---- |
| **Left hand side** | <code>gK</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | |

| **Description** | Leap forward to |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | t |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>u</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y</code> |
| **Right hand side** | |

| **Description** | Add surroundings |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | |

| **Description** | Close all folds |
| :---- | :---- |
| **Left hand side** | <code>zM</code> |
| **Right hand side** | |

| **Description** | Open all folds |
| :---- | :---- |
| **Left hand side** | <code>zR</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-R&gt;</code> |
| **Right hand side** | |

| **Description** | Max out window width |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;&#124;</code> |
| **Right hand side** | |

| **Description** | Max out window height |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;_</code> |
| **Right hand side** | |

| **Description** | Max out current window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;z</code> |
| **Right hand side** | |

| **Description** | Equalize windows |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;=</code> |
| **Right hand side** | |

| **Description** | Go to previous buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Tab&gt;</code> |
| **Right hand side** | |

| **Description** | Block up |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | |

| **Description** | Block left |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | |

| **Description** | Block right |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | |

| **Description** | Block down |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | |

| **Description** | Decrement |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | |

| **Description** | Increment |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | |

| **Description** | Increase window width |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Right&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vertical resize +2&lt;CR&gt;</code> |

| **Description** | Decrease window width |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Left&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vertical resize -2&lt;CR&gt;</code> |

| **Description** | Decrease window height |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Down&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;resize -2&lt;CR&gt;</code> |

| **Description** | Increase window height |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Up&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;resize +2&lt;CR&gt;</code> |

| **Description** | Go to upper window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | Go to lower window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | Go to left window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | Go to right window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |


### Visual mode keymaps

| **Description** | Eval |
| :---- | :---- |
| **Left hand side** | <code> de</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&gt;gv</code> |

| **Description** | F |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | Next search result |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>'nN'[v:searchforward]</code> |

| **Description** | Leap backward to |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | T |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | f |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | Multiline increment |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-A&gt;</code> |
| **Right hand side** | |

| **Description** | Multiline decrement |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-X&gt;</code> |
| **Right hand side** | |

| **Description** | Leap from windows |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | |

| **Description** | Toggle block comments |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | Toggle comments |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | Next search result |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>'Nn'[v:searchforward]</code> |

| **Description** | Leap forward to |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | t |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | Decrement |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | |

| **Description** | Increment |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | |

| **Description** | Block left |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | |

| **Description** | Block up |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | |

| **Description** | Block down |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | |

| **Description** | Block right |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | |


### Operator mode keymaps

| **Description** | F |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | Next search result |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>'nN'[v:searchforward]</code> |

| **Description** | Leap backward to |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | T |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | f |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | Leap from windows |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | |

| **Description** | Next search result |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>'Nn'[v:searchforward]</code> |

| **Description** | Leap forward to |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | t |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

