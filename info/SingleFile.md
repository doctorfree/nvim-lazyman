# SingleFile Neovim Configuration Information

A clean, organized pre-configured Neovim configuration guide in a single 'init.lua'

- Install and initialize: **`lazyman -x SingleFile`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-SingleFile`**

## Git repository

[https://github.com/creativenull/nvim-oneconfig](https://github.com/creativenull/nvim-oneconfig)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Packer managed plugins


## SingleFile Keymaps

### Normal mode keymaps

| **Description** | Toggle file tree (neo-tree) |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Neotree reveal toggle right&lt;CR&gt;</code> |

| **Description** | Paste from system clipboard |
| :---- | :---- |
| **Left hand side** | <code> p</code> |
| **Right hand side** | <code>"+p</code> |

| **Description** | Yank from system clipboard |
| :---- | :---- |
| **Left hand side** | <code> y</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | Reload current buffer with the file |
| :---- | :---- |
| **Left hand side** | <code> r</code> |
| **Right hand side** | <code>&lt;Cmd&gt;edit!&lt;CR&gt;</code> |

| **Description** | Reload init.lua |
| :---- | :---- |
| **Left hand side** | <code> vs</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ConfigReload&lt;CR&gt;</code> |

| **Description** | Open init.lua |
| :---- | :---- |
| **Left hand side** | <code> ve</code> |
| **Right hand side** | <code>&lt;Cmd&gt;edit $MYVIMRC&lt;CR&gt;</code> |

| **Description** | Close all buffers except current |
| :---- | :---- |
| **Left hand side** | <code> bx</code> |
| **Right hand side** | <code>&lt;Cmd&gt;%bd&#124;e#|bd#&lt;CR&gt;</code> |

| **Description** | Close current buffer |
| :---- | :---- |
| **Left hand side** | <code> bd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bp&#124;sp|bn|bd&lt;CR&gt;</code> |

| **Description** | Previous buffer |
| :---- | :---- |
| **Left hand side** | <code> bp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bprevious&lt;CR&gt;</code> |

| **Description** | Next buffer |
| :---- | :---- |
| **Left hand side** | <code> bn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bnext&lt;CR&gt;</code> |

| **Description** | Show buffers |
| :---- | :---- |
| **Left hand side** | <code> bl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;buffers&lt;CR&gt;</code> |

| **Description** | Disable search highlight |
| :---- | :---- |
| **Left hand side** | <code> &lt;CR&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;noh&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

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

| **Description** | Change a surrounding pair. |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | |

| **Description** | Delete a surrounding pair. |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | |

| **Description** | Comment insert end of line |
| :---- | :---- |
| **Left hand side** | <code>gcA</code> |
| **Right hand side** | |

| **Description** | Comment insert above |
| :---- | :---- |
| **Left hand side** | <code>gcO</code> |
| **Right hand side** | |

| **Description** | Comment insert below |
| :---- | :---- |
| **Left hand side** | <code>gco</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode). |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode). |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line (normal mode). |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion (normal mode). |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-cut-text)</code> |
| **Right hand side** | <code>:set operatorfunc=&lt;SNR&gt;42_vsnip_cut_text_normal&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-select-text)</code> |
| **Right hand side** | <code>:set operatorfunc=&lt;SNR&gt;42_vsnip_select_text_normal&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;m</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-merge-lines)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-merge-lines)</code> |
| **Right hand side** | <code>:call emmet#mergeLines()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;A</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> |
| **Right hand side** | <code>:call emmet#anchorizeURL(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> |
| **Right hand side** | <code>:call emmet#anchorizeURL(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;k</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-remove-tag)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-remove-tag)</code> |
| **Right hand side** | <code>:call emmet#removeTag()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;j</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> |
| **Right hand side** | <code>:call emmet#splitJoinTag()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;/</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> |
| **Right hand side** | <code>:call emmet#toggleComment()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;I</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-image-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-image-encode)</code> |
| **Right hand side** | <code>:call emmet#imageEncode()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;i</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-image-size)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-image-size)</code> |
| **Right hand side** | <code>:call emmet#imageSize()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-move-prev-item)</code> |
| **Right hand side** | <code>:call emmet#moveNextPrevItem(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-move-next-item)</code> |
| **Right hand side** | <code>:call emmet#moveNextPrevItem(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;N</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-move-prev)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-move-prev)</code> |
| **Right hand side** | <code>:call emmet#moveNextPrev(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-move-next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-move-next)</code> |
| **Right hand side** | <code>:call emmet#moveNextPrev(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;D</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
| **Right hand side** | <code>:call emmet#balanceTag(-1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;d</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
| **Right hand side** | <code>:call emmet#balanceTag(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;u</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-update-tag)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-update-tag)</code> |
| **Right hand side** | <code>:call emmet#updateTag()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-expand-word)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-expand-word)</code> |
| **Right hand side** | <code>:call emmet#expandAbbr(1,"")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
| **Right hand side** | <code>:call emmet#expandAbbr(3,"")&lt;CR&gt;</code> |

| **Description** | Comment toggle blockwise with count |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise with count |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
| **Right hand side** | |

| **Description** | Open text search (telescope) |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-T&gt;</code> |
| **Right hand side** | |

| **Description** | Open file finder (telescope) |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-P&gt;</code> |
| **Right hand side** | |

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

| **Description** | Previous buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vertical resize +2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vertical resize -2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;resize -2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;resize +2&lt;CR&gt;</code> |

| **Description** | Next buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bnext&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Yank from system clipboard |
| :---- | :---- |
| **Left hand side** | <code> y</code> |
| **Right hand side** | <code>"+y</code> |

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

| **Description** | Add a surrounding pair around a visual selection. |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

| **Description** | Add a surrounding pair around a visual selection, on new lines. |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround(true)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | Paste from yanked contents only |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | <code>"_dP</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-cut-text)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;42_vsnip_visual_text(visualmode())&lt;CR&gt;gv"_c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-select-text)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;42_vsnip_visual_text(visualmode())&lt;CR&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;c</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-code-pretty)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-code-pretty)</code> |
| **Right hand side** | <code>:call emmet#codePretty()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;D</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call emmet#balanceTag(-1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;d</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call emmet#balanceTag(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;,</code> |
| **Right hand side** | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
| **Right hand side** | <code>:call emmet#expandAbbr(2,"")&lt;CR&gt;</code> |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code></code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

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
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code></code> |

