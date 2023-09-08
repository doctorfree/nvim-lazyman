# NvChad Neovim Configuration Information

Advanced [customization of NvChad](https://github.com/doctorfree/NvChad-custom). Good [introductory video](https://youtu.be/Mtgo-nP_r8Y) to NvChad

- Install and initialize: **`lazyman -c`**
- Configuration category: [Base](https://lazyman.dev/configurations/#base-configurations)
- Base configuration:     [NvChad](https://nvchad.com)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-NvChad`**

## Git repository

[https://github.com/doctorfree/NvChad-custom](https://github.com/doctorfree/NvChad-custom)

## Website

[https://nvchad.lazyman.dev](https://nvchad.lazyman.dev)

## YouTube channel

[https://www.youtube.com/@siduck_og](https://www.youtube.com/@siduck_og)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [NvChad/base46](https://github.com/NvChad/base46.git)
- [max397574/better-escape.nvim](https://github.com/max397574/better-escape.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [olexsmir/gopher.nvim](https://github.com/olexsmir/gopher.nvim.git)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go)
- [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python.git)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [jose-elias-alvarez/nvim-lsp-ts-utils](https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [mfussenegger/nvim-treehopper](https://github.com/mfussenegger/nvim-treehopper.git)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [b0o/schemastore.nvim](https://github.com/b0o/schemastore.nvim)
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [ziontee113/syntax-tree-surfer](https://github.com/ziontee113/syntax-tree-surfer.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [rebelot/terminal.nvim](https://github.com/rebelot/terminal.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [bluz71/vim-nightfly-guicolors](https://github.com/bluz71/vim-nightfly-guicolors)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## NvChad Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>"</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'</code> |
| **Right hand side** | |

| **Description** | Open new line above HopLineStart target |
| :---- | :---- |
| **Left hand side** | <code>,vO</code> |
| **Right hand side** | |

| **Description** | Open new line below HopLineStart target |
| :---- | :---- |
| **Left hand side** | <code>,vo</code> |
| **Right hand side** | |

| **Description** | Paste above target using HopLineStart |
| :---- | :---- |
| **Left hand side** | <code>,vP</code> |
| **Right hand side** | |

| **Description** | Paste below target using HopLineStart |
| :---- | :---- |
| **Left hand side** | <code>,vp</code> |
| **Right hand side** | |

| **Description** | Jump to definition |
| :---- | :---- |
| **Left hand side** | <code>,hd</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hq]</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_patterns({}, [[}]])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hq[</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_patterns({}, [[{]])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hqk</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_patterns({}, [[)]])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hqj</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_patterns({}, [[(]])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hf/</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_patterns({}, [[/\&#124;?]])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hf;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_patterns({}, [[;\&#124;:]])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hf-</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_patterns({}, [[-\&#124;+]])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hf'</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_patterns({}, [["\&#124;']])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hH</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'hop'.hint_patterns({}, [[\d\+]])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hW</code> |
| **Right hand side** | <code>&lt;Cmd&gt;HopWordMW&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;HopLineStart&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hw</code> |
| **Right hand side** | <code>&lt;Cmd&gt;HopWord&lt;CR&gt;</code> |

| **Description** | Move to end of Treehopper node |
| :---- | :---- |
| **Left hand side** | <code>,h]</code> |
| **Right hand side** | |

| **Description** | Move to start of Treehopper node |
| :---- | :---- |
| **Left hand side** | <code>,h[</code> |
| **Right hand side** | |

| **Description** | Treehopper nodes |
| :---- | :---- |
| **Left hand side** | <code>,hm</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>?</code> |
| **Right hand side** | <code>/</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | Trigger LuaSnip snippet |
| :---- | :---- |
| **Left hand side** | <code>Ls</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>`</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | Treehopper node target insert |
| :---- | :---- |
| **Left hand side** | <code>vy</code> |
| **Right hand side** | |

| **Description** | HopLineStart target in normal mode |
| :---- | :---- |
| **Left hand side** | <code>vY</code> |
| **Right hand side** | |

| **Description** | Open new line above HopLineStart target |
| :---- | :---- |
| **Left hand side** | <code>vO</code> |
| **Right hand side** | |

| **Description** | Open new line below HopLineStart target |
| :---- | :---- |
| **Left hand side** | <code>vo</code> |
| **Right hand side** | |

| **Description** | Paste above target using HopLineStart |
| :---- | :---- |
| **Left hand side** | <code>vP</code> |
| **Right hand side** | |

| **Description** | Paste below target using HopLineStart |
| :---- | :---- |
| **Left hand side** | <code>vp</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>v</code> |
| **Right hand side** | |

| **Description** | Yank using Treehopper |
| :---- | :---- |
| **Left hand side** | <code>ym</code> |
| **Right hand side** | |

| **Description** | Yank a Treesitter code block |
| :---- | :---- |
| **Left hand side** | <code>yc</code> |
| **Right hand side** | |

| **Description** | Yank a line with HopLineStart |
| :---- | :---- |
| **Left hand side** | <code>yl</code> |
| **Right hand side** | |

| **Description** | Yank user syntax-tree-surfer |
| :---- | :---- |
| **Left hand side** | <code>yx</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-q&gt;</code> |
| **Right hand side** | <code>q</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-R&gt;</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

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
| **Left hand side** | <code>,hl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;HopLineStart&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,hw</code> |
| **Right hand side** | <code>&lt;Cmd&gt;HopWord&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-q&gt;</code> |
| **Right hand side** | <code>q</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

