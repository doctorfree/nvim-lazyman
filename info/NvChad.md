## NvChad Neovim Configuration Information

Advanced [customization of NvChad](https://github.com/doctorfree/NvChad-custom). Good [introductory video](https://youtu.be/Mtgo-nP_r8Y) to NvChad

- Install and initialize: `lazyman -c`
- Configuration category: [Base](https://github.com/doctorfree/nvim-lazyman#base-configurations)
- Base configuration:     [NvChad](https://nvchad.com)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  `~/.config/nvim-NvChad`

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Website

[https://nvchad.com](https://nvchad.com)

### Git repository

[https://github.com/doctorfree/NvChad-custom](https://github.com/doctorfree/NvChad-custom)

### Lazy managed plugins

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
- [NvChad/extensions](https://github.com/NvChad/extensions.git)
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

### NvChad Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | " |  |
| Nvim builtin | & | :&&<CR> |
|  | ' |  |
| Open new line above HopLineStart target | ,vO |  |
| Open new line below HopLineStart target | ,vo |  |
| Paste above target using HopLineStart | ,vP |  |
| Paste below target using HopLineStart | ,vp |  |
| Jump to definition | ,hd |  |
|  | ,hq] | <Cmd>lua require'hop'.hint_patterns({}, [[}]])<CR> |
|  | ,hq[ | <Cmd>lua require'hop'.hint_patterns({}, [[{]])<CR> |
|  | ,hqk | <Cmd>lua require'hop'.hint_patterns({}, [[)]])<CR> |
|  | ,hqj | <Cmd>lua require'hop'.hint_patterns({}, [[(]])<CR> |
|  | ,hf/ | <Cmd>lua require'hop'.hint_patterns({}, [[/\|?]])<CR> |
|  | ,hf; | <Cmd>lua require'hop'.hint_patterns({}, [[;\|:]])<CR> |
|  | ,hf- | <Cmd>lua require'hop'.hint_patterns({}, [[-\|+]])<CR> |
|  | ,hf' | <Cmd>lua require'hop'.hint_patterns({}, [["\|']])<CR> |
|  | ,hH | <Cmd>lua require'hop'.hint_patterns({}, [[\d\+]])<CR> |
|  | ,hW | <Cmd>HopWordMW<CR> |
|  | ,hl | <Cmd>HopLineStart<CR> |
|  | ,hw | <Cmd>HopWord<CR> |
| Move to end of Treehopper node | ,h] |  |
| Move to start of Treehopper node | ,h[ |  |
| Treehopper nodes | ,hm |  |
|  | , |  |
|  | ? | / |
|  | F |  |
| Trigger LuaSnip snippet | Ls |  |
|  | T |  |
| Nvim builtin | Y | y$ |
|  | ` |  |
|  | c |  |
|  | f |  |
|  | g |  |
| Comment toggle linewise | gc |  |
| Comment toggle current block | gbc |  |
| Comment toggle blockwise | gb |  |
| Comment toggle current line | gcc |  |
|  | t |  |
| Treehopper node target insert | vy |  |
| HopLineStart target in normal mode | vY |  |
| Open new line above HopLineStart target | vO |  |
| Open new line below HopLineStart target | vo |  |
| Paste above target using HopLineStart | vP |  |
| Paste below target using HopLineStart | vp |  |
|  | v |  |
| Yank using Treehopper | ym |  |
| Yank a Treesitter code block | yc |  |
| Yank a line with HopLineStart | yl |  |
| Yank user syntax-tree-surfer | yx |  |
|  | <M-q> | q |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | ,hl | <Cmd>HopLineStart<CR> |
|  | ,hw | <Cmd>HopWord<CR> |
|  | F |  |
|  | T |  |
|  | f |  |
| Comment toggle linewise (visual) | gc |  |
| Comment toggle blockwise (visual) | gb |  |
|  | t |  |
|  | <M-q> | q |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | F |  |
|  | T |  |
|  | f |  |
| Comment toggle blockwise | gb |  |
| Comment toggle linewise | gc |  |
|  | t |  |
