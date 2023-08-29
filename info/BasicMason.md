## BasicMason Neovim Configuration Information

Minimal setup with 'mason.nvim'

- Install and initialize: **`lazyman -x BasicMason`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-BasicMason`**

### Git repository

[https://github.com/VonHeikemen/nvim-starter/tree/xx-mason](https://github.com/VonHeikemen/nvim-starter/tree/xx-mason)

### Lazy managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

### BasicMason Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>luasnip-delete-check |  |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
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
|  | <Plug>luasnip-expand-repeat |  |

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
|  | <Plug>luasnip-expand-repeat |  |
