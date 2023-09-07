## SingleFile Neovim Configuration Information

A clean, organized pre-configured Neovim configuration guide in a single 'init.lua'

- Install and initialize: **`lazyman -x SingleFile`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-SingleFile`**

### Git repository

[https://github.com/creativenull/nvim-oneconfig](https://github.com/creativenull/nvim-oneconfig)

### Packer managed plugins


### SingleFile Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Toggle file tree (neo-tree) | <code> ff</code> | <code>&lt;Cmd&gt;Neotree reveal toggle right&lt;CR&gt;</code> |
| Paste from system clipboard | <code> p</code> | <code>"+p</code> |
| Yank from system clipboard | <code> y</code> | <code>"+y</code> |
| Reload current buffer with the file | <code> r</code> | <code>&lt;Cmd&gt;edit!&lt;CR&gt;</code> |
| Reload init.lua | <code> vs</code> | <code>&lt;Cmd&gt;ConfigReload&lt;CR&gt;</code> |
| Open init.lua | <code> ve</code> | <code>&lt;Cmd&gt;edit $MYVIMRC&lt;CR&gt;</code> |
| Close all buffers except current | <code> bx</code> | <code>&lt;Cmd&gt;%bd&#124;e#|bd#&lt;CR&gt;</code> |
| Close current buffer | <code> bd</code> | <code>&lt;Cmd&gt;bp&#124;sp|bn|bd&lt;CR&gt;</code> |
| Previous buffer | <code> bp</code> | <code>&lt;Cmd&gt;bprevious&lt;CR&gt;</code> |
| Next buffer | <code> bn</code> | <code>&lt;Cmd&gt;bnext&lt;CR&gt;</code> |
| Show buffers | <code> bl</code> | <code>&lt;Cmd&gt;buffers&lt;CR&gt;</code> |
| Disable search highlight | <code> &lt;CR&gt;</code> | <code>&lt;Cmd&gt;noh&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| Change a surrounding pair. | <code>cs</code> |  |
| Delete a surrounding pair. | <code>ds</code> |  |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
| Comment toggle blockwise | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| Add a surrounding pair around the current line, on new lines (normal mode). | <code>ySS</code> |  |
| Add a surrounding pair around a motion, on new lines (normal mode). | <code>yS</code> |  |
| Add a surrounding pair around the current line (normal mode). | <code>yss</code> |  |
| Add a surrounding pair around a motion (normal mode). | <code>ys</code> |  |
|  | <code>&lt;Plug&gt;(vsnip-cut-text)</code> | <code>:set operatorfunc=&lt;SNR&gt;42_vsnip_cut_text_normal&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;(vsnip-select-text)</code> | <code>:set operatorfunc=&lt;SNR&gt;42_vsnip_select_text_normal&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;m</code> | <code>&lt;Plug&gt;(emmet-merge-lines)</code> |
|  | <code>&lt;Plug&gt;(emmet-merge-lines)</code> | <code>:call emmet#mergeLines()&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;A</code> | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> |
|  | <code>&lt;Plug&gt;(emmet-anchorize-summary)</code> | <code>:call emmet#anchorizeURL(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;a</code> | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> |
|  | <code>&lt;Plug&gt;(emmet-anchorize-url)</code> | <code>:call emmet#anchorizeURL(0)&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;k</code> | <code>&lt;Plug&gt;(emmet-remove-tag)</code> |
|  | <code>&lt;Plug&gt;(emmet-remove-tag)</code> | <code>:call emmet#removeTag()&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;j</code> | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> |
|  | <code>&lt;Plug&gt;(emmet-split-join-tag)</code> | <code>:call emmet#splitJoinTag()&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;/</code> | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> |
|  | <code>&lt;Plug&gt;(emmet-toggle-comment)</code> | <code>:call emmet#toggleComment()&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;I</code> | <code>&lt;Plug&gt;(emmet-image-encode)</code> |
|  | <code>&lt;Plug&gt;(emmet-image-encode)</code> | <code>:call emmet#imageEncode()&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;i</code> | <code>&lt;Plug&gt;(emmet-image-size)</code> |
|  | <code>&lt;Plug&gt;(emmet-image-size)</code> | <code>:call emmet#imageSize()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(emmet-move-prev-item)</code> | <code>:call emmet#moveNextPrevItem(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(emmet-move-next-item)</code> | <code>:call emmet#moveNextPrevItem(0)&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;N</code> | <code>&lt;Plug&gt;(emmet-move-prev)</code> |
|  | <code>&lt;Plug&gt;(emmet-move-prev)</code> | <code>:call emmet#moveNextPrev(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;n</code> | <code>&lt;Plug&gt;(emmet-move-next)</code> |
|  | <code>&lt;Plug&gt;(emmet-move-next)</code> | <code>:call emmet#moveNextPrev(0)&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;D</code> | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> | <code>:call emmet#balanceTag(-1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;d</code> | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> | <code>:call emmet#balanceTag(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;u</code> | <code>&lt;Plug&gt;(emmet-update-tag)</code> |
|  | <code>&lt;Plug&gt;(emmet-update-tag)</code> | <code>:call emmet#updateTag()&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;;</code> | <code>&lt;Plug&gt;(emmet-expand-word)</code> |
|  | <code>&lt;Plug&gt;(emmet-expand-word)</code> | <code>:call emmet#expandAbbr(1,"")&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;,</code> | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
|  | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> | <code>:call emmet#expandAbbr(3,"")&lt;CR&gt;</code> |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
| Open text search (telescope) | <code>&lt;C-T&gt;</code> |  |
| Open file finder (telescope) | <code>&lt;C-P&gt;</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
| Previous buffer | <code>&lt;C-H&gt;</code> | <code>&lt;Cmd&gt;bprevious&lt;CR&gt;</code> |
|  | <code>&lt;Right&gt;</code> | <code>&lt;Cmd&gt;vertical resize +2&lt;CR&gt;</code> |
|  | <code>&lt;Left&gt;</code> | <code>&lt;Cmd&gt;vertical resize -2&lt;CR&gt;</code> |
|  | <code>&lt;Down&gt;</code> | <code>&lt;Cmd&gt;resize -2&lt;CR&gt;</code> |
|  | <code>&lt;Up&gt;</code> | <code>&lt;Cmd&gt;resize +2&lt;CR&gt;</code> |
| Next buffer | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;bnext&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Yank from system clipboard | <code> y</code> | <code>"+y</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
| Add a surrounding pair around a visual selection. | <code>S</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround()&lt;CR&gt;</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| Add a surrounding pair around a visual selection, on new lines. | <code>gS</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround(true)&lt;CR&gt;</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
| Paste from yanked contents only | <code>p</code> | <code>"_dP</code> |
|  | <code>&lt;Plug&gt;(vsnip-cut-text)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;42_vsnip_visual_text(visualmode())&lt;CR&gt;gv"_c</code> |
|  | <code>&lt;Plug&gt;(vsnip-select-text)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;42_vsnip_visual_text(visualmode())&lt;CR&gt;gv</code> |
|  | <code>&lt;C-Q&gt;c</code> | <code>&lt;Plug&gt;(emmet-code-pretty)</code> |
|  | <code>&lt;Plug&gt;(emmet-code-pretty)</code> | <code>:call emmet#codePretty()&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;D</code> | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-outword)</code> | <code>&lt;Esc&gt;:call emmet#balanceTag(-1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;d</code> | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> |
|  | <code>&lt;Plug&gt;(emmet-balance-tag-inward)</code> | <code>&lt;Esc&gt;:call emmet#balanceTag(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Q&gt;,</code> | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> |
|  | <code>&lt;Plug&gt;(emmet-expand-abbr)</code> | <code>:call emmet#expandAbbr(2,"")&lt;CR&gt;</code> |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;Right&gt;</code> | <code></code> |
|  | <code>&lt;Left&gt;</code> | <code></code> |
|  | <code>&lt;Down&gt;</code> | <code></code> |
|  | <code>&lt;Up&gt;</code> | <code></code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Right&gt;</code> | <code></code> |
|  | <code>&lt;Left&gt;</code> | <code></code> |
|  | <code>&lt;Down&gt;</code> | <code></code> |
|  | <code>&lt;Up&gt;</code> | <code></code> |
