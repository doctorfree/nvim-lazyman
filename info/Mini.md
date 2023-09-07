# Mini Neovim Configuration Information

Uses the [mini.nvim](https://github.com/echasnovski/mini.nvim) library. Personal configuration of the 'mini.nvim' author

- Install and initialize: **`lazyman -M`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Mini](https://github.com/echasnovski/mini.nvim)
- Installation location:  **`~/.config/nvim-Mini`**

## Git repository

[https://github.com/echasnovski/nvim](https://github.com/echasnovski/nvim)

## Neovimcraft entry

[http://neovimcraft.com/plugin/echasnovski/nvim](http://neovimcraft.com/plugin/echasnovski/nvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Mini.nvim managed plugins


## Mini Keymaps

### Normal mode keymaps

| **Description** | Suite |
| :---- | :---- |
| **Left hand side** | <code> Ts</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TestSuite&lt;CR&gt;</code> |

| **Description** | Suite (quickfix) |
| :---- | :---- |
| **Left hand side** | <code> TS</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TestSuite -strategy=make &#124; copen&lt;CR&gt;</code> |

| **Description** | Nearest |
| :---- | :---- |
| **Left hand side** | <code> Tn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TestNearest&lt;CR&gt;</code> |

| **Description** | Nearest (quickfix) |
| :---- | :---- |
| **Left hand side** | <code> TN</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TestNearest -strategy=make &#124; copen&lt;CR&gt;</code> |

| **Description** | Last |
| :---- | :---- |
| **Left hand side** | <code> Tl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TestLast&lt;CR&gt;</code> |

| **Description** | Last (quickfix) |
| :---- | :---- |
| **Left hand side** | <code> TL</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TestLast -strategy=make &#124; copen&lt;CR&gt;</code> |

| **Description** | File |
| :---- | :---- |
| **Left hand side** | <code> Tf</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TestFile&lt;CR&gt;</code> |

| **Description** | File (quickfix) |
| :---- | :---- |
| **Left hand side** | <code> TF</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TestFile -strategy=make &#124; copen&lt;CR&gt;</code> |

| **Description** | Terminal (vertical) |
| :---- | :---- |
| **Left hand side** | <code> tt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vertical Tnew&lt;CR&gt;</code> |

| **Description** | Terminal (horizontal) |
| :---- | :---- |
| **Left hand side** | <code> tT</code> |
| **Right hand side** | <code>&lt;Cmd&gt;belowright Tnew&lt;CR&gt;</code> |

| **Description** | Test show screenshot |
| :---- | :---- |
| **Left hand side** | <code> ts</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua EC.minitest_screenshots.browse()&lt;CR&gt;</code> |

| **Description** | Test run location |
| :---- | :---- |
| **Left hand side** | <code> tl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniTest.run_at_location()&lt;CR&gt;</code> |

| **Description** | Test run file |
| :---- | :---- |
| **Left hand side** | <code> tf</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniTest.run_file()&lt;CR&gt;</code> |

| **Description** | Test run all |
| :---- | :---- |
| **Left hand side** | <code> ta</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniTest.run()&lt;CR&gt;</code> |

| **Description** | Send to terminal |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TREPLSendLine&lt;CR&gt;j</code> |

| **Description** | Test |
| :---- | :---- |
| **Left hand side** | <code> rt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;T devtools::test()&lt;CR&gt;</code> |

| **Description** | Test file |
| :---- | :---- |
| **Left hand side** | <code> rT</code> |
| **Right hand side** | <code>&lt;Cmd&gt;T testthat::test_file("%")&lt;CR&gt;</code> |

| **Description** | Load all |
| :---- | :---- |
| **Left hand side** | <code> rl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;T devtools::load_all()&lt;CR&gt;</code> |

| **Description** | Knit file |
| :---- | :---- |
| **Left hand side** | <code> rk</code> |
| **Right hand side** | <code>&lt;Cmd&gt;T rmarkdown::render("%")&lt;CR&gt;</code> |

| **Description** | Install |
| :---- | :---- |
| **Left hand side** | <code> ri</code> |
| **Right hand side** | <code>&lt;Cmd&gt;T devtools::install(keep_source=TRUE)&lt;CR&gt;</code> |

| **Description** | Document |
| :---- | :---- |
| **Left hand side** | <code> rd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;T devtools::document()&lt;CR&gt;</code> |

| **Description** | Coverage |
| :---- | :---- |
| **Left hand side** | <code> rC</code> |
| **Right hand side** | <code>&lt;Cmd&gt;T devtools::test_coverage()&lt;CR&gt;</code> |

| **Description** | Check |
| :---- | :---- |
| **Left hand side** | <code> rc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;T devtools::check()&lt;CR&gt;</code> |

| **Description** | Zoom toggle |
| :---- | :---- |
| **Left hand side** | <code> oz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMisc.zoom()&lt;CR&gt;</code> |

| **Description** | Trailspace hl toggle |
| :---- | :---- |
| **Left hand side** | <code> oT</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.b.minitrailspace_disable = not vim.b.minitrailspace_disable&lt;CR&gt;</code> |

| **Description** | Trim trailspace |
| :---- | :---- |
| **Left hand side** | <code> ot</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniTrailspace.trim()&lt;CR&gt;</code> |

| **Description** | Section insert |
| :---- | :---- |
| **Left hand side** | <code> oS</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua EC.insert_section()&lt;CR&gt;</code> |

| **Description** | Session select |
| :---- | :---- |
| **Left hand side** | <code> os</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniSessions.select()&lt;CR&gt;</code> |

| **Description** | Resize to default width |
| :---- | :---- |
| **Left hand side** | <code> or</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMisc.resize_window()&lt;CR&gt;</code> |

| **Description** | Move arg right |
| :---- | :---- |
| **Left hand side** | <code> ol</code> |
| **Right hand side** | <code>&lt;Cmd&gt;normal gxiagxina&lt;CR&gt;</code> |

| **Description** | Generate plugin doc |
| :---- | :---- |
| **Left hand side** | <code> og</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniDoc.generate()&lt;CR&gt;</code> |

| **Description** | Highlight toggle |
| :---- | :---- |
| **Left hand side** | <code> oH</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TSBufToggle highlight&lt;CR&gt;</code> |

| **Description** | Move arg left |
| :---- | :---- |
| **Left hand side** | <code> oh</code> |
| **Right hand side** | <code>&lt;Cmd&gt;normal gxiagxila&lt;CR&gt;</code> |

| **Description** | Document |
| :---- | :---- |
| **Left hand side** | <code> od</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Neogen&lt;CR&gt;</code> |

| **Description** | Cursor word hl toggle |
| :---- | :---- |
| **Left hand side** | <code> oC</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniCursorword.toggle()&lt;CR&gt;</code> |

| **Description** | Toggle |
| :---- | :---- |
| **Left hand side** | <code> mt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMap.toggle()&lt;CR&gt;</code> |

| **Description** | Side (toggle) |
| :---- | :---- |
| **Left hand side** | <code> ms</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMap.toggle_side()&lt;CR&gt;</code> |

| **Description** | Refresh |
| :---- | :---- |
| **Left hand side** | <code> mr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMap.refresh()&lt;CR&gt;</code> |

| **Description** | Open |
| :---- | :---- |
| **Left hand side** | <code> mo</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMap.open()&lt;CR&gt;</code> |

| **Description** | Focus (toggle) |
| :---- | :---- |
| **Left hand side** | <code> mf</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMap.toggle_focus()&lt;CR&gt;</code> |

| **Description** | Close |
| :---- | :---- |
| **Left hand side** | <code> mc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniMap.close()&lt;CR&gt;</code> |

| **Description** | Execute `lua` line |
| :---- | :---- |
| **Left hand side** | <code> Lx</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua EC.execute_lua_line()&lt;CR&gt;</code> |

| **Description** | `luafile` buffer |
| :---- | :---- |
| **Left hand side** | <code> Lf</code> |
| **Right hand side** | <code>&lt;Cmd&gt;luafile %&lt;CR&gt;</code> |

| **Description** | Source definition |
| :---- | :---- |
| **Left hand side** | <code> ls</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.definition()&lt;CR&gt;</code> |

| **Description** | Rename |
| :---- | :---- |
| **Left hand side** | <code> lr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.rename()&lt;CR&gt;</code> |

| **Description** | References |
| :---- | :---- |
| **Left hand side** | <code> lR</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.references()&lt;CR&gt;</code> |

| **Description** | Prev diagnostic |
| :---- | :---- |
| **Left hand side** | <code> lk</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_prev()&lt;CR&gt;</code> |

| **Description** | Next diagnostic |
| :---- | :---- |
| **Left hand side** | <code> lj</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.goto_next()&lt;CR&gt;</code> |

| **Description** | Information |
| :---- | :---- |
| **Left hand side** | <code> li</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.hover()&lt;CR&gt;</code> |

| **Description** | Format |
| :---- | :---- |
| **Left hand side** | <code> lf</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.format({ async = true })&lt;CR&gt;</code> |

| **Description** | Diagnostics popup |
| :---- | :---- |
| **Left hand side** | <code> ld</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.open_float()&lt;CR&gt;</code> |

| **Description** | Arguments popup |
| :---- | :---- |
| **Left hand side** | <code> la</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.signature_help()&lt;CR&gt;</code> |

| **Description** | Discard (reset) buffer |
| :---- | :---- |
| **Left hand side** | <code> gX</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("gitsigns").reset_buffer()&lt;CR&gt;</code> |

| **Description** | Discard (reset) hunk |
| :---- | :---- |
| **Left hand side** | <code> gx</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("gitsigns").reset_hunk()&lt;CR&gt;</code> |

| **Description** | Undo stage hunk |
| :---- | :---- |
| **Left hand side** | <code> gu</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("gitsigns").undo_stage_hunk()&lt;CR&gt;</code> |

| **Description** | Quickfix hunks |
| :---- | :---- |
| **Left hand side** | <code> gq</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("gitsigns").setqflist()&lt;CR&gt;:copen&lt;CR&gt;</code> |

| **Description** | Preview hunk |
| :---- | :---- |
| **Left hand side** | <code> gp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("gitsigns").preview_hunk()&lt;CR&gt;</code> |

| **Description** | Git tab |
| :---- | :---- |
| **Left hand side** | <code> gg</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua EC.open_lazygit()&lt;CR&gt;</code> |

| **Description** | Blame line |
| :---- | :---- |
| **Left hand side** | <code> gb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("gitsigns").blame_line()&lt;CR&gt;</code> |

| **Description** | Add (stage) hunk |
| :---- | :---- |
| **Left hand side** | <code> ga</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("gitsigns").stage_hunk()&lt;CR&gt;</code> |

| **Description** | Add buffer |
| :---- | :---- |
| **Left hand side** | <code> gA</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("gitsigns").stage_buffer()&lt;CR&gt;</code> |

| **Description** | File browser |
| :---- | :---- |
| **Left hand side** | <code> ft</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope file_browser&lt;CR&gt;</code> |

| **Description** | Symbols (treesitter) |
| :---- | :---- |
| **Left hand side** | <code> fS</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope treesitter&lt;CR&gt;</code> |

| **Description** | Spell suggestions |
| :---- | :---- |
| **Left hand side** | <code> fs</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope spell_suggest&lt;CR&gt;</code> |

| **Description** | References (LSP) |
| :---- | :---- |
| **Left hand side** | <code> fR</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope lsp_references&lt;CR&gt;</code> |

| **Description** | Resume |
| :---- | :---- |
| **Left hand side** | <code> fr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniPick.builtin.resume()&lt;CR&gt;</code> |

| **Description** | Options |
| :---- | :---- |
| **Left hand side** | <code> fO</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope vim_options&lt;CR&gt;</code> |

| **Description** | Old files |
| :---- | :---- |
| **Left hand side** | <code> fo</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |

| **Description** | Jumplist |
| :---- | :---- |
| **Left hand side** | <code> fj</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope jumplist&lt;CR&gt;</code> |

| **Description** | Highlight groups |
| :---- | :---- |
| **Left hand side** | <code> fH</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope highlights&lt;CR&gt;</code> |

| **Description** | Help tags |
| :---- | :---- |
| **Left hand side** | <code> fh</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniPick.builtin.help()&lt;CR&gt;</code> |

| **Description** | Grep live |
| :---- | :---- |
| **Left hand side** | <code> fg</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniPick.builtin.grep_live()&lt;CR&gt;</code> |

| **Description** | Files |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniPick.builtin.files()&lt;CR&gt;</code> |

| **Description** | Diagnostic buffer |
| :---- | :---- |
| **Left hand side** | <code> fD</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope diagnostics bufnr=0&lt;CR&gt;</code> |

| **Description** | Diagnostic workspace |
| :---- | :---- |
| **Left hand side** | <code> fd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope diagnostics&lt;CR&gt;</code> |

| **Description** | Buffer commits |
| :---- | :---- |
| **Left hand side** | <code> fC</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope git_bcommits&lt;CR&gt;</code> |

| **Description** | Commits |
| :---- | :---- |
| **Left hand side** | <code> fc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope git_commits&lt;CR&gt;</code> |

| **Description** | Open buffers |
| :---- | :---- |
| **Left hand side** | <code> fB</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |

| **Description** | Open buffers |
| :---- | :---- |
| **Left hand side** | <code> fb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniPick.builtin.buffers()&lt;CR&gt;</code> |

| **Description** | Commands |
| :---- | :---- |
| **Left hand side** | <code> f:</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope command_history&lt;CR&gt;</code> |

| **Description** | "/" history |
| :---- | :---- |
| **Left hand side** | <code> f/</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope search_history&lt;CR&gt;</code> |

| **Description** | Quickfix |
| :---- | :---- |
| **Left hand side** | <code> eq</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua EC.toggle_quickfix()&lt;CR&gt;</code> |

| **Description** | Mini.nvim directory |
| :---- | :---- |
| **Left hand side** | <code> em</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniFiles.open('~/.config/nvim-Mini/pack/plugins/opt/mini')&lt;CR&gt;</code> |

| **Description** | File directory |
| :---- | :---- |
| **Left hand side** | <code> ef</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniFiles.open(vim.api.nvim_buf_get_name(0))&lt;CR&gt;</code> |

| **Description** | Directory |
| :---- | :---- |
| **Left hand side** | <code> ed</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniFiles.open()&lt;CR&gt;</code> |

| **Description** | Wipeout! |
| :---- | :---- |
| **Left hand side** | <code> bW</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniBufremove.wipeout(0, true)&lt;CR&gt;</code> |

| **Description** | Wipeout |
| :---- | :---- |
| **Left hand side** | <code> bw</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniBufremove.wipeout()&lt;CR&gt;</code> |

| **Description** | Scratch |
| :---- | :---- |
| **Left hand side** | <code> bs</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua EC.new_scratch_buffer()&lt;CR&gt;</code> |

| **Description** | Delete! |
| :---- | :---- |
| **Left hand side** | <code> bD</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniBufremove.delete(0, true)&lt;CR&gt;</code> |

| **Description** | Delete |
| :---- | :---- |
| **Left hand side** | <code> bd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua MiniBufremove.delete()&lt;CR&gt;</code> |

| **Description** | Alternate |
| :---- | :---- |
| **Left hand side** | <code> ba</code> |
| **Right hand side** | <code>&lt;Cmd&gt;b#&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | Paste Above |
| :---- | :---- |
| **Left hand side** | <code>[p</code> |
| **Right hand side** | <code>&lt;Cmd&gt;exe "put! " . v:register&lt;CR&gt;</code> |

| **Description** | Toggle hlsearch |
| :---- | :---- |
| **Left hand side** | <code>\h</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | Paste Below |
| :---- | :---- |
| **Left hand side** | <code>]p</code> |
| **Right hand side** | <code>&lt;Cmd&gt;exe "put "  . v:register&lt;CR&gt;</code> |

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
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code></code> |

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

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Send to terminal |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>mode() ==# "v" ? ":TREPLSendSelection&lt;CR&gt;`&gt;l" : ":TREPLSendSelection&lt;CR&gt;'&gt;j"</code> |

| **Description** | Reprex selection |
| :---- | :---- |
| **Left hand side** | <code> rx</code> |
| **Right hand side** | <code>"+y :T reprex::reprex()&lt;CR&gt;</code> |

| **Description** | Format selection |
| :---- | :---- |
| **Left hand side** | <code> lf</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.format()&lt;CR&gt;&lt;Esc&gt;</code> |

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
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

| **Description** | Paste Above |
| :---- | :---- |
| **Left hand side** | <code>[p</code> |
| **Right hand side** | <code>&lt;Cmd&gt;exe "put! " . v:register&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

| **Description** | Paste Below |
| :---- | :---- |
| **Left hand side** | <code>]p</code> |
| **Right hand side** | <code>&lt;Cmd&gt;exe "put "  . v:register&lt;CR&gt;</code> |

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
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code></code> |

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

