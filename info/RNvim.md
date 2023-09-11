# RNvim Neovim Configuration Information

Personal Neovim configuration of Rory Nesbitt, author of dotfyle-cli

- Install and initialize: **`lazyman -w RNvim`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-RNvim`**

## Git repository

[https://github.com/RoryNesbitt/RNvim](https://github.com/RoryNesbitt/RNvim)

## Dotfyle entry

[https://dotfyle.com/RoryNesbitt/rnvim](https://dotfyle.com/RoryNesbitt/rnvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [gaoDean/autolist.nvim](https://github.com/gaoDean/autolist.nvim)
- [chriskempson/base16-vim](https://github.com/chriskempson/base16-vim.git)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [max397574/colortils.nvim](https://github.com/max397574/colortils.nvim.git)
- [zbirenbaum/copilot-cmp](https://github.com/zbirenbaum/copilot-cmp.git)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua.git)
- [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [creativenull/dotfyle-metadata.nvim](https://github.com/creativenull/dotfyle-metadata.nvim.git)
- [glacambre/firenvim](https://github.com/glacambre/firenvim)
- [folke/flash.nvim](https://github.com/folke/flash.nvim.git)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [anuvyklack/hydra.nvim](https://github.com/anuvyklack/hydra.nvim.git)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [meatballs/magma-nvim](https://github.com/meatballs/magma-nvim.git)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [meatballs/notebook.nvim](https://github.com/meatballs/notebook.nvim.git)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [mrjones2014/nvim-ts-rainbow](https://github.com/mrjones2014/nvim-ts-rainbow)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [jbyuki/one-small-step-for-vimkind](https://github.com/jbyuki/one-small-step-for-vimkind.git)
- [aspeddro/pandoc.nvim](https://github.com/aspeddro/pandoc.nvim.git)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [nvim-telescope/telescope-dap.nvim](https://github.com/nvim-telescope/telescope-dap.nvim)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [nvim-telescope/telescope-fzy-native.nvim](https://github.com/nvim-telescope/telescope-fzy-native.nvim)
- [tsakirist/telescope-lazy.nvim](https://github.com/tsakirist/telescope-lazy.nvim.git)
- [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [aserowy/tmux.nvim](https://github.com/aserowy/tmux.nvim.git)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [Pocco81/true-zen.nvim](https://github.com/Pocco81/true-zen.nvim)
- [folke/twilight.nvim](https://github.com/folke/twilight.nvim)
- [KabbAmine/vCoolor.vim](https://github.com/KabbAmine/vCoolor.vim.git)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## RNvim Keymaps

### Normal mode keymaps

| **Description** | Remove trailing space |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>&lt;Cmd&gt;%s/\s\+$//&lt;CR&gt;</code> |

| **Description** | Fuzzy Search |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> /</code> |
| **Right hand side** | |

| **Description** | Jump to file |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> j</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |

| **Description** | Substitute File |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> S</code> |
| **Right hand side** | <code>:%s//gI&lt;Left&gt;&lt;Left&gt;&lt;Left&gt;</code> |

| **Description** | Substitute Line |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>:s/&lt;C-R&gt;&lt;C-W&gt;//gI&lt;Left&gt;&lt;Left&gt;&lt;Left&gt;</code> |

| **Description** | File Browser |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | <code>&lt;Cmd&gt;edit .&lt;CR&gt;</code> |

| **Description** | New tab |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> c</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabedit .&lt;CR&gt;</code> |

| **Description** | Neovim Terminal |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> &lt;CR&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vsp &#124; terminal&lt;CR&gt;</code> |

| **Description** | Horizontal Split |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>&lt;Cmd&gt;sp .&lt;CR&gt;</code> |

| **Description** | Vertical Split |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> v</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vsp .&lt;CR&gt;</code> |

| **Description** | Null-ls Info |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ni</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NullLsInfo&lt;CR&gt;</code> |

| **Description** | Format Buffer |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> nf</code> |
| **Right hand side** | |

| **Description** | Rename Object |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> r</code> |
| **Right hand side** | |

| **Description** | Show References |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> lr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope lsp_references&lt;CR&gt;</code> |

| **Description** | Show Diagnostics |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ll</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope diagnostics&lt;CR&gt;</code> |

| **Description** | Code Actions |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> la</code> |
| **Right hand side** | |

| **Description** | LSP Info |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> li</code> |
| **Right hand side** | <code>&lt;Cmd&gt;LspInfo&lt;CR&gt;</code> |

| **Description** | Open Mason |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> m</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Mason&lt;CR&gt;</code> |

| **Description** | Zen Mode |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> z</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TZAtaraxis&lt;CR&gt;</code> |

| **Description** | Focus buffer |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> f</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TZFocus&lt;CR&gt;</code> |

| **Description** | [Hydra] Git |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> g</code> |
| **Right hand side** | |

| **Description** | [Hydra] Telescope |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> t</code> |
| **Right hand side** | |

| **Description** | [Hydra] Debugging |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> d</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>""</code> |
| **Right hand side** | <code>zto""""""&lt;Esc&gt;&lt;Left&gt;&lt;Left&gt;i</code> |

| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | Change colourscheme |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cc</code> |
| **Right hand side** | |

| **Description** | Change wallpaper |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cw</code> |
| **Right hand side** | |

| **Description** | PASTE from Clipboard |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,P</code> |
| **Right hand side** | <code>"+P</code> |

| **Description** | DELETE to Clipboard |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,D</code> |
| **Right hand side** | <code>"+D</code> |

| **Description** | YANK to Clipboard |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,Y</code> |
| **Right hand side** | <code>"+y$</code> |

| **Description** | Paste from Clipboard |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,p</code> |
| **Right hand side** | <code>"+p</code> |

| **Description** | Delete to Clipboard |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,d</code> |
| **Right hand side** | <code>"+d</code> |

| **Description** | Yank to Clipboard |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,y</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | [Hydra] Spellcheck |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,s</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>A</code> |
| **Right hand side** | <code>zzA</code> |

| :---- | :---- |
| **Left hand side** | <code>C</code> |
| **Right hand side** | <code>zzC</code> |

| :---- | :---- |
| **Left hand side** | <code>G</code> |
| **Right hand side** | <code>Gzz</code> |

| :---- | :---- |
| **Left hand side** | <code>I</code> |
| **Right hand side** | <code>zzI</code> |

| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>Nzz</code> |

| :---- | :---- |
| **Left hand side** | <code>O</code> |
| **Right hand side** | <code>zzO</code> |

| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>zzS</code> |

| :---- | :---- |
| **Left hand side** | <code>U</code> |
| **Right hand side** | <code>&lt;C-R&gt;</code> |

| **Description** | Nvim builtin |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | Previous git hunk |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[g</code> |
| **Right hand side** | |

| **Description** | Previous |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[d</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | Next git hunk |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]g</code> |
| **Right hand side** | |

| **Description** | Next |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]d</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| :---- | :---- |
| **Left hand side** | <code>a</code> |
| **Right hand side** | <code>zza</code> |

| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>zzc</code> |

| **Description** | Change a surrounding pair, putting replacements on new lines |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |

| **Description** | Change a surrounding pair |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-change)</code> |

| **Description** | Delete a surrounding pair |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |

| **Description** | GAHH |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gh</code> |
| **Right hand side** | |

| **Description** | Go to Implementation |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gi</code> |
| **Right hand side** | |

| **Description** | Go to Declaration |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gD</code> |
| **Right hand side** | |

| **Description** | Go to Definition |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gd</code> |
| **Right hand side** | <code>gdzz</code> |

| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| :---- | :---- |
| **Left hand side** | <code>g&lt;M-n&gt;</code> |
| **Right hand side** | <code>:call multiple_cursors#select_all("n", 0)&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>g&lt;C-N&gt;</code> |
| **Right hand side** | <code>:call multiple_cursors#new("n", 0)&lt;CR&gt;</code> |

| **Description** | Comment insert end of line |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcA</code> |
| **Right hand side** | |

| **Description** | Comment insert above |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcO</code> |
| **Right hand side** | |

| **Description** | Comment insert below |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gco</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |

| **Description** | Comment toggle linewise |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |

| :---- | :---- |
| **Left hand side** | <code>i</code> |
| **Right hand side** | <code>zzi</code> |

| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>nzz</code> |

| :---- | :---- |
| **Left hand side** | <code>o</code> |
| **Right hand side** | <code>zzo</code> |

| :---- | :---- |
| **Left hand side** | <code>qZ</code> |
| **Right hand side** | <code>Z</code> |

| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>zzs</code> |

| **Description** | Transparent Background |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>tb</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |

| **Description** | Add a surrounding pair around the current line (normal mode) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |

| **Description** | Add a surrounding pair around a motion (normal mode) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |

| :---- | :---- |
| **Left hand side** | <code>{</code> |
| **Right hand side** | <code>{zz</code> |

| :---- | :---- |
| **Left hand side** | <code>}</code> |
| **Right hand side** | <code>}zz</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-S-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;L</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-S-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;K</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-S-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;J</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-S-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;H</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;C-U&gt;zz</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;C-D&gt;zz</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;S-ScrollWheelUp&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;keepj norm! {&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;S-ScrollWheelDown&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;keepj norm! }&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelRight&gt;</code> |
| **Right hand side** | <code>l</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelUp&gt;</code> |
| **Right hand side** | <code>k</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelDown&gt;</code> |
| **Right hand side** | <code>j</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelLeft&gt;</code> |
| **Right hand side** | <code>h</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;2-RightMouse&gt;</code> |
| **Right hand side** | <code></code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;RightMouse&gt;</code> |
| **Right hand side** | <code></code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code></code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code></code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code></code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code></code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |
| **Right hand side** | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |

| **Description** | Move to previous reference |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-p&gt;</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-w&gt;</code> |
| **Right hand side** | <code>:silent VCoolIns ra&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-v&gt;</code> |
| **Right hand side** | <code>:silent VCoolIns h&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-r&gt;</code> |
| **Right hand side** | <code>:VCoolIns r&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-c&gt;</code> |
| **Right hand side** | <code>:VCoolor&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.resize_left()&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.resize_top()&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.resize_right()&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.resize_bottom()&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_bottom()&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_left()&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_top()&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)r</code> |
| **Right hand side** | |

| **Description** | Repeat fix for all instances |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)ra</code> |
| **Right hand side** | |

| **Description** | Suggestions |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)s</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)u</code> |
| **Right hand side** | |

| **Description** | Add as good |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)ag</code> |
| **Right hand side** | |

| **Description** | Back |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)b</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)&lt;Esc&gt;</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)a</code> |
| **Right hand side** | |

| **Description** | Add as bad |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)ab</code> |
| **Right hand side** | |

| **Description** | Navigate |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)[</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)]</code> |
| **Right hand side** | |

| **Description** | Fix word Automatically |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)f</code> |
| **Right hand side** | |

| **Description** | exit |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)q</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra5_wait)</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)k</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)p</code> |
| **Right hand side** | |

| **Description** | list all pickers |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)&lt;CR&gt;</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)t</code> |
| **Right hand side** | |

| **Description** | search in file |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)/</code> |
| **Right hand side** | |

| **Description** | recently opened files |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)o</code> |
| **Right hand side** | |

| **Description** | command-line history |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait);</code> |
| **Right hand side** | |

| **Description** | execute command |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)c</code> |
| **Right hand side** | |

| **Description** | search history |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)?</code> |
| **Right hand side** | |

| **Description** | exit |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)q</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)g</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)b</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)f</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)&lt;Esc&gt;</code> |
| **Right hand side** | |

| **Description** | vim help |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)h</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)</code> |
| **Right hand side** | |

| **Description** | Repl |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)r</code> |
| **Right hand side** | |

| **Description** | Continue |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)d</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)&lt;Esc&gt;</code> |
| **Right hand side** | |

| **Description** | Conditional breakpoint |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)B</code> |
| **Right hand side** | |

| **Description** | Step out |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)O</code> |
| **Right hand side** | |

| **Description** | Log point |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)L</code> |
| **Right hand side** | |

| **Description** | Breakpoint |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)b</code> |
| **Right hand side** | |

| **Description** | Step into |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)n</code> |
| **Right hand side** | |

| **Description** | exit |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)q</code> |
| **Right hand side** | |

| **Description** | Step over |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)N</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-n&gt;</code> |
| **Right hand side** | <code>:call multiple_cursors#select_all("n", 1)&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>:call multiple_cursors#new("n", 1)&lt;CR&gt;</code> |

| **Description** | Comment toggle blockwise with count |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise with count |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
| **Right hand side** | |

| **Description** | Change a surrounding pair, putting replacements on new lines |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |
| **Right hand side** | |

| **Description** | Change a surrounding pair |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-change)</code> |
| **Right hand side** | |

| **Description** | Delete a surrounding pair |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line (normal mode) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion (normal mode) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |
| **Right hand side** | |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_right()&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Remove trailing space |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>&lt;Cmd&gt;s/\s\+$//&lt;CR&gt;</code> |

| **Description** | Substitute File |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> S</code> |
| **Right hand side** | <code>:%s//gI&lt;Left&gt;&lt;Left&gt;&lt;Left&gt;</code> |

| **Description** | Substitute Line |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>:s/&lt;C-R&gt;&lt;C-W&gt;//gI&lt;Left&gt;&lt;Left&gt;&lt;Left&gt;</code> |

| **Description** | Format Buffer |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> nf</code> |
| **Right hand side** | |

| **Description** | [Hydra] Git |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> g</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |

| **Description** | Nvim builtin |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | Paste from Clipboard |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,p</code> |
| **Right hand side** | <code>"+p</code> |

| **Description** | Delete to Clipboard |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,d</code> |
| **Right hand side** | <code>"+d</code> |

| **Description** | Yank to Clipboard |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,y</code> |
| **Right hand side** | <code>"+y</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;gv</code> |

| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&gt;gv</code> |

| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |

| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |

| **Description** | Add a surrounding pair around a visual selection |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |

| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |

| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |

| **Description** | Comment toggle blockwise (visual) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |

| **Description** | Comment toggle linewise (visual) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

| :---- | :---- |
| **Left hand side** | <code>g&lt;M-n&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call multiple_cursors#select_all("v", 0)&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>g&lt;C-N&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call multiple_cursors#new("v", 0)&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | <code>"_dP</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;S-ScrollWheelUp&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;keepj norm! {&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;S-ScrollWheelDown&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;keepj norm! }&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelRight&gt;</code> |
| **Right hand side** | <code>l</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelUp&gt;</code> |
| **Right hand side** | <code>k</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelDown&gt;</code> |
| **Right hand side** | <code>j</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;ScrollWheelLeft&gt;</code> |
| **Right hand side** | <code>h</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;2-RightMouse&gt;</code> |
| **Right hand side** | <code></code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;RightMouse&gt;</code> |
| **Right hand side** | <code></code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-i&gt;</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = true })&lt;CR&gt;</code> |

| **Description** | Add a surrounding pair around a visual selection |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = false })&lt;CR&gt;</code> |

| **Description** | Comment toggle blockwise (visual) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-n&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call multiple_cursors#select_all("v", 0)&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call multiple_cursors#new("v", 0)&lt;CR&gt;</code> |


### Operator mode keymaps

| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |

| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |

| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |

| :---- | :---- |
| **Left hand side** | <code>&lt;M-i&gt;</code> |
| **Right hand side** | |

