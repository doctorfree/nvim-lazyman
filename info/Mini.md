## Mini Neovim Configuration Information

Uses the [mini.nvim](https://github.com/echasnovski/mini.nvim) library. Personal configuration of the 'mini.nvim' author

- Install and initialize: **`lazyman -M`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Mini](https://github.com/echasnovski/mini.nvim)
- Installation location:  **`~/.config/lazyman/Mini`**

### Git repository

[https://github.com/echasnovski/nvim](https://github.com/echasnovski/nvim)

### Neovimcraft entry

[http://neovimcraft.com/plugin/echasnovski/nvim](http://neovimcraft.com/plugin/echasnovski/nvim)

### Mini.nvim managed plugins


### Mini Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Suite |  Ts | <Cmd>TestSuite<CR> |
| Suite (quickfix) |  TS | <Cmd>TestSuite -strategy=make | copen<CR> |
| Nearest |  Tn | <Cmd>TestNearest<CR> |
| Nearest (quickfix) |  TN | <Cmd>TestNearest -strategy=make | copen<CR> |
| Last |  Tl | <Cmd>TestLast<CR> |
| Last (quickfix) |  TL | <Cmd>TestLast -strategy=make | copen<CR> |
| File |  Tf | <Cmd>TestFile<CR> |
| File (quickfix) |  TF | <Cmd>TestFile -strategy=make | copen<CR> |
| Terminal (vertical) |  tt | <Cmd>vertical Tnew<CR> |
| Terminal (horizontal) |  tT | <Cmd>belowright Tnew<CR> |
| Test show screenshot |  ts | <Cmd>lua EC.minitest_screenshots.browse()<CR> |
| Test run location |  tl | <Cmd>lua MiniTest.run_at_location()<CR> |
| Test run file |  tf | <Cmd>lua MiniTest.run_file()<CR> |
| Test run all |  ta | <Cmd>lua MiniTest.run()<CR> |
| Send to terminal |  s | <Cmd>TREPLSendLine<CR>j |
| Test |  rt | <Cmd>T devtools::test()<CR> |
| Test file |  rT | <Cmd>T testthat::test_file("%")<CR> |
| Load all |  rl | <Cmd>T devtools::load_all()<CR> |
| Knit file |  rk | <Cmd>T rmarkdown::render("%")<CR> |
| Install |  ri | <Cmd>T devtools::install(keep_source=TRUE)<CR> |
| Document |  rd | <Cmd>T devtools::document()<CR> |
| Coverage |  rC | <Cmd>T devtools::test_coverage()<CR> |
| Check |  rc | <Cmd>T devtools::check()<CR> |
| Zoom toggle |  oz | <Cmd>lua MiniMisc.zoom()<CR> |
| Trailspace hl toggle |  oT | <Cmd>lua vim.b.minitrailspace_disable = not vim.b.minitrailspace_disable<CR> |
| Trim trailspace |  ot | <Cmd>lua MiniTrailspace.trim()<CR> |
| Section insert |  oS | <Cmd>lua EC.insert_section()<CR> |
| Session select |  os | <Cmd>lua MiniSessions.select()<CR> |
| Resize to default width |  or | <Cmd>lua MiniMisc.resize_window()<CR> |
| Move arg right |  ol | <Cmd>normal gxiagxina<CR> |
| Generate plugin doc |  og | <Cmd>lua MiniDoc.generate()<CR> |
| Highlight toggle |  oH | <Cmd>TSBufToggle highlight<CR> |
| Move arg left |  oh | <Cmd>normal gxiagxila<CR> |
| Document |  od | <Cmd>Neogen<CR> |
| Cursor word hl toggle |  oC | <Cmd>lua MiniCursorword.toggle()<CR> |
| Toggle |  mt | <Cmd>lua MiniMap.toggle()<CR> |
| Side (toggle) |  ms | <Cmd>lua MiniMap.toggle_side()<CR> |
| Refresh |  mr | <Cmd>lua MiniMap.refresh()<CR> |
| Open |  mo | <Cmd>lua MiniMap.open()<CR> |
| Focus (toggle) |  mf | <Cmd>lua MiniMap.toggle_focus()<CR> |
| Close |  mc | <Cmd>lua MiniMap.close()<CR> |
| Execute `lua` line |  Lx | <Cmd>lua EC.execute_lua_line()<CR> |
| `luafile` buffer |  Lf | <Cmd>luafile %<CR> |
| Source definition |  ls | <Cmd>lua vim.lsp.buf.definition()<CR> |
| Rename |  lr | <Cmd>lua vim.lsp.buf.rename()<CR> |
| References |  lR | <Cmd>lua vim.lsp.buf.references()<CR> |
| Prev diagnostic |  lk | <Cmd>lua vim.diagnostic.goto_prev()<CR> |
| Next diagnostic |  lj | <Cmd>lua vim.diagnostic.goto_next()<CR> |
| Information |  li | <Cmd>lua vim.lsp.buf.hover()<CR> |
| Format |  lf | <Cmd>lua vim.lsp.buf.format({ async = true })<CR> |
| Diagnostics popup |  ld | <Cmd>lua vim.diagnostic.open_float()<CR> |
| Arguments popup |  la | <Cmd>lua vim.lsp.buf.signature_help()<CR> |
| Discard (reset) buffer |  gX | <Cmd>lua require("gitsigns").reset_buffer()<CR> |
| Discard (reset) hunk |  gx | <Cmd>lua require("gitsigns").reset_hunk()<CR> |
| Undo stage hunk |  gu | <Cmd>lua require("gitsigns").undo_stage_hunk()<CR> |
| Quickfix hunks |  gq | <Cmd>lua require("gitsigns").setqflist()<CR>:copen<CR> |
| Preview hunk |  gp | <Cmd>lua require("gitsigns").preview_hunk()<CR> |
| Git tab |  gg | <Cmd>lua EC.open_lazygit()<CR> |
| Blame line |  gb | <Cmd>lua require("gitsigns").blame_line()<CR> |
| Add (stage) hunk |  ga | <Cmd>lua require("gitsigns").stage_hunk()<CR> |
| Add buffer |  gA | <Cmd>lua require("gitsigns").stage_buffer()<CR> |
| File browser |  ft | <Cmd>Telescope file_browser<CR> |
| Symbols (treesitter) |  fS | <Cmd>Telescope treesitter<CR> |
| Spell suggestions |  fs | <Cmd>Telescope spell_suggest<CR> |
| References (LSP) |  fR | <Cmd>Telescope lsp_references<CR> |
| Resume |  fr | <Cmd>Telescope resume<CR> |
| Options |  fO | <Cmd>Telescope vim_options<CR> |
| Old files |  fo | <Cmd>Telescope oldfiles<CR> |
| Notes |  fn | <Cmd>TodoTelescope<CR> |
| Jumplist |  fj | <Cmd>Telescope jumplist<CR> |
| Highlight groups |  fH | <Cmd>Telescope highlights<CR> |
| Help tags |  fh | <Cmd>Telescope help_tags<CR> |
| Grep search |  fg | <Cmd>Telescope live_grep<CR> |
| Files |  ff | <Cmd>lua EC.telescope_project_files()<CR> |
| Diagnostic buffer |  fD | <Cmd>Telescope diagnostics bufnr=0<CR> |
| Diagnostic workspace |  fd | <Cmd>Telescope diagnostics<CR> |
| Buffer commits |  fC | <Cmd>Telescope git_bcommits<CR> |
| Commits |  fc | <Cmd>Telescope git_commits<CR> |
| Open buffers |  fB | <Cmd>Telescope current_buffer_fuzzy_find<CR> |
| Open buffers |  fb | <Cmd>Telescope buffers<CR> |
| Commands |  f: | <Cmd>Telescope command_history<CR> |
| "/" history |  f/ | <Cmd>Telescope search_history<CR> |
| Quickfix |  eq | <Cmd>lua EC.toggle_quickfix()<CR> |
| Mini.nvim directory |  em | <Cmd>lua MiniFiles.open('~/.config/lazyman/Mini/pack/plugins/opt/mini')<CR> |
| File directory |  ef | <Cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR> |
| Directory |  ed | <Cmd>lua MiniFiles.open()<CR> |
| Wipeout! |  bW | <Cmd>lua MiniBufremove.wipeout(0, true)<CR> |
| Wipeout |  bw | <Cmd>lua MiniBufremove.wipeout()<CR> |
| Scratch |  bs | <Cmd>lua EC.new_scratch_buffer()<CR> |
| Delete! |  bD | <Cmd>lua MiniBufremove.delete(0, true)<CR> |
| Delete |  bd | <Cmd>lua MiniBufremove.delete()<CR> |
| Alternate |  ba | <Cmd>b#<CR> |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
| Paste Above | [p | <Cmd>exe "put! " . v:register<CR> |
| Toggle hlsearch | \h |  |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
| Paste Below | ]p | <Cmd>exe "put "  . v:register<CR> |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
|  | s |  |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
| Nvim builtin | <C-L> | <Cmd>nohlsearch|diffupdate|normal! <C-L><CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Send to terminal |  s | mode() ==# "v" ? ":TREPLSendSelection<CR>`>l" : ":TREPLSendSelection<CR>'>j" |
| Reprex selection |  rx | "+y :T reprex::reprex()<CR> |
| Format selection |  lf | <Cmd>lua vim.lsp.buf.format()<CR><Esc> |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
| Paste Above | [p | <Cmd>exe "put! " . v:register<CR> |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
| Paste Below | ]p | <Cmd>exe "put "  . v:register<CR> |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | s |  |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
