# xero Neovim Configuration Information

Personal neovim configuration of [xero harrison](https://x-e.ro/). Xero is a fine example, as are many here, of the Unix Greybeard

- Install and initialize: **`lazyman -w xero`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-xero`**

## Git repository

[https://github.com/xero/dotfiles](https://github.com/xero/dotfiles)

## Neovimcraft entry

[http://neovimcraft.com/plugin/xero/dotfiles](http://neovimcraft.com/plugin/xero/dotfiles)

## Dotfyle entry

[https://dotfyle.com/xero/dotfiles-neovim-config-nvim](https://dotfyle.com/xero/dotfiles-neovim-config-nvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer.git)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip.git)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp.git)
- [hrsh7th/cmp-nvim-lsp-signature-help](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help.git)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua.git)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path.git)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets.git)
- [ibhagwan/fzf-lua](https://github.com/ibhagwan/fzf-lua.git)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim.git)
- [nmac427/guess-indent.nvim](https://github.com/nmac427/guess-indent.nvim.git)
- [smjonas/inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim.git)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim.git)
- [~whynothugo/lsp_lines.nvim](https://git.sr.ht/~whynothugo/lsp_lines.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim.git)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip.git)
- [rktjmp/lush.nvim](https://github.com/rktjmp/lush.nvim.git)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim.git)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim.git)
- [monkoose/matchparen.nvim](https://github.com/monkoose/matchparen.nvim.git)
- [xero/miasma.nvim](https://github.com/xero/miasma.nvim.git)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim.git)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp.git)
- [terrortylor/nvim-comment](https://github.com/terrortylor/nvim-comment.git)
- [brenoprata10/nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors.git)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig.git)
- [ojroques/nvim-osc52](https://github.com/ojroques/nvim-osc52.git)
- [petertriho/nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar.git)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround.git)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter.git)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects.git)
- [RRethy/nvim-treesitter-textsubjects](https://github.com/RRethy/nvim-treesitter-textsubjects.git)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim.git)
- [b0o/schemastore.nvim](https://github.com/b0o/schemastore.nvim.git)
- [rktjmp/shipwright.nvim](https://github.com/rktjmp/shipwright.nvim.git)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim.git)
- [nvim-telescope/telescope-live-grep-args.nvim](https://github.com/nvim-telescope/telescope-live-grep-args.nvim.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim.git)
- [debugloop/telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim.git)
- [levouh/tint.nvim](https://github.com/levouh/tint.nvim.git)
- [aserowy/tmux.nvim](https://github.com/aserowy/tmux.nvim.git)
- [xero/trouble.nvim](https://github.com/xero/trouble.nvim.git)
- [rbong/vim-flog](https://github.com/rbong/vim-flog.git)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive.git)
- [ojroques/vim-oscyank](https://github.com/ojroques/vim-oscyank.git)
- [powerman/vim-plugin-AnsiEsc](https://github.com/powerman/vim-plugin-AnsiEsc.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim.git)

## xero Keymaps

### Normal mode keymaps

| **Description** | remove highlighting |
| :---- | :---- |
| **Left hand side** | <code>&lt;Esc&gt;&lt;Esc&gt;</code> |
| **Right hand side** | <code>:nohlsearch&lt;CR&gt;</code> |

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
| **Left hand side** | <code>,</code> |
| **Right hand side** | |

| **Description** | Resume FZF |
| :---- | :---- |
| **Left hand side** | <code>,//</code> |
| **Right hand side** | |

| **Description** | Search git buffer commits |
| :---- | :---- |
| **Left hand side** | <code>,bc</code> |
| **Right hand side** | |

| **Description** | Search git buffer commits |
| :---- | :---- |
| **Left hand side** | <code>,/gC</code> |
| **Right hand side** | |

| **Description** | Search git commits |
| :---- | :---- |
| **Left hand side** | <code>,/gc</code> |
| **Right hand side** | |

| **Description** | Search git branches |
| :---- | :---- |
| **Left hand side** | <code>,/gb</code> |
| **Right hand side** | |

| **Description** | Find git files |
| :---- | :---- |
| **Left hand side** | <code>,/gf</code> |
| **Right hand side** | |

| **Description** | Search treesitter |
| :---- | :---- |
| **Left hand side** | <code>,/t</code> |
| **Right hand side** | |

| **Description** | Search keymaps |
| :---- | :---- |
| **Left hand side** | <code>,/k</code> |
| **Right hand side** | |

| **Description** | Search marks |
| :---- | :---- |
| **Left hand side** | <code>,/M</code> |
| **Right hand side** | |

| **Description** | Search highlights |
| :---- | :---- |
| **Left hand side** | <code>,/h</code> |
| **Right hand side** | |

| **Description** | Find files |
| :---- | :---- |
| **Left hand side** | <code>,/o</code> |
| **Right hand side** | |

| **Description** | Find files |
| :---- | :---- |
| **Left hand side** | <code>,/f</code> |
| **Right hand side** | |

| **Description** | Search command history |
| :---- | :---- |
| **Left hand side** | <code>,/C</code> |
| **Right hand side** | |

| **Description** | Search commands |
| :---- | :---- |
| **Left hand side** | <code>,/c</code> |
| **Right hand side** | |

| **Description** | chmod +x buffer |
| :---- | :---- |
| **Left hand side** | <code>,x</code> |
| **Right hand side** | <code>:Chmodx&lt;CR&gt;</code> |

| **Description** | toggle spell check |
| :---- | :---- |
| **Left hand side** | <code>,s</code> |
| **Right hand side** | <code>:Sp&lt;CR&gt;</code> |

| **Description** | jq format |
| :---- | :---- |
| **Left hand side** | <code>,j</code> |
| **Right hand side** | <code>:%!jq .&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,&lt;Tab&gt;[</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,&lt;Tab&gt;d</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabclose&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,&lt;Tab&gt;]</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,&lt;Tab&gt;&lt;Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnew&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,&lt;Tab&gt;f</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabfirst&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,&lt;Tab&gt;l</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tablast&lt;CR&gt;</code> |

| **Description** | prev match |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>Nzzzv</code> |

| **Description** |  |
| :---- | :---- |
| **Left hand side** | <code>Q</code> |
| **Right hand side** | <code></code> |

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
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | next match |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>nzzzv</code> |

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

| **Description** | scroll up |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;C-U&gt;zz</code> |

| **Description** | scroll down |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;C-D&gt;zz</code> |

| **Description** | ios home key |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-Left&gt;</code> |
| **Right hand side** | <code>0</code> |

| **Description** | exit buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>:bd&lt;CR&gt;</code> |

| **Description** | prev buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-P&gt;</code> |
| **Right hand side** | <code>:bp&lt;CR&gt;</code> |

| **Description** | next buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>:bn&lt;CR&gt;</code> |

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
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | move block up |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |

| **Description** | move block down |
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
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

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

