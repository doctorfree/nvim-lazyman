# Scratch Neovim Configuration Information

Jumping-off point for new Neovim users or those who have declared config bankruptcy

- Install and initialize: **`lazyman -x Scratch`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Scratch`**

## Git repository

[https://github.com/ngscheurich/nvim-from-scratch](https://github.com/ngscheurich/nvim-from-scratch)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [ggandor/flit.nvim](https://github.com/ggandor/flit.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

## Scratch Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Esc&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&lt;CR&gt;</code> |

| **Description** | Root (toggle) |
| :---- | :---- |
| **Left hand side** | <code> ee</code> |
| **Right hand side** | |

| **Description** | File (toggle) |
| :---- | :---- |
| **Left hand side** | <code> ef</code> |
| **Right hand side** | |

| **Description** | Buffers |
| :---- | :---- |
| **Left hand side** | <code>  </code> |
| **Right hand side** | |

| **Description** | Quickfix list |
| :---- | :---- |
| **Left hand side** | <code> fq</code> |
| **Right hand side** | |

| **Description** | Location list |
| :---- | :---- |
| **Left hand side** | <code> fl</code> |
| **Right hand side** | |

| **Description** | Help |
| :---- | :---- |
| **Left hand side** | <code> fh</code> |
| **Right hand side** | |

| **Description** | Grep |
| :---- | :---- |
| **Left hand side** | <code> fg</code> |
| **Right hand side** | |

| **Description** | Files |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | |

| **Description** | Commands |
| :---- | :---- |
| **Left hand side** | <code> fc</code> |
| **Right hand side** | |

| **Description** | Autocommands |
| :---- | :---- |
| **Left hand side** | <code> fa</code> |
| **Right hand side** | |

| **Description** | Search |
| :---- | :---- |
| **Left hand side** | <code> /</code> |
| **Right hand side** | |

| **Description** | Plugins |
| :---- | :---- |
| **Left hand side** | <code> p</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Lazy&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>-</code> |
| **Right hand side** | <code>&lt;Plug&gt;(dirvish_up)</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-backward-to)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

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
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

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
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | Comment line |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | <code>v:lua.MiniComment.operator() . "_"</code> |

| **Description** | Comment |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>v:lua.MiniComment.operator()</code> |

| **Description** | Align with preview |
| :---- | :---- |
| **Left hand side** | <code>gA</code> |
| **Right hand side** | <code>v:lua.MiniAlign.action_normal(v:true)</code> |

| **Description** | Align |
| :---- | :---- |
| **Left hand side** | <code>ga</code> |
| **Right hand side** | <code>v:lua.MiniAlign.action_normal(v:false)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-cross-window)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-forward-to)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>yo&lt;Esc&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yo</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |
| **Right hand side** | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward-x)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward-x)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-cross-window)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward-till)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward-to)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward-till)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward-to)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;24_opfunc2('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Ysurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;24_opfunc('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSsurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;24_opfunc2('setup').'_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Yssurround</code> |
| **Right hand side** | <code>'^'.v:count1.&lt;SNR&gt;24_opfunc('setup').'g_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;24_changesurround(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Csurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;24_changesurround()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Dsurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;24_dosurround(&lt;SNR&gt;24_inputtarget())&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'luasnip'.expand_repeat()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'luasnip'.unlink_current_if_deleted()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;2-LeftMouse&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-double-click)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-reload)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;MatchupReload&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-double-click)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#double_click()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(0, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(0, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(0, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(0, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;13_(wise)</code> |
| **Right hand side** | <code>empty(g:v_motion_force) ? 'v' : g:v_motion_force</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-hi-surround)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#matchparen#highlight_surrounding()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-decode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("xml_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("xml_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_xml_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("xml_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_xml_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("xml_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-encode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("xml_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("xml_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_xml_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("xml_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_xml_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("xml_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-decode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("url_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("url_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_url_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("url_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_url_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("url_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-encode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("url_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("url_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_url_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("url_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_url_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("url_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("string_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("string_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_string_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("string_decode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_string_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("string_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode-line)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("string_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("string_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_line_string_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("string_encode")."_"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_string_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;8_TransformSetup("string_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedPutBelow</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;8_putline(']p', 'below')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedPutAbove</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;8_putline('[p', 'above')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-below-reformat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_putline(v:count1 . ']p', 'Below')&lt;CR&gt;=']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-above-reformat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_putline(v:count1 . '[p', 'Above')&lt;CR&gt;=']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-below-leftward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_putline(v:count1 . ']p', 'Below')&lt;CR&gt;&lt;lt&gt;']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-above-leftward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_putline(v:count1 . '[p', 'Above')&lt;CR&gt;&lt;lt&gt;']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-below-rightward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_putline(v:count1 . ']p', 'Below')&lt;CR&gt;&gt;']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-above-rightward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_putline(v:count1 . '[p', 'Above')&lt;CR&gt;&gt;']</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-below)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;8_putline(']p', 'below')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-put-above)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;8_putline('[p', 'above')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)p</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_SetupPaste()&lt;CR&gt;0C</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)p</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_SetupPaste()&lt;CR&gt;o</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)p</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_SetupPaste()&lt;CR&gt;O</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-paste)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_SetupPaste()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedPaste</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;8_SetupPaste()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)t</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;8_ColorColumn(!empty(&cc))&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)t</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;8_ColorColumn(1)&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)t</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set colorcolumn=&lt;C-R&gt;=&lt;SNR&gt;8_ColorColumn(0)&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)+</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;8_CursorOptions()&lt;CR&gt;&lt;CR&gt;</code> |

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
| **Right hand side** | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;8_CursorOptions()&lt;CR&gt;&lt;CR&gt;</code> |

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
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("spell")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)z</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nospell&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)z</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal spell&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("wrap")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nowrap&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)w</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal wrap&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)s</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("spell")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)s</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nospell&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)s</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal spell&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)r</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("relativenumber")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)r</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal norelativenumber&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)r</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal relativenumber&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)n</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("number")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)n</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nonumber&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)n</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal number&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)l</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("list")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)l</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nolist&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)l</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal list&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)i</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("ignorecase")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)i</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set noignorecase&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)i</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set ignorecase&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)h</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("hlsearch")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)h</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set nohlsearch&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)h</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set hlsearch&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

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
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("cursorcolumn")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)&#124;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorcolumn&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)&#124;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorcolumn&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)u</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("cursorcolumn")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)u</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorcolumn&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)u</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorcolumn&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)_</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)_</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)_</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-toggle)c</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal &lt;C-R&gt;=&lt;SNR&gt;8_Toggle("cursorline")&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-disable)c</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal nocursorline&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-enable)c</code> |
| **Right hand side** | <code>:&lt;C-U&gt;setlocal cursorline&lt;C-R&gt;=&lt;SNR&gt;8_StatuslineRefresh()&lt;CR&gt;&lt;CR&gt;</code> |

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
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_Move('+',v:count1,'down')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_Move('--',v:count1,'up')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_Move('+',v:count1,'down')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_Move('--',v:count1,'up')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedBlankDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe &lt;SNR&gt;8_BlankDown()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedBlankUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe &lt;SNR&gt;8_BlankUp()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-blank-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe &lt;SNR&gt;8_BlankDown()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-blank-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe &lt;SNR&gt;8_BlankUp()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_Context(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_Context(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_Context(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;8_Context(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedDirectoryPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute &lt;SNR&gt;8_PreviousFileEntry(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedDirectoryNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute &lt;SNR&gt;8_NextFileEntry(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-directory-previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute &lt;SNR&gt;8_PreviousFileEntry(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-directory-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;execute &lt;SNR&gt;8_NextFileEntry(v:count1)&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;(dirvish_vsplit_up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;vsplit&#124;exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dirvish_split_up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;split&#124;exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dirvish_up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;VSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>X</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-backward-till)</code> |

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
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

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
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;VgSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-cross-window)</code> |

| **Description** | Comment selection |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>:&lt;C-U&gt;lua MiniComment.operator('visual')&lt;CR&gt;</code> |

| **Description** | Align with preview |
| :---- | :---- |
| **Left hand side** | <code>gA</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniAlign.action_visual(true)&lt;CR&gt;</code> |

| **Description** | Align |
| :---- | :---- |
| **Left hand side** | <code>ga</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniAlign.action_visual(false)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-forward-to)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>x</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-forward-till)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("xml_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_xml_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("xml_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-xml-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("xml_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_xml_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("xml_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("url_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_url_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("url_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-url-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("url_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_url_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("url_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-decode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("string_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_string_decode</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("string_decode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-string-encode)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("string_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpaired_string_encode</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_TransformSetup("string_encode")</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;23_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;23_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;23_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;23_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;23_Context(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;23_Context(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;23_Context(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;exe 'normal! gv'&#124;call &lt;SNR&gt;23_Context(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VgSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;22_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;22_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'luasnip'.expand_repeat()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'luasnip'.unlink_current_if_deleted()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(0, 1, 'delim_all')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(1, 1, 'delim_all')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-Z%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;14_(matchup-Z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;14_(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;14_(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;14_(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;14_(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;14_(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;14_(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;14_(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;14_(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;14_(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;14_(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;14_(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward-x)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward-x)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-cross-window)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward-till)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward-to)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward-till)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward-to)</code> |
| **Right hand side** | |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-backward-to)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>X</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-backward-till)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]n</code> |
| **Right hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>a%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-cross-window)</code> |

| **Description** | Comment textobject |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniComment.textobject()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-forward-to)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>x</code> |
| **Right hand side** | <code>&lt;Plug&gt;(leap-forward-till)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-a%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(0, 0, 'delim_all')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(1, 0, 'delim_all')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('Z%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('z%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('[%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op(']%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('g%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#op('%')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'luasnip'.expand_repeat()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'luasnip'.unlink_current_if_deleted()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward-x)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward-x)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-cross-window)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward-till)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-backward-to)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward-till)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(leap-forward-to)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionDown</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;5_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedMoveSelectionUp</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;5_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;5_MoveSelectionDown(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-move-selection-up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;5_MoveSelectionUp(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextNext</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;5_ContextMotion(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;unimpairedContextPrevious</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;5_ContextMotion(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;5_ContextMotion(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(unimpaired-context-previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;5_ContextMotion(1)&lt;CR&gt;</code> |

