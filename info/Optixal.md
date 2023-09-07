# Optixal Neovim Configuration Information

Hybrid Neovim config for developers with a functional yet aesthetic experience. Uses a combination of vimscript and lua with the 'vim-plug' plugin manager

- Install and initialize: **`lazyman -w Optixal`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Plug](https://github.com/junegunn/vim-plug)
- Installation location:  **`~/.config/nvim-Optixal`**

## Git repository

[https://github.com/Optixal/neovim-init.vim](https://github.com/Optixal/neovim-init.vim)

## Neovimcraft entry

[http://neovimcraft.com/plugin/Optixal/neovim-init.vim](http://neovimcraft.com/plugin/Optixal/neovim-init.vim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Plug managed plugins

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

## Optixal Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | <code>:bnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.setloclist()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.open_float()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>,ca</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterAltDelims</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cu</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterUncomment</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cb</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterAlignBoth</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cl</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterAlignLeft</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cA</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterAppend</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cy</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterYank</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterSexy</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ci</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterInvert</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,c$</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterToEOL</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cn</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterNested</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cm</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterMinimal</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,c </code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterToggle</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cc</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterComment</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,f/</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope colorscheme&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fh</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope help_tags&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fg</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ff</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,$v</code> |
| **Right hand side** | <code>&lt;C-W&gt;v&lt;C-W&gt;l:terminal&lt;CR&gt;:set nonumber&lt;CR&gt;A</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,$s</code> |
| **Right hand side** | <code>&lt;C-W&gt;s&lt;C-W&gt;j:terminal&lt;CR&gt;:set nonumber&lt;CR&gt;A</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,,</code> |
| **Right hand side** | <code>:noh&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,l</code> |
| **Right hand side** | <code>:Limelight!!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,k</code> |
| **Right hand side** | <code>:ColorToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,j</code> |
| **Right hand side** | <code>:set filetype=journal&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,h</code> |
| **Right hand side** | <code>:RainbowParentheses!!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,a</code> |
| **Right hand side** | <code>gaip*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,t</code> |
| **Right hand side** | <code>:call TrimWhitespace()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,r</code> |
| **Right hand side** | <code>:so ~/.config/nvim-Optixal/init.vim&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,q</code> |
| **Right hand side** | <code>:NvimTreeFindFileToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>context#util#map_H()</code> |

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
| **Left hand side** | <code>[C</code> |
| **Right hand side** | <code>9999[c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[c</code> |
| **Right hand side** | <code>&lt;Plug&gt;(signify-prev-hunk)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[d</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_prev()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\</code> |
| **Right hand side** | <code>,q</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]C</code> |
| **Right hand side** | <code>9999]c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]c</code> |
| **Right hand side** | <code>&lt;Plug&gt;(signify-next-hunk)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]d</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cr</code> |
| **Right hand side** | <code>&lt;Plug&gt;(abolish-coerce-word)</code> |

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
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

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
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>context#util#map_zt()</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;(Limelight)</code> |
| **Right hand side** | <code>:set opfunc=limelight#operator&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(bullets-promote)</code> |
| **Right hand side** | <code>:BulletPromote&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(bullets-demote)</code> |
| **Right hand side** | <code>:BulletDemote&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(bullets-toggle-checkbox)</code> |
| **Right hand side** | <code>:ToggleCheckbox&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(bullets-renumber)</code> |
| **Right hand side** | <code>:RenumberList&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(bullets-newline)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;39_insert_new_bullet()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-w&gt;</code> |
| **Right hand side** | <code>:silent VCoolIns ra&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-v&gt;</code> |
| **Right hand side** | <code>:silent VCoolIns h&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-r&gt;</code> |
| **Right hand side** | <code>:VCoolIns r&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-c&gt;</code> |
| **Right hand side** | <code>:VCoolor&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ColorFgBg</code> |
| **Right hand side** | <code>:&lt;C-U&gt;ColorSwapFgBg&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ColorContrast</code> |
| **Right hand side** | <code>:&lt;C-U&gt;ColorContrast&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Colorizer</code> |
| **Right hand side** | <code>:&lt;C-U&gt;ColorToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterAltDelims</code> |
| **Right hand side** | <code>:call nerdcommenter#SwitchToAlternativeDelimiters(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterUncomment</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "Uncomment")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterAlignBoth</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "AlignBoth")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterAlignLeft</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "AlignLeft")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterAppend</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "Append")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterYank</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "Yank")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterSexy</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "Sexy")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterInvert</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "Invert")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterToEOL</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "ToEOL")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterNested</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "Nested")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterMinimal</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "Minimal")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterToggle</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "Toggle")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterComment</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("n", "Comment")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignOperator)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;34_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;34_easy_align_repeat()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(LiveEasyAlign)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;34_live_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;34_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(abolish-coerce-word)</code> |
| **Right hand side** | <code>&lt;SNR&gt;33_coerce(nr2char(getchar())).'iw'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(abolish-coerce)</code> |
| **Right hand side** | <code>&lt;SNR&gt;33_coerce(nr2char(getchar()))</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(signify-prev-hunk)</code> |
| **Right hand side** | <code>&diff ? '[c' : ":\&lt;C-U&gt;call sy#jump#prev_hunk(v:count1)\&lt;CR&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(signify-next-hunk)</code> |
| **Right hand side** | <code>&diff ? ']c' : ":\&lt;C-U&gt;call sy#jump#next_hunk(v:count1)\&lt;CR&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_opfunc2('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Ysurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_opfunc('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSsurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;29_opfunc2('setup').'_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Yssurround</code> |
| **Right hand side** | <code>'^'.v:count1.&lt;SNR&gt;29_opfunc('setup').'g_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_changesurround(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Csurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_changesurround()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Dsurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_dosurround(&lt;SNR&gt;29_inputtarget())&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-cut-text)</code> |
| **Right hand side** | <code>:set operatorfunc=&lt;SNR&gt;13_vsnip_cut_text_normal&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-select-text)</code> |
| **Right hand side** | <code>:set operatorfunc=&lt;SNR&gt;13_vsnip_select_text_normal&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Tab&gt;</code> |
| **Right hand side** | <code>:bprevious&lt;CR&gt;</code> |

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
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cu</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterUncomment</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cb</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterAlignBoth</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cl</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterAlignLeft</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cy</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterYank</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterSexy</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ci</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterInvert</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cn</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterNested</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cm</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterMinimal</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,c </code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterToggle</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cc</code> |
| **Right hand side** | <code>&lt;Plug&gt;NERDCommenterComment</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,l</code> |
| **Right hand side** | <code>:Limelight!!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,a</code> |
| **Right hand side** | <code>gaip*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;VSurround</code> |

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
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;VgSurround</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;(Limelight)</code> |
| **Right hand side** | <code>:Limelight&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(bullets-promote)</code> |
| **Right hand side** | <code>:BulletPromoteVisual&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(bullets-demote)</code> |
| **Right hand side** | <code>:BulletDemoteVisual&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(bullets-renumber)</code> |
| **Right hand side** | <code>:RenumberSelection&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ColorFgBg</code> |
| **Right hand side** | <code>:&lt;C-U&gt;ColorSwapFgBg&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ColorContrast</code> |
| **Right hand side** | <code>:&lt;C-U&gt;ColorContrast&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Colorizer</code> |
| **Right hand side** | <code>:ColorHighlight&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterUncomment</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "Uncomment")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterAlignBoth</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "AlignBoth")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterAlignLeft</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "AlignLeft")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterYank</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "Yank")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterSexy</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "Sexy")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterInvert</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "Invert")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterNested</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "Nested")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterMinimal</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "Minimal")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterToggle</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "Toggle")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NERDCommenterComment</code> |
| **Right hand side** | <code>:call nerdcommenter#Comment("x", "Comment")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;34_repeat_in_visual()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(LiveEasyAlign)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;34_live_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;34_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(abolish-coerce)</code> |
| **Right hand side** | <code>&lt;SNR&gt;33_coerce(nr2char(getchar()))</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(signify-motion-outer-visual)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sy#util#hunk_text_object(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(signify-motion-inner-visual)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sy#util#hunk_text_object(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VgSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;29_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-cut-text)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;13_vsnip_visual_text(visualmode())&lt;CR&gt;gv"_c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-select-text)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;13_vsnip_visual_text(visualmode())&lt;CR&gt;gv</code> |


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
| **Left hand side** | <code>&lt;Plug&gt;(signify-motion-outer-pending)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sy#util#hunk_text_object(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(signify-motion-inner-pending)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sy#util#hunk_text_object(0)&lt;CR&gt;</code> |

