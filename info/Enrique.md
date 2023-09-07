# Enrique Neovim Configuration Information

Personal Neovim configuration of Enrique Mejidas

- Install and initialize: **`lazyman -w Enrique`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Enrique`**

## Git repository

[https://github.com/kiyov09/dotfiles](https://github.com/kiyov09/dotfiles)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins


## Enrique Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> r#</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> #</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> g?</code> |
| **Right hand side** | <code>:map  g&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gw</code> |
| **Right hand side** | <code>:GBrowse&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gl</code> |
| **Right hand side** | <code>:Gclog -n 100 --&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gd</code> |
| **Right hand side** | <code>:Git diff&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gP</code> |
| **Right hand side** | <code>:Git push origin </code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gpr</code> |
| **Right hand side** | <code>:Git pull --rebase origin </code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gpo</code> |
| **Right hand side** | <code>:Git pull --ff-only origin </code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gb</code> |
| **Right hand side** | <code>:Git blame&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gs</code> |
| **Right hand side** | <code>:Git&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ts</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tb</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tg</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tf</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> th</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> sd</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> v*</code> |
| **Right hand side** | <code>:vsplit&lt;CR&gt;*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> x*</code> |
| **Right hand side** | <code>:split&lt;CR&gt;*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>  </code> |
| **Right hand side** | <code>&lt;C-^&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> vf</code> |
| **Right hand side** | <code>:Vexplore!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> sf</code> |
| **Right hand side** | <code>:Sexplore&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> f</code> |
| **Right hand side** | <code>:Explore&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> yy</code> |
| **Right hand side** | <code>"+yy</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> y</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>:w&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'[</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "line", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>']</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "line", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>-</code> |
| **Right hand side** | <code>&lt;Plug&gt;VinegarUp</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;p</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-below-leftward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;P</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-above-leftward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;s&lt;Esc&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;s</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-enable)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>=p</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-below-reformat)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>=P</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-above-reformat)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>=s&lt;Esc&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>=s</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;p</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-below-rightward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;P</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-above-rightward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;s&lt;Esc&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;s</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-disable)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[xx</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-xml-encode-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[x</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[uu</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-url-encode-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[u</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[CC</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[C</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[yy</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[y</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[P</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-above)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[p</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-above)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[o&lt;Esc&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[o</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-enable)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[e</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-move-up)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[ </code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-blank-up)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[f</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-directory-previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[&lt;C-T&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-ptprevious)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[T</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-tfirst)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[t</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-tprevious)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[&lt;C-Q&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-cpfile)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[Q</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-cfirst)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[q</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-cprevious)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-lpfile)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[L</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-lfirst)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[l</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-lprevious)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[B</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-bfirst)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[b</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-bprevious)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[A</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-first)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[=</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Goto("prev", "any",  v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Goto("prev", "same", v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[`</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "spot", "pos")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>['</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "line", "pos")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[d</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]xx</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-xml-decode-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]x</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]uu</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-url-decode-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]u</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]CC</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]C</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]yy</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]y</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]P</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-below)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]p</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-put-below)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]o&lt;Esc&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]o</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-disable)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]e</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-move-down)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>] </code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-blank-down)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]f</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-directory-next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]&lt;C-T&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-ptnext)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]T</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-tlast)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]t</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-tnext)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]&lt;C-Q&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-cnfile)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]Q</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-clast)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]q</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-cnext)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-lnfile)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]L</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-llast)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]l</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-lnext)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]B</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-blast)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]b</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-bnext)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]A</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-last)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]=</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Goto("next", "any",  v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Goto("next", "same", v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]`</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "spot", "pos")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]'</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "line", "pos")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]d</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>`[</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("prev", "spot", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>`]</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Goto("next", "spot", "alpha")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cS</code> |
| **Right hand side** | <code>&lt;Plug&gt;CSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;Csurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | <code>&lt;Plug&gt;Dsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#utils#Remove(v:count)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcu</code> |
| **Right hand side** | <code>&lt;Plug&gt;Commentary&lt;Plug&gt;Commentary</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | <code>&lt;Plug&gt;CommentaryLine</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;Commentary</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>gj</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>gk</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m?</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#List(v:count, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m/</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#List(0, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m&lt;BS&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#marker#Purge()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m </code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Purge("all")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Purge("line")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m.</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#ToggleAtLine()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m,</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#mark#Toggle("next")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call signature#utils#Input()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yo&lt;Esc&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yo</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ySs</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | <code>&lt;Plug&gt;Yssurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | <code>&lt;Plug&gt;Ysurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-cut-text)</code> |
| **Right hand side** | <code>:set operatorfunc=&lt;SNR&gt;48_vsnip_cut_text_normal&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-select-text)</code> |
| **Right hand side** | <code>:set operatorfunc=&lt;SNR&gt;48_vsnip_select_text_normal&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VinegarVerticalSplitUp</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;47_opendir('vsplit')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VinegarSplitUp</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;47_opendir('split')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VinegarTabUp</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;47_opendir('tabedit')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VinegarUp</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;47_opendir('edit')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-decode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_xml_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_xml_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-encode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_xml_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_xml_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-decode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_url_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_url_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-encode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_url_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_url_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_string_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_string_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_string_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_string_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedPutBelow</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;46_putline(']p', 'below')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedPutAbove</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;46_putline('[p', 'above')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-below-reformat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . ']p', 'Below')&lt;CR&gt;=']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-above-reformat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . '[p', 'Above')&lt;CR&gt;=']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-below-leftward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . ']p', 'Below')&lt;CR&gt;&lt;lt&gt;']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-above-leftward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . '[p', 'Above')&lt;CR&gt;&lt;lt&gt;']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-below-rightward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . ']p', 'Below')&lt;CR&gt;&gt;']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-above-rightward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_putline(v:count1 . '[p', 'Above')&lt;CR&gt;&gt;']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-below)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;46_putline(']p', 'below')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-above)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;46_putline('[p', 'above')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)p</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;0C</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)p</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;o</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)p</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;O</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-paste)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedPaste</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;46_SetupPaste()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)t</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;46_ColorColumn(!empty(&cc))&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)t</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;46_ColorColumn(1)&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)t</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;46_ColorColumn(0)&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)+</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;46_CursorOptions()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)+</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set nocursorline nocursorcolumn&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)+</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set cursorline cursorcolumn&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)x</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;46_CursorOptions()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)x</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set nocursorline nocursorcolumn&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)x</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set cursorline cursorcolumn&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)v</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set &lt;C-R&gt;=(&virtualedit =~# "all") ? "virtualedit-=all" : "virtualedit+=all"&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)v</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set virtualedit-=all&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)v</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set virtualedit+=all&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)z</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("spell")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)z</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nospell&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)z</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal spell&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("wrap")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nowrap&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal wrap&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)s</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("spell")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)s</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nospell&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)s</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal spell&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)r</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("relativenumber")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)r</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal norelativenumber&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)r</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal relativenumber&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)n</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("number")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)n</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nonumber&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)n</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal number&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)l</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("list")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)l</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nolist&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)l</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal list&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)i</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("ignorecase")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)i</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set noignorecase&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)i</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set ignorecase&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)h</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("hlsearch")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)h</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set nohlsearch&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)h</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set hlsearch&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)d</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=&diff ? "diffoff" : "diffthis"&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)d</code> |
| **Right hand side** | <code>:&lt;C-U&gt;diffoff&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)d</code> |
| **Right hand side** | <code>:&lt;C-U&gt;diffthis&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)&#124;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorcolumn")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)&#124;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorcolumn&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)&#124;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorcolumn&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)u</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorcolumn")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)u</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorcolumn&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)u</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorcolumn&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)_</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)_</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)_</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)c</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;46_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)c</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)c</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;46_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)b</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set background=&lt;C-R&gt;=&background == "dark" ? "light" : "dark"&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)b</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set background=dark&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)b</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set background=light&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Move('+',v:count1,'down')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Move('--',v:count1,'up')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Move('+',v:count1,'down')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Move('--',v:count1,'up')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedBlankDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe &lt;SNR&gt;46_BlankDown()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedBlankUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe &lt;SNR&gt;46_BlankUp()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-blank-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe &lt;SNR&gt;46_BlankDown()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-blank-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe &lt;SNR&gt;46_BlankUp()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Context(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Context(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Context(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_Context(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedDirectoryPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute &lt;SNR&gt;46_PreviousFileEntry(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedDirectoryNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute &lt;SNR&gt;46_NextFileEntry(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-directory-previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute &lt;SNR&gt;46_PreviousFileEntry(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-directory-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute &lt;SNR&gt;46_NextFileEntry(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedTPNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "p".(v:count ? v:count : "")."tnext"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedTPPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "p".(v:count ? v:count : "")."tprevious"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-ptnext)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe v:count1 . "ptnext"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-ptprevious)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe v:count1 . "ptprevious"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedTLast</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tlast"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedTFirst</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tfirst"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedTNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tnext"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedTPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tprevious"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-tlast)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "trewind" : "tlast"&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-tfirst)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "trewind" : "tfirst"&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-tnext)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tnext"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-tprevious)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."tprevious"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedQNFile</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cnfile"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedQPFile</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cpfile"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-cnfile)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cnfile"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-cpfile)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cpfile"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedQLast</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."clast"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedQFirst</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cfirst"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedQNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cnext"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedQPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cprevious"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-clast)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "cc" : "clast"&lt;CR&gt;&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-cfirst)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "cc" : "cfirst"&lt;CR&gt;&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-cnext)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cnext"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-cprevious)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."cprevious"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedLNFile</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lnfile"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedLPFile</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lpfile"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-lnfile)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lnfile"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-lpfile)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lpfile"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedLLast</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."llast"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedLFirst</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lfirst"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedLNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lnext"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedLPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lprevious"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-llast)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "ll" : "llast"&lt;CR&gt;&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-lfirst)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "ll" : "lfirst"&lt;CR&gt;&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-lnext)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lnext"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-lprevious)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."lprevious"&lt;CR&gt;zv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedBLast</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."blast"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedBFirst</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bfirst"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedBNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bnext"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedBPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bprevious"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-blast)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "buffer" : "blast"&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-bfirst)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "buffer" : "bfirst"&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-bnext)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bnext"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-bprevious)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."bprevious"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedALast</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."last"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedAFirst</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."first"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedANext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."next"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedAPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."previous"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-last)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "argument" : "last"&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-first)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;&lt;C-R&gt;=v:count ? v:count . "argument" : "first"&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."next"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe "".(v:count ? v:count : "")."previous"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;44_opfunc2('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Ysurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;44_opfunc('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSsurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;44_opfunc2('setup').'_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Yssurround</code> |
| **Right hand side** | <code>'^'.v:count1.&lt;SNR&gt;44_opfunc('setup').'g_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_changesurround(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Csurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_changesurround()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Dsurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_dosurround(&lt;SNR&gt;44_inputtarget())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;SurroundRepeat</code> |
| **Right hand side** | <code>.</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CommentaryUndo</code> |
| **Right hand side** | <code>:echoerr "Change your &lt;Plug&gt;CommentaryUndo map to &lt;Plug&gt;Commentary&lt;Plug&gt;Commentary"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ChangeCommentary</code> |
| **Right hand side** | <code>c:&lt;C-U&gt;call &lt;SNR&gt;39_textobject(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CommentaryLine</code> |
| **Right hand side** | <code>&lt;SNR&gt;39_go() . '_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Commentary</code> |
| **Right hand side** | <code>&lt;SNR&gt;39_go()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code>:resize +1&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code>:resize -1&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code>:vertical resize +1&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code>:vertical resize -1&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> #</code> |
| **Right hand side** | <code>y:match MatchGroup /&lt;C-R&gt;"/&lt;CR&gt;</code> |

| **Description** | |
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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>//</code> |
| **Right hand side** | <code>y/&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;VSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[x</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[u</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[C</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[y</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[e</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]x</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]u</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]C</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]y</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]e</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;VgSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;Commentary</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-cut-text)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;48_vsnip_visual_text(visualmode())&lt;CR&gt;gv"_c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-select-text)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;48_vsnip_visual_text(visualmode())&lt;CR&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_xml_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_xml_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("xml_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_url_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_url_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("url_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_string_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_string_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;46_TransformSetup("string_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;46_Context(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;46_Context(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;46_Context(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;46_Context(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VgSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;44_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Commentary</code> |
| **Right hand side** | <code>&lt;SNR&gt;39_go()</code> |

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
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;Commentary</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_ContextMotion(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_ContextMotion(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_ContextMotion(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;46_ContextMotion(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Commentary</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;39_textobject(get(v:, 'operator', '') ==# 'c')&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |

