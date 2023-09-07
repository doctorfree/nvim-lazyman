## Optixal Neovim Configuration Information

Hybrid Neovim config for developers with a functional yet aesthetic experience. Uses a combination of vimscript and lua with the 'vim-plug' plugin manager

- Install and initialize: **`lazyman -w Optixal`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Plug](https://github.com/junegunn/vim-plug)
- Installation location:  **`~/.config/nvim-Optixal`**

### Git repository

[https://github.com/Optixal/neovim-init.vim](https://github.com/Optixal/neovim-init.vim)

### Neovimcraft entry

[http://neovimcraft.com/plugin/Optixal/neovim-init.vim](http://neovimcraft.com/plugin/Optixal/neovim-init.vim)

### Plug managed plugins

- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs.git)
- [psf/black](https://github.com/psf/black.git)
- [dkarter/bullets.vim](https://github.com/dkarter/bullets.vim.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer.git)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline.git)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp.git)
- [hrsh7th/cmp-nvim-lsp-signature-help](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help.git)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path.git)
- [hrsh7th/cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip.git)
- [chrisbra/Colorizer](https://github.com/chrisbra/Colorizer.git)
- [wellle/context.vim](https://github.com/wellle/context.vim.git)
- [dracula/vim](https://github.com/dracula/vim.git)
- [antoinemadec/FixCursorHold.nvim](https://github.com/antoinemadec/FixCursorHold.nvim.git)
- [yuttie/hydrangea-vim](https://github.com/yuttie/hydrangea-vim.git)
- [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine.git)
- [junegunn/limelight.vim](https://github.com/junegunn/limelight.vim.git)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim.git)
- [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter.git)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp.git)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig.git)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua.git)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter.git)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons.git)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim.git)
- [junegunn/rainbow_parentheses.vim](https://github.com/junegunn/rainbow_parentheses.vim.git)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim.git)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim.git)
- [KabbAmine/vCoolor.vim](https://github.com/KabbAmine/vCoolor.vim.git)
- [tpope/vim-abolish](https://github.com/tpope/vim-abolish.git)
- [alvan/vim-closetag](https://github.com/alvan/vim-closetag.git)
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align.git)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive.git)
- [junegunn/vim-journal](https://github.com/junegunn/vim-journal.git)
- [heavenshell/vim-pydocstring](https://github.com/heavenshell/vim-pydocstring.git)
- [tpope/vim-sensible](https://github.com/tpope/vim-sensible.git)
- [mhinz/vim-signify](https://github.com/mhinz/vim-signify.git)
- [tpope/vim-surround](https://github.com/tpope/vim-surround.git)
- [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip.git)
- [zaki/zazen](https://github.com/zaki/zazen.git)

### Optixal Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>&lt;Tab&gt;</code> | <code>:bnext&lt;CR&gt;</code> |
|  | <code> q</code> | <code>&lt;Cmd&gt;lua vim.diagnostic.setloclist()&lt;CR&gt;</code> |
|  | <code> e</code> | <code>&lt;Cmd&gt;lua vim.diagnostic.open_float()&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>,ca</code> | <code>&lt;Plug&gt;NERDCommenterAltDelims</code> |
|  | <code>,cu</code> | <code>&lt;Plug&gt;NERDCommenterUncomment</code> |
|  | <code>,cb</code> | <code>&lt;Plug&gt;NERDCommenterAlignBoth</code> |
|  | <code>,cl</code> | <code>&lt;Plug&gt;NERDCommenterAlignLeft</code> |
|  | <code>,cA</code> | <code>&lt;Plug&gt;NERDCommenterAppend</code> |
|  | <code>,cy</code> | <code>&lt;Plug&gt;NERDCommenterYank</code> |
|  | <code>,cs</code> | <code>&lt;Plug&gt;NERDCommenterSexy</code> |
|  | <code>,ci</code> | <code>&lt;Plug&gt;NERDCommenterInvert</code> |
|  | <code>,c$</code> | <code>&lt;Plug&gt;NERDCommenterToEOL</code> |
|  | <code>,cn</code> | <code>&lt;Plug&gt;NERDCommenterNested</code> |
|  | <code>,cm</code> | <code>&lt;Plug&gt;NERDCommenterMinimal</code> |
|  | <code>,c </code> | <code>&lt;Plug&gt;NERDCommenterToggle</code> |
|  | <code>,cc</code> | <code>&lt;Plug&gt;NERDCommenterComment</code> |
|  | <code>,f/</code> | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |
|  | <code>,fc</code> | <code>&lt;Cmd&gt;Telescope colorscheme&lt;CR&gt;</code> |
|  | <code>,fh</code> | <code>&lt;Cmd&gt;Telescope help_tags&lt;CR&gt;</code> |
|  | <code>,fb</code> | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |
|  | <code>,fg</code> | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |
|  | <code>,ff</code> | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |
|  | <code>,$v</code> | <code>&lt;C-W&gt;v&lt;C-W&gt;l:terminal&lt;CR&gt;:set nonumber&lt;CR&gt;A</code> |
|  | <code>,$s</code> | <code>&lt;C-W&gt;s&lt;C-W&gt;j:terminal&lt;CR&gt;:set nonumber&lt;CR&gt;A</code> |
|  | <code>,,</code> | <code>:noh&lt;CR&gt;</code> |
|  | <code>,l</code> | <code>:Limelight!!&lt;CR&gt;</code> |
|  | <code>,k</code> | <code>:ColorToggle&lt;CR&gt;</code> |
|  | <code>,j</code> | <code>:set filetype=journal&lt;CR&gt;</code> |
|  | <code>,h</code> | <code>:RainbowParentheses!!&lt;CR&gt;</code> |
|  | <code>,a</code> | <code>gaip*</code> |
|  | <code>,t</code> | <code>:call TrimWhitespace()&lt;CR&gt;</code> |
|  | <code>,r</code> | <code>:so ~/.config/nvim-Optixal/init.vim&lt;CR&gt;</code> |
|  | <code>,q</code> | <code>:NvimTreeFindFileToggle&lt;CR&gt;</code> |
|  | <code>H</code> | <code>context#util#map_H()</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>[C</code> | <code>9999[c</code> |
|  | <code>[c</code> | <code>&lt;Plug&gt;(signify-prev-hunk)</code> |
|  | <code>[d</code> | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_prev()&lt;CR&gt;</code> |
|  | <code>\</code> | <code>,q</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>]C</code> | <code>9999]c</code> |
|  | <code>]c</code> | <code>&lt;Plug&gt;(signify-next-hunk)</code> |
|  | <code>]d</code> | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_next()&lt;CR&gt;</code> |
|  | <code>cr</code> | <code>&lt;Plug&gt;(abolish-coerce-word)</code> |
|  | <code>cS</code> | <code>&lt;Plug&gt;CSurround</code> |
|  | <code>cs</code> | <code>&lt;Plug&gt;Csurround</code> |
|  | <code>ds</code> | <code>&lt;Plug&gt;Dsurround</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>ySS</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>ySs</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>yss</code> | <code>&lt;Plug&gt;Yssurround</code> |
|  | <code>yS</code> | <code>&lt;Plug&gt;YSurround</code> |
|  | <code>ys</code> | <code>&lt;Plug&gt;Ysurround</code> |
|  | <code>y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>zt</code> | <code>context#util#map_zt()</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Limelight)</code> | <code>:set opfunc=limelight#operator&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;(bullets-promote)</code> | <code>:BulletPromote&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(bullets-demote)</code> | <code>:BulletDemote&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(bullets-toggle-checkbox)</code> | <code>:ToggleCheckbox&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(bullets-renumber)</code> | <code>:RenumberList&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(bullets-newline)</code> | <code>:call &lt;SNR&gt;39_insert_new_bullet()&lt;CR&gt;</code> |
|  | <code>&lt;M-w&gt;</code> | <code>:silent VCoolIns ra&lt;CR&gt;</code> |
|  | <code>&lt;M-v&gt;</code> | <code>:silent VCoolIns h&lt;CR&gt;</code> |
|  | <code>&lt;M-r&gt;</code> | <code>:VCoolIns r&lt;CR&gt;</code> |
|  | <code>&lt;M-c&gt;</code> | <code>:VCoolor&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;ColorFgBg</code> | <code>:&lt;C-U&gt;ColorSwapFgBg&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;ColorContrast</code> | <code>:&lt;C-U&gt;ColorContrast&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Colorizer</code> | <code>:&lt;C-U&gt;ColorToggle&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterAltDelims</code> | <code>:call nerdcommenter#SwitchToAlternativeDelimiters(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterUncomment</code> | <code>:call nerdcommenter#Comment("n", "Uncomment")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterAlignBoth</code> | <code>:call nerdcommenter#Comment("n", "AlignBoth")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterAlignLeft</code> | <code>:call nerdcommenter#Comment("n", "AlignLeft")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterAppend</code> | <code>:call nerdcommenter#Comment("n", "Append")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterYank</code> | <code>:call nerdcommenter#Comment("n", "Yank")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterSexy</code> | <code>:call nerdcommenter#Comment("n", "Sexy")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterInvert</code> | <code>:call nerdcommenter#Comment("n", "Invert")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterToEOL</code> | <code>:call nerdcommenter#Comment("n", "ToEOL")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterNested</code> | <code>:call nerdcommenter#Comment("n", "Nested")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterMinimal</code> | <code>:call nerdcommenter#Comment("n", "Minimal")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterToggle</code> | <code>:call nerdcommenter#Comment("n", "Toggle")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterComment</code> | <code>:call nerdcommenter#Comment("n", "Comment")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(EasyAlignOperator)</code> | <code>:set opfunc=&lt;SNR&gt;34_easy_align_op&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> | <code>:call &lt;SNR&gt;34_easy_align_repeat()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(LiveEasyAlign)</code> | <code>:set opfunc=&lt;SNR&gt;34_live_easy_align_op&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;(EasyAlign)</code> | <code>:set opfunc=&lt;SNR&gt;34_easy_align_op&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;(abolish-coerce-word)</code> | <code>&lt;SNR&gt;33_coerce(nr2char(getchar())).'iw'</code> |
|  | <code>&lt;Plug&gt;(abolish-coerce)</code> | <code>&lt;SNR&gt;33_coerce(nr2char(getchar()))</code> |
|  | <code>&lt;Plug&gt;(signify-prev-hunk)</code> | <code>&diff ? '[c' : ":\&lt;C-U&gt;call sy#jump#prev_hunk(v:count1)\&lt;CR&gt;"</code> |
|  | <code>&lt;Plug&gt;(signify-next-hunk)</code> | <code>&diff ? ']c' : ":\&lt;C-U&gt;call sy#jump#next_hunk(v:count1)\&lt;CR&gt;"</code> |
|  | <code>&lt;Plug&gt;YSurround</code> | <code>&lt;SNR&gt;29_opfunc2('setup')</code> |
|  | <code>&lt;Plug&gt;Ysurround</code> | <code>&lt;SNR&gt;29_opfunc('setup')</code> |
|  | <code>&lt;Plug&gt;YSsurround</code> | <code>&lt;SNR&gt;29_opfunc2('setup').'_'</code> |
|  | <code>&lt;Plug&gt;Yssurround</code> | <code>'^'.v:count1.&lt;SNR&gt;29_opfunc('setup').'g_'</code> |
|  | <code>&lt;Plug&gt;CSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_changesurround(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Csurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_changesurround()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Dsurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_dosurround(&lt;SNR&gt;29_inputtarget())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;SurroundRepeat</code> | <code>.</code> |
|  | <code>&lt;Plug&gt;fugitive:</code> | <code></code> |
|  | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(vsnip-cut-text)</code> | <code>:set operatorfunc=&lt;SNR&gt;13_vsnip_cut_text_normal&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;(vsnip-select-text)</code> | <code>:set operatorfunc=&lt;SNR&gt;13_vsnip_select_text_normal&lt;CR&gt;g@</code> |
|  | <code>&lt;S-Tab&gt;</code> | <code>:bprevious&lt;CR&gt;</code> |
| Nvim builtin | <code>&lt;C-L&gt;</code> | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>,cu</code> | <code>&lt;Plug&gt;NERDCommenterUncomment</code> |
|  | <code>,cb</code> | <code>&lt;Plug&gt;NERDCommenterAlignBoth</code> |
|  | <code>,cl</code> | <code>&lt;Plug&gt;NERDCommenterAlignLeft</code> |
|  | <code>,cy</code> | <code>&lt;Plug&gt;NERDCommenterYank</code> |
|  | <code>,cs</code> | <code>&lt;Plug&gt;NERDCommenterSexy</code> |
|  | <code>,ci</code> | <code>&lt;Plug&gt;NERDCommenterInvert</code> |
|  | <code>,cn</code> | <code>&lt;Plug&gt;NERDCommenterNested</code> |
|  | <code>,cm</code> | <code>&lt;Plug&gt;NERDCommenterMinimal</code> |
|  | <code>,c </code> | <code>&lt;Plug&gt;NERDCommenterToggle</code> |
|  | <code>,cc</code> | <code>&lt;Plug&gt;NERDCommenterComment</code> |
|  | <code>,l</code> | <code>:Limelight!!&lt;CR&gt;</code> |
|  | <code>,a</code> | <code>gaip*</code> |
|  | <code>S</code> | <code>&lt;Plug&gt;VSurround</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>gS</code> | <code>&lt;Plug&gt;VgSurround</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;Plug&gt;(Limelight)</code> | <code>:Limelight&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(bullets-promote)</code> | <code>:BulletPromoteVisual&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(bullets-demote)</code> | <code>:BulletDemoteVisual&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(bullets-renumber)</code> | <code>:RenumberSelection&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;ColorFgBg</code> | <code>:&lt;C-U&gt;ColorSwapFgBg&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;ColorContrast</code> | <code>:&lt;C-U&gt;ColorContrast&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Colorizer</code> | <code>:ColorHighlight&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterUncomment</code> | <code>:call nerdcommenter#Comment("x", "Uncomment")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterAlignBoth</code> | <code>:call nerdcommenter#Comment("x", "AlignBoth")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterAlignLeft</code> | <code>:call nerdcommenter#Comment("x", "AlignLeft")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterYank</code> | <code>:call nerdcommenter#Comment("x", "Yank")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterSexy</code> | <code>:call nerdcommenter#Comment("x", "Sexy")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterInvert</code> | <code>:call nerdcommenter#Comment("x", "Invert")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterNested</code> | <code>:call nerdcommenter#Comment("x", "Nested")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterMinimal</code> | <code>:call nerdcommenter#Comment("x", "Minimal")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterToggle</code> | <code>:call nerdcommenter#Comment("x", "Toggle")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NERDCommenterComment</code> | <code>:call nerdcommenter#Comment("x", "Comment")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;34_repeat_in_visual()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(LiveEasyAlign)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;34_live_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(EasyAlign)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;34_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(abolish-coerce)</code> | <code>&lt;SNR&gt;33_coerce(nr2char(getchar()))</code> |
|  | <code>&lt;Plug&gt;(signify-motion-outer-visual)</code> | <code>:&lt;C-U&gt;call sy#util#hunk_text_object(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(signify-motion-inner-visual)</code> | <code>:&lt;C-U&gt;call sy#util#hunk_text_object(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VgSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(vsnip-cut-text)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;13_vsnip_visual_text(visualmode())&lt;CR&gt;gv"_c</code> |
|  | <code>&lt;Plug&gt;(vsnip-select-text)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;13_vsnip_visual_text(visualmode())&lt;CR&gt;gv</code> |

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
|  | <code>&lt;Plug&gt;(signify-motion-outer-pending)</code> | <code>:&lt;C-U&gt;call sy#util#hunk_text_object(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(signify-motion-inner-pending)</code> | <code>:&lt;C-U&gt;call sy#util#hunk_text_object(0)&lt;CR&gt;</code> |
