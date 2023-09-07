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
|  | `<Tab>` | `:bnext<CR>` |
|  | ` q` | `<Cmd>lua vim.diagnostic.setloclist()<CR>` |
|  | ` e` | `<Cmd>lua vim.diagnostic.open_float()<CR>` |
|  | `%` | `<Plug>(MatchitNormalForward)` |
| Nvim builtin | `&` | `:&&<CR>` |
|  | `,ca` | `<Plug>NERDCommenterAltDelims` |
|  | `,cu` | `<Plug>NERDCommenterUncomment` |
|  | `,cb` | `<Plug>NERDCommenterAlignBoth` |
|  | `,cl` | `<Plug>NERDCommenterAlignLeft` |
|  | `,cA` | `<Plug>NERDCommenterAppend` |
|  | `,cy` | `<Plug>NERDCommenterYank` |
|  | `,cs` | `<Plug>NERDCommenterSexy` |
|  | `,ci` | `<Plug>NERDCommenterInvert` |
|  | `,c$` | `<Plug>NERDCommenterToEOL` |
|  | `,cn` | `<Plug>NERDCommenterNested` |
|  | `,cm` | `<Plug>NERDCommenterMinimal` |
|  | `,c ` | `<Plug>NERDCommenterToggle` |
|  | `,cc` | `<Plug>NERDCommenterComment` |
|  | `,f/` | `<Cmd>Telescope current_buffer_fuzzy_find<CR>` |
|  | `,fc` | `<Cmd>Telescope colorscheme<CR>` |
|  | `,fh` | `<Cmd>Telescope help_tags<CR>` |
|  | `,fb` | `<Cmd>Telescope buffers<CR>` |
|  | `,fg` | `<Cmd>Telescope live_grep<CR>` |
|  | `,ff` | `<Cmd>Telescope find_files<CR>` |
|  | `,$v` | `<C-W>v<C-W>l:terminal<CR>:set nonumber<CR>A` |
|  | `,$s` | `<C-W>s<C-W>j:terminal<CR>:set nonumber<CR>A` |
|  | `,,` | `:noh<CR>` |
|  | `,l` | `:Limelight!!<CR>` |
|  | `,k` | `:ColorToggle<CR>` |
|  | `,j` | `:set filetype=journal<CR>` |
|  | `,h` | `:RainbowParentheses!!<CR>` |
|  | `,a` | `gaip*` |
|  | `,t` | `:call TrimWhitespace()<CR>` |
|  | `,r` | `:so ~/.config/nvim-Optixal/init.vim<CR>` |
|  | `,q` | `:NvimTreeFindFileToggle<CR>` |
|  | `H` | `context#util#map_H()` |
| Nvim builtin | `Y` | `y$` |
|  | `[%` | `<Plug>(MatchitNormalMultiBackward)` |
|  | `[C` | `9999[c` |
|  | `[c` | `<Plug>(signify-prev-hunk)` |
|  | `[d` | `<Cmd>lua vim.diagnostic.goto_prev()<CR>` |
|  | `\` | `,q` |
|  | `]%` | `<Plug>(MatchitNormalMultiForward)` |
|  | `]C` | `9999]c` |
|  | `]c` | `<Plug>(signify-next-hunk)` |
|  | `]d` | `<Cmd>lua vim.diagnostic.goto_next()<CR>` |
|  | `cr` | `<Plug>(abolish-coerce-word)` |
|  | `cS` | `<Plug>CSurround` |
|  | `cs` | `<Plug>Csurround` |
|  | `ds` | `<Plug>Dsurround` |
|  | `gx` | `<Plug>NetrwBrowseX` |
|  | `g%` | `<Plug>(MatchitNormalBackward)` |
|  | `ySS` | `<Plug>YSsurround` |
|  | `ySs` | `<Plug>YSsurround` |
|  | `yss` | `<Plug>Yssurround` |
|  | `yS` | `<Plug>YSurround` |
|  | `ys` | `<Plug>Ysurround` |
|  | `y<C-G>` | `:<C-U>call setreg(v:register, fugitive#Object(@%))<CR>` |
|  | `zt` | `context#util#map_zt()` |
|  | `<Plug>NetrwBrowseX` | `:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR>` |
|  | `<Plug>(MatchitNormalMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>` |
|  | `<Plug>(MatchitNormalMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>` |
|  | `<Plug>(MatchitNormalBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'n')<CR>` |
|  | `<Plug>(MatchitNormalForward)` | `:<C-U>call matchit#Match_wrapper('',1,'n')<CR>` |
|  | `<Plug>(Limelight)` | `:set opfunc=limelight#operator<CR>g@` |
|  | `<Plug>(bullets-promote)` | `:BulletPromote<CR>` |
|  | `<Plug>(bullets-demote)` | `:BulletDemote<CR>` |
|  | `<Plug>(bullets-toggle-checkbox)` | `:ToggleCheckbox<CR>` |
|  | `<Plug>(bullets-renumber)` | `:RenumberList<CR>` |
|  | `<Plug>(bullets-newline)` | `:call <SNR>39_insert_new_bullet()<CR>` |
|  | `<M-w>` | `:silent VCoolIns ra<CR>` |
|  | `<M-v>` | `:silent VCoolIns h<CR>` |
|  | `<M-r>` | `:VCoolIns r<CR>` |
|  | `<M-c>` | `:VCoolor<CR>` |
|  | `<Plug>ColorFgBg` | `:<C-U>ColorSwapFgBg<CR>` |
|  | `<Plug>ColorContrast` | `:<C-U>ColorContrast<CR>` |
|  | `<Plug>Colorizer` | `:<C-U>ColorToggle<CR>` |
|  | `<Plug>NERDCommenterAltDelims` | `:call nerdcommenter#SwitchToAlternativeDelimiters(1)<CR>` |
|  | `<Plug>NERDCommenterUncomment` | `:call nerdcommenter#Comment("n", "Uncomment")<CR>` |
|  | `<Plug>NERDCommenterAlignBoth` | `:call nerdcommenter#Comment("n", "AlignBoth")<CR>` |
|  | `<Plug>NERDCommenterAlignLeft` | `:call nerdcommenter#Comment("n", "AlignLeft")<CR>` |
|  | `<Plug>NERDCommenterAppend` | `:call nerdcommenter#Comment("n", "Append")<CR>` |
|  | `<Plug>NERDCommenterYank` | `:call nerdcommenter#Comment("n", "Yank")<CR>` |
|  | `<Plug>NERDCommenterSexy` | `:call nerdcommenter#Comment("n", "Sexy")<CR>` |
|  | `<Plug>NERDCommenterInvert` | `:call nerdcommenter#Comment("n", "Invert")<CR>` |
|  | `<Plug>NERDCommenterToEOL` | `:call nerdcommenter#Comment("n", "ToEOL")<CR>` |
|  | `<Plug>NERDCommenterNested` | `:call nerdcommenter#Comment("n", "Nested")<CR>` |
|  | `<Plug>NERDCommenterMinimal` | `:call nerdcommenter#Comment("n", "Minimal")<CR>` |
|  | `<Plug>NERDCommenterToggle` | `:call nerdcommenter#Comment("n", "Toggle")<CR>` |
|  | `<Plug>NERDCommenterComment` | `:call nerdcommenter#Comment("n", "Comment")<CR>` |
|  | `<Plug>(EasyAlignOperator)` | `:set opfunc=<SNR>34_easy_align_op<CR>g@` |
|  | `<Plug>(EasyAlignRepeat)` | `:call <SNR>34_easy_align_repeat()<CR>` |
|  | `<Plug>(LiveEasyAlign)` | `:set opfunc=<SNR>34_live_easy_align_op<CR>g@` |
|  | `<Plug>(EasyAlign)` | `:set opfunc=<SNR>34_easy_align_op<CR>g@` |
|  | `<Plug>(abolish-coerce-word)` | `<SNR>33_coerce(nr2char(getchar())).'iw'` |
|  | `<Plug>(abolish-coerce)` | `<SNR>33_coerce(nr2char(getchar()))` |
|  | `<Plug>(signify-prev-hunk)` | `&diff ? '[c' : ":\<C-U>call sy#jump#prev_hunk(v:count1)\<CR>"` |
|  | `<Plug>(signify-next-hunk)` | `&diff ? ']c' : ":\<C-U>call sy#jump#next_hunk(v:count1)\<CR>"` |
|  | `<Plug>YSurround` | `<SNR>29_opfunc2('setup')` |
|  | `<Plug>Ysurround` | `<SNR>29_opfunc('setup')` |
|  | `<Plug>YSsurround` | `<SNR>29_opfunc2('setup').'_'` |
|  | `<Plug>Yssurround` | `'^'.v:count1.<SNR>29_opfunc('setup').'g_'` |
|  | `<Plug>CSurround` | `:<C-U>call <SNR>29_changesurround(1)<CR>` |
|  | `<Plug>Csurround` | `:<C-U>call <SNR>29_changesurround()<CR>` |
|  | `<Plug>Dsurround` | `:<C-U>call <SNR>29_dosurround(<SNR>29_inputtarget())<CR>` |
|  | `<Plug>SurroundRepeat` | `.` |
|  | `<Plug>fugitive:` | `` |
|  | `<Plug>fugitive:y<C-G>` | `:<C-U>call setreg(v:register, fugitive#Object(@%))<CR>` |
|  | `<Plug>PlenaryTestFile` | `:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR>` |
|  | `<Plug>(vsnip-cut-text)` | `:set operatorfunc=<SNR>13_vsnip_cut_text_normal<CR>g@` |
|  | `<Plug>(vsnip-select-text)` | `:set operatorfunc=<SNR>13_vsnip_select_text_normal<CR>g@` |
|  | `<S-Tab>` | `:bprevious<CR>` |
| Nvim builtin | `<C-L>` | `<Cmd>nohlsearch|diffupdate|normal! <C-L><CR>` |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | `#` | `y?\V<C-R>"<CR>` |
|  | `%` | `<Plug>(MatchitVisualForward)` |
| Nvim builtin | `*` | `y/\V<C-R>"<CR>` |
|  | `,cu` | `<Plug>NERDCommenterUncomment` |
|  | `,cb` | `<Plug>NERDCommenterAlignBoth` |
|  | `,cl` | `<Plug>NERDCommenterAlignLeft` |
|  | `,cy` | `<Plug>NERDCommenterYank` |
|  | `,cs` | `<Plug>NERDCommenterSexy` |
|  | `,ci` | `<Plug>NERDCommenterInvert` |
|  | `,cn` | `<Plug>NERDCommenterNested` |
|  | `,cm` | `<Plug>NERDCommenterMinimal` |
|  | `,c ` | `<Plug>NERDCommenterToggle` |
|  | `,cc` | `<Plug>NERDCommenterComment` |
|  | `,l` | `:Limelight!!<CR>` |
|  | `,a` | `gaip*` |
|  | `S` | `<Plug>VSurround` |
|  | `[%` | `<Plug>(MatchitVisualMultiBackward)` |
|  | `]%` | `<Plug>(MatchitVisualMultiForward)` |
|  | `a%` | `<Plug>(MatchitVisualTextObject)` |
|  | `gx` | `<Plug>NetrwBrowseXVis` |
|  | `g%` | `<Plug>(MatchitVisualBackward)` |
|  | `gS` | `<Plug>VgSurround` |
|  | `<Plug>NetrwBrowseXVis` | `:<C-U>call netrw#BrowseXVis()<CR>` |
|  | `<Plug>(MatchitVisualTextObject)` | `<Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)` |
|  | `<Plug>(MatchitVisualMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``` |
|  | `<Plug>(MatchitVisualForward)` | `:<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv``` |
|  | `<Plug>(Limelight)` | `:Limelight<CR>` |
|  | `<Plug>(bullets-promote)` | `:BulletPromoteVisual<CR>` |
|  | `<Plug>(bullets-demote)` | `:BulletDemoteVisual<CR>` |
|  | `<Plug>(bullets-renumber)` | `:RenumberSelection<CR>` |
|  | `<Plug>ColorFgBg` | `:<C-U>ColorSwapFgBg<CR>` |
|  | `<Plug>ColorContrast` | `:<C-U>ColorContrast<CR>` |
|  | `<Plug>Colorizer` | `:ColorHighlight<CR>` |
|  | `<Plug>NERDCommenterUncomment` | `:call nerdcommenter#Comment("x", "Uncomment")<CR>` |
|  | `<Plug>NERDCommenterAlignBoth` | `:call nerdcommenter#Comment("x", "AlignBoth")<CR>` |
|  | `<Plug>NERDCommenterAlignLeft` | `:call nerdcommenter#Comment("x", "AlignLeft")<CR>` |
|  | `<Plug>NERDCommenterYank` | `:call nerdcommenter#Comment("x", "Yank")<CR>` |
|  | `<Plug>NERDCommenterSexy` | `:call nerdcommenter#Comment("x", "Sexy")<CR>` |
|  | `<Plug>NERDCommenterInvert` | `:call nerdcommenter#Comment("x", "Invert")<CR>` |
|  | `<Plug>NERDCommenterNested` | `:call nerdcommenter#Comment("x", "Nested")<CR>` |
|  | `<Plug>NERDCommenterMinimal` | `:call nerdcommenter#Comment("x", "Minimal")<CR>` |
|  | `<Plug>NERDCommenterToggle` | `:call nerdcommenter#Comment("x", "Toggle")<CR>` |
|  | `<Plug>NERDCommenterComment` | `:call nerdcommenter#Comment("x", "Comment")<CR>` |
|  | `<Plug>(EasyAlignRepeat)` | `:<C-U>call <SNR>34_repeat_in_visual()<CR>` |
|  | `<Plug>(LiveEasyAlign)` | `:<C-U>call <SNR>34_live_easy_align_op(visualmode(), 1)<CR>` |
|  | `<Plug>(EasyAlign)` | `:<C-U>call <SNR>34_easy_align_op(visualmode(), 1)<CR>` |
|  | `<Plug>(abolish-coerce)` | `<SNR>33_coerce(nr2char(getchar()))` |
|  | `<Plug>(signify-motion-outer-visual)` | `:<C-U>call sy#util#hunk_text_object(1)<CR>` |
|  | `<Plug>(signify-motion-inner-visual)` | `:<C-U>call sy#util#hunk_text_object(0)<CR>` |
|  | `<Plug>VgSurround` | `:<C-U>call <SNR>29_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR>` |
|  | `<Plug>VSurround` | `:<C-U>call <SNR>29_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR>` |
|  | `<Plug>(vsnip-cut-text)` | `:<C-U>call <SNR>13_vsnip_visual_text(visualmode())<CR>gv"_c` |
|  | `<Plug>(vsnip-select-text)` | `:<C-U>call <SNR>13_vsnip_visual_text(visualmode())<CR>gv` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | `%` | `<Plug>(MatchitOperationForward)` |
|  | `[%` | `<Plug>(MatchitOperationMultiBackward)` |
|  | `]%` | `<Plug>(MatchitOperationMultiForward)` |
|  | `g%` | `<Plug>(MatchitOperationBackward)` |
|  | `<Plug>(MatchitOperationMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "o")<CR>` |
|  | `<Plug>(MatchitOperationMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "o")<CR>` |
|  | `<Plug>(MatchitOperationBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'o')<CR>` |
|  | `<Plug>(MatchitOperationForward)` | `:<C-U>call matchit#Match_wrapper('',1,'o')<CR>` |
|  | `<Plug>(signify-motion-outer-pending)` | `:<C-U>call sy#util#hunk_text_object(1)<CR>` |
|  | `<Plug>(signify-motion-inner-pending)` | `:<C-U>call sy#util#hunk_text_object(0)<CR>` |
