## Scratch Neovim Configuration Information

Jumping-off point for new Neovim users or those who have declared config bankruptcy

- Install and initialize: **`lazyman -x Scratch`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Scratch`**

### Git repository

[https://github.com/ngscheurich/nvim-from-scratch](https://github.com/ngscheurich/nvim-from-scratch)

### Lazy managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [ggandor/flit.nvim](https://github.com/ggandor/flit.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

### Scratch Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>&lt;Esc&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&lt;CR&gt;</code> |
| Root (toggle) | <code> ee</code> |  |
| File (toggle) | <code> ef</code> |  |
| Autocommands | <code> fa</code> |  |
| Search | <code> /</code> |  |
| Buffers | <code>  </code> |  |
| Quickfix list | <code> fq</code> |  |
| Location list | <code> fl</code> |  |
| Help | <code> fh</code> |  |
| Grep | <code> fg</code> |  |
| Files | <code> ff</code> |  |
| Commands | <code> fc</code> |  |
| Plugins | <code> p</code> | <code>&lt;Cmd&gt;Lazy&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(matchup-%)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>-</code> | <code>&lt;Plug&gt;(dirvish_up)</code> |
|  | <code>&lt;lt&gt;p</code> | <code>&lt;Plug&gt;(unimpaired-put-below-leftward)</code> |
|  | <code>&lt;lt&gt;P</code> | <code>&lt;Plug&gt;(unimpaired-put-above-leftward)</code> |
|  | <code>&lt;lt&gt;s&lt;Esc&gt;</code> | <code></code> |
|  | <code>&lt;lt&gt;s</code> | <code>&lt;Plug&gt;(unimpaired-enable)</code> |
|  | <code>=p</code> | <code>&lt;Plug&gt;(unimpaired-put-below-reformat)</code> |
|  | <code>=P</code> | <code>&lt;Plug&gt;(unimpaired-put-above-reformat)</code> |
|  | <code>=s&lt;Esc&gt;</code> | <code></code> |
|  | <code>=s</code> | <code>&lt;Plug&gt;(unimpaired-toggle)</code> |
|  | <code>&gt;p</code> | <code>&lt;Plug&gt;(unimpaired-put-below-rightward)</code> |
|  | <code>&gt;P</code> | <code>&lt;Plug&gt;(unimpaired-put-above-rightward)</code> |
|  | <code>&gt;s&lt;Esc&gt;</code> | <code></code> |
|  | <code>&gt;s</code> | <code>&lt;Plug&gt;(unimpaired-disable)</code> |
|  | <code>F</code> |  |
|  | <code>S</code> | <code>&lt;Plug&gt;(leap-backward-to)</code> |
|  | <code>T</code> |  |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(matchup-[%)</code> |
|  | <code>[xx</code> | <code>&lt;Plug&gt;(unimpaired-xml-encode-line)</code> |
|  | <code>[x</code> | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> |
|  | <code>[uu</code> | <code>&lt;Plug&gt;(unimpaired-url-encode-line)</code> |
|  | <code>[u</code> | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> |
|  | <code>[CC</code> | <code>&lt;Plug&gt;(unimpaired-string-encode-line)</code> |
|  | <code>[C</code> | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
|  | <code>[yy</code> | <code>&lt;Plug&gt;(unimpaired-string-encode-line)</code> |
|  | <code>[y</code> | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
|  | <code>[P</code> | <code>&lt;Plug&gt;(unimpaired-put-above)</code> |
|  | <code>[p</code> | <code>&lt;Plug&gt;(unimpaired-put-above)</code> |
|  | <code>[o&lt;Esc&gt;</code> | <code></code> |
|  | <code>[o</code> | <code>&lt;Plug&gt;(unimpaired-enable)</code> |
|  | <code>[e</code> | <code>&lt;Plug&gt;(unimpaired-move-up)</code> |
|  | <code>[ </code> | <code>&lt;Plug&gt;(unimpaired-blank-up)</code> |
|  | <code>[n</code> | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
|  | <code>[f</code> | <code>&lt;Plug&gt;(unimpaired-directory-previous)</code> |
|  | <code>[&lt;C-T&gt;</code> | <code>&lt;Plug&gt;(unimpaired-ptprevious)</code> |
|  | <code>[T</code> | <code>&lt;Plug&gt;(unimpaired-tfirst)</code> |
|  | <code>[t</code> | <code>&lt;Plug&gt;(unimpaired-tprevious)</code> |
|  | <code>[&lt;C-Q&gt;</code> | <code>&lt;Plug&gt;(unimpaired-cpfile)</code> |
|  | <code>[Q</code> | <code>&lt;Plug&gt;(unimpaired-cfirst)</code> |
|  | <code>[q</code> | <code>&lt;Plug&gt;(unimpaired-cprevious)</code> |
|  | <code>[&lt;C-L&gt;</code> | <code>&lt;Plug&gt;(unimpaired-lpfile)</code> |
|  | <code>[L</code> | <code>&lt;Plug&gt;(unimpaired-lfirst)</code> |
|  | <code>[l</code> | <code>&lt;Plug&gt;(unimpaired-lprevious)</code> |
|  | <code>[B</code> | <code>&lt;Plug&gt;(unimpaired-bfirst)</code> |
|  | <code>[b</code> | <code>&lt;Plug&gt;(unimpaired-bprevious)</code> |
|  | <code>[A</code> | <code>&lt;Plug&gt;(unimpaired-first)</code> |
|  | <code>[a</code> | <code>&lt;Plug&gt;(unimpaired-previous)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(matchup-]%)</code> |
|  | <code>]xx</code> | <code>&lt;Plug&gt;(unimpaired-xml-decode-line)</code> |
|  | <code>]x</code> | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> |
|  | <code>]uu</code> | <code>&lt;Plug&gt;(unimpaired-url-decode-line)</code> |
|  | <code>]u</code> | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> |
|  | <code>]CC</code> | <code>&lt;Plug&gt;(unimpaired-string-decode-line)</code> |
|  | <code>]C</code> | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
|  | <code>]yy</code> | <code>&lt;Plug&gt;(unimpaired-string-decode-line)</code> |
|  | <code>]y</code> | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
|  | <code>]P</code> | <code>&lt;Plug&gt;(unimpaired-put-below)</code> |
|  | <code>]p</code> | <code>&lt;Plug&gt;(unimpaired-put-below)</code> |
|  | <code>]o&lt;Esc&gt;</code> | <code></code> |
|  | <code>]o</code> | <code>&lt;Plug&gt;(unimpaired-disable)</code> |
|  | <code>]e</code> | <code>&lt;Plug&gt;(unimpaired-move-down)</code> |
|  | <code>] </code> | <code>&lt;Plug&gt;(unimpaired-blank-down)</code> |
|  | <code>]n</code> | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
|  | <code>]f</code> | <code>&lt;Plug&gt;(unimpaired-directory-next)</code> |
|  | <code>]&lt;C-T&gt;</code> | <code>&lt;Plug&gt;(unimpaired-ptnext)</code> |
|  | <code>]T</code> | <code>&lt;Plug&gt;(unimpaired-tlast)</code> |
|  | <code>]t</code> | <code>&lt;Plug&gt;(unimpaired-tnext)</code> |
|  | <code>]&lt;C-Q&gt;</code> | <code>&lt;Plug&gt;(unimpaired-cnfile)</code> |
|  | <code>]Q</code> | <code>&lt;Plug&gt;(unimpaired-clast)</code> |
|  | <code>]q</code> | <code>&lt;Plug&gt;(unimpaired-cnext)</code> |
|  | <code>]&lt;C-L&gt;</code> | <code>&lt;Plug&gt;(unimpaired-lnfile)</code> |
|  | <code>]L</code> | <code>&lt;Plug&gt;(unimpaired-llast)</code> |
|  | <code>]l</code> | <code>&lt;Plug&gt;(unimpaired-lnext)</code> |
|  | <code>]B</code> | <code>&lt;Plug&gt;(unimpaired-blast)</code> |
|  | <code>]b</code> | <code>&lt;Plug&gt;(unimpaired-bnext)</code> |
|  | <code>]A</code> | <code>&lt;Plug&gt;(unimpaired-last)</code> |
|  | <code>]a</code> | <code>&lt;Plug&gt;(unimpaired-next)</code> |
|  | <code>cS</code> | <code>&lt;Plug&gt;CSurround</code> |
|  | <code>cs</code> | <code>&lt;Plug&gt;Csurround</code> |
|  | <code>ds</code> | <code>&lt;Plug&gt;Dsurround</code> |
|  | <code>f</code> |  |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(matchup-g%)</code> |
|  | <code>gs</code> | <code>&lt;Plug&gt;(leap-cross-window)</code> |
| Comment line | <code>gcc</code> | <code>v:lua.MiniComment.operator() . "_"</code> |
| Comment | <code>gc</code> | <code>v:lua.MiniComment.operator()</code> |
| Align with preview | <code>gA</code> | <code>v:lua.MiniAlign.action_normal(v:true)</code> |
| Align | <code>ga</code> | <code>v:lua.MiniAlign.action_normal(v:false)</code> |
|  | <code>s</code> | <code>&lt;Plug&gt;(leap-forward-to)</code> |
|  | <code>t</code> |  |
|  | <code>ySS</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>ySs</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>yss</code> | <code>&lt;Plug&gt;Yssurround</code> |
|  | <code>yS</code> | <code>&lt;Plug&gt;YSurround</code> |
|  | <code>ys</code> | <code>&lt;Plug&gt;Ysurround</code> |
|  | <code>yo&lt;Esc&gt;</code> | <code></code> |
|  | <code>yo</code> | <code>&lt;Plug&gt;(unimpaired-toggle)</code> |
|  | <code>y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>z%</code> | <code>&lt;Plug&gt;(matchup-z%)</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;2-LeftMouse&gt;</code> | <code>&lt;Plug&gt;(matchup-double-click)</code> |
|  | <code>&lt;Plug&gt;(matchup-reload)</code> | <code>:&lt;C-U&gt;MatchupReload&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-double-click)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#double_click()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-Z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-[%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(0, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-]%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(0, 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-g%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(0, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(0, 1)&lt;CR&gt;</code> |
|  | <code>&lt;SNR&gt;31_(wise)</code> | <code>empty(g:v_motion_force) ? 'v' : g:v_motion_force</code> |
|  | <code>&lt;Plug&gt;(matchup-hi-surround)</code> | <code>:&lt;C-U&gt;call matchup#matchparen#highlight_surrounding()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;YSurround</code> | <code>&lt;SNR&gt;28_opfunc2('setup')</code> |
|  | <code>&lt;Plug&gt;Ysurround</code> | <code>&lt;SNR&gt;28_opfunc('setup')</code> |
|  | <code>&lt;Plug&gt;YSsurround</code> | <code>&lt;SNR&gt;28_opfunc2('setup').'_'</code> |
|  | <code>&lt;Plug&gt;Yssurround</code> | <code>'^'.v:count1.&lt;SNR&gt;28_opfunc('setup').'g_'</code> |
|  | <code>&lt;Plug&gt;CSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;28_changesurround(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Csurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;28_changesurround()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Dsurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;28_dosurround(&lt;SNR&gt;28_inputtarget())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;SurroundRepeat</code> | <code>.</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-decode-line)</code> | <code>&lt;SNR&gt;26_TransformSetup("xml_decode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> | <code>&lt;SNR&gt;26_TransformSetup("xml_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_xml_decode</code> | <code>&lt;SNR&gt;26_TransformSetup("xml_decode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_xml_decode</code> | <code>&lt;SNR&gt;26_TransformSetup("xml_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-encode-line)</code> | <code>&lt;SNR&gt;26_TransformSetup("xml_encode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> | <code>&lt;SNR&gt;26_TransformSetup("xml_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_xml_encode</code> | <code>&lt;SNR&gt;26_TransformSetup("xml_encode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_xml_encode</code> | <code>&lt;SNR&gt;26_TransformSetup("xml_encode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-decode-line)</code> | <code>&lt;SNR&gt;26_TransformSetup("url_decode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> | <code>&lt;SNR&gt;26_TransformSetup("url_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_url_decode</code> | <code>&lt;SNR&gt;26_TransformSetup("url_decode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_url_decode</code> | <code>&lt;SNR&gt;26_TransformSetup("url_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-encode-line)</code> | <code>&lt;SNR&gt;26_TransformSetup("url_encode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> | <code>&lt;SNR&gt;26_TransformSetup("url_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_url_encode</code> | <code>&lt;SNR&gt;26_TransformSetup("url_encode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_url_encode</code> | <code>&lt;SNR&gt;26_TransformSetup("url_encode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-decode-line)</code> | <code>&lt;SNR&gt;26_TransformSetup("string_decode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> | <code>&lt;SNR&gt;26_TransformSetup("string_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_string_decode</code> | <code>&lt;SNR&gt;26_TransformSetup("string_decode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_string_decode</code> | <code>&lt;SNR&gt;26_TransformSetup("string_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-encode-line)</code> | <code>&lt;SNR&gt;26_TransformSetup("string_encode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> | <code>&lt;SNR&gt;26_TransformSetup("string_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_string_encode</code> | <code>&lt;SNR&gt;26_TransformSetup("string_encode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_string_encode</code> | <code>&lt;SNR&gt;26_TransformSetup("string_encode")</code> |
|  | <code>&lt;Plug&gt;unimpairedPutBelow</code> | <code>:call &lt;SNR&gt;26_putline(']p', 'below')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedPutAbove</code> | <code>:call &lt;SNR&gt;26_putline('[p', 'above')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-below-reformat)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_putline(v:count1 . ']p', 'Below')&lt;CR&gt;=']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-above-reformat)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_putline(v:count1 . '[p', 'Above')&lt;CR&gt;=']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-below-leftward)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_putline(v:count1 . ']p', 'Below')&lt;CR&gt;&lt;lt&gt;']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-above-leftward)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_putline(v:count1 . '[p', 'Above')&lt;CR&gt;&lt;lt&gt;']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-below-rightward)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_putline(v:count1 . ']p', 'Below')&lt;CR&gt;&gt;']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-above-rightward)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_putline(v:count1 . '[p', 'Above')&lt;CR&gt;&gt;']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-below)</code> | <code>:call &lt;SNR&gt;26_putline(']p', 'below')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-above)</code> | <code>:call &lt;SNR&gt;26_putline('[p', 'above')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)p</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_SetupPaste()&lt;CR&gt;0C</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)p</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_SetupPaste()&lt;CR&gt;o</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)p</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_SetupPaste()&lt;CR&gt;O</code> |
|  | <code>&lt;Plug&gt;(unimpaired-paste)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_SetupPaste()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedPaste</code> | <code>:call &lt;SNR&gt;26_SetupPaste()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)t</code> | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;26_ColorColumn(!empty(&cc))&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)t</code> | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;26_ColorColumn(1)&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)t</code> | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;26_ColorColumn(0)&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)+</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;26_CursorOptions()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)+</code> | <code>:&lt;C-U&gt;set nocursorline nocursorcolumn&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)+</code> | <code>:&lt;C-U&gt;set cursorline cursorcolumn&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)x</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;26_CursorOptions()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)x</code> | <code>:&lt;C-U&gt;set nocursorline nocursorcolumn&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)x</code> | <code>:&lt;C-U&gt;set cursorline cursorcolumn&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)v</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=(&virtualedit =~# "all") ? "virtualedit-=all" : "virtualedit+=all"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)v</code> | <code>:&lt;C-U&gt;set virtualedit-=all&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)v</code> | <code>:&lt;C-U&gt;set virtualedit+=all&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)z</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("spell")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)z</code> | <code>:&lt;C-U&gt;setlocal nospell&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)z</code> | <code>:&lt;C-U&gt;setlocal spell&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)w</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("wrap")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)w</code> | <code>:&lt;C-U&gt;setlocal nowrap&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)w</code> | <code>:&lt;C-U&gt;setlocal wrap&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)s</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("spell")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)s</code> | <code>:&lt;C-U&gt;setlocal nospell&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)s</code> | <code>:&lt;C-U&gt;setlocal spell&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)r</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("relativenumber")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)r</code> | <code>:&lt;C-U&gt;setlocal norelativenumber&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)r</code> | <code>:&lt;C-U&gt;setlocal relativenumber&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)n</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("number")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)n</code> | <code>:&lt;C-U&gt;setlocal nonumber&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)n</code> | <code>:&lt;C-U&gt;setlocal number&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)l</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("list")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)l</code> | <code>:&lt;C-U&gt;setlocal nolist&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)l</code> | <code>:&lt;C-U&gt;setlocal list&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)i</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("ignorecase")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)i</code> | <code>:&lt;C-U&gt;set noignorecase&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)i</code> | <code>:&lt;C-U&gt;set ignorecase&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)h</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("hlsearch")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)h</code> | <code>:&lt;C-U&gt;set nohlsearch&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)h</code> | <code>:&lt;C-U&gt;set hlsearch&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)d</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=&diff ? "diffoff" : "diffthis"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)d</code> | <code>:&lt;C-U&gt;diffoff&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)d</code> | <code>:&lt;C-U&gt;diffthis&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)&#124;</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("cursorcolumn")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)&#124;</code> | <code>:&lt;C-U&gt;setlocal nocursorcolumn&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)&#124;</code> | <code>:&lt;C-U&gt;setlocal cursorcolumn&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)u</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("cursorcolumn")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)u</code> | <code>:&lt;C-U&gt;setlocal nocursorcolumn&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)u</code> | <code>:&lt;C-U&gt;setlocal cursorcolumn&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)_</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)_</code> | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)_</code> | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)-</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)-</code> | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)-</code> | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)c</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;26_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)c</code> | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)c</code> | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;26_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)b</code> | <code>:&lt;C-U&gt;set background=&lt;C-R&gt;=&background == "dark" ? "light" : "dark"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)b</code> | <code>:&lt;C-U&gt;set background=dark&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)b</code> | <code>:&lt;C-U&gt;set background=light&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveDown</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_Move('+',v:count1,'down')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveUp</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_Move('--',v:count1,'up')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-down)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_Move('+',v:count1,'down')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-up)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_Move('--',v:count1,'up')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedBlankDown</code> | <code>:&lt;C-U&gt;exe &lt;SNR&gt;26_BlankDown()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedBlankUp</code> | <code>:&lt;C-U&gt;exe &lt;SNR&gt;26_BlankUp()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-blank-down)</code> | <code>:&lt;C-U&gt;exe &lt;SNR&gt;26_BlankDown()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-blank-up)</code> | <code>:&lt;C-U&gt;exe &lt;SNR&gt;26_BlankUp()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextNext</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_Context(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextPrevious</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_Context(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-next)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_Context(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;26_Context(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedDirectoryPrevious</code> | <code>:&lt;C-U&gt;execute &lt;SNR&gt;26_PreviousFileEntry(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedDirectoryNext</code> | <code>:&lt;C-U&gt;execute &lt;SNR&gt;26_NextFileEntry(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-directory-previous)</code> | <code>:&lt;C-U&gt;execute &lt;SNR&gt;26_PreviousFileEntry(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-directory-next)</code> | <code>:&lt;C-U&gt;execute &lt;SNR&gt;26_NextFileEntry(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedTPNext</code> | <code>:&lt;C-U&gt;exe "p".(v:count ? v:count : "")."tnext"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedTPPrevious</code> | <code>:&lt;C-U&gt;exe "p".(v:count ? v:count : "")."tprevious"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-ptnext)</code> | <code>:&lt;C-U&gt;exe v:count1 . "ptnext"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-ptprevious)</code> | <code>:&lt;C-U&gt;exe v:count1 . "ptprevious"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedTLast</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tlast"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedTFirst</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tfirst"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedTNext</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tnext"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedTPrevious</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tprevious"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-tlast)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "trewind" : "tlast"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-tfirst)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "trewind" : "tfirst"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-tnext)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tnext"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-tprevious)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tprevious"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedQNFile</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cnfile"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedQPFile</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cpfile"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-cnfile)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cnfile"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-cpfile)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cpfile"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedQLast</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."clast"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedQFirst</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cfirst"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedQNext</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cnext"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedQPrevious</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cprevious"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-clast)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "cc" : "clast"&lt;CR&gt;&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-cfirst)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "cc" : "cfirst"&lt;CR&gt;&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-cnext)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cnext"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-cprevious)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cprevious"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedLNFile</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lnfile"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedLPFile</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lpfile"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-lnfile)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lnfile"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-lpfile)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lpfile"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedLLast</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."llast"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedLFirst</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lfirst"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedLNext</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lnext"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedLPrevious</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lprevious"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-llast)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "ll" : "llast"&lt;CR&gt;&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-lfirst)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "ll" : "lfirst"&lt;CR&gt;&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-lnext)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lnext"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-lprevious)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lprevious"&lt;CR&gt;zv</code> |
|  | <code>&lt;Plug&gt;unimpairedBLast</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."blast"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedBFirst</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bfirst"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedBNext</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bnext"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedBPrevious</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bprevious"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-blast)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "buffer" : "blast"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-bfirst)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "buffer" : "bfirst"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-bnext)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bnext"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-bprevious)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bprevious"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedALast</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."last"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedAFirst</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."first"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedANext</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."next"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedAPrevious</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."previous"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-last)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "argument" : "last"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-first)</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "argument" : "first"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-next)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."next"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-previous)</code> | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."previous"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(dirvish_vsplit_up)</code> | <code>:&lt;C-U&gt;vsplit&#124;exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(dirvish_split_up)</code> | <code>:&lt;C-U&gt;split&#124;exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(dirvish_up)</code> | <code>:&lt;C-U&gt;exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> | <code>&lt;Cmd&gt;lua require'luasnip'.expand_repeat()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> | <code>&lt;Cmd&gt;lua require'luasnip'.unlink_current_if_deleted()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(leap-backward-x)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward-x)</code> |  |
|  | <code>&lt;Plug&gt;(leap-backward)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward)</code> |  |
|  | <code>&lt;Plug&gt;(leap-cross-window)</code> |  |
|  | <code>&lt;Plug&gt;(leap-backward-till)</code> |  |
|  | <code>&lt;Plug&gt;(leap-backward-to)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward-till)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward-to)</code> |  |
|  | <code>&lt;Plug&gt;fugitive:</code> | <code></code> |
|  | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Right&gt;</code> | <code>&lt;C-W&gt;l</code> |
|  | <code>&lt;Up&gt;</code> | <code>&lt;C-W&gt;k</code> |
|  | <code>&lt;Down&gt;</code> | <code>&lt;C-W&gt;j</code> |
|  | <code>&lt;Left&gt;</code> | <code>&lt;C-W&gt;h</code> |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(matchup-%)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>F</code> |  |
|  | <code>S</code> | <code>&lt;Plug&gt;VSurround</code> |
|  | <code>T</code> |  |
|  | <code>X</code> | <code>&lt;Plug&gt;(leap-backward-till)</code> |
|  | <code>[x</code> | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> |
|  | <code>[u</code> | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> |
|  | <code>[C</code> | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
|  | <code>[y</code> | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
|  | <code>[e</code> | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> |
|  | <code>[n</code> | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(matchup-[%)</code> |
|  | <code>]x</code> | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> |
|  | <code>]u</code> | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> |
|  | <code>]C</code> | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
|  | <code>]y</code> | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
|  | <code>]e</code> | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> |
|  | <code>]n</code> | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(matchup-]%)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(matchup-a%)</code> |
|  | <code>f</code> |  |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>gs</code> | <code>&lt;Plug&gt;(leap-cross-window)</code> |
| Comment selection | <code>gc</code> | <code>:&lt;C-U&gt;lua MiniComment.operator('visual')&lt;CR&gt;</code> |
| Align with preview | <code>gA</code> | <code>&lt;Cmd&gt;lua MiniAlign.action_visual(true)&lt;CR&gt;</code> |
| Align | <code>ga</code> | <code>&lt;Cmd&gt;lua MiniAlign.action_visual(false)&lt;CR&gt;</code> |
|  | <code>gS</code> | <code>&lt;Plug&gt;VgSurround</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(matchup-g%)</code> |
|  | <code>i%</code> | <code>&lt;Plug&gt;(matchup-i%)</code> |
|  | <code>s</code> | <code>&lt;Plug&gt;(leap-forward-to)</code> |
|  | <code>t</code> |  |
|  | <code>x</code> | <code>&lt;Plug&gt;(leap-forward-till)</code> |
|  | <code>z%</code> | <code>&lt;Plug&gt;(matchup-z%)</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(leap-backward-x)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward-x)</code> |  |
|  | <code>&lt;Plug&gt;(leap-backward)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward)</code> |  |
|  | <code>&lt;Plug&gt;(leap-cross-window)</code> |  |
|  | <code>&lt;Plug&gt;(leap-backward-till)</code> |  |
|  | <code>&lt;Plug&gt;(leap-backward-to)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward-till)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward-to)</code> |  |
|  | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> | <code>&lt;SNR&gt;22_TransformSetup("xml_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_xml_decode</code> | <code>&lt;SNR&gt;22_TransformSetup("xml_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> | <code>&lt;SNR&gt;22_TransformSetup("xml_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_xml_encode</code> | <code>&lt;SNR&gt;22_TransformSetup("xml_encode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> | <code>&lt;SNR&gt;22_TransformSetup("url_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_url_decode</code> | <code>&lt;SNR&gt;22_TransformSetup("url_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> | <code>&lt;SNR&gt;22_TransformSetup("url_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_url_encode</code> | <code>&lt;SNR&gt;22_TransformSetup("url_encode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> | <code>&lt;SNR&gt;22_TransformSetup("string_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_string_decode</code> | <code>&lt;SNR&gt;22_TransformSetup("string_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> | <code>&lt;SNR&gt;22_TransformSetup("string_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_string_encode</code> | <code>&lt;SNR&gt;22_TransformSetup("string_encode")</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;22_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;22_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;22_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;22_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextNext</code> | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;22_Context(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextPrevious</code> | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;22_Context(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-next)</code> | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;22_Context(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;22_Context(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VgSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;19_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;19_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> | <code>&lt;Cmd&gt;lua require'luasnip'.expand_repeat()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> | <code>&lt;Cmd&gt;lua require'luasnip'.unlink_current_if_deleted()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-a%)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(0, 1, 'delim_all')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-i%)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(1, 1, 'delim_all')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-Z%)</code> | <code>&lt;SNR&gt;9_(matchup-Z%)</code> |
|  | <code>&lt;SNR&gt;9_(matchup-Z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-z%)</code> | <code>&lt;SNR&gt;9_(matchup-z%)</code> |
|  | <code>&lt;SNR&gt;9_(matchup-z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-[%)</code> | <code>&lt;SNR&gt;9_(matchup-[%)</code> |
|  | <code>&lt;Plug&gt;(matchup-]%)</code> | <code>&lt;SNR&gt;9_(matchup-]%)</code> |
|  | <code>&lt;SNR&gt;9_(matchup-[%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;SNR&gt;9_(matchup-]%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-g%)</code> | <code>&lt;SNR&gt;9_(matchup-g%)</code> |
|  | <code>&lt;SNR&gt;9_(matchup-g%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-%)</code> | <code>&lt;SNR&gt;9_(matchup-%)</code> |
|  | <code>&lt;SNR&gt;9_(matchup-%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 1)&lt;CR&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-%)</code> |
|  | <code>F</code> |  |
|  | <code>S</code> | <code>&lt;Plug&gt;(leap-backward-to)</code> |
|  | <code>T</code> |  |
|  | <code>X</code> | <code>&lt;Plug&gt;(leap-backward-till)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(matchup-[%)</code> |
|  | <code>[n</code> | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(matchup-]%)</code> |
|  | <code>]n</code> | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(matchup-a%)</code> |
|  | <code>f</code> |  |
|  | <code>g%</code> | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-g%)</code> |
|  | <code>gs</code> | <code>&lt;Plug&gt;(leap-cross-window)</code> |
| Comment textobject | <code>gc</code> | <code>&lt;Cmd&gt;lua MiniComment.textobject()&lt;CR&gt;</code> |
|  | <code>i%</code> | <code>&lt;Plug&gt;(matchup-i%)</code> |
|  | <code>s</code> | <code>&lt;Plug&gt;(leap-forward-to)</code> |
|  | <code>t</code> |  |
|  | <code>x</code> | <code>&lt;Plug&gt;(leap-forward-till)</code> |
|  | <code>z%</code> | <code>&lt;Plug&gt;(matchup-z%)</code> |
|  | <code>&lt;Plug&gt;(matchup-a%)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(0, 0, 'delim_all')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-i%)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(1, 0, 'delim_all')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-Z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('Z%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('z%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-[%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('[%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-]%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op(']%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-g%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('g%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(leap-backward-x)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward-x)</code> |  |
|  | <code>&lt;Plug&gt;(leap-backward)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward)</code> |  |
|  | <code>&lt;Plug&gt;(leap-cross-window)</code> |  |
|  | <code>&lt;Plug&gt;(leap-backward-till)</code> |  |
|  | <code>&lt;Plug&gt;(leap-backward-to)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward-till)</code> |  |
|  | <code>&lt;Plug&gt;(leap-forward-to)</code> |  |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> | <code>&lt;Cmd&gt;lua require'luasnip'.expand_repeat()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> | <code>&lt;Cmd&gt;lua require'luasnip'.unlink_current_if_deleted()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextNext</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_ContextMotion(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextPrevious</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_ContextMotion(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-next)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_ContextMotion(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;12_ContextMotion(1)&lt;CR&gt;</code> |
