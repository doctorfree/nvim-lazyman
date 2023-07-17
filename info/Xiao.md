## Xiao Neovim Configuration Information

Personal Neovim configuration of XiaoZhang

- Install and initialize: `lazyman -w Xiao`
- Configuration category: [Personal](https://github.com/doctorfree/nvim-lazyman#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  `~/.config/nvim-Xiao`

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/onichandame/nvim-config](https://github.com/onichandame/nvim-config)

### Lazy managed plugins

- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [hrsh7th/cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip)
- [ekalinin/dockerfile.vim](https://github.com/ekalinin/dockerfile.vim.git)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [f-person/git-blame.nvim](https://github.com/f-person/git-blame.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-lua/lsp-status.nvim](https://github.com/nvim-lua/lsp-status.nvim.git)
- [arkav/lualine-lsp-progress](https://github.com/arkav/lualine-lsp-progress)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [ojroques/nvim-osc52](https://github.com/ojroques/nvim-osc52.git)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
- [b0o/schemastore.nvim](https://github.com/b0o/schemastore.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [jparise/vim-graphql](https://github.com/jparise/vim-graphql.git)
- [farmergreg/vim-lastplace](https://github.com/farmergreg/vim-lastplace.git)
- [mzlogin/vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc.git)
- [lbrayner/vim-rzip](https://github.com/lbrayner/vim-rzip.git)
- [lifepillar/vim-solarized8](https://github.com/lifepillar/vim-solarized8.git)
- [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip)

### Xiao Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  w | <Cmd>lua vim.lsp.buf.format{timeout_ms=10000, filter = function(client) return client.name ~= "tsserver" end }<CR><Cmd>:w<CR> |
|  |  q | <Cmd>lua vim.diagnostic.setloclist()<CR> |
|  |  e | <Cmd>lua vim.diagnostic.open_float()<CR> |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | ,cc | "+yy |
|  | ,c | "+y |
|  | ,fh |  |
|  | ,fb |  |
|  | ,fg |  |
|  | ,ff |  |
|  | ,t | :ToggleTerm<CR> |
|  | ,wq | :wq<CR> |
|  | ,q | :q<CR> |
|  | ,w | :w<CR> |
| Nvim builtin | Y | y$ |
|  | [g | <Cmd>lua vim.diagnostic.goto_prev()<CR> |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | ]g | <Cmd>lua vim.diagnostic.goto_next()<CR> |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | y<C-G> | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|  | <F2> | :NvimTreeFindFileToggle<CR> |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <Plug>fugitive: |  |
|  | <Plug>fugitive:y<C-G> | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>(vsnip-cut-text) | :set operatorfunc=<SNR>5_vsnip_cut_text_normal<CR>g@ |
|  | <Plug>(vsnip-select-text) | :set operatorfunc=<SNR>5_vsnip_select_text_normal<CR>g@ |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | ,c | "+y |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
|  | <Plug>(vsnip-cut-text) | :<C-U>call <SNR>12_vsnip_visual_text(visualmode())<CR>gv"_c |
|  | <Plug>(vsnip-select-text) | :<C-U>call <SNR>12_vsnip_visual_text(visualmode())<CR>gv |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
