## Craftzdog Neovim Configuration Information

Takuya Matsuyama's Neovim configuration

- Install and initialize: **`lazyman -w Craftzdog`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Craftzdog`**

### Git repository

[https://github.com/craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public)

### Dotfyle entry

[https://dotfyle.com/craftzdog/dotfiles-public-config-nvim](https://dotfyle.com/craftzdog/dotfiles-public-config-nvim)

### Lazy managed plugins


### Craftzdog Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <Tab> | <Cmd>BufferLineCycleNext<CR> |
|  |   | <C-W>w |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | + | <C-A> |
|  | - | <C-X> |
|  | ;e |  |
|  | ;; |  |
|  | ;t |  |
|  | ;r |  |
|  | ;f |  |
|  | K | <Cmd>Lspsaga hover_doc<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | \\ |  |
|  | \gR | <Cmd>lua require('git.revert').open(true)<CR> |
|  | \gr | <Cmd>lua require('git.revert').open(false)<CR> |
|  | \gD | <Cmd>lua require('git.diff').close()<CR> |
|  | \gd | <Cmd>lua require('git.diff').open()<CR> |
|  | \gn | <Cmd>lua require('git.browse').create_pull_request()<CR> |
|  | \gp | <Cmd>lua require('git.browse').pull_request()<CR> |
|  | \go | <Cmd>lua require('git.browse').open(false)<CR> |
|  | \gb | <Cmd>lua require('git.blame').blame()<CR> |
|  | \ca | <Cmd>Lspsaga code_action<CR> |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | dw | vb"_d |
| Comment insert end of line | gcA |  |
| Comment insert above | gcO |  |
| Comment insert below | gco |  |
| Comment toggle current block | gbc |  |
| Comment toggle current line | gcc |  |
| Comment toggle blockwise | gb | <Plug>(comment_toggle_blockwise) |
| Comment toggle linewise | gc | <Plug>(comment_toggle_linewise) |
|  | gr | <Cmd>Lspsaga rename<CR> |
|  | gp | <Cmd>Lspsaga peek_definition<CR> |
|  | gt | <Cmd>Lspsaga goto_type_definition<CR> |
|  | gd | <Cmd>Lspsaga finder<CR> |
|  | gl | <Cmd>Lspsaga show_line_diagnostics<CR> |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | sf |  |
|  | sl | <C-W>l |
|  | sj | <C-W>j |
|  | sk | <C-W>k |
|  | sh | <C-W>h |
|  | sv | :vsplit<CR><C-W>w |
|  | ss | :split<CR><C-W>w |
|  | te | :tabedit |
|  | x | "_x |
|  | <C-W>o | <Cmd>ZenMode<CR> |
|  | <S-Tab> | <Cmd>BufferLineCyclePrev<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>luasnip-delete-check |  |
| Comment toggle blockwise with count | <Plug>(comment_toggle_blockwise_count) |  |
| Comment toggle linewise with count | <Plug>(comment_toggle_linewise_count) |  |
| Comment toggle current block | <Plug>(comment_toggle_blockwise_current) |  |
| Comment toggle current line | <Plug>(comment_toggle_linewise_current) |  |
| Comment toggle blockwise | <Plug>(comment_toggle_blockwise) |  |
| Comment toggle linewise | <Plug>(comment_toggle_linewise) |  |
|  | <C-J> | <Cmd>Lspsaga diagnostic_jump_next<CR> |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <C-W><Down> | <C-W>- |
|  | <C-W><Up> | <C-W>+ |
|  | <C-W><Right> | <C-W>> |
|  | <C-W><Left> | <C-W><lt> |
|  | <C-A> | ggVG |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | \go | :<C-U> lua require('git.browse').open(true)<CR> |
|  | \ca | <Cmd>Lspsaga code_action<CR> |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
| Comment toggle blockwise (visual) | gb | <Plug>(comment_toggle_blockwise_visual) |
| Comment toggle linewise (visual) | gc | <Plug>(comment_toggle_linewise_visual) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | sl | <C-W>l |
|  | sj | <C-W>j |
|  | sk | <C-W>k |
|  | sh | <C-W>h |
|  | <Plug>luasnip-expand-repeat |  |
| Comment toggle blockwise (visual) | <Plug>(comment_toggle_blockwise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR> |
| Comment toggle linewise (visual) | <Plug>(comment_toggle_linewise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR> |
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
|  | sl | <C-W>l |
|  | sj | <C-W>j |
|  | sk | <C-W>k |
|  | sh | <C-W>h |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
