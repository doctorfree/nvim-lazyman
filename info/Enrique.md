## Enrique Neovim Configuration Information

Personal Neovim configuration of Enrique Mejidas

- Install and initialize: `lazyman -w Enrique`
- Configuration category: [Personal](https://github.com/doctorfree/nvim-lazyman#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  `~/.config/nvim-Enrique`

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/kiyov09/dotfiles](https://github.com/kiyov09/dotfiles)

### Lazy managed plugins


### Enrique Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  r# |  |
|  |  # |  |
|  |  g? | :map  g<CR> |
|  |  gw | :GBrowse<CR> |
|  |  gl | :Gclog -n 100 --<CR> |
|  |  gd | :Git diff<CR> |
|  |  gP | :Git push origin  |
|  |  gpr | :Git pull --rebase origin  |
|  |  gpo | :Git pull --ff-only origin  |
|  |  gb | :Git blame<CR> |
|  |  gs | :Git<CR> |
|  |  ts |  |
|  |  tb |  |
|  |  tg |  |
|  |  tf |  |
|  |  th |  |
|  |  sd |  |
|  |  v* | :vsplit<CR>* |
|  |  x* | :split<CR>* |
|  |    | <C-^> |
|  |  vf | :Vexplore!<CR> |
|  |  sf | :Sexplore<CR> |
|  |  f | :Explore<CR> |
|  |  yy | "+yy |
|  |  y | "+y |
|  |  w | :w<CR> |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | '[ | :<C-U>call signature#mark#Goto("prev", "line", "alpha")<CR> |
|  | '] | :<C-U>call signature#mark#Goto("next", "line", "alpha")<CR> |
|  | - | <Plug>VinegarUp |
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
| Nvim builtin | Y | y$ |
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
|  | [= | :<C-U>call signature#marker#Goto("prev", "any",  v:count)<CR> |
|  | [- | :<C-U>call signature#marker#Goto("prev", "same", v:count)<CR> |
|  | [` | :<C-U>call signature#mark#Goto("prev", "spot", "pos")<CR> |
|  | [' | :<C-U>call signature#mark#Goto("prev", "line", "pos")<CR> |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | [d |  |
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
|  | ]= | :<C-U>call signature#marker#Goto("next", "any",  v:count)<CR> |
|  | ]- | :<C-U>call signature#marker#Goto("next", "same", v:count)<CR> |
|  | ]` | :<C-U>call signature#mark#Goto("next", "spot", "pos")<CR> |
|  | ]' | :<C-U>call signature#mark#Goto("next", "line", "pos")<CR> |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | ]d |  |
|  | `[ | :<C-U>call signature#mark#Goto("prev", "spot", "alpha")<CR> |
|  | `] | :<C-U>call signature#mark#Goto("next", "spot", "alpha")<CR> |
|  | cS | <Plug>CSurround |
|  | cs | <Plug>Csurround |
|  | ds | <Plug>Dsurround |
|  | dm | :<C-U>call signature#utils#Remove(v:count)<CR> |
|  | gcu | <Plug>Commentary<Plug>Commentary |
|  | gcc | <Plug>CommentaryLine |
|  | gc | <Plug>Commentary |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | j | gj |
|  | k | gk |
|  | m? | :<C-U>call signature#marker#List(v:count, 0)<CR> |
|  | m/ | :<C-U>call signature#mark#List(0, 0)<CR> |
|  | m<BS> | :<C-U>call signature#marker#Purge()<CR> |
|  | m  | :<C-U>call signature#mark#Purge("all")<CR> |
|  | m- | :<C-U>call signature#mark#Purge("line")<CR> |
|  | m. | :<C-U>call signature#mark#ToggleAtLine()<CR> |
|  | m, | :<C-U>call signature#mark#Toggle("next")<CR> |
|  | m | :<C-U>call signature#utils#Input()<CR> |
|  | yo<Esc> |  |
|  | yo | <Plug>(unimpaired-toggle) |
|  | ySS | <Plug>YSsurround |
|  | ySs | <Plug>YSsurround |
|  | yss | <Plug>Yssurround |
|  | yS | <Plug>YSurround |
|  | ys | <Plug>Ysurround |
|  | y<C-G> | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|  | <Plug>(vsnip-cut-text) | :set operatorfunc=<SNR>48_vsnip_cut_text_normal<CR>g@ |
|  | <Plug>(vsnip-select-text) | :set operatorfunc=<SNR>48_vsnip_select_text_normal<CR>g@ |
|  | <Plug>VinegarVerticalSplitUp | :call <SNR>47_opendir('vsplit')<CR> |
|  | <Plug>VinegarSplitUp | :call <SNR>47_opendir('split')<CR> |
|  | <Plug>VinegarTabUp | :call <SNR>47_opendir('tabedit')<CR> |
|  | <Plug>VinegarUp | :call <SNR>47_opendir('edit')<CR> |
|  | <Plug>(unimpaired-xml-decode-line) | <SNR>46_TransformSetup("xml_decode")."_" |
|  | <Plug>(unimpaired-xml-decode) | <SNR>46_TransformSetup("xml_decode") |
|  | <Plug>unimpaired_line_xml_decode | <SNR>46_TransformSetup("xml_decode")."_" |
|  | <Plug>unimpaired_xml_decode | <SNR>46_TransformSetup("xml_decode") |
|  | <Plug>(unimpaired-xml-encode-line) | <SNR>46_TransformSetup("xml_encode")."_" |
|  | <Plug>(unimpaired-xml-encode) | <SNR>46_TransformSetup("xml_encode") |
|  | <Plug>unimpaired_line_xml_encode | <SNR>46_TransformSetup("xml_encode")."_" |
|  | <Plug>unimpaired_xml_encode | <SNR>46_TransformSetup("xml_encode") |
|  | <Plug>(unimpaired-url-decode-line) | <SNR>46_TransformSetup("url_decode")."_" |
|  | <Plug>(unimpaired-url-decode) | <SNR>46_TransformSetup("url_decode") |
|  | <Plug>unimpaired_line_url_decode | <SNR>46_TransformSetup("url_decode")."_" |
|  | <Plug>unimpaired_url_decode | <SNR>46_TransformSetup("url_decode") |
|  | <Plug>(unimpaired-url-encode-line) | <SNR>46_TransformSetup("url_encode")."_" |
|  | <Plug>(unimpaired-url-encode) | <SNR>46_TransformSetup("url_encode") |
|  | <Plug>unimpaired_line_url_encode | <SNR>46_TransformSetup("url_encode")."_" |
|  | <Plug>unimpaired_url_encode | <SNR>46_TransformSetup("url_encode") |
|  | <Plug>(unimpaired-string-decode-line) | <SNR>46_TransformSetup("string_decode")."_" |
|  | <Plug>(unimpaired-string-decode) | <SNR>46_TransformSetup("string_decode") |
|  | <Plug>unimpaired_line_string_decode | <SNR>46_TransformSetup("string_decode")."_" |
|  | <Plug>unimpaired_string_decode | <SNR>46_TransformSetup("string_decode") |
|  | <Plug>(unimpaired-string-encode-line) | <SNR>46_TransformSetup("string_encode")."_" |
|  | <Plug>(unimpaired-string-encode) | <SNR>46_TransformSetup("string_encode") |
|  | <Plug>unimpaired_line_string_encode | <SNR>46_TransformSetup("string_encode")."_" |
|  | <Plug>unimpaired_string_encode | <SNR>46_TransformSetup("string_encode") |
|  | <Plug>unimpairedPutBelow | :call <SNR>46_putline(']p', 'below')<CR> |
|  | <Plug>unimpairedPutAbove | :call <SNR>46_putline('[p', 'above')<CR> |
|  | <Plug>(unimpaired-put-below-reformat) | :<C-U>call <SNR>46_putline(v:count1 . ']p', 'Below')<CR>='] |
|  | <Plug>(unimpaired-put-above-reformat) | :<C-U>call <SNR>46_putline(v:count1 . '[p', 'Above')<CR>='] |
|  | <Plug>(unimpaired-put-below-leftward) | :<C-U>call <SNR>46_putline(v:count1 . ']p', 'Below')<CR><lt>'] |
|  | <Plug>(unimpaired-put-above-leftward) | :<C-U>call <SNR>46_putline(v:count1 . '[p', 'Above')<CR><lt>'] |
|  | <Plug>(unimpaired-put-below-rightward) | :<C-U>call <SNR>46_putline(v:count1 . ']p', 'Below')<CR>>'] |
|  | <Plug>(unimpaired-put-above-rightward) | :<C-U>call <SNR>46_putline(v:count1 . '[p', 'Above')<CR>>'] |
|  | <Plug>(unimpaired-put-below) | :call <SNR>46_putline(']p', 'below')<CR> |
|  | <Plug>(unimpaired-put-above) | :call <SNR>46_putline('[p', 'above')<CR> |
|  | <Plug>(unimpaired-toggle)p | :<C-U>call <SNR>46_SetupPaste()<CR>0C |
|  | <Plug>(unimpaired-disable)p | :<C-U>call <SNR>46_SetupPaste()<CR>o |
|  | <Plug>(unimpaired-enable)p | :<C-U>call <SNR>46_SetupPaste()<CR>O |
|  | <Plug>(unimpaired-paste) | :<C-U>call <SNR>46_SetupPaste()<CR> |
|  | <Plug>unimpairedPaste | :call <SNR>46_SetupPaste()<CR> |
|  | <Plug>(unimpaired-toggle)t | :<C-U>set colorcolumn=<C-R>=<SNR>46_ColorColumn(!empty(&cc))<CR><CR> |
|  | <Plug>(unimpaired-disable)t | :<C-U>set colorcolumn=<C-R>=<SNR>46_ColorColumn(1)<CR><CR> |
|  | <Plug>(unimpaired-enable)t | :<C-U>set colorcolumn=<C-R>=<SNR>46_ColorColumn(0)<CR><CR> |
|  | <Plug>(unimpaired-toggle)+ | :<C-U>set <C-R>=<SNR>46_CursorOptions()<CR><CR> |
|  | <Plug>(unimpaired-disable)+ | :<C-U>set nocursorline nocursorcolumn<CR> |
|  | <Plug>(unimpaired-enable)+ | :<C-U>set cursorline cursorcolumn<CR> |
|  | <Plug>(unimpaired-toggle)x | :<C-U>set <C-R>=<SNR>46_CursorOptions()<CR><CR> |
|  | <Plug>(unimpaired-disable)x | :<C-U>set nocursorline nocursorcolumn<CR> |
|  | <Plug>(unimpaired-enable)x | :<C-U>set cursorline cursorcolumn<CR> |
|  | <Plug>(unimpaired-toggle)v | :<C-U>set <C-R>=(&virtualedit =~# "all") ? "virtualedit-=all" : "virtualedit+=all"<CR><CR> |
|  | <Plug>(unimpaired-disable)v | :<C-U>set virtualedit-=all<CR> |
|  | <Plug>(unimpaired-enable)v | :<C-U>set virtualedit+=all<CR> |
|  | <Plug>(unimpaired-toggle)z | :<C-U>setlocal <C-R>=<SNR>46_Toggle("spell")<CR><CR> |
|  | <Plug>(unimpaired-disable)z | :<C-U>setlocal nospell<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)z | :<C-U>setlocal spell<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)w | :<C-U>setlocal <C-R>=<SNR>46_Toggle("wrap")<CR><CR> |
|  | <Plug>(unimpaired-disable)w | :<C-U>setlocal nowrap<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)w | :<C-U>setlocal wrap<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)s | :<C-U>setlocal <C-R>=<SNR>46_Toggle("spell")<CR><CR> |
|  | <Plug>(unimpaired-disable)s | :<C-U>setlocal nospell<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)s | :<C-U>setlocal spell<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)r | :<C-U>setlocal <C-R>=<SNR>46_Toggle("relativenumber")<CR><CR> |
|  | <Plug>(unimpaired-disable)r | :<C-U>setlocal norelativenumber<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)r | :<C-U>setlocal relativenumber<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)n | :<C-U>setlocal <C-R>=<SNR>46_Toggle("number")<CR><CR> |
|  | <Plug>(unimpaired-disable)n | :<C-U>setlocal nonumber<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)n | :<C-U>setlocal number<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)l | :<C-U>setlocal <C-R>=<SNR>46_Toggle("list")<CR><CR> |
|  | <Plug>(unimpaired-disable)l | :<C-U>setlocal nolist<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)l | :<C-U>setlocal list<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)i | :<C-U>set <C-R>=<SNR>46_Toggle("ignorecase")<CR><CR> |
|  | <Plug>(unimpaired-disable)i | :<C-U>set noignorecase<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)i | :<C-U>set ignorecase<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)h | :<C-U>set <C-R>=<SNR>46_Toggle("hlsearch")<CR><CR> |
|  | <Plug>(unimpaired-disable)h | :<C-U>set nohlsearch<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)h | :<C-U>set hlsearch<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)d | :<C-U><C-R>=&diff ? "diffoff" : "diffthis"<CR><CR> |
|  | <Plug>(unimpaired-disable)d | :<C-U>diffoff<CR> |
|  | <Plug>(unimpaired-enable)d | :<C-U>diffthis<CR> |
|  | <Plug>(unimpaired-toggle)| | :<C-U>setlocal <C-R>=<SNR>46_Toggle("cursorcolumn")<CR><CR> |
|  | <Plug>(unimpaired-disable)| | :<C-U>setlocal nocursorcolumn<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)| | :<C-U>setlocal cursorcolumn<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)u | :<C-U>setlocal <C-R>=<SNR>46_Toggle("cursorcolumn")<CR><CR> |
|  | <Plug>(unimpaired-disable)u | :<C-U>setlocal nocursorcolumn<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)u | :<C-U>setlocal cursorcolumn<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)_ | :<C-U>setlocal <C-R>=<SNR>46_Toggle("cursorline")<CR><CR> |
|  | <Plug>(unimpaired-disable)_ | :<C-U>setlocal nocursorline<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)_ | :<C-U>setlocal cursorline<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)- | :<C-U>setlocal <C-R>=<SNR>46_Toggle("cursorline")<CR><CR> |
|  | <Plug>(unimpaired-disable)- | :<C-U>setlocal nocursorline<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)- | :<C-U>setlocal cursorline<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)c | :<C-U>setlocal <C-R>=<SNR>46_Toggle("cursorline")<CR><CR> |
|  | <Plug>(unimpaired-disable)c | :<C-U>setlocal nocursorline<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-enable)c | :<C-U>setlocal cursorline<C-R>=<SNR>46_StatuslineRefresh()<CR><CR> |
|  | <Plug>(unimpaired-toggle)b | :<C-U>set background=<C-R>=&background == "dark" ? "light" : "dark"<CR><CR> |
|  | <Plug>(unimpaired-disable)b | :<C-U>set background=dark<CR> |
|  | <Plug>(unimpaired-enable)b | :<C-U>set background=light<CR> |
|  | <Plug>unimpairedMoveSelectionDown | :<C-U>call <SNR>46_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>unimpairedMoveSelectionUp | :<C-U>call <SNR>46_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>unimpairedMoveDown | :<C-U>call <SNR>46_Move('+',v:count1,'down')<CR> |
|  | <Plug>unimpairedMoveUp | :<C-U>call <SNR>46_Move('--',v:count1,'up')<CR> |
|  | <Plug>(unimpaired-move-selection-down) | :<C-U>call <SNR>46_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-up) | :<C-U>call <SNR>46_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>(unimpaired-move-down) | :<C-U>call <SNR>46_Move('+',v:count1,'down')<CR> |
|  | <Plug>(unimpaired-move-up) | :<C-U>call <SNR>46_Move('--',v:count1,'up')<CR> |
|  | <Plug>unimpairedBlankDown | :<C-U>exe <SNR>46_BlankDown()<CR> |
|  | <Plug>unimpairedBlankUp | :<C-U>exe <SNR>46_BlankUp()<CR> |
|  | <Plug>(unimpaired-blank-down) | :<C-U>exe <SNR>46_BlankDown()<CR> |
|  | <Plug>(unimpaired-blank-up) | :<C-U>exe <SNR>46_BlankUp()<CR> |
|  | <Plug>unimpairedContextNext | :<C-U>call <SNR>46_Context(0)<CR> |
|  | <Plug>unimpairedContextPrevious | :<C-U>call <SNR>46_Context(1)<CR> |
|  | <Plug>(unimpaired-context-next) | :<C-U>call <SNR>46_Context(0)<CR> |
|  | <Plug>(unimpaired-context-previous) | :<C-U>call <SNR>46_Context(1)<CR> |
|  | <Plug>unimpairedDirectoryPrevious | :<C-U>execute <SNR>46_PreviousFileEntry(v:count1)<CR> |
|  | <Plug>unimpairedDirectoryNext | :<C-U>execute <SNR>46_NextFileEntry(v:count1)<CR> |
|  | <Plug>(unimpaired-directory-previous) | :<C-U>execute <SNR>46_PreviousFileEntry(v:count1)<CR> |
|  | <Plug>(unimpaired-directory-next) | :<C-U>execute <SNR>46_NextFileEntry(v:count1)<CR> |
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
|  | <C-Bslash> | :<C-U>TmuxNavigatePrevious<CR> |
|  | <Plug>YSurround | <SNR>44_opfunc2('setup') |
|  | <Plug>Ysurround | <SNR>44_opfunc('setup') |
|  | <Plug>YSsurround | <SNR>44_opfunc2('setup').'_' |
|  | <Plug>Yssurround | '^'.v:count1.<SNR>44_opfunc('setup').'g_' |
|  | <Plug>CSurround | :<C-U>call <SNR>44_changesurround(1)<CR> |
|  | <Plug>Csurround | :<C-U>call <SNR>44_changesurround()<CR> |
|  | <Plug>Dsurround | :<C-U>call <SNR>44_dosurround(<SNR>44_inputtarget())<CR> |
|  | <Plug>SurroundRepeat | . |
|  | <Plug>fugitive: |  |
|  | <Plug>fugitive:y<C-G> | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|  | <Plug>CommentaryUndo | :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"<CR> |
|  | <Plug>ChangeCommentary | c:<C-U>call <SNR>39_textobject(1)<CR> |
|  | <Plug>CommentaryLine | <SNR>39_go() . '_' |
|  | <Plug>Commentary | <SNR>39_go() |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <C-H> | :<C-U>TmuxNavigateLeft<CR> |
|  | <C-K> | :<C-U>TmuxNavigateUp<CR> |
|  | <C-J> | :<C-U>TmuxNavigateDown<CR> |
|  | <Down> | :resize +1<CR> |
|  | <Up> | :resize -1<CR> |
|  | <Right> | :vertical resize +1<CR> |
|  | <Left> | :vertical resize -1<CR> |
|  | <C-L> | :<C-U>TmuxNavigateRight<CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  # | y:match MatchGroup /<C-R>"/<CR> |
|  |  y | "+y |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | // | y/<C-R>"<CR> |
|  | S | <Plug>VSurround |
|  | [x | <Plug>(unimpaired-xml-encode) |
|  | [u | <Plug>(unimpaired-url-encode) |
|  | [C | <Plug>(unimpaired-string-encode) |
|  | [y | <Plug>(unimpaired-string-encode) |
|  | [e | <Plug>(unimpaired-move-selection-up) |
|  | [n | <Plug>(unimpaired-context-previous) |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]x | <Plug>(unimpaired-xml-decode) |
|  | ]u | <Plug>(unimpaired-url-decode) |
|  | ]C | <Plug>(unimpaired-string-decode) |
|  | ]y | <Plug>(unimpaired-string-decode) |
|  | ]e | <Plug>(unimpaired-move-selection-down) |
|  | ]n | <Plug>(unimpaired-context-next) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gS | <Plug>VgSurround |
|  | gc | <Plug>Commentary |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | <Plug>(vsnip-cut-text) | :<C-U>call <SNR>48_vsnip_visual_text(visualmode())<CR>gv"_c |
|  | <Plug>(vsnip-select-text) | :<C-U>call <SNR>48_vsnip_visual_text(visualmode())<CR>gv |
|  | <Plug>(unimpaired-xml-decode) | <SNR>46_TransformSetup("xml_decode") |
|  | <Plug>unimpaired_xml_decode | <SNR>46_TransformSetup("xml_decode") |
|  | <Plug>(unimpaired-xml-encode) | <SNR>46_TransformSetup("xml_encode") |
|  | <Plug>unimpaired_xml_encode | <SNR>46_TransformSetup("xml_encode") |
|  | <Plug>(unimpaired-url-decode) | <SNR>46_TransformSetup("url_decode") |
|  | <Plug>unimpaired_url_decode | <SNR>46_TransformSetup("url_decode") |
|  | <Plug>(unimpaired-url-encode) | <SNR>46_TransformSetup("url_encode") |
|  | <Plug>unimpaired_url_encode | <SNR>46_TransformSetup("url_encode") |
|  | <Plug>(unimpaired-string-decode) | <SNR>46_TransformSetup("string_decode") |
|  | <Plug>unimpaired_string_decode | <SNR>46_TransformSetup("string_decode") |
|  | <Plug>(unimpaired-string-encode) | <SNR>46_TransformSetup("string_encode") |
|  | <Plug>unimpaired_string_encode | <SNR>46_TransformSetup("string_encode") |
|  | <Plug>unimpairedMoveSelectionDown | :<C-U>call <SNR>46_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>unimpairedMoveSelectionUp | :<C-U>call <SNR>46_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-down) | :<C-U>call <SNR>46_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-up) | :<C-U>call <SNR>46_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>unimpairedContextNext | :<C-U>exe 'normal! gv'|call <SNR>46_Context(0)<CR> |
|  | <Plug>unimpairedContextPrevious | :<C-U>exe 'normal! gv'|call <SNR>46_Context(1)<CR> |
|  | <Plug>(unimpaired-context-next) | :<C-U>exe 'normal! gv'|call <SNR>46_Context(0)<CR> |
|  | <Plug>(unimpaired-context-previous) | :<C-U>exe 'normal! gv'|call <SNR>46_Context(1)<CR> |
|  | <C-Bslash> | :<C-U>TmuxNavigatePrevious<CR> |
|  | <Plug>VgSurround | :<C-U>call <SNR>44_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR> |
|  | <Plug>VSurround | :<C-U>call <SNR>44_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR> |
|  | <Plug>Commentary | <SNR>39_go() |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
|  | <C-H> | :<C-U>TmuxNavigateLeft<CR> |
|  | <C-K> | :<C-U>TmuxNavigateUp<CR> |
|  | <C-J> | :<C-U>TmuxNavigateDown<CR> |
|  | <C-L> | :<C-U>TmuxNavigateRight<CR> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
|  | [n | <Plug>(unimpaired-context-previous) |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]n | <Plug>(unimpaired-context-next) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | gc | <Plug>Commentary |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | <Plug>unimpairedMoveSelectionDown | :<C-U>call <SNR>46_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>unimpairedMoveSelectionUp | :<C-U>call <SNR>46_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-down) | :<C-U>call <SNR>46_MoveSelectionDown(v:count1)<CR> |
|  | <Plug>(unimpaired-move-selection-up) | :<C-U>call <SNR>46_MoveSelectionUp(v:count1)<CR> |
|  | <Plug>unimpairedContextNext | :<C-U>call <SNR>46_ContextMotion(0)<CR> |
|  | <Plug>unimpairedContextPrevious | :<C-U>call <SNR>46_ContextMotion(1)<CR> |
|  | <Plug>(unimpaired-context-next) | :<C-U>call <SNR>46_ContextMotion(0)<CR> |
|  | <Plug>(unimpaired-context-previous) | :<C-U>call <SNR>46_ContextMotion(1)<CR> |
|  | <C-Bslash> | :<C-U>TmuxNavigatePrevious<CR> |
|  | <Plug>Commentary | :<C-U>call <SNR>39_textobject(get(v:, 'operator', '') ==# 'c')<CR> |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
|  | <C-H> | :<C-U>TmuxNavigateLeft<CR> |
|  | <C-K> | :<C-U>TmuxNavigateUp<CR> |
|  | <C-J> | :<C-U>TmuxNavigateDown<CR> |
|  | <C-L> | :<C-U>TmuxNavigateRight<CR> |
