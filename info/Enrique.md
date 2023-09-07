## Enrique Neovim Configuration Information

Personal Neovim configuration of Enrique Mejidas

- Install and initialize: **`lazyman -w Enrique`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Enrique`**

### Git repository

[https://github.com/kiyov09/dotfiles](https://github.com/kiyov09/dotfiles)

### Lazy managed plugins


### Enrique Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> r#</code> |  |
|  | <code> #</code> |  |
|  | <code> g?</code> | <code>:map  g&lt;CR&gt;</code> |
|  | <code> gw</code> | <code>:GBrowse&lt;CR&gt;</code> |
|  | <code> gl</code> | <code>:Gclog -n 100 --&lt;CR&gt;</code> |
|  | <code> gd</code> | <code>:Git diff&lt;CR&gt;</code> |
|  | <code> gP</code> | <code>:Git push origin </code> |
|  | <code> gpr</code> | <code>:Git pull --rebase origin </code> |
|  | <code> gpo</code> | <code>:Git pull --ff-only origin </code> |
|  | <code> gb</code> | <code>:Git blame&lt;CR&gt;</code> |
|  | <code> gs</code> | <code>:Git&lt;CR&gt;</code> |
|  | <code> ts</code> |  |
|  | <code> tb</code> |  |
|  | <code> tg</code> |  |
|  | <code> tf</code> |  |
|  | <code> th</code> |  |
|  | <code> sd</code> |  |
|  | <code> v*</code> | <code>:vsplit&lt;CR&gt;*</code> |
|  | <code> x*</code> | <code>:split&lt;CR&gt;*</code> |
|  | <code>  </code> | <code>&lt;C-^&gt;</code> |
|  | <code> vf</code> | <code>:Vexplore!&lt;CR&gt;</code> |
|  | <code> sf</code> | <code>:Sexplore&lt;CR&gt;</code> |
|  | <code> f</code> | <code>:Explore&lt;CR&gt;</code> |
|  | <code> yy</code> | <code>"+yy</code> |
|  | <code> y</code> | <code>"+y</code> |
|  | <code> w</code> | <code>:w&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>'[</code> | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "line", "alpha")&lt;CR&gt;</code> |
|  | <code>']</code> | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "line", "alpha")&lt;CR&gt;</code> |
|  | <code>-</code> | <code>&lt;Plug&gt;VinegarUp</code> |
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
| Nvim builtin | <code>Y</code> | <code>y$</code> |
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
|  | <code>[=</code> | <code>:&lt;C-U&gt;call signature#marker#Goto("prev", "any",  v:count)&lt;CR&gt;</code> |
|  | <code>[-</code> | <code>:&lt;C-U&gt;call signature#marker#Goto("prev", "same", v:count)&lt;CR&gt;</code> |
|  | <code>[`</code> | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "spot", "pos")&lt;CR&gt;</code> |
|  | <code>['</code> | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "line", "pos")&lt;CR&gt;</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>[d</code> |  |
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
|  | <code>]=</code> | <code>:&lt;C-U&gt;call signature#marker#Goto("next", "any",  v:count)&lt;CR&gt;</code> |
|  | <code>]-</code> | <code>:&lt;C-U&gt;call signature#marker#Goto("next", "same", v:count)&lt;CR&gt;</code> |
|  | <code>]`</code> | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "spot", "pos")&lt;CR&gt;</code> |
|  | <code>]'</code> | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "line", "pos")&lt;CR&gt;</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>]d</code> |  |
|  | <code>`[</code> | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "spot", "alpha")&lt;CR&gt;</code> |
|  | <code>`]</code> | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "spot", "alpha")&lt;CR&gt;</code> |
|  | <code>cS</code> | <code>&lt;Plug&gt;CSurround</code> |
|  | <code>cs</code> | <code>&lt;Plug&gt;Csurround</code> |
|  | <code>ds</code> | <code>&lt;Plug&gt;Dsurround</code> |
|  | <code>dm</code> | <code>:&lt;C-U&gt;call signature#utils#Remove(v:count)&lt;CR&gt;</code> |
|  | <code>gcu</code> | <code>&lt;Plug&gt;Commentary&lt;Plug&gt;Commentary</code> |
|  | <code>gcc</code> | <code>&lt;Plug&gt;CommentaryLine</code> |
|  | <code>gc</code> | <code>&lt;Plug&gt;Commentary</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>j</code> | <code>gj</code> |
|  | <code>k</code> | <code>gk</code> |
|  | <code>m?</code> | <code>:&lt;C-U&gt;call signature#marker#List(v:count, 0)&lt;CR&gt;</code> |
|  | <code>m/</code> | <code>:&lt;C-U&gt;call signature#mark#List(0, 0)&lt;CR&gt;</code> |
|  | <code>m&lt;BS&gt;</code> | <code>:&lt;C-U&gt;call signature#marker#Purge()&lt;CR&gt;</code> |
|  | <code>m </code> | <code>:&lt;C-U&gt;call signature#mark#Purge("all")&lt;CR&gt;</code> |
|  | <code>m-</code> | <code>:&lt;C-U&gt;call signature#mark#Purge("line")&lt;CR&gt;</code> |
|  | <code>m.</code> | <code>:&lt;C-U&gt;call signature#mark#ToggleAtLine()&lt;CR&gt;</code> |
|  | <code>m,</code> | <code>:&lt;C-U&gt;call signature#mark#Toggle("next")&lt;CR&gt;</code> |
|  | <code>m</code> | <code>:&lt;C-U&gt;call signature#utils#Input()&lt;CR&gt;</code> |
|  | <code>yo&lt;Esc&gt;</code> | <code></code> |
|  | <code>yo</code> | <code>&lt;Plug&gt;(unimpaired-toggle)</code> |
|  | <code>ySS</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>ySs</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>yss</code> | <code>&lt;Plug&gt;Yssurround</code> |
|  | <code>yS</code> | <code>&lt;Plug&gt;YSurround</code> |
|  | <code>ys</code> | <code>&lt;Plug&gt;Ysurround</code> |
|  | <code>y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(vsnip-cut-text)</code> | <code>:set operatorfunc=&lt;SNR&gt;48_vsnip_cut_text_normal&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;(vsnip-select-text)</code> | <code>:set operatorfunc=&lt;SNR&gt;48_vsnip_select_text_normal&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;VinegarVerticalSplitUp</code> | <code>:call &lt;SNR&gt;47_opendir('vsplit')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VinegarSplitUp</code> | <code>:call &lt;SNR&gt;47_opendir('split')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VinegarTabUp</code> | <code>:call &lt;SNR&gt;47_opendir('tabedit')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VinegarUp</code> | <code>:call &lt;SNR&gt;47_opendir('edit')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-decode-line)</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_xml_decode</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_xml_decode</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-encode-line)</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_xml_encode</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_xml_encode</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-decode-line)</code> | <code>&lt;SNR&gt;46_TransformSetup("url_decode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> | <code>&lt;SNR&gt;46_TransformSetup("url_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_url_decode</code> | <code>&lt;SNR&gt;46_TransformSetup("url_decode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_url_decode</code> | <code>&lt;SNR&gt;46_TransformSetup("url_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-encode-line)</code> | <code>&lt;SNR&gt;46_TransformSetup("url_encode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> | <code>&lt;SNR&gt;46_TransformSetup("url_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_url_encode</code> | <code>&lt;SNR&gt;46_TransformSetup("url_encode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_url_encode</code> | <code>&lt;SNR&gt;46_TransformSetup("url_encode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-decode-line)</code> | <code>&lt;SNR&gt;46_TransformSetup("string_decode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> | <code>&lt;SNR&gt;46_TransformSetup("string_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_string_decode</code> | <code>&lt;SNR&gt;46_TransformSetup("string_decode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_string_decode</code> | <code>&lt;SNR&gt;46_TransformSetup("string_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-encode-line)</code> | <code>&lt;SNR&gt;46_TransformSetup("string_encode")."_"</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> | <code>&lt;SNR&gt;46_TransformSetup("string_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_line_string_encode</code> | <code>&lt;SNR&gt;46_TransformSetup("string_encode")."_"</code> |
|  | <code>&lt;Plug&gt;unimpaired_string_encode</code> | <code>&lt;SNR&gt;46_TransformSetup("string_encode")</code> |
|  | <code>&lt;Plug&gt;unimpairedPutBelow</code> | <code>:call &lt;SNR&gt;46_putline(']p', 'below')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedPutAbove</code> | <code>:call &lt;SNR&gt;46_putline('[p', 'above')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-below-reformat)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . ']p', 'Below')&lt;CR&gt;=']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-above-reformat)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . '[p', 'Above')&lt;CR&gt;=']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-below-leftward)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . ']p', 'Below')&lt;CR&gt;&lt;lt&gt;']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-above-leftward)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . '[p', 'Above')&lt;CR&gt;&lt;lt&gt;']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-below-rightward)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . ']p', 'Below')&lt;CR&gt;&gt;']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-above-rightward)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . '[p', 'Above')&lt;CR&gt;&gt;']</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-below)</code> | <code>:call &lt;SNR&gt;46_putline(']p', 'below')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-put-above)</code> | <code>:call &lt;SNR&gt;46_putline('[p', 'above')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)p</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;0C</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)p</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;o</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)p</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;O</code> |
|  | <code>&lt;Plug&gt;(unimpaired-paste)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedPaste</code> | <code>:call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)t</code> | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;46_ColorColumn(!empty(&cc))&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)t</code> | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;46_ColorColumn(1)&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)t</code> | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;46_ColorColumn(0)&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)+</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;46_CursorOptions()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)+</code> | <code>:&lt;C-U&gt;set nocursorline nocursorcolumn&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)+</code> | <code>:&lt;C-U&gt;set cursorline cursorcolumn&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)x</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;46_CursorOptions()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)x</code> | <code>:&lt;C-U&gt;set nocursorline nocursorcolumn&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)x</code> | <code>:&lt;C-U&gt;set cursorline cursorcolumn&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)v</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=(&virtualedit =~# "all") ? "virtualedit-=all" : "virtualedit+=all"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)v</code> | <code>:&lt;C-U&gt;set virtualedit-=all&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)v</code> | <code>:&lt;C-U&gt;set virtualedit+=all&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)z</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("spell")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)z</code> | <code>:&lt;C-U&gt;setlocal nospell&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)z</code> | <code>:&lt;C-U&gt;setlocal spell&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)w</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("wrap")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)w</code> | <code>:&lt;C-U&gt;setlocal nowrap&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)w</code> | <code>:&lt;C-U&gt;setlocal wrap&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)s</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("spell")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)s</code> | <code>:&lt;C-U&gt;setlocal nospell&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)s</code> | <code>:&lt;C-U&gt;setlocal spell&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)r</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("relativenumber")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)r</code> | <code>:&lt;C-U&gt;setlocal norelativenumber&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)r</code> | <code>:&lt;C-U&gt;setlocal relativenumber&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)n</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("number")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)n</code> | <code>:&lt;C-U&gt;setlocal nonumber&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)n</code> | <code>:&lt;C-U&gt;setlocal number&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)l</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("list")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)l</code> | <code>:&lt;C-U&gt;setlocal nolist&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)l</code> | <code>:&lt;C-U&gt;setlocal list&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)i</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("ignorecase")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)i</code> | <code>:&lt;C-U&gt;set noignorecase&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)i</code> | <code>:&lt;C-U&gt;set ignorecase&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)h</code> | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("hlsearch")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)h</code> | <code>:&lt;C-U&gt;set nohlsearch&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)h</code> | <code>:&lt;C-U&gt;set hlsearch&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)d</code> | <code>:&lt;C-U&gt;&lt;C-R&gt;=&diff ? "diffoff" : "diffthis"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)d</code> | <code>:&lt;C-U&gt;diffoff&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)d</code> | <code>:&lt;C-U&gt;diffthis&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)&#124;</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorcolumn")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)&#124;</code> | <code>:&lt;C-U&gt;setlocal nocursorcolumn&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)&#124;</code> | <code>:&lt;C-U&gt;setlocal cursorcolumn&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)u</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorcolumn")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)u</code> | <code>:&lt;C-U&gt;setlocal nocursorcolumn&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)u</code> | <code>:&lt;C-U&gt;setlocal cursorcolumn&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)_</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)_</code> | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)_</code> | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)-</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)-</code> | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)-</code> | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)c</code> | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)c</code> | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)c</code> | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-toggle)b</code> | <code>:&lt;C-U&gt;set background=&lt;C-R&gt;=&background == "dark" ? "light" : "dark"&lt;CR&gt;&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-disable)b</code> | <code>:&lt;C-U&gt;set background=dark&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-enable)b</code> | <code>:&lt;C-U&gt;set background=light&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveDown</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Move('+',v:count1,'down')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveUp</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Move('--',v:count1,'up')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-down)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Move('+',v:count1,'down')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-up)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Move('--',v:count1,'up')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedBlankDown</code> | <code>:&lt;C-U&gt;exe &lt;SNR&gt;46_BlankDown()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedBlankUp</code> | <code>:&lt;C-U&gt;exe &lt;SNR&gt;46_BlankUp()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-blank-down)</code> | <code>:&lt;C-U&gt;exe &lt;SNR&gt;46_BlankDown()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-blank-up)</code> | <code>:&lt;C-U&gt;exe &lt;SNR&gt;46_BlankUp()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextNext</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Context(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextPrevious</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Context(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-next)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Context(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Context(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedDirectoryPrevious</code> | <code>:&lt;C-U&gt;execute &lt;SNR&gt;46_PreviousFileEntry(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedDirectoryNext</code> | <code>:&lt;C-U&gt;execute &lt;SNR&gt;46_NextFileEntry(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-directory-previous)</code> | <code>:&lt;C-U&gt;execute &lt;SNR&gt;46_PreviousFileEntry(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-directory-next)</code> | <code>:&lt;C-U&gt;execute &lt;SNR&gt;46_NextFileEntry(v:count1)&lt;CR&gt;</code> |
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
|  | <code>&lt;C-Bslash&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;YSurround</code> | <code>&lt;SNR&gt;44_opfunc2('setup')</code> |
|  | <code>&lt;Plug&gt;Ysurround</code> | <code>&lt;SNR&gt;44_opfunc('setup')</code> |
|  | <code>&lt;Plug&gt;YSsurround</code> | <code>&lt;SNR&gt;44_opfunc2('setup').'_'</code> |
|  | <code>&lt;Plug&gt;Yssurround</code> | <code>'^'.v:count1.&lt;SNR&gt;44_opfunc('setup').'g_'</code> |
|  | <code>&lt;Plug&gt;CSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_changesurround(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Csurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_changesurround()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Dsurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_dosurround(&lt;SNR&gt;44_inputtarget())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;SurroundRepeat</code> | <code>.</code> |
|  | <code>&lt;Plug&gt;fugitive:</code> | <code></code> |
|  | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;CommentaryUndo</code> | <code>:echoerr "Change your &lt;Plug&gt;CommentaryUndo map to &lt;Plug&gt;Commentary&lt;Plug&gt;Commentary"&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;ChangeCommentary</code> | <code>c:&lt;C-U&gt;call &lt;SNR&gt;39_textobject(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;CommentaryLine</code> | <code>&lt;SNR&gt;39_go() . '_'</code> |
|  | <code>&lt;Plug&gt;Commentary</code> | <code>&lt;SNR&gt;39_go()</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |
|  | <code>&lt;Down&gt;</code> | <code>:resize +1&lt;CR&gt;</code> |
|  | <code>&lt;Up&gt;</code> | <code>:resize -1&lt;CR&gt;</code> |
|  | <code>&lt;Right&gt;</code> | <code>:vertical resize +1&lt;CR&gt;</code> |
|  | <code>&lt;Left&gt;</code> | <code>:vertical resize -1&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> #</code> | <code>y:match MatchGroup /&lt;C-R&gt;"/&lt;CR&gt;</code> |
|  | <code> y</code> | <code>"+y</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>//</code> | <code>y/&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>S</code> | <code>&lt;Plug&gt;VSurround</code> |
|  | <code>[x</code> | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> |
|  | <code>[u</code> | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> |
|  | <code>[C</code> | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
|  | <code>[y</code> | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
|  | <code>[e</code> | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> |
|  | <code>[n</code> | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]x</code> | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> |
|  | <code>]u</code> | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> |
|  | <code>]C</code> | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
|  | <code>]y</code> | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
|  | <code>]e</code> | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> |
|  | <code>]n</code> | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>gS</code> | <code>&lt;Plug&gt;VgSurround</code> |
|  | <code>gc</code> | <code>&lt;Plug&gt;Commentary</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>&lt;Plug&gt;(vsnip-cut-text)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;48_vsnip_visual_text(visualmode())&lt;CR&gt;gv"_c</code> |
|  | <code>&lt;Plug&gt;(vsnip-select-text)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;48_vsnip_visual_text(visualmode())&lt;CR&gt;gv</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_xml_decode</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_xml_encode</code> | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> | <code>&lt;SNR&gt;46_TransformSetup("url_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_url_decode</code> | <code>&lt;SNR&gt;46_TransformSetup("url_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> | <code>&lt;SNR&gt;46_TransformSetup("url_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_url_encode</code> | <code>&lt;SNR&gt;46_TransformSetup("url_encode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> | <code>&lt;SNR&gt;46_TransformSetup("string_decode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_string_decode</code> | <code>&lt;SNR&gt;46_TransformSetup("string_decode")</code> |
|  | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> | <code>&lt;SNR&gt;46_TransformSetup("string_encode")</code> |
|  | <code>&lt;Plug&gt;unimpaired_string_encode</code> | <code>&lt;SNR&gt;46_TransformSetup("string_encode")</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextNext</code> | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;46_Context(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextPrevious</code> | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;46_Context(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-next)</code> | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;46_Context(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;46_Context(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VgSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Commentary</code> | <code>&lt;SNR&gt;39_go()</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[n</code> | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]n</code> | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>gc</code> | <code>&lt;Plug&gt;Commentary</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextNext</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_ContextMotion(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;unimpairedContextPrevious</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_ContextMotion(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-next)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_ContextMotion(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_ContextMotion(1)&lt;CR&gt;</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Commentary</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;39_textobject(get(v:, 'operator', '') ==# 'c')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |
