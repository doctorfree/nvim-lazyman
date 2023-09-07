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
|  | <code>&lt;Tab&gt;</code> | <code>&lt;Cmd&gt;BufferLineCycleNext&lt;CR&gt;</code> |
|  | <code> </code> | <code>&lt;C-W&gt;w</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>+</code> | <code>&lt;C-A&gt;</code> |
|  | <code>-</code> | <code>&lt;C-X&gt;</code> |
|  | <code>;e</code> |  |
|  | <code>;;</code> |  |
|  | <code>;t</code> |  |
|  | <code>;r</code> |  |
|  | <code>;f</code> |  |
|  | <code>K</code> | <code>&lt;Cmd&gt;Lspsaga hover_doc&lt;CR&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>\\</code> |  |
|  | <code>\gR</code> | <code>&lt;Cmd&gt;lua require('git.revert').open(true)&lt;CR&gt;</code> |
|  | <code>\gr</code> | <code>&lt;Cmd&gt;lua require('git.revert').open(false)&lt;CR&gt;</code> |
|  | <code>\gD</code> | <code>&lt;Cmd&gt;lua require('git.diff').close()&lt;CR&gt;</code> |
|  | <code>\gd</code> | <code>&lt;Cmd&gt;lua require('git.diff').open()&lt;CR&gt;</code> |
|  | <code>\gn</code> | <code>&lt;Cmd&gt;lua require('git.browse').create_pull_request()&lt;CR&gt;</code> |
|  | <code>\gp</code> | <code>&lt;Cmd&gt;lua require('git.browse').pull_request()&lt;CR&gt;</code> |
|  | <code>\go</code> | <code>&lt;Cmd&gt;lua require('git.browse').open(false)&lt;CR&gt;</code> |
|  | <code>\gb</code> | <code>&lt;Cmd&gt;lua require('git.blame').blame()&lt;CR&gt;</code> |
|  | <code>\ca</code> | <code>&lt;Cmd&gt;Lspsaga code_action&lt;CR&gt;</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>dw</code> | <code>vb"_d</code> |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
| Comment toggle blockwise | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
|  | <code>gr</code> | <code>&lt;Cmd&gt;Lspsaga rename&lt;CR&gt;</code> |
|  | <code>gp</code> | <code>&lt;Cmd&gt;Lspsaga peek_definition&lt;CR&gt;</code> |
|  | <code>gt</code> | <code>&lt;Cmd&gt;Lspsaga goto_type_definition&lt;CR&gt;</code> |
|  | <code>gd</code> | <code>&lt;Cmd&gt;Lspsaga finder&lt;CR&gt;</code> |
|  | <code>gl</code> | <code>&lt;Cmd&gt;Lspsaga show_line_diagnostics&lt;CR&gt;</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>sf</code> |  |
|  | <code>sl</code> | <code>&lt;C-W&gt;l</code> |
|  | <code>sj</code> | <code>&lt;C-W&gt;j</code> |
|  | <code>sk</code> | <code>&lt;C-W&gt;k</code> |
|  | <code>sh</code> | <code>&lt;C-W&gt;h</code> |
|  | <code>sv</code> | <code>:vsplit&lt;CR&gt;&lt;C-W&gt;w</code> |
|  | <code>ss</code> | <code>:split&lt;CR&gt;&lt;C-W&gt;w</code> |
|  | <code>te</code> | <code>:tabedit</code> |
|  | <code>x</code> | <code>"_x</code> |
|  | <code>&lt;C-W&gt;o</code> | <code>&lt;Cmd&gt;ZenMode&lt;CR&gt;</code> |
|  | <code>&lt;S-Tab&gt;</code> | <code>&lt;Cmd&gt;BufferLineCyclePrev&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
|  | <code>&lt;C-J&gt;</code> | <code>&lt;Cmd&gt;Lspsaga diagnostic_jump_next&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;C-W&gt;&lt;Down&gt;</code> | <code>&lt;C-W&gt;-</code> |
|  | <code>&lt;C-W&gt;&lt;Up&gt;</code> | <code>&lt;C-W&gt;+</code> |
|  | <code>&lt;C-W&gt;&lt;Right&gt;</code> | <code>&lt;C-W&gt;&gt;</code> |
|  | <code>&lt;C-W&gt;&lt;Left&gt;</code> | <code>&lt;C-W&gt;&lt;lt&gt;</code> |
|  | <code>&lt;C-A&gt;</code> | <code>ggVG</code> |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>\go</code> | <code>:&lt;C-U&gt; lua require('git.browse').open(true)&lt;CR&gt;</code> |
|  | <code>\ca</code> | <code>&lt;Cmd&gt;Lspsaga code_action&lt;CR&gt;</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>sl</code> | <code>&lt;C-W&gt;l</code> |
|  | <code>sj</code> | <code>&lt;C-W&gt;j</code> |
|  | <code>sk</code> | <code>&lt;C-W&gt;k</code> |
|  | <code>sh</code> | <code>&lt;C-W&gt;h</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>sl</code> | <code>&lt;C-W&gt;l</code> |
|  | <code>sj</code> | <code>&lt;C-W&gt;j</code> |
|  | <code>sk</code> | <code>&lt;C-W&gt;k</code> |
|  | <code>sh</code> | <code>&lt;C-W&gt;h</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
