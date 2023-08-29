## Cosmic Neovim Configuration Information

Install 'Node.js', 'prettierd', and 'eslint_d'

- Install and initialize: **`lazyman -x Cosmic`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Cosmic`**

### Git repository

[https://github.com/CosmicNvim/CosmicNvim](https://github.com/CosmicNvim/CosmicNvim)

### Neovimcraft entry

[http://neovimcraft.com/plugin/CosmicNvim/CosmicNvim](http://neovimcraft.com/plugin/CosmicNvim/CosmicNvim)

### Dotfyle entry

[https://dotfyle.com/plugins/CosmicNvim/CosmicNvim](https://dotfyle.com/plugins/CosmicNvim/CosmicNvim)

### Website

[https://cosmicnvim.vercel.app](https://cosmicnvim.vercel.app)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [b0o/SchemaStore.nvim](https://github.com/b0o/SchemaStore.nvim)
- [rmagatti/auto-session](https://github.com/rmagatti/auto-session.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [CosmicNvim/cosmic-ui](https://github.com/CosmicNvim/cosmic-ui.git)
- [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [ggandor/lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim.git)
- [~whynothugo/lsp_lines.nvim](https://git.sr.ht/~whynothugo/lsp_lines.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jose-elias-alvarez/nvim-lsp-ts-utils](https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### Cosmic Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Find project file |  ff | <Cmd>lua require("cosmic.plugins.telescope.utils").project_files()<CR> |
| Git status |  vg | :Telescope git_status<CR> |
| Git commits |  vc | :Telescope git_commits<CR> |
| Grep current word |  fw | :Telescope grep_string<CR> |
| Grep string |  fs | :Telescope live_grep<CR> |
| Find buffer |  fk | :Telescope buffers<CR> |
| Find project file |  fp | :Telescope find_files<CR> |
| Print session |  si | <Cmd>lua require("cosmic.utils.logger"):log("Session name: " .. require("auto-session-library").current_session_name())<CR> |
| Save session |  ss | <Cmd>SaveSession<CR> |
| Restore session |  sl | <Cmd>silent RestoreSession<CR> |
| Refresh Tree |  nr | :NvimTreeRefresh<CR> |
| Toggle Tree |  nt | :NvimTreeToggle<CR> |
| Toggle LSP Lines |  ltl |  |
| Nvim builtin | & | :&&<CR> |
| Restore plugins from lockfile | ,pr | :Lazy restore<CR> |
| Clear uninstalled plugins | ,px | :Lazy clear<CR> |
| Logs | ,pl | :Lazy logs<CR> |
| Profile | ,pp | :Lazy profile<CR> |
| Help | ,ph | :Lazy help<CR> |
| Show plugins | ,ps | :Lazy show<CR> |
| Update plugins | ,pu | :Lazy update<CR> |
| Check plugins | ,pc | :Lazy check<CR> |
| Close tab | ,td | :tabclose<CR> |
| Next tab | ,tn | :tabnext<CR> |
| Prev tab | ,tp | :tabprevious<CR> |
| Delete buffer | ,bd | :bdelete<CR> |
| Next buffer | ,bn | :bnext<CR> |
| Prev buffer | ,bp | :bprev<CR> |
| Next Item | ,cn | :cnext<CR>zz |
| Prev Item | ,cp | :cprev<CR>zz |
| Search & Replace | ,cf | :cfdo %s/ |
| Open list | ,co | :copen <CR> |
| Close list | ,cc | :cclose <CR> |
| Clear list | ,ck | :cexpr []<CR> |
| Nvim builtin | Y | y$ |
| Vertical Resize +2 | <C-Right> | :vertical resize +2<CR> |
| Vertical Resize -2 | <C-Left> | :vertical resize -2<CR> |
| Resize +2 | <C-Down> | :resize +2<CR> |
| Resize -2 | <C-Up> | :resize -2<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
| Toggle Tree | <C-N> | :NvimTreeToggle<CR> |
| Floating Terminal | <C-L> |  |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
| Nvim builtin | * | y/\V<C-R>"<CR> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
