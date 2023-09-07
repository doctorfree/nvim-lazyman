## Elianiva Neovim Configuration Information

Personal Neovim configuration of Dicha Zelianivan Arkana

- Install and initialize: **`lazyman -w Elianiva`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Elianiva`**

### Git repository

[https://github.com/elianiva/dotfiles](https://github.com/elianiva/dotfiles)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [hrsh7th/cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip)
- [gpanders/editorconfig.nvim](https://github.com/gpanders/editorconfig.nvim.git)
- [feline-nvim/feline.nvim](https://github.com/feline-nvim/feline.nvim)
- [ruifm/gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [akinsho/nvim-bufferline.lua](https://github.com/akinsho/nvim-bufferline.lua)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [yorickpeterse/nvim-pqf](https://gitlab.com/yorickpeterse/nvim-pqf)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [AndrewRadev/splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim.git)
- [tami5/sqlite.lua](https://github.com/tami5/sqlite.lua)
- [tweekmonster/startuptime.vim](https://github.com/tweekmonster/startuptime.vim.git)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [machakann/vim-sandwich](https://github.com/machakann/vim-sandwich.git)
- [mhinz/vim-sayonara](https://github.com/mhinz/vim-sayonara.git)
- [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
- [Mofiqul/vscode.nvim](https://github.com/Mofiqul/vscode.nvim.git)

### Elianiva Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> gy</code> | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('n')&lt;CR&gt;</code> |
|  | <code> w</code> |  |
|  | <code> c</code> |  |
|  | <code>%</code> | <code>&lt;Plug&gt;(matchup-%)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| Keeps jumplist after forward searching | <code>/</code> | <code>ms/</code> |
| Keeps jumplist after backward searching | <code>?</code> | <code>ms?</code> |
| Better backward N behaviour | <code>N</code> | <code>"nN"[v:searchforward]</code> |
| Remove annoying exmode | <code>Q</code> | <code></code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(matchup-[%)</code> |
| Open scratch buffer | <code>\v</code> |  |
| Toggle search highlight | <code>\n</code> | <code>&lt;Cmd&gt;nohl&lt;CR&gt;</code> |
| Run file using Deno | <code>\rd</code> | <code>&lt;Cmd&gt;!NO_COLOR=true deno run %&lt;CR&gt;</code> |
| Run file using Node | <code>\rn</code> | <code>&lt;Cmd&gt;!node %&lt;CR&gt;</code> |
| Run Lua file | <code>\rl</code> | <code>&lt;Cmd&gt;luafile %&lt;CR&gt;</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(matchup-]%)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(matchup-g%)</code> |
|  | <code>gS</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;9_Mapping(g:splitjoin_split_mapping, "sj#Split")&lt;CR&gt;</code> |
|  | <code>gJ</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;9_Mapping(g:splitjoin_join_mapping, "sj#Join")&lt;CR&gt;</code> |
| Move down by visual line on wrapped lines | <code>j</code> | <code>gj</code> |
| Move up by visual line on wrapped lines | <code>k</code> | <code>gk</code> |
| Better forward N behaviour | <code>n</code> | <code>"Nn"[v:searchforward]</code> |
| Remove annoying exmode | <code>q:</code> | <code></code> |
|  | <code>srb</code> | <code>&lt;Plug&gt;(sandwich-replace-auto)</code> |
|  | <code>sr</code> | <code>&lt;Plug&gt;(sandwich-replace)</code> |
|  | <code>sdb</code> | <code>&lt;Plug&gt;(sandwich-delete-auto)</code> |
|  | <code>sd</code> | <code>&lt;Plug&gt;(sandwich-delete)</code> |
|  | <code>sa</code> | <code>&lt;Plug&gt;(sandwich-add)</code> |
|  | <code>z%</code> | <code>&lt;Plug&gt;(matchup-z%)</code> |
|  | <code>&lt;M-k&gt;</code> | <code>&lt;Cmd&gt;Sayonara&lt;CR&gt;</code> |
|  | <code>&lt;M-j&gt;</code> | <code>&lt;Cmd&gt;Sayonara!&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-a)</code> | <code>textobj#sandwich#query('n', 'a', {}, [])</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-i)</code> | <code>textobj#sandwich#query('n', 'i', {}, [])</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> | <code>textobj#sandwich#query('n', 'a')</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> | <code>textobj#sandwich#query('n', 'i')</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> | <code>textobj#sandwich#auto('n', 'a')</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> | <code>textobj#sandwich#auto('n', 'i')</code> |
|  | <code>&lt;Plug&gt;(sandwich-replace-auto)</code> | <code>&lt;Plug&gt;(operator-sandwich-replace)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
|  | <code>&lt;Plug&gt;(sandwich-delete-auto)</code> | <code>&lt;Plug&gt;(operator-sandwich-delete)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
|  | <code>&lt;Plug&gt;(sandwich-replace)</code> | <code>&lt;Plug&gt;(operator-sandwich-replace)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
|  | <code>&lt;Plug&gt;(sandwich-delete)</code> | <code>&lt;Plug&gt;(operator-sandwich-delete)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
|  | <code>&lt;Plug&gt;(sandwich-add)</code> | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-gv)</code> | <code>gv</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> | <code>g@</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace-visualrepeat)</code> | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('replace')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-delete-visualrepeat)</code> | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('delete')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add-visualrepeat)</code> | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('add')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-dot)</code> | <code>operator#sandwich#dot()</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-predot)</code> | <code>operator#sandwich#predot()</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace-query1st)</code> | <code>:&lt;C-U&gt;call operator#sandwich#query1st('replace', 'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add-query1st)</code> | <code>:&lt;C-U&gt;call operator#sandwich#query1st('add', 'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)</code> | <code>:&lt;C-U&gt;call operator#sandwich#prerequisite('replace', 'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)</code> | <code>:&lt;C-U&gt;call operator#sandwich#prerequisite('delete', 'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add-pre)</code> | <code>:&lt;C-U&gt;call operator#sandwich#prerequisite('add', 'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)&lt;Plug&gt;(operator-sandwich-g@)</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)&lt;Plug&gt;(operator-sandwich-g@)</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add)</code> | <code>&lt;Plug&gt;(operator-sandwich-add-pre)&lt;Plug&gt;(operator-sandwich-g@)</code> |
|  | <code>&lt;Plug&gt;(EasyAlignOperator)</code> | <code>:set opfunc=&lt;SNR&gt;27_easy_align_op&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> | <code>:call &lt;SNR&gt;27_easy_align_repeat()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(LiveEasyAlign)</code> | <code>:set opfunc=&lt;SNR&gt;27_live_easy_align_op&lt;CR&gt;g@</code> |
|  | <code>&lt;Plug&gt;(EasyAlign)</code> | <code>:set opfunc=&lt;SNR&gt;27_easy_align_op&lt;CR&gt;g@</code> |
|  | <code>&lt;2-LeftMouse&gt;</code> | <code>&lt;Plug&gt;(matchup-double-click)</code> |
|  | <code>&lt;Plug&gt;(matchup-reload)</code> | <code>:&lt;C-U&gt;MatchupReload&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-double-click)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#double_click()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-Z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-[%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(0, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-]%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(0, 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-g%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(0, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(0, 1)&lt;CR&gt;</code> |
|  | <code>&lt;SNR&gt;21_(wise)</code> | <code>empty(g:v_motion_force) ? 'v' : g:v_motion_force</code> |
|  | <code>&lt;Plug&gt;(matchup-hi-surround)</code> | <code>:&lt;C-U&gt;call matchup#matchparen#highlight_surrounding()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;SplitjoinJoin</code> | <code>:&lt;C-U&gt;call sj#Join()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;SplitjoinSplit</code> | <code>:&lt;C-U&gt;call sj#Split()&lt;CR&gt;</code> |
| Toggle whitespace stripping | <code>&lt;F2&gt;</code> |  |
| Go to next buffer | <code>&lt;M-l&gt;</code> | <code>&lt;Cmd&gt;bn&lt;CR&gt;</code> |
| Go to previous buffer | <code>&lt;M-h&gt;</code> | <code>&lt;Cmd&gt;bp&lt;CR&gt;</code> |
| Resize buffer to the bottom | <code>&lt;Down&gt;</code> | <code>:resize -2&lt;CR&gt;</code> |
| Resize buffer to the top | <code>&lt;Up&gt;</code> | <code>:resize +2&lt;CR&gt;</code> |
| Resize buffer to the right | <code>&lt;Right&gt;</code> | <code>:vertical resize -2&lt;CR&gt;</code> |
| Resize buffer to the left | <code>&lt;Left&gt;</code> | <code>:vertical resize +2&lt;CR&gt;</code> |
| Go to the top window | <code>&lt;C-K&gt;</code> | <code>&lt;C-W&gt;&lt;C-K&gt;</code> |
| Go to the bottom window | <code>&lt;C-J&gt;</code> | <code>&lt;C-W&gt;&lt;NL&gt;</code> |
| Go to the left window | <code>&lt;C-H&gt;</code> | <code>&lt;C-W&gt;&lt;C-H&gt;</code> |
| Toggle NeoTree | <code>&lt;C-N&gt;</code> | <code>&lt;Cmd&gt;NeoTreeRevealToggle&lt;CR&gt;</code> |
| Go to the right window | <code>&lt;C-L&gt;</code> | <code>&lt;C-W&gt;&lt;C-L&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> gy</code> | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('v')&lt;CR&gt;</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(matchup-%)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
| Dedent current selection | <code>&lt;lt&gt;</code> | <code>&lt;lt&gt;gv</code> |
| Indent current selection | <code>&gt;</code> | <code>&gt;gv</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(matchup-[%)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(matchup-]%)</code> |
|  | <code>as</code> | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
|  | <code>ab</code> | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(matchup-a%)</code> |
|  | <code>ga</code> | <code>&lt;Plug&gt;(EasyAlign)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(matchup-g%)</code> |
|  | <code>is</code> | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |
|  | <code>ib</code> | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |
|  | <code>i%</code> | <code>&lt;Plug&gt;(matchup-i%)</code> |
|  | <code>sr</code> | <code>&lt;Plug&gt;(sandwich-replace)</code> |
|  | <code>sd</code> | <code>&lt;Plug&gt;(sandwich-delete)</code> |
|  | <code>sa</code> | <code>&lt;Plug&gt;(sandwich-add)</code> |
|  | <code>z%</code> | <code>&lt;Plug&gt;(matchup-z%)</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-a)</code> | <code>textobj#sandwich#query('x', 'a', {}, [])</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-i)</code> | <code>textobj#sandwich#query('x', 'i', {}, [])</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> | <code>textobj#sandwich#query('x', 'a')</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> | <code>textobj#sandwich#query('x', 'i')</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> | <code>textobj#sandwich#auto('x', 'a')</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> | <code>textobj#sandwich#auto('x', 'i')</code> |
|  | <code>&lt;Plug&gt;(sandwich-replace)</code> | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> |
|  | <code>&lt;Plug&gt;(sandwich-delete)</code> | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> |
|  | <code>&lt;Plug&gt;(sandwich-add)</code> | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-tag-a)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#t#at()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-tag-i)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#t#it()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-tagname-a)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#t#a()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-tagname-i)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#t#i()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-function-a)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#f#a('x')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-function-ap)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ap('x')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-function-i)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#f#i('x')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-function-ip)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ip('x')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> | <code>g@</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace-visualrepeat)</code> | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('replace')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-delete-visualrepeat)</code> | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('delete')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add-visualrepeat)</code> | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('add')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace-query1st)</code> | <code>&lt;Esc&gt;:call operator#sandwich#query1st('replace', 'x')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add-query1st)</code> | <code>&lt;Esc&gt;:call operator#sandwich#query1st('add', 'x')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)</code> | <code>&lt;Esc&gt;:call operator#sandwich#prerequisite('replace', 'x')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)</code> | <code>&lt;Esc&gt;:call operator#sandwich#prerequisite('delete', 'x')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add-pre)</code> | <code>&lt;Esc&gt;:call operator#sandwich#prerequisite('add', 'x')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)&lt;Plug&gt;(operator-sandwich-gv)&lt;Plug&gt;(operator-sandwich-g@)</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)&lt;Plug&gt;(operator-sandwich-gv)&lt;Plug&gt;(operator-sandwich-g@)</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add)</code> | <code>&lt;Plug&gt;(operator-sandwich-add-pre)&lt;Plug&gt;(operator-sandwich-gv)&lt;Plug&gt;(operator-sandwich-g@)</code> |
|  | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;19_repeat_in_visual()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(LiveEasyAlign)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;19_live_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(EasyAlign)</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;19_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-a%)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(0, 1, 'delim_all')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-i%)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(1, 1, 'delim_all')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-Z%)</code> | <code>&lt;SNR&gt;15_(matchup-Z%)</code> |
|  | <code>&lt;SNR&gt;15_(matchup-Z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-z%)</code> | <code>&lt;SNR&gt;15_(matchup-z%)</code> |
|  | <code>&lt;SNR&gt;15_(matchup-z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-[%)</code> | <code>&lt;SNR&gt;15_(matchup-[%)</code> |
|  | <code>&lt;Plug&gt;(matchup-]%)</code> | <code>&lt;SNR&gt;15_(matchup-]%)</code> |
|  | <code>&lt;SNR&gt;15_(matchup-[%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;SNR&gt;15_(matchup-]%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-g%)</code> | <code>&lt;SNR&gt;15_(matchup-g%)</code> |
|  | <code>&lt;SNR&gt;15_(matchup-g%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-%)</code> | <code>&lt;SNR&gt;15_(matchup-%)</code> |
|  | <code>&lt;SNR&gt;15_(matchup-%)</code> | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 1)&lt;CR&gt;</code> |
| Yank selection to clipboard | <code>&lt;M-y&gt;</code> | <code>"+y</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-%)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(matchup-[%)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(matchup-]%)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(matchup-a%)</code> |
|  | <code>as</code> | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
|  | <code>ab</code> | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
|  | <code>g%</code> | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-g%)</code> |
|  | <code>i%</code> | <code>&lt;Plug&gt;(matchup-i%)</code> |
|  | <code>is</code> | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |
|  | <code>ib</code> | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |
|  | <code>sa</code> | <code>&lt;Plug&gt;(sandwich-add)</code> |
|  | <code>z%</code> | <code>&lt;Plug&gt;(matchup-z%)</code> |
|  | <code>&lt;Plug&gt;(matchup-a%)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(0, 0, 'delim_all')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-i%)</code> | <code>:&lt;C-U&gt;call matchup#text_obj#delimited(1, 0, 'delim_all')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-Z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('Z%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-z%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('z%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-[%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('[%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-]%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op(']%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-g%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('g%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(matchup-%)</code> | <code>:&lt;C-U&gt;call matchup#motion#op('%')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-a)</code> | <code>textobj#sandwich#query('o', 'a', {}, [])</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-i)</code> | <code>textobj#sandwich#query('o', 'i', {}, [])</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> | <code>textobj#sandwich#query('o', 'a')</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> | <code>textobj#sandwich#query('o', 'i')</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> | <code>textobj#sandwich#auto('o', 'a')</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> | <code>textobj#sandwich#auto('o', 'i')</code> |
|  | <code>&lt;Plug&gt;(sandwich-add)</code> | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-tag-a)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#t#at()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-tag-i)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#t#it()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-tagname-a)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#t#a()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-tagname-i)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#t#i()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-function-a)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#f#a('o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-function-ap)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ap('o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-function-i)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#f#i('o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(textobj-sandwich-function-ip)</code> | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ip('o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> | <code>g@</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace-visualrepeat)</code> | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('replace')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-delete-visualrepeat)</code> | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('delete')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add-visualrepeat)</code> | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('add')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-squash-count)</code> | <code>operator#sandwich#squash_count()</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-release-count)</code> | <code>operator#sandwich#release_count()</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-synchro-count)</code> | <code>operator#sandwich#synchro_count()</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |
|  | <code>&lt;Plug&gt;(operator-sandwich-add)</code> | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |
