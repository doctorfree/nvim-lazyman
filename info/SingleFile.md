## SingleFile Neovim Configuration Information

A clean, organized pre-configured Neovim configuration guide in a single 'init.lua'

- Install and initialize: **`lazyman -x SingleFile`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/lazyman/SingleFile`**

### Git repository

[https://github.com/creativenull/nvim-oneconfig](https://github.com/creativenull/nvim-oneconfig)

### Packer managed plugins


### SingleFile Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Toggle file tree (neo-tree) |  ff | <Cmd>Neotree reveal toggle right<CR> |
| Paste from system clipboard |  p | "+p |
| Yank from system clipboard |  y | "+y |
| Reload current buffer with the file |  r | <Cmd>edit!<CR> |
| Reload init.lua |  vs | <Cmd>ConfigReload<CR> |
| Open init.lua |  ve | <Cmd>edit $MYVIMRC<CR> |
| Close all buffers except current |  bx | <Cmd>%bd|e#|bd#<CR> |
| Close current buffer |  bd | <Cmd>bp|sp|bn|bd<CR> |
| Previous buffer |  bp | <Cmd>bprevious<CR> |
| Next buffer |  bn | <Cmd>bnext<CR> |
| Show buffers |  bl | <Cmd>buffers<CR> |
| Disable search highlight |  <CR> | <Cmd>noh<CR> |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
| Change a surrounding pair. | cs |  |
| Delete a surrounding pair. | ds |  |
| Comment insert end of line | gcA |  |
| Comment insert above | gcO |  |
| Comment insert below | gco |  |
| Comment toggle current block | gbc |  |
| Comment toggle current line | gcc |  |
| Comment toggle blockwise | gb | <Plug>(comment_toggle_blockwise) |
| Comment toggle linewise | gc | <Plug>(comment_toggle_linewise) |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
| Add a surrounding pair around the current line, on new lines (normal mode). | ySS |  |
| Add a surrounding pair around a motion, on new lines (normal mode). | yS |  |
| Add a surrounding pair around the current line (normal mode). | yss |  |
| Add a surrounding pair around a motion (normal mode). | ys |  |
|  | <Plug>(vsnip-cut-text) | :set operatorfunc=<SNR>42_vsnip_cut_text_normal<CR>g@ |
|  | <Plug>(vsnip-select-text) | :set operatorfunc=<SNR>42_vsnip_select_text_normal<CR>g@ |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <C-Q>m | <Plug>(emmet-merge-lines) |
|  | <Plug>(emmet-merge-lines) | :call emmet#mergeLines()<CR> |
|  | <C-Q>A | <Plug>(emmet-anchorize-summary) |
|  | <Plug>(emmet-anchorize-summary) | :call emmet#anchorizeURL(1)<CR> |
|  | <C-Q>a | <Plug>(emmet-anchorize-url) |
|  | <Plug>(emmet-anchorize-url) | :call emmet#anchorizeURL(0)<CR> |
|  | <C-Q>k | <Plug>(emmet-remove-tag) |
|  | <Plug>(emmet-remove-tag) | :call emmet#removeTag()<CR> |
|  | <C-Q>j | <Plug>(emmet-split-join-tag) |
|  | <Plug>(emmet-split-join-tag) | :call emmet#splitJoinTag()<CR> |
|  | <C-Q>/ | <Plug>(emmet-toggle-comment) |
|  | <Plug>(emmet-toggle-comment) | :call emmet#toggleComment()<CR> |
|  | <C-Q>I | <Plug>(emmet-image-encode) |
|  | <Plug>(emmet-image-encode) | :call emmet#imageEncode()<CR> |
|  | <C-Q>i | <Plug>(emmet-image-size) |
|  | <Plug>(emmet-image-size) | :call emmet#imageSize()<CR> |
|  | <Plug>(emmet-move-prev-item) | :call emmet#moveNextPrevItem(1)<CR> |
|  | <Plug>(emmet-move-next-item) | :call emmet#moveNextPrevItem(0)<CR> |
|  | <C-Q>N | <Plug>(emmet-move-prev) |
|  | <Plug>(emmet-move-prev) | :call emmet#moveNextPrev(1)<CR> |
|  | <C-Q>n | <Plug>(emmet-move-next) |
|  | <Plug>(emmet-move-next) | :call emmet#moveNextPrev(0)<CR> |
|  | <C-Q>D | <Plug>(emmet-balance-tag-outword) |
|  | <Plug>(emmet-balance-tag-outword) | :call emmet#balanceTag(-1)<CR> |
|  | <C-Q>d | <Plug>(emmet-balance-tag-inward) |
|  | <Plug>(emmet-balance-tag-inward) | :call emmet#balanceTag(1)<CR> |
|  | <C-Q>u | <Plug>(emmet-update-tag) |
|  | <Plug>(emmet-update-tag) | :call emmet#updateTag()<CR> |
|  | <C-Q>; | <Plug>(emmet-expand-word) |
|  | <Plug>(emmet-expand-word) | :call emmet#expandAbbr(1,"")<CR> |
|  | <C-Q>, | <Plug>(emmet-expand-abbr) |
|  | <Plug>(emmet-expand-abbr) | :call emmet#expandAbbr(3,"")<CR> |
| Comment toggle blockwise with count | <Plug>(comment_toggle_blockwise_count) |  |
| Comment toggle linewise with count | <Plug>(comment_toggle_linewise_count) |  |
| Comment toggle current block | <Plug>(comment_toggle_blockwise_current) |  |
| Comment toggle current line | <Plug>(comment_toggle_linewise_current) |  |
| Comment toggle blockwise | <Plug>(comment_toggle_blockwise) |  |
| Comment toggle linewise | <Plug>(comment_toggle_linewise) |  |
| Open text search (telescope) | <C-T> |  |
| Open file finder (telescope) | <C-P> |  |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
| Previous buffer | <C-H> | <Cmd>bprevious<CR> |
|  | <Right> | <Cmd>vertical resize +2<CR> |
|  | <Left> | <Cmd>vertical resize -2<CR> |
|  | <Down> | <Cmd>resize -2<CR> |
|  | <Up> | <Cmd>resize +2<CR> |
| Next buffer | <C-L> | <Cmd>bnext<CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Yank from system clipboard |  y | "+y |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
| Add a surrounding pair around a visual selection. | S | <Esc><Cmd>lua require'nvim-surround'.visual_surround()<CR> |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
| Comment toggle blockwise (visual) | gb | <Plug>(comment_toggle_blockwise_visual) |
| Comment toggle linewise (visual) | gc | <Plug>(comment_toggle_linewise_visual) |
| Add a surrounding pair around a visual selection, on new lines. | gS | <Esc><Cmd>lua require'nvim-surround'.visual_surround(true)<CR> |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
| Paste from yanked contents only | p | "_dP |
|  | <Plug>(vsnip-cut-text) | :<C-U>call <SNR>42_vsnip_visual_text(visualmode())<CR>gv"_c |
|  | <Plug>(vsnip-select-text) | :<C-U>call <SNR>42_vsnip_visual_text(visualmode())<CR>gv |
|  | <C-Q>c | <Plug>(emmet-code-pretty) |
|  | <Plug>(emmet-code-pretty) | :call emmet#codePretty()<CR> |
|  | <C-Q>D | <Plug>(emmet-balance-tag-outword) |
|  | <Plug>(emmet-balance-tag-outword) | <Esc>:call emmet#balanceTag(-1)<CR> |
|  | <C-Q>d | <Plug>(emmet-balance-tag-inward) |
|  | <Plug>(emmet-balance-tag-inward) | <Esc>:call emmet#balanceTag(1)<CR> |
|  | <C-Q>, | <Plug>(emmet-expand-abbr) |
|  | <Plug>(emmet-expand-abbr) | :call emmet#expandAbbr(2,"")<CR> |
| Comment toggle blockwise (visual) | <Plug>(comment_toggle_blockwise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR> |
| Comment toggle linewise (visual) | <Plug>(comment_toggle_linewise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR> |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
|  | <Right> |  |
|  | <Left> |  |
|  | <Down> |  |
|  | <Up> |  |

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
|  | <Right> |  |
|  | <Left> |  |
|  | <Down> |  |
|  | <Up> |  |
