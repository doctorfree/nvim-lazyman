## Scratch Neovim Configuration Information

Jumping-off point for new Neovim users or those who have declared config bankruptcy

- Install and initialize: **`lazyman -x Scratch`**
- Configuration category: [Starter](https://github.com/doctorfree/nvim-lazyman#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Scratch`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

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
|  | <Esc> | <Cmd>nohlsearch<CR> |
| Autocommands |  fa |  |
| Search |  / |  |
| Buffers |    |  |
| Quickfix list |  fq |  |
| Location list |  fl |  |
| Help |  fh |  |
| Grep |  fg |  |
| Files |  ff |  |
| Commands |  fc |  |
| File (toggle) |  ef |  |
| Root (toggle) |  ee |  |
| Plugins |  p | <Cmd>Lazy<CR> |
|  | % | <Plug>(matchup-%) |
| Nvim builtin | & | :&&<CR> |
|  | - | <Plug>(dirvish_up) |
|  | <lt>p | <Plug>(unimpaired-put-below-leftward) |
|  | <lt>P | <Plug>(unimpaired-put-above-leftward) |
|  | <lt>s<Esc> |  |
|  | <lt>s | <Plug>(unimpaired-enable) |
|  | =p | <Plug>(unimpaired-put-below-reformat) |
|  | =P | <Plug>(unimpaired-put-above-reformat) |
|  | =s<Esc> |  |
|  | =s | <Plug>(unimpaired-toggle) |
|  | >p | <Plug>(unimpaired-put-below-rightward) |
|  | >P | <Plug>(unimpaired-put-above-rightward) |
|  | >s<Esc> |  |
|  | >s | <Plug>(unimpaired-disable) |
|  | F |  |
|  | S | <Plug>(leap-backward-to) |
|  | T |  |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(matchup-[%) |
|  | [xx | <Plug>(unimpaired-xml-encode-line) |
|  | [x | <Plug>(unimpaired-xml-encode) |
|  | [uu | <Plug>(unimpaired-url-encode-line) |
|  | [u | <Plug>(unimpaired-url-encode) |
|  | [CC | <Plug>(unimpaired-string-encode-line) |
|  | [C | <Plug>(unimpaired-string-encode) |
|  | [yy | <Plug>(unimpaired-string-encode-line) |
|  | [y | <Plug>(unimpaired-string-encode) |
|  | [P | <Plug>(unimpaired-put-above) |
|  | [p | <Plug>(unimpaired-put-above) |
|  | [o<Esc> |  |
|  | [o | <Plug>(unimpaired-enable) |
|  | [e | <Plug>(unimpaired-move-up) |
|  | [  | <Plug>(unimpaired-blank-up) |
|  | [n | <Plug>(unimpaired-context-previous) |
|  | [f | <Plug>(unimpaired-directory-previous) |
|  | [<C-T> | <Plug>(unimpaired-ptprevious) |
|  | [T | <Plug>(unimpaired-tfirst) |
|  | [t | <Plug>(unimpaired-tprevious) |
|  | [<C-Q> | <Plug>(unimpaired-cpfile) |
|  | [Q | <Plug>(unimpaired-cfirst) |
|  | [q | <Plug>(unimpaired-cprevious) |
|  | [<C-L> | <Plug>(unimpaired-lpfile) |
|  | [L | <Plug>(unimpaired-lfirst) |
|  | [l | <Plug>(unimpaired-lprevious) |
|  | [B | <Plug>(unimpaired-bfirst) |
|  | [b | <Plug>(unimpaired-bprevious) |
|  | [A | <Plug>(unimpaired-first) |
|  | [a | <Plug>(unimpaired-previous) |
|  | ]% | <Plug>(matchup-]%) |
|  | ]xx | <Plug>(unimpaired-xml-decode-line) |
|  | ]x | <Plug>(unimpaired-xml-decode) |
|  | ]uu | <Plug>(unimpaired-url-decode-line) |
|  | ]u | <Plug>(unimpaired-url-decode) |
|  | ]CC | <Plug>(unimpaired-string-decode-line) |
|  | ]C | <Plug>(unimpaired-string-decode) |
|  | ]yy | <Plug>(unimpaired-string-decode-line) |
|  | ]y | <Plug>(unimpaired-string-decode) |
|  | ]P | <Plug>(unimpaired-put-below) |
|  | ]p | <Plug>(unimpaired-put-below) |
|  | ]o<Esc> |  |
|  | ]o | <Plug>(unimpaired-disable) |
|  | ]e | <Plug>(unimpaired-move-down) |
|  | ]  | <Plug>(unimpaired-blank-down) |
|  | ]n | <Plug>(unimpaired-context-next) |
|  | ]f | <Plug>(unimpaired-directory-next) |
|  | ]<C-T> | <Plug>(unimpaired-ptnext) |
|  | ]T | <Plug>(unimpaired-tlast) |
|  | ]t | <Plug>(unimpaired-tnext) |
|  | ]<C-Q> | <Plug>(unimpaired-cnfile) |
|  | ]Q | <Plug>(unimpaired-clast) |
|  | ]q | <Plug>(unimpaired-cnext) |
|  | ]<C-L> | <Plug>(unimpaired-lnfile) |
|  | ]L | <Plug>(unimpaired-llast) |
|  | ]l | <Plug>(unimpaired-lnext) |
|  | ]B | <Plug>(unimpaired-blast) |
|  | ]b | <Plug>(unimpaired-bnext) |
|  | ]A | <Plug>(unimpaired-last) |
|  | ]a | <Plug>(unimpaired-next) |
|  | cS | <Plug>CSurround |
|  | cs | <Plug>Csurround |
|  | ds | <Plug>Dsurround |
|  | f |  |
|  | gx | <Plug>NetrwBrowseX |
| Comment line | gcc | v:lua.MiniComment.operator() . "_" |
| Comment | gc | v:lua.MiniComment.operator() |
| Align with preview | gA | v:lua.MiniAlign.action_normal(v:true) |
| Align | ga | v:lua.MiniAlign.action_normal(v:false) |
|  | gs | <Plug>(leap-cross-window) |
|  | g% | <Plug>(matchup-g%) |
|  | s | <Plug>(leap-forward-to) |
|  | t |  |
|  | y<C-G> | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|  | yo<Esc> |  |
|  | yo | <Plug>(unimpaired-toggle) |
|  | ySS | <Plug>YSsurround |
|  | ySs | <Plug>YSsurround |
|  | yss | <Plug>Yssurround |
|  | yS | <Plug>YSurround |
|  | ys | <Plug>Ysurround |
|  | z% | <Plug>(matchup-z%) |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>luasnip-expand-repeat | <Cmd>lua require'luasnip'.expand_repeat()<CR> |
|  | <Plug>luasnip-delete-check | <Cmd>lua require'luasnip'.unlink_current_if_deleted()<CR> |
|  | <Plug>(dirvish_vsplit_up) | :<C-U>vsplit|exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))<CR> |
|  | <Plug>(dirvish_split_up) | :<C-U>split|exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))<CR> |
|  | <Plug>(dirvish_up) | :<C-U>exe 'Dirvish' fnameescape(fnamemodify(@%, ':p'.(@%[-1:]=~'[\\/]'?':h':'').repeat(':h',v:count1)))<CR> |
|  | <Plug>fugitive: |  |
|  | <Plug>fugitive:y<C-G> | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|  | <Plug>(leap-backward-x) |  |
|  | <Plug>(leap-forward-x) |  |
|  | <Plug>(leap-backward) |  |
|  | <Plug>(leap-forward) |  |
|  | <Plug>(leap-cross-window) |  |
|  | <Plug>(leap-backward-till) |  |
|  | <Plug>(leap-backward-to) |  |
|  | <Plug>(leap-forward-till) |  |
|  | <Plug>(leap-forward-to) |  |
|  | <2-LeftMouse> | <Plug>(matchup-double-click) |
|  | <Plug>(matchup-reload) | :<C-U>MatchupReload<CR> |
|  | <Plug>(matchup-double-click) | :<C-U>call matchup#text_obj#double_click()<CR> |
|  | <Plug>(matchup-Z%) | :<C-U>call matchup#motion#jump_inside_prev(0)<CR> |
|  | <Plug>(matchup-z%) | :<C-U>call matchup#motion#jump_inside(0)<CR> |
|  | <Plug>(matchup-[%) | :<C-U>call matchup#motion#find_unmatched(0, 0)<CR> |
|  | <Plug>(matchup-]%) | :<C-U>call matchup#motion#find_unmatched(0, 1)<CR> |
|  | <Plug>(matchup-g%) | :<C-U>call matchup#motion#find_matching_pair(0, 0)<CR> |
|  | <Plug>(matchup-%) | :<C-U>call matchup#motion#find_matching_pair(0, 1)<CR> |
|  | <SNR>12_(wise) | empty(g:v_motion_force) ? 'v' : g:v_motion_force |
|  | <Plug>(matchup-hi-surround) | :<C-U>call matchup#matchparen#highlight_surrounding()<CR> |
|  | <Plug>(unimpaired-xml-decode-line) | <SNR>9_TransformSetup("xml_decode")."_" |
|  | <Plug>(unimpaired-xml-decode) | <SNR>9_TransformSetup("xml_decode") |
|  | <Plug>unimpaired_line_xml_decode | <SNR>9_TransformSetup("xml_decode")."_" |
|  | <Plug>unimpaired_xml_decode | <SNR>9_TransformSetup("xml_decode") |
|  | <Plug>(unimpaired-xml-encode-line) | <SNR>9_TransformSetup("xml_encode")."_" |
|  | <Plug>(unimpaired-xml-encode) | <SNR>9_TransformSetup("xml_encode") |
|  | <Plug>unimpaired_line_xml_encode | <SNR>9_TransformSetup("xml_encode")."_" |
|  | <Plug>unimpaired_xml_encode | <SNR>9_TransformSetup("xml_encode") |
|  | <Plug>(unimpaired-url-decode-line) | <SNR>9_TransformSetup("url_decode")."_" |
|  | <Plug>(unimpaired-url-decode) | <SNR>9_TransformSetup("url_decode") |
|  | <Plug>unimpaired_line_url_decode | <SNR>9_TransformSetup("url_decode")."_" |
|  | <Plug>unimpaired_url_decode | <SNR>9_TransformSetup("url_decode") |
|  | <Plug>(unimpaired-url-encode-line) | <SNR>9_TransformSetup("url_encode")."_" |
|  | <Plug>(unimpaired-url-encode) | <SNR>9_TransformSetup("url_encode") |
|  | <Plug>unimpaired_line_url_encode | <SNR>9_TransformSetup("url_encode")."_" |
|  | <Plug>unimpaired_url_encode | <SNR>9_TransformSetup("url_encode") |
|  | <Plug>(unimpaired-string-decode-line) | <SNR>9_TransformSetup("string_decode")."_" |
|  | <Plug>(unimpaired-string-decode) | <SNR>9_TransformSetup("string_decode") |
|  | <Plug>unimpaired_line_string_decode | <SNR>9_TransformSetup("string_decode")."_" |
|  | <Plug>unimpaired_string_decode | <SNR>9_TransformSetup("string_decode") |
|  | <Plug>(unimpaired-string-encode-line) | <SNR>9_TransformSetup("string_encode")."_" |
|  | <Plug>(unimpaired-string-encode) | <SNR>9_TransformSetup("string_encode") |
|  | <Plug>unimpaired_line_string_encode | <SNR>9_TransformSetup("string_encode")."_" |
|  | <Plug>unimpaired_string_encode | <SNR>9_TransformSetup("string_encode") |
|  | <Plug>unimpairedPutBelow | :call <SNR>9_putline(']p', 'below')<CR> |
|  | <Plug>unimpairedPutAbove | :call <SNR>9_putline('[p', 'above')<CR> |
|  | <Plug>(unimpaired-put-below-reformat) | :<C-U>call <SNR>9_putline(v:count1 . ']p', 'Below')<CR>='] |
|  | <Plug>(unimpaired-put-above-reformat) | :<C-U>call <SNR>9_putline(v:count1 . '[p', 'Above')<CR>='] |
|  | <Plug>(unimpaired-put-below-leftward) | :<C-U>call <SNR>9_putline(v:count1 . ']p', 'Below')<CR><lt>'] |
|  | <Plug>(unimpaired-put-above-leftward) | :<C-U>call <SNR>9_putline(v:count1 . '[p', 'Above')<CR><lt>'] |
|  | <Plug>(unimpaired-put-below-rightward) | :<C-U>call <SNR>9_putline(v:count1 . ']p', 'Below')<CR>>'] |
|  | <Plug>(unimpaired-put-above-rightward) | :<C-U>call <SNR>9_putline(v:count1 . '[p', 'Above')<CR>>'] |
|  | <Plug>(unimpaired-put-below) | :call <SNR>9_putline(']p', 'below')<CR> |
|  | <Plug>(unimpaired-put-above) | :call <SNR>9_putline('[p', 'above')<CR> |
|  | <Plug>(unimpaired-toggle)p | :<C-U>call <SNR>9_SetupPaste()<CR>0C |
|  | <Plug>(unimpaired-disable)p | :<C-U>call <SNR>9_SetupPaste()<CR>o |
|  | <Plug>(unimpaired-enable)p | :<C-U>call <SNR>9_SetupPaste()<CR>O |
|  | <Plug>(unimpaired-paste) | :<C-U>call <SNR>9_SetupPaste()<CR> |
|  | <Plug>unimpairedPaste | :call <SNR>9_SetupPaste()<CR> |
|  | <Plug>(unimpaired-toggle)t | :<C-U>set colorcolumn=<C-R>=<SNR>9_ColorColumn(!empty(&cc))<CR><CR> |
|  | <Plug>(unimpaired-disable)t | :<C-U>set colorcolumn=<C-R>=<SNR>9_ColorColumn(1)<CR><CR> |
|  | <Plug>(unimpaired-enable)t | :<C-U>set colorcolumn=<C-R>=<SNR>9_ColorColumn(0)<CR><CR> |
|  | <Plug>(unimpaired-toggle)+ | :<C-U>set <C-R>=<SNR>9_CursorOptions()<CR><CR> |
|  | <Plug>(unimpaired-disable)+ | :<C-U>set nocursorline nocursorcolumn<CR> |
|  | <Plug>(unimpaired-enable)+ | :<C-U>set cursorline cursorcolumn<CR> |
|  | <Plug>(unimpaired-toggle)x | :<C-U>set <C-R>=<SNR>9_CursorOptions()<CR><CR> |
|  | <Plug>(unimpaired-disable)x | :<C-U>set nocursorline nocursorcolumn<CR> |
|  | <Plug>(unimpaired-enable)x | :<C-U>set cursorline cursorcolumn<CR> |
|  | <Plug>(unimpaired-toggle)v | :<C-U>set <C-R>=(&virtualedit =~# "all") ? "virtualedit-=all" : "virtualedit+=all"<CR><CR> |
|  | <Plug>(unimpaired-disable)v | :<C-U>set virtualedit-=all<CR> |
|  | <Plug>(unimpaired-enable)v | :<C-U>set virtualedit+=all<CR> |
|  | <Plug>(unimpaired-toggle)z | :<C-U>setlocal <C-R>=<SNR>9_Toggle("spell")<CR><CR> |
|  | <Plug>(unimpaired-disable)z | :<C-U>setlocal nospell<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)z | :<C-U>setlocal spell<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)w | :<C-U>setlocal <C-R>=<SNR>9_Toggle("wrap")<CR><CR> |
|  | <Plug>(unimpaired-disable)w | :<C-U>setlocal nowrap<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)w | :<C-U>setlocal wrap<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)s | :<C-U>setlocal <C-R>=<SNR>9_Toggle("spell")<CR><CR> |
|  | <Plug>(unimpaired-disable)s | :<C-U>setlocal nospell<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)s | :<C-U>setlocal spell<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)r | :<C-U>setlocal <C-R>=<SNR>9_Toggle("relativenumber")<CR><CR> |
|  | <Plug>(unimpaired-disable)r | :<C-U>setlocal norelativenumber<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)r | :<C-U>setlocal relativenumber<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)n | :<C-U>setlocal <C-R>=<SNR>9_Toggle("number")<CR><CR> |
|  | <Plug>(unimpaired-disable)n | :<C-U>setlocal nonumber<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)n | :<C-U>setlocal number<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)l | :<C-U>setlocal <C-R>=<SNR>9_Toggle("list")<CR><CR> |
|  | <Plug>(unimpaired-disable)l | :<C-U>setlocal nolist<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)l | :<C-U>setlocal list<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)i | :<C-U>set <C-R>=<SNR>9_Toggle("ignorecase")<CR><CR> |
|  | <Plug>(unimpaired-disable)i | :<C-U>set noignorecase<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)i | :<C-U>set ignorecase<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)h | :<C-U>set <C-R>=<SNR>9_Toggle("hlsearch")<CR><CR> |
|  | <Plug>(unimpaired-disable)h | :<C-U>set nohlsearch<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)h | :<C-U>set hlsearch<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)d | :<C-U><C-R>=&diff ? "diffoff" : "diffthis"<CR><CR> |
|  | <Plug>(unimpaired-disable)d | :<C-U>diffoff<CR> |
|  | <Plug>(unimpaired-enable)d | :<C-U>diffthis<CR> |
|  | <Plug>(unimpaired-toggle)| | :<C-U>setlocal <C-R>=<SNR>9_Toggle("cursorcolumn")<CR><CR> |
|  | <Plug>(unimpaired-disable)| | :<C-U>setlocal nocursorcolumn<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)| | :<C-U>setlocal cursorcolumn<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)u | :<C-U>setlocal <C-R>=<SNR>9_Toggle("cursorcolumn")<CR><CR> |
|  | <Plug>(unimpaired-disable)u | :<C-U>setlocal nocursorcolumn<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)u | :<C-U>setlocal cursorcolumn<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)_ | :<C-U>setlocal <C-R>=<SNR>9_Toggle("cursorline")<CR><CR> |
|  | <Plug>(unimpaired-disable)_ | :<C-U>setlocal nocursorline<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)_ | :<C-U>setlocal cursorline<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)- | :<C-U>setlocal <C-R>=<SNR>9_Toggle("cursorline")<CR><CR> |
|  | <Plug>(unimpaired-disable)- | :<C-U>setlocal nocursorline<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)- | :<C-U>setlocal cursorline<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)c | :<C-U>setlocal <C-R>=<SNR>9_Toggle("cursorline")<CR><CR> |
|  | <Plug>(unimpaired-disable)c | :<C-U>setlocal nocursorline<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)c | :<C-U>setlocal cursorline<C-R>=<SNR>9_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)b | :<C-U>set background=<C-R>=&background == "dark" ? "light" : "dark"<CR><CR> |
|  | <Plug>(unimpaired-disable)b | :<C-U>set background=dark<CR> |
|  | <Plug>(unimpaired-enable)b | :<C-U>set background=light<CR> |
|  | <Plug>unimpairedMoveSelectionDown | :<C-U>call <SNR>9_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>unimpairedMoveSelectionUp | :<C-U>call <SNR>9_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>unimpairedMoveDown | :<C-U>call <SNR>9_Move('+',v:count1,'down')<CR> |
|  | <Plug>unimpairedMoveUp | :<C-U>call <SNR>9_Move('--',v:count1,'up')<CR> |
|  | <Plug>(unimpaired-move-selection-down) | :<C-U>call <SNR>9_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-up) | :<C-U>call <SNR>9_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>(unimpaired-move-down) | :<C-U>call <SNR>9_Move('+',v:count1,'down')<CR> |
|  | <Plug>(unimpaired-move-up) | :<C-U>call <SNR>9_Move('--',v:count1,'up')<CR> |
|  | <Plug>unimpairedBlankDown | :<C-U>exe <SNR>9_BlankDown()<CR> |
|  | <Plug>unimpairedBlankUp | :<C-U>exe <SNR>9_BlankUp()<CR> |
|  | <Plug>(unimpaired-blank-down) | :<C-U>exe <SNR>9_BlankDown()<CR> |
|  | <Plug>(unimpaired-blank-up) | :<C-U>exe <SNR>9_BlankUp()<CR> |
|  | <Plug>unimpairedContextNext | :<C-U>call <SNR>9_Context(0)<CR> |
|  | <Plug>unimpairedContextPrevious | :<C-U>call <SNR>9_Context(1)<CR> |
|  | <Plug>(unimpaired-context-next) | :<C-U>call <SNR>9_Context(0)<CR> |
|  | <Plug>(unimpaired-context-previous) | :<C-U>call <SNR>9_Context(1)<CR> |
|  | <Plug>unimpairedDirectoryPrevious | :<C-U>execute <SNR>9_PreviousFileEntry(v:count1)<CR> |
|  | <Plug>unimpairedDirectoryNext | :<C-U>execute <SNR>9_NextFileEntry(v:count1)<CR> |
|  | <Plug>(unimpaired-directory-previous) | :<C-U>execute <SNR>9_PreviousFileEntry(v:count1)<CR> |
|  | <Plug>(unimpaired-directory-next) | :<C-U>execute <SNR>9_NextFileEntry(v:count1)<CR> |
|  | <Plug>unimpairedTPNext | :<C-U>exe "p".(v:count ? v:count : "")."tnext"<CR> |
|  | <Plug>unimpairedTPPrevious | :<C-U>exe "p".(v:count ? v:count : "")."tprevious"<CR> |
|  | <Plug>(unimpaired-ptnext) | :<C-U>exe v:count1 . "ptnext"<CR> |
|  | <Plug>(unimpaired-ptprevious) | :<C-U>exe v:count1 . "ptprevious"<CR> |
|  | <Plug>unimpairedTLast | :<C-U>exe "".(v:count ? v:count : "")."tlast"<CR> |
|  | <Plug>unimpairedTFirst | :<C-U>exe "".(v:count ? v:count : "")."tfirst"<CR> |
|  | <Plug>unimpairedTNext | :<C-U>exe "".(v:count ? v:count : "")."tnext"<CR> |
|  | <Plug>unimpairedTPrevious | :<C-U>exe "".(v:count ? v:count : "")."tprevious"<CR> |
|  | <Plug>(unimpaired-tlast) | :<C-U><C-R>=v:count ? v:count . "trewind" : "tlast"<CR><CR> |
|  | <Plug>(unimpaired-tfirst) | :<C-U><C-R>=v:count ? v:count . "trewind" : "tfirst"<CR><CR> |
|  | <Plug>(unimpaired-tnext) | :<C-U>exe "".(v:count ? v:count : "")."tnext"<CR> |
|  | <Plug>(unimpaired-tprevious) | :<C-U>exe "".(v:count ? v:count : "")."tprevious"<CR> |
|  | <Plug>unimpairedQNFile | :<C-U>exe "".(v:count ? v:count : "")."cnfile"<CR>zv |
|  | <Plug>unimpairedQPFile | :<C-U>exe "".(v:count ? v:count : "")."cpfile"<CR>zv |
|  | <Plug>(unimpaired-cnfile) | :<C-U>exe "".(v:count ? v:count : "")."cnfile"<CR>zv |
|  | <Plug>(unimpaired-cpfile) | :<C-U>exe "".(v:count ? v:count : "")."cpfile"<CR>zv |
|  | <Plug>unimpairedQLast | :<C-U>exe "".(v:count ? v:count : "")."clast"<CR>zv |
|  | <Plug>unimpairedQFirst | :<C-U>exe "".(v:count ? v:count : "")."cfirst"<CR>zv |
|  | <Plug>unimpairedQNext | :<C-U>exe "".(v:count ? v:count : "")."cnext"<CR>zv |
|  | <Plug>unimpairedQPrevious | :<C-U>exe "".(v:count ? v:count : "")."cprevious"<CR>zv |
|  | <Plug>(unimpaired-clast) | :<C-U><C-R>=v:count ? v:count . "cc" : "clast"<CR><CR>zv |
|  | <Plug>(unimpaired-cfirst) | :<C-U><C-R>=v:count ? v:count . "cc" : "cfirst"<CR><CR>zv |
|  | <Plug>(unimpaired-cnext) | :<C-U>exe "".(v:count ? v:count : "")."cnext"<CR>zv |
|  | <Plug>(unimpaired-cprevious) | :<C-U>exe "".(v:count ? v:count : "")."cprevious"<CR>zv |
|  | <Plug>unimpairedLNFile | :<C-U>exe "".(v:count ? v:count : "")."lnfile"<CR>zv |
|  | <Plug>unimpairedLPFile | :<C-U>exe "".(v:count ? v:count : "")."lpfile"<CR>zv |
|  | <Plug>(unimpaired-lnfile) | :<C-U>exe "".(v:count ? v:count : "")."lnfile"<CR>zv |
|  | <Plug>(unimpaired-lpfile) | :<C-U>exe "".(v:count ? v:count : "")."lpfile"<CR>zv |
|  | <Plug>unimpairedLLast | :<C-U>exe "".(v:count ? v:count : "")."llast"<CR>zv |
|  | <Plug>unimpairedLFirst | :<C-U>exe "".(v:count ? v:count : "")."lfirst"<CR>zv |
|  | <Plug>unimpairedLNext | :<C-U>exe "".(v:count ? v:count : "")."lnext"<CR>zv |
|  | <Plug>unimpairedLPrevious | :<C-U>exe "".(v:count ? v:count : "")."lprevious"<CR>zv |
|  | <Plug>(unimpaired-llast) | :<C-U><C-R>=v:count ? v:count . "ll" : "llast"<CR><CR>zv |
|  | <Plug>(unimpaired-lfirst) | :<C-U><C-R>=v:count ? v:count . "ll" : "lfirst"<CR><CR>zv |
|  | <Plug>(unimpaired-lnext) | :<C-U>exe "".(v:count ? v:count : "")."lnext"<CR>zv |
|  | <Plug>(unimpaired-lprevious) | :<C-U>exe "".(v:count ? v:count : "")."lprevious"<CR>zv |
|  | <Plug>unimpairedBLast | :<C-U>exe "".(v:count ? v:count : "")."blast"<CR> |
|  | <Plug>unimpairedBFirst | :<C-U>exe "".(v:count ? v:count : "")."bfirst"<CR> |
|  | <Plug>unimpairedBNext | :<C-U>exe "".(v:count ? v:count : "")."bnext"<CR> |
|  | <Plug>unimpairedBPrevious | :<C-U>exe "".(v:count ? v:count : "")."bprevious"<CR> |
|  | <Plug>(unimpaired-blast) | :<C-U><C-R>=v:count ? v:count . "buffer" : "blast"<CR><CR> |
|  | <Plug>(unimpaired-bfirst) | :<C-U><C-R>=v:count ? v:count . "buffer" : "bfirst"<CR><CR> |
|  | <Plug>(unimpaired-bnext) | :<C-U>exe "".(v:count ? v:count : "")."bnext"<CR> |
|  | <Plug>(unimpaired-bprevious) | :<C-U>exe "".(v:count ? v:count : "")."bprevious"<CR> |
|  | <Plug>unimpairedALast | :<C-U>exe "".(v:count ? v:count : "")."last"<CR> |
|  | <Plug>unimpairedAFirst | :<C-U>exe "".(v:count ? v:count : "")."first"<CR> |
|  | <Plug>unimpairedANext | :<C-U>exe "".(v:count ? v:count : "")."next"<CR> |
|  | <Plug>unimpairedAPrevious | :<C-U>exe "".(v:count ? v:count : "")."previous"<CR> |
|  | <Plug>(unimpaired-last) | :<C-U><C-R>=v:count ? v:count . "argument" : "last"<CR><CR> |
|  | <Plug>(unimpaired-first) | :<C-U><C-R>=v:count ? v:count . "argument" : "first"<CR><CR> |
|  | <Plug>(unimpaired-next) | :<C-U>exe "".(v:count ? v:count : "")."next"<CR> |
|  | <Plug>(unimpaired-previous) | :<C-U>exe "".(v:count ? v:count : "")."previous"<CR> |
|  | <Plug>YSurround | <SNR>8_opfunc2('setup') |
|  | <Plug>Ysurround | <SNR>8_opfunc('setup') |
|  | <Plug>YSsurround | <SNR>8_opfunc2('setup').'_' |
|  | <Plug>Yssurround | '^'.v:count1.<SNR>8_opfunc('setup').'g_' |
|  | <Plug>CSurround | :<C-U>call <SNR>8_changesurround(1)<CR> |
|  | <Plug>Csurround | :<C-U>call <SNR>8_changesurround()<CR> |
|  | <Plug>Dsurround | :<C-U>call <SNR>8_dosurround(<SNR>8_inputtarget())<CR> |
|  | <Plug>SurroundRepeat | . |
|  | <Right> | <C-W>l |
|  | <Up> | <C-W>k |
|  | <Down> | <C-W>j |
|  | <Left> | <C-W>h |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(matchup-%) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | F |  |
|  | S | <Plug>VSurround |
|  | T |  |
|  | X | <Plug>(leap-backward-till) |
|  | [x | <Plug>(unimpaired-xml-encode) |
|  | [u | <Plug>(unimpaired-url-encode) |
|  | [C | <Plug>(unimpaired-string-encode) |
|  | [y | <Plug>(unimpaired-string-encode) |
|  | [e | <Plug>(unimpaired-move-selection-up) |
|  | [n | <Plug>(unimpaired-context-previous) |
|  | [% | <Plug>(matchup-[%) |
|  | ]x | <Plug>(unimpaired-xml-decode) |
|  | ]u | <Plug>(unimpaired-url-decode) |
|  | ]C | <Plug>(unimpaired-string-decode) |
|  | ]y | <Plug>(unimpaired-string-decode) |
|  | ]e | <Plug>(unimpaired-move-selection-down) |
|  | ]n | <Plug>(unimpaired-context-next) |
|  | ]% | <Plug>(matchup-]%) |
|  | a% | <Plug>(matchup-a%) |
|  | f |  |
|  | gx | <Plug>NetrwBrowseXVis |
|  | gS | <Plug>VgSurround |
| Comment selection | gc | :<C-U>lua MiniComment.operator('visual')<CR> |
| Align with preview | gA | <Cmd>lua MiniAlign.action_visual(true)<CR> |
| Align | ga | <Cmd>lua MiniAlign.action_visual(false)<CR> |
|  | gs | <Plug>(leap-cross-window) |
|  | g% | <Plug>(matchup-g%) |
|  | i% | <Plug>(matchup-i%) |
|  | s | <Plug>(leap-forward-to) |
|  | t |  |
|  | x | <Plug>(leap-forward-till) |
|  | z% | <Plug>(matchup-z%) |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(unimpaired-xml-decode) | <SNR>35_TransformSetup("xml_decode") |
|  | <Plug>unimpaired_xml_decode | <SNR>35_TransformSetup("xml_decode") |
|  | <Plug>(unimpaired-xml-encode) | <SNR>35_TransformSetup("xml_encode") |
|  | <Plug>unimpaired_xml_encode | <SNR>35_TransformSetup("xml_encode") |
|  | <Plug>(unimpaired-url-decode) | <SNR>35_TransformSetup("url_decode") |
|  | <Plug>unimpaired_url_decode | <SNR>35_TransformSetup("url_decode") |
|  | <Plug>(unimpaired-url-encode) | <SNR>35_TransformSetup("url_encode") |
|  | <Plug>unimpaired_url_encode | <SNR>35_TransformSetup("url_encode") |
|  | <Plug>(unimpaired-string-decode) | <SNR>35_TransformSetup("string_decode") |
|  | <Plug>unimpaired_string_decode | <SNR>35_TransformSetup("string_decode") |
|  | <Plug>(unimpaired-string-encode) | <SNR>35_TransformSetup("string_encode") |
|  | <Plug>unimpaired_string_encode | <SNR>35_TransformSetup("string_encode") |
|  | <Plug>unimpairedMoveSelectionDown | :<C-U>call <SNR>35_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>unimpairedMoveSelectionUp | :<C-U>call <SNR>35_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-down) | :<C-U>call <SNR>35_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-up) | :<C-U>call <SNR>35_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>unimpairedContextNext | :<C-U>exe 'normal! gv'|call <SNR>35_Context(0)<CR> |
|  | <Plug>unimpairedContextPrevious | :<C-U>exe 'normal! gv'|call <SNR>35_Context(1)<CR> |
|  | <Plug>(unimpaired-context-next) | :<C-U>exe 'normal! gv'|call <SNR>35_Context(0)<CR> |
|  | <Plug>(unimpaired-context-previous) | :<C-U>exe 'normal! gv'|call <SNR>35_Context(1)<CR> |
|  | <Plug>VgSurround | :<C-U>call <SNR>22_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR> |
|  | <Plug>VSurround | :<C-U>call <SNR>22_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR> |
|  | <Plug>(leap-backward-x) |  |
|  | <Plug>(leap-forward-x) |  |
|  | <Plug>(leap-backward) |  |
|  | <Plug>(leap-forward) |  |
|  | <Plug>(leap-cross-window) |  |
|  | <Plug>(leap-backward-till) |  |
|  | <Plug>(leap-backward-to) |  |
|  | <Plug>(leap-forward-till) |  |
|  | <Plug>(leap-forward-to) |  |
|  | <Plug>(matchup-a%) | :<C-U>call matchup#text_obj#delimited(0, 1, 'delim_all')<CR> |
|  | <Plug>(matchup-i%) | :<C-U>call matchup#text_obj#delimited(1, 1, 'delim_all')<CR> |
|  | <Plug>(matchup-Z%) | <SNR>12_(matchup-Z%) |
|  | <SNR>12_(matchup-Z%) | :<C-U>call matchup#motion#jump_inside_prev(1)<CR> |
|  | <Plug>(matchup-z%) | <SNR>12_(matchup-z%) |
|  | <SNR>12_(matchup-z%) | :<C-U>call matchup#motion#jump_inside(1)<CR> |
|  | <Plug>(matchup-[%) | <SNR>12_(matchup-[%) |
|  | <Plug>(matchup-]%) | <SNR>12_(matchup-]%) |
|  | <SNR>12_(matchup-[%) | :<C-U>call matchup#motion#find_unmatched(1, 0)<CR> |
|  | <SNR>12_(matchup-]%) | :<C-U>call matchup#motion#find_unmatched(1, 1)<CR> |
|  | <Plug>(matchup-g%) | <SNR>12_(matchup-g%) |
|  | <SNR>12_(matchup-g%) | :<C-U>call matchup#motion#find_matching_pair(1, 0)<CR> |
|  | <Plug>(matchup-%) | <SNR>12_(matchup-%) |
|  | <SNR>12_(matchup-%) | :<C-U>call matchup#motion#find_matching_pair(1, 1)<CR> |
|  | <Plug>luasnip-expand-repeat | <Cmd>lua require'luasnip'.expand_repeat()<CR> |
|  | <Plug>luasnip-delete-check | <Cmd>lua require'luasnip'.unlink_current_if_deleted()<CR> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Ignore><Plug>(matchup-%) |
|  | F |  |
|  | S | <Plug>(leap-backward-to) |
|  | T |  |
|  | X | <Plug>(leap-backward-till) |
|  | [n | <Plug>(unimpaired-context-previous) |
|  | [% | <Plug>(matchup-[%) |
|  | ]n | <Plug>(unimpaired-context-next) |
|  | ]% | <Plug>(matchup-]%) |
|  | a% | <Plug>(matchup-a%) |
|  | f |  |
| Comment textobject | gc | <Cmd>lua MiniComment.textobject()<CR> |
|  | g% | <Ignore><Plug>(matchup-g%) |
|  | gs | <Plug>(leap-cross-window) |
|  | i% | <Plug>(matchup-i%) |
|  | s | <Plug>(leap-forward-to) |
|  | t |  |
|  | x | <Plug>(leap-forward-till) |
|  | z% | <Plug>(matchup-z%) |
|  | <Plug>unimpairedMoveSelectionDown | :<C-U>call <SNR>35_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>unimpairedMoveSelectionUp | :<C-U>call <SNR>35_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-down) | :<C-U>call <SNR>35_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-up) | :<C-U>call <SNR>35_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>unimpairedContextNext | :<C-U>call <SNR>35_ContextMotion(0)<CR> |
|  | <Plug>unimpairedContextPrevious | :<C-U>call <SNR>35_ContextMotion(1)<CR> |
|  | <Plug>(unimpaired-context-next) | :<C-U>call <SNR>35_ContextMotion(0)<CR> |
|  | <Plug>(unimpaired-context-previous) | :<C-U>call <SNR>35_ContextMotion(1)<CR> |
|  | <Plug>(matchup-a%) | :<C-U>call matchup#text_obj#delimited(0, 0, 'delim_all')<CR> |
|  | <Plug>(matchup-i%) | :<C-U>call matchup#text_obj#delimited(1, 0, 'delim_all')<CR> |
|  | <Plug>(matchup-Z%) | :<C-U>call matchup#motion#op('Z%')<CR> |
|  | <Plug>(matchup-z%) | :<C-U>call matchup#motion#op('z%')<CR> |
|  | <Plug>(matchup-[%) | :<C-U>call matchup#motion#op('[%')<CR> |
|  | <Plug>(matchup-]%) | :<C-U>call matchup#motion#op(']%')<CR> |
|  | <Plug>(matchup-g%) | :<C-U>call matchup#motion#op('g%')<CR> |
|  | <Plug>(matchup-%) | :<C-U>call matchup#motion#op('%')<CR> |
|  | <Plug>(leap-backward-x) |  |
|  | <Plug>(leap-forward-x) |  |
|  | <Plug>(leap-backward) |  |
|  | <Plug>(leap-forward) |  |
|  | <Plug>(leap-cross-window) |  |
|  | <Plug>(leap-backward-till) |  |
|  | <Plug>(leap-backward-to) |  |
|  | <Plug>(leap-forward-till) |  |
|  | <Plug>(leap-forward-to) |  |
|  | <Plug>luasnip-expand-repeat | <Cmd>lua require'luasnip'.expand_repeat()<CR> |
|  | <Plug>luasnip-delete-check | <Cmd>lua require'luasnip'.unlink_current_if_deleted()<CR> |
