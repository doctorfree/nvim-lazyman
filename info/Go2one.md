## Go2one Neovim Configuration Information

Neovim Go development environment that does not touch standard Neovim configuration folders

- Install and initialize: **`lazyman -L Go2one`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Go2one`**

### Git repository

[https://github.com/leoluz/go2one](https://github.com/leoluz/go2one)

### Packer managed plugins


### Go2one Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> t</code> | <code>:lua require'testo'.test_nearest()&lt;CR&gt;</code> |
|  | <code> s</code> | <code>:lua require'utils'.reload('go2one')&lt;CR&gt;</code> |
|  | <code> a</code> | <code>ggVG$</code> |
|  | <code> v</code> | <code>:e $MYVIMRC&lt;CR&gt;</code> |
|  | <code> -</code> | <code>:q!&lt;CR&gt;</code> |
|  | <code> gj</code> | <code>:%!jq .&lt;CR&gt;</code> |
|  | <code> x</code> | <code>:ccl&lt;CR&gt;</code> |
|  | <code> ,</code> | <code>10&lt;C-W&gt;&lt;lt&gt;</code> |
|  | <code> .</code> | <code>10&lt;C-W&gt;&gt;</code> |
|  | <code> =</code> | <code>&lt;C-W&gt;=</code> |
|  | <code> m</code> | <code>&lt;C-W&gt;_</code> |
|  | <code> l</code> | <code>&lt;C-W&gt;l</code> |
|  | <code> h</code> | <code>&lt;C-W&gt;h</code> |
|  | <code> k</code> | <code>&lt;C-W&gt;k</code> |
|  | <code> j</code> | <code>&lt;C-W&gt;j</code> |
|  | <code> 9</code> | <code>&lt;Cmd&gt;BufferLineGoToBuffer 9&lt;CR&gt;</code> |
|  | <code> 8</code> | <code>&lt;Cmd&gt;BufferLineGoToBuffer 8&lt;CR&gt;</code> |
|  | <code> 7</code> | <code>&lt;Cmd&gt;BufferLineGoToBuffer 7&lt;CR&gt;</code> |
|  | <code> 6</code> | <code>&lt;Cmd&gt;BufferLineGoToBuffer 6&lt;CR&gt;</code> |
|  | <code> 5</code> | <code>&lt;Cmd&gt;BufferLineGoToBuffer 5&lt;CR&gt;</code> |
|  | <code> 4</code> | <code>&lt;Cmd&gt;BufferLineGoToBuffer 4&lt;CR&gt;</code> |
|  | <code> 3</code> | <code>&lt;Cmd&gt;BufferLineGoToBuffer 3&lt;CR&gt;</code> |
|  | <code> 2</code> | <code>&lt;Cmd&gt;BufferLineGoToBuffer 2&lt;CR&gt;</code> |
|  | <code> 1</code> | <code>&lt;Cmd&gt;BufferLineGoToBuffer 1&lt;CR&gt;</code> |
|  | <code> y</code> |  |
|  | <code> q</code> | <code>:NvimTreeToggle&lt;CR&gt;</code> |
|  | <code> db</code> | <code>:lua require'dap'.toggle_breakpoint()&lt;CR&gt;</code> |
|  | <code> dd</code> | <code>:lua require'dap'.continue()&lt;CR&gt;</code> |
|  | <code> do</code> | <code>:lua require'dap'.step_over()&lt;CR&gt;</code> |
|  | <code> di</code> | <code>:lua require'dap'.step_into()&lt;CR&gt;</code> |
|  | <code> dc</code> | <code>:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))&lt;CR&gt;</code> |
|  | <code> du</code> | <code>:lua require'dapui'.toggle()&lt;CR&gt;</code> |
|  | <code> i</code> | <code>:lua require'dapui'.eval()&lt;CR&gt;</code> |
|  | <code> /</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |
|  | <code> ghc</code> |  |
|  | <code> ghf</code> |  |
|  | <code> ghh</code> |  |
|  | <code> gs</code> |  |
|  | <code> gb</code> |  |
|  | <code> gl</code> |  |
|  | <code> gd</code> |  |
|  | <code> b</code> |  |
|  | <code> f;</code> |  |
|  | <code> fd</code> |  |
|  | <code> fk</code> |  |
|  | <code> fg</code> |  |
|  | <code> fh</code> |  |
|  | <code> fp</code> |  |
|  | <code> ff</code> |  |
|  | <code> gp</code> | <code>:Git push&lt;CR&gt;</code> |
|  | <code> gc</code> | <code>:Git commit -s&lt;CR&gt;</code> |
|  | <code> gg</code> | <code>:Git&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>,</code> |  |
|  | <code>;</code> |  |
|  | <code>F</code> |  |
|  | <code>T</code> |  |
|  | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>_</code> | <code>:bdelete!&lt;CR&gt;</code> |
|  | <code>cS</code> | <code>&lt;Plug&gt;CSurround</code> |
|  | <code>cs</code> | <code>&lt;Plug&gt;Csurround</code> |
|  | <code>ds</code> | <code>&lt;Plug&gt;Dsurround</code> |
|  | <code>dm-</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_line()&lt;CR&gt;</code> |
|  | <code>dm5</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark5()&lt;CR&gt;</code> |
|  | <code>dm=</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark()&lt;CR&gt;</code> |
|  | <code>dm0</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark0()&lt;CR&gt;</code> |
|  | <code>dm4</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark4()&lt;CR&gt;</code> |
|  | <code>dm </code> | <code>&lt;Cmd&gt;lua require'marks'.delete_buf()&lt;CR&gt;</code> |
|  | <code>dm3</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark3()&lt;CR&gt;</code> |
|  | <code>dm</code> | <code>&lt;Cmd&gt;lua require'marks'.delete()&lt;CR&gt;</code> |
|  | <code>dm2</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark2()&lt;CR&gt;</code> |
|  | <code>dm7</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark7()&lt;CR&gt;</code> |
|  | <code>dm1</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark1()&lt;CR&gt;</code> |
|  | <code>dm8</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark8()&lt;CR&gt;</code> |
|  | <code>dm6</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark6()&lt;CR&gt;</code> |
|  | <code>dm9</code> | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark9()&lt;CR&gt;</code> |
|  | <code>f</code> |  |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
|  | <code>gb</code> | <code>`.</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
|  | <code>j</code> | <code>(v:count == 0 ? 'gj' : 'j')</code> |
|  | <code>k</code> | <code>(v:count == 0 ? 'gk' : 'k')</code> |
|  | <code>m}</code> | <code>&lt;Cmd&gt;lua require'marks'.next_bookmark()&lt;CR&gt;</code> |
|  | <code>m]</code> | <code>&lt;Cmd&gt;lua require'marks'.next()&lt;CR&gt;</code> |
|  | <code>m</code> | <code>&lt;Cmd&gt;lua require'marks'.set()&lt;CR&gt;</code> |
|  | <code>m3</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark3()&lt;CR&gt;</code> |
|  | <code>m4</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark4()&lt;CR&gt;</code> |
|  | <code>m5</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark5()&lt;CR&gt;</code> |
|  | <code>m[</code> | <code>&lt;Cmd&gt;lua require'marks'.prev()&lt;CR&gt;</code> |
|  | <code>m6</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark6()&lt;CR&gt;</code> |
|  | <code>m9</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark9()&lt;CR&gt;</code> |
|  | <code>m7</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark7()&lt;CR&gt;</code> |
|  | <code>m2</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark2()&lt;CR&gt;</code> |
|  | <code>m8</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark8()&lt;CR&gt;</code> |
|  | <code>m1</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark1()&lt;CR&gt;</code> |
|  | <code>m{</code> | <code>&lt;Cmd&gt;lua require'marks'.prev_bookmark()&lt;CR&gt;</code> |
|  | <code>m:</code> | <code>&lt;Cmd&gt;lua require'marks'.preview()&lt;CR&gt;</code> |
|  | <code>m0</code> | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark0()&lt;CR&gt;</code> |
|  | <code>m,</code> | <code>&lt;Cmd&gt;lua require'marks'.set_next()&lt;CR&gt;</code> |
|  | <code>m;</code> | <code>&lt;Cmd&gt;lua require'marks'.toggle()&lt;CR&gt;</code> |
|  | <code>t</code> |  |
|  | <code>ySS</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>ySs</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>yss</code> | <code>&lt;Plug&gt;Yssurround</code> |
|  | <code>yS</code> | <code>&lt;Plug&gt;YSurround</code> |
|  | <code>ys</code> | <code>&lt;Plug&gt;Ysurround</code> |
|  | <code>y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>&lt;C-X&gt;</code> | <code>:split term://bash&lt;CR&gt;</code> |
|  | <code>&lt;BS&gt;</code> | <code>:bdelete&lt;CR&gt;</code> |
|  | <code>&lt;C-S&gt;</code> | <code>:w&lt;CR&gt;</code> |
|  | <code>&lt;F4&gt;</code> | <code>:setlocal spell! spelllang=en_us&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:BufferLineMovePrev&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:BufferLineMoveNext&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |
|  | <code>&lt;F11&gt;</code> | <code>:lua require'dap'.step_out()&lt;CR&gt;</code> |
|  | <code>&lt;F10&gt;</code> | <code>:lua require'dap'.step_into()&lt;CR&gt;</code> |
|  | <code>&lt;F9&gt;</code> | <code>:lua require'dap'.step_over()&lt;CR&gt;</code> |
|  | <code>&lt;F8&gt;</code> | <code>:lua require'dap'.continue()&lt;CR&gt;</code> |
|  | <code>&lt;F7&gt;</code> | <code>:lua require'dap'.toggle_breakpoint()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;YSurround</code> | <code>&lt;SNR&gt;20_opfunc2('setup')</code> |
|  | <code>&lt;Plug&gt;Ysurround</code> | <code>&lt;SNR&gt;20_opfunc('setup')</code> |
|  | <code>&lt;Plug&gt;YSsurround</code> | <code>&lt;SNR&gt;20_opfunc2('setup').'_'</code> |
|  | <code>&lt;Plug&gt;Yssurround</code> | <code>'^'.v:count1.&lt;SNR&gt;20_opfunc('setup').'g_'</code> |
|  | <code>&lt;Plug&gt;CSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;20_changesurround(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Csurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;20_changesurround()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Dsurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;20_dosurround(&lt;SNR&gt;20_inputtarget())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;SurroundRepeat</code> | <code>.</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark9)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark9()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark9)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark9()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark9)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark9()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark9)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark9()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark9)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark9()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark8)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark8()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark8)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark8()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark8)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark8()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark8)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark8()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark8)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark8()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark7)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark7()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark7)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark7()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark7)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark7()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark7)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark7()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark7)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark7()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark6)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark6()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark6)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark6()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark6)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark6()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark6)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark6()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark6)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark6()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark5)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark5()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark5)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark5()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark5)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark5()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark5)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark5()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark5)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark5()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark4)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark4()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark4)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark4()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark4)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark4()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark4)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark4()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark4)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark4()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark3)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark3()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark3)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark3()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark3)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark3()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark3)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark3()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark3)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark3()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark2)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark2()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark2)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark2()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark2)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark2()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark2)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark2()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark2)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark2()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark1)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark1()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark1)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark1()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark1)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark1()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark1)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark1()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark1)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark1()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark0)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark0()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark0)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark0()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle-bookmark0)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark0()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark0)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark0()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set-bookmark0)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark0()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev-bookmark)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next-bookmark)</code> | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete-bookmark)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-prev)</code> | <code>&lt;Cmd&gt; lua require'marks'.prev()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-next)</code> | <code>&lt;Cmd&gt; lua require'marks'.next()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-preview)</code> | <code>&lt;Cmd&gt; lua require'marks'.preview()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-deletebuf)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_buf()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-deleteline)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete_line()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-delete)</code> | <code>&lt;Cmd&gt; lua require'marks'.delete()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-toggle)</code> | <code>&lt;Cmd&gt; lua require'marks'.toggle()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-setnext)</code> | <code>&lt;Cmd&gt; lua require'marks'.set_next()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(Marks-set)</code> | <code>&lt;Cmd&gt; lua require'marks'.set()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;fugitive:</code> | <code></code> |
|  | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:BufferLineCycleNext&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> /</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>,</code> |  |
|  | <code>;</code> |  |
|  | <code>&lt;lt&gt;silent&gt;&lt;C-S&gt;</code> | <code>:sort&lt;CR&gt;</code> |
|  | <code>F</code> |  |
|  | <code>S</code> | <code>&lt;Plug&gt;VSurround</code> |
|  | <code>T</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>f</code> |  |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
|  | <code>gS</code> | <code>&lt;Plug&gt;VgSurround</code> |
|  | <code>t</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VgSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;22_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;22_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>,</code> |  |
|  | <code>;</code> |  |
|  | <code>F</code> |  |
|  | <code>T</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>f</code> |  |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>t</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
