## Simple Neovim Configuration Information

A remarkably effective Neovim configuration in only one small file. The author's [video description of this config](https://youtu.be/AzhSnM0uHvM)

- Install and initialize: **`lazyman -w Simple`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Simple`**

### Git repository

[https://github.com/anthdm/.nvim](https://github.com/anthdm/.nvim)

### YouTube channel

[https://www.youtube.com/@anthonygg_](https://www.youtube.com/@anthonygg_)

### Packer managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [chama-chomo/grail](https://github.com/chama-chomo/grail)
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [jhlgns/naysayer88.vim](https://github.com/jhlgns/naysayer88.vim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [terrortylor/nvim-comment](https://github.com/terrortylor/nvim-comment)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [fatih/vim-go](https://github.com/fatih/vim-go)
- [CreaturePhil/vim-handmade-hero](https://github.com/CreaturePhil/vim-handmade-hero)

### Simple Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  / | <Cmd>set operatorfunc=CommentOperator<CR>g@ |
| [S]earch [D]iagnostics |  sd |  |
| [S]earch by [G]rep |  sg |  |
| [S]earch current [W]ord |  sw |  |
| [S]earch [H]elp |  sh |  |
| [S]earch [F]iles |  p |  |
| [/] Fuzzily search in current buffer |  f |  |
| [ ] Find existing buffers |    |  |
| [?] Find recently opened files |  ? |  |
|  |  l | :wincmd l<CR> |
|  |  h | :wincmd h<CR> |
|  |  v | :vsplit<CR><C-W>l |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | gcc | <Cmd>set operatorfunc=CommentOperator<CR>g@l |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>luasnip-delete-check |  |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
| Toggle Terminal | <M-j> | <Cmd>execute v:count . "ToggleTerm"<CR> |
| [S]earch [F]iles | <M-p> |  |
|  | <M-b> | :Ex<CR> |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  / | :<C-U>call CommentOperator(visualmode())<CR> |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | ic | <Cmd>lua require('nvim_comment').select_comment_chunk()<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | ic | <Cmd>lua require('nvim_comment').select_comment_chunk()<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
