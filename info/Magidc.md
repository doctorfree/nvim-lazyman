# Magidc Neovim Configuration Information

Java, Python, Lua, and Rust IDE

- Install and initialize: **`lazyman -L Magidc`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Magidc`**

## Git repository

[https://github.com/magidc/nvim-config](https://github.com/magidc/nvim-config)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [stevearc/aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [famiu/bufdelete.nvim](https://github.com/famiu/bufdelete.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [ms-jpq/coq.artifacts](https://github.com/ms-jpq/coq.artifacts.git)
- [ms-jpq/coq.thirdparty](https://github.com/ms-jpq/coq.thirdparty.git)
- [ms-jpq/coq_nvim](https://github.com/ms-jpq/coq_nvim.git)
- [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim.git)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [folke/flash.nvim](https://github.com/folke/flash.nvim.git)
- [mhartington/formatter.nvim](https://github.com/mhartington/formatter.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [anuvyklack/hydra.nvim](https://github.com/anuvyklack/hydra.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [VidocqH/lsp-lens.nvim](https://github.com/VidocqH/lsp-lens.nvim.git)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [arkav/lualine-lsp-progress](https://github.com/arkav/lualine-lsp-progress)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [aktersnurra/no-clown-fiesta.nvim](https://github.com/aktersnurra/no-clown-fiesta.nvim.git)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python.git)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [mfussenegger/nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [AckslD/nvim-neoclip.lua](https://github.com/AckslD/nvim-neoclip.lua.git)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [sitiom/nvim-numbertoggle](https://github.com/sitiom/nvim-numbertoggle.git)
- [petertriho/nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar.git)
- [chrisgrieser/nvim-spider](https://github.com/chrisgrieser/nvim-spider.git)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [mrjones2014/nvim-ts-rainbow](https://github.com/mrjones2014/nvim-ts-rainbow)
- [kevinhwang91/nvim-ufo](https://github.com/kevinhwang91/nvim-ufo)
- [chrisgrieser/nvim-various-textobjs](https://github.com/chrisgrieser/nvim-various-textobjs.git)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [kevinhwang91/promise-async](https://github.com/kevinhwang91/promise-async)
- [simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
- [nvim-telescope/telescope-dap.nvim](https://github.com/nvim-telescope/telescope-dap.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [aserowy/tmux.nvim](https://github.com/aserowy/tmux.nvim.git)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [terryma/vim-expand-region](https://github.com/terryma/vim-expand-region.git)
- [mhinz/vim-startify](https://github.com/mhinz/vim-startify.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [folke/zen-mode.nvim](https://github.com/folke/zen-mode.nvim)

## Magidc Keymaps

### Normal mode keymaps

| **Description** | [Hydra] DAP |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> zc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ze</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> zj</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> zC</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> z </code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> zk</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> zE</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w&lt;Left&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w=</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> wk</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> wj</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> wh</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w&lt;Down&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> wl</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w&lt;Up&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w&lt;Right&gt;</code> |
| **Right hand side** | |

| **Description** | Toggle Terminal |
| :---- | :---- |
| **Left hand side** | <code> vt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |

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
| **Left hand side** | <code>+</code> |
| **Right hand side** | <code>&lt;Plug&gt;(expand_region_expand)</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>_</code> |
| **Right hand side** | <code>&lt;Plug&gt;(expand_region_shrink)</code> |

| **Description** | Change a surrounding pair, putting replacements on new lines |
| :---- | :---- |
| **Left hand side** | <code>cS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |

| **Description** | Change a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-change)</code> |

| **Description** | Delete a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |

| **Description** | Add a surrounding pair around the current line (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |

| **Description** | Add a surrounding pair around a motion (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zb(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zt(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zz(250)&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)c</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)e</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)j</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)C</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait) </code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)k</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)E</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)&lt;Esc&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra2_wait)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)&lt;Left&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)=</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)&lt;Esc&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)k</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)j</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)h</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)&lt;Down&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)l</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)&lt;Up&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)&lt;Right&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Hydra1_wait)</code> |
| **Right hand side** | |

| **Description** | Change a surrounding pair, putting replacements on new lines |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |
| **Right hand side** | |

| **Description** | Change a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-change)</code> |
| **Right hand side** | |

| **Description** | Delete a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-E&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(startify-open-buffers)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call startify#open_buffers()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_top()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_left()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_bottom()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(expand_region_expand)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call expand_region#next('n', '+')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'tmux'.move_right()&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | [Hydra] DAP |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | |

| **Description** | diagnostic textobj |
| :---- | :---- |
| **Left hand side** | <code>!</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').diagnostic()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>+</code> |
| **Right hand side** | <code>&lt;Plug&gt;(expand_region_expand)</code> |

| **Description** | toNextClosingBracket textobj |
| :---- | :---- |
| **Left hand side** | <code>C</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').toNextClosingBracket()&lt;CR&gt;</code> |

| **Description** | url textobj |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').url()&lt;CR&gt;</code> |

| **Description** | toNextQuotationMark textobj |
| :---- | :---- |
| **Left hand side** | <code>Q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').toNextQuotationMark()&lt;CR&gt;</code> |

| **Description** | restOfIndentation textobj |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').restOfIndentation()&lt;CR&gt;</code> |

| **Description** | Add a surrounding pair around a visual selection |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |

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
| **Left hand side** | <code>_</code> |
| **Right hand side** | <code>&lt;Plug&gt;(expand_region_shrink)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |

| **Description** | outer-outer indentation textobj |
| :---- | :---- |
| **Left hand side** | <code>aI</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').indentation('outer', 'outer')&lt;CR&gt;</code> |

| **Description** | outer-inner indentation textobj |
| :---- | :---- |
| **Left hand side** | <code>ai</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').indentation('outer', 'inner')&lt;CR&gt;</code> |

| **Description** | outer lineCharacterwise textobj |
| :---- | :---- |
| **Left hand side** | <code>a_</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').lineCharacterwise('outer')&lt;CR&gt;</code> |

| **Description** | outer value textobj |
| :---- | :---- |
| **Left hand side** | <code>av</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').value('outer')&lt;CR&gt;</code> |

| **Description** | outer greedyOuterIndentation textobj |
| :---- | :---- |
| **Left hand side** | <code>ag</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').greedyOuterIndentation('outer')&lt;CR&gt;</code> |

| **Description** | outer number textobj |
| :---- | :---- |
| **Left hand side** | <code>an</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').number('outer')&lt;CR&gt;</code> |

| **Description** | outer subword textobj |
| :---- | :---- |
| **Left hand side** | <code>aS</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').subword('outer')&lt;CR&gt;</code> |

| **Description** | outer chainMember textobj |
| :---- | :---- |
| **Left hand side** | <code>am</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').chainMember('outer')&lt;CR&gt;</code> |

| **Description** | outer key textobj |
| :---- | :---- |
| **Left hand side** | <code>ak</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').key('outer')&lt;CR&gt;</code> |

| **Description** | outer closedFold textobj |
| :---- | :---- |
| **Left hand side** | <code>az</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').closedFold('outer')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | entireBuffer textobj |
| :---- | :---- |
| **Left hand side** | <code>gG</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').entireBuffer()&lt;CR&gt;</code> |

| **Description** | restOfWindow textobj |
| :---- | :---- |
| **Left hand side** | <code>gW</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').restOfWindow()&lt;CR&gt;</code> |

| **Description** | visibleInWindow textobj |
| :---- | :---- |
| **Left hand side** | <code>gw</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').visibleInWindow()&lt;CR&gt;</code> |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | inner-inner indentation textobj |
| :---- | :---- |
| **Left hand side** | <code>iI</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').indentation('inner', 'inner')&lt;CR&gt;</code> |

| **Description** | inner-inner indentation textobj |
| :---- | :---- |
| **Left hand side** | <code>ii</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').indentation('inner', 'inner')&lt;CR&gt;</code> |

| **Description** | inner lineCharacterwise textobj |
| :---- | :---- |
| **Left hand side** | <code>i_</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').lineCharacterwise('inner')&lt;CR&gt;</code> |

| **Description** | inner value textobj |
| :---- | :---- |
| **Left hand side** | <code>iv</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').value('inner')&lt;CR&gt;</code> |

| **Description** | inner greedyOuterIndentation textobj |
| :---- | :---- |
| **Left hand side** | <code>ig</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').greedyOuterIndentation('inner')&lt;CR&gt;</code> |

| **Description** | inner number textobj |
| :---- | :---- |
| **Left hand side** | <code>in</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').number('inner')&lt;CR&gt;</code> |

| **Description** | inner subword textobj |
| :---- | :---- |
| **Left hand side** | <code>iS</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').subword('inner')&lt;CR&gt;</code> |

| **Description** | inner chainMember textobj |
| :---- | :---- |
| **Left hand side** | <code>im</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').chainMember('inner')&lt;CR&gt;</code> |

| **Description** | inner key textobj |
| :---- | :---- |
| **Left hand side** | <code>ik</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').key('inner')&lt;CR&gt;</code> |

| **Description** | inner closedFold textobj |
| :---- | :---- |
| **Left hand side** | <code>iz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').closedFold('inner')&lt;CR&gt;</code> |

| **Description** | nearEoL textobj |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').nearEoL()&lt;CR&gt;</code> |

| **Description** | restOfParagraph textobj |
| :---- | :---- |
| **Left hand side** | <code>r</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').restOfParagraph()&lt;CR&gt;</code> |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zt(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zz(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zb(250)&lt;CR&gt;</code> |

| **Description** | column textobj |
| :---- | :---- |
| **Left hand side** | <code>&#124;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').column()&lt;CR&gt;</code> |

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

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = true })&lt;CR&gt;</code> |

| **Description** | Add a surrounding pair around a visual selection |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = false })&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(expand_region_shrink)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call expand_region#next('v', '-')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(expand_region_expand)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call expand_region#next('v', '+')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-E&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_visual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_visual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_visual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_visual"&lt;CR&gt;g@gv</code> |


### Operator mode keymaps

| **Description** | diagnostic textobj |
| :---- | :---- |
| **Left hand side** | <code>!</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').diagnostic()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | toNextClosingBracket textobj |
| :---- | :---- |
| **Left hand side** | <code>C</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').toNextClosingBracket()&lt;CR&gt;</code> |

| **Description** | url textobj |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').url()&lt;CR&gt;</code> |

| **Description** | toNextQuotationMark textobj |
| :---- | :---- |
| **Left hand side** | <code>Q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').toNextQuotationMark()&lt;CR&gt;</code> |

| **Description** | restOfIndentation textobj |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').restOfIndentation()&lt;CR&gt;</code> |

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

| **Description** | outer-outer indentation textobj |
| :---- | :---- |
| **Left hand side** | <code>aI</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').indentation('outer', 'outer')&lt;CR&gt;</code> |

| **Description** | outer-inner indentation textobj |
| :---- | :---- |
| **Left hand side** | <code>ai</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').indentation('outer', 'inner')&lt;CR&gt;</code> |

| **Description** | outer value textobj |
| :---- | :---- |
| **Left hand side** | <code>av</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').value('outer')&lt;CR&gt;</code> |

| **Description** | outer chainMember textobj |
| :---- | :---- |
| **Left hand side** | <code>am</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').chainMember('outer')&lt;CR&gt;</code> |

| **Description** | outer key textobj |
| :---- | :---- |
| **Left hand side** | <code>ak</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').key('outer')&lt;CR&gt;</code> |

| **Description** | outer lineCharacterwise textobj |
| :---- | :---- |
| **Left hand side** | <code>a_</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').lineCharacterwise('outer')&lt;CR&gt;</code> |

| **Description** | outer closedFold textobj |
| :---- | :---- |
| **Left hand side** | <code>az</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').closedFold('outer')&lt;CR&gt;</code> |

| **Description** | outer number textobj |
| :---- | :---- |
| **Left hand side** | <code>an</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').number('outer')&lt;CR&gt;</code> |

| **Description** | outer greedyOuterIndentation textobj |
| :---- | :---- |
| **Left hand side** | <code>ag</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').greedyOuterIndentation('outer')&lt;CR&gt;</code> |

| **Description** | outer subword textobj |
| :---- | :---- |
| **Left hand side** | <code>aS</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').subword('outer')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| **Description** | entireBuffer textobj |
| :---- | :---- |
| **Left hand side** | <code>gG</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').entireBuffer()&lt;CR&gt;</code> |

| **Description** | restOfWindow textobj |
| :---- | :---- |
| **Left hand side** | <code>gW</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').restOfWindow()&lt;CR&gt;</code> |

| **Description** | visibleInWindow textobj |
| :---- | :---- |
| **Left hand side** | <code>gw</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').visibleInWindow()&lt;CR&gt;</code> |

| **Description** | inner-inner indentation textobj |
| :---- | :---- |
| **Left hand side** | <code>iI</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').indentation('inner', 'inner')&lt;CR&gt;</code> |

| **Description** | inner-inner indentation textobj |
| :---- | :---- |
| **Left hand side** | <code>ii</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').indentation('inner', 'inner')&lt;CR&gt;</code> |

| **Description** | inner value textobj |
| :---- | :---- |
| **Left hand side** | <code>iv</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').value('inner')&lt;CR&gt;</code> |

| **Description** | inner chainMember textobj |
| :---- | :---- |
| **Left hand side** | <code>im</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').chainMember('inner')&lt;CR&gt;</code> |

| **Description** | inner key textobj |
| :---- | :---- |
| **Left hand side** | <code>ik</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').key('inner')&lt;CR&gt;</code> |

| **Description** | inner lineCharacterwise textobj |
| :---- | :---- |
| **Left hand side** | <code>i_</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').lineCharacterwise('inner')&lt;CR&gt;</code> |

| **Description** | inner closedFold textobj |
| :---- | :---- |
| **Left hand side** | <code>iz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').closedFold('inner')&lt;CR&gt;</code> |

| **Description** | inner number textobj |
| :---- | :---- |
| **Left hand side** | <code>in</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').number('inner')&lt;CR&gt;</code> |

| **Description** | inner greedyOuterIndentation textobj |
| :---- | :---- |
| **Left hand side** | <code>ig</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').greedyOuterIndentation('inner')&lt;CR&gt;</code> |

| **Description** | inner subword textobj |
| :---- | :---- |
| **Left hand side** | <code>iS</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').subword('inner')&lt;CR&gt;</code> |

| **Description** | nearEoL textobj |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').nearEoL()&lt;CR&gt;</code> |

| **Description** | restOfParagraph textobj |
| :---- | :---- |
| **Left hand side** | <code>r</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').restOfParagraph()&lt;CR&gt;</code> |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | column textobj |
| :---- | :---- |
| **Left hand side** | <code>&#124;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('various-textobjs').column()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

