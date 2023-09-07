# Elianiva Neovim Configuration Information

Personal Neovim configuration of Dicha Zelianivan Arkana

- Install and initialize: **`lazyman -w Elianiva`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Elianiva`**

## Git repository

[https://github.com/elianiva/dotfiles](https://github.com/elianiva/dotfiles)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

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

## Elianiva Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gy</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> c</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | Keeps jumplist after forward searching |
| :---- | :---- |
| **Left hand side** | <code>/</code> |
| **Right hand side** | <code>ms/</code> |

| **Description** | Keeps jumplist after backward searching |
| :---- | :---- |
| **Left hand side** | <code>?</code> |
| **Right hand side** | <code>ms?</code> |

| **Description** | Better backward N behaviour |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>"nN"[v:searchforward]</code> |

| **Description** | Remove annoying exmode |
| :---- | :---- |
| **Left hand side** | <code>Q</code> |
| **Right hand side** | <code></code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

| **Description** | Open scratch buffer |
| :---- | :---- |
| **Left hand side** | <code>\v</code> |
| **Right hand side** | |

| **Description** | Toggle search highlight |
| :---- | :---- |
| **Left hand side** | <code>\n</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohl&lt;CR&gt;</code> |

| **Description** | Run file using Deno |
| :---- | :---- |
| **Left hand side** | <code>\rd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;!NO_COLOR=true deno run %&lt;CR&gt;</code> |

| **Description** | Run file using Node |
| :---- | :---- |
| **Left hand side** | <code>\rn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;!node %&lt;CR&gt;</code> |

| **Description** | Run Lua file |
| :---- | :---- |
| **Left hand side** | <code>\rl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;luafile %&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;18_Mapping(g:splitjoin_split_mapping, "sj#Split")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gJ</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;18_Mapping(g:splitjoin_join_mapping, "sj#Join")&lt;CR&gt;</code> |

| **Description** | Move down by visual line on wrapped lines |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>gj</code> |

| **Description** | Move up by visual line on wrapped lines |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>gk</code> |

| **Description** | Better forward N behaviour |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>"Nn"[v:searchforward]</code> |

| **Description** | Remove annoying exmode |
| :---- | :---- |
| **Left hand side** | <code>q:</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>srb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-replace-auto)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sr</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-replace)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sdb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-delete-auto)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sd</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-delete)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sa</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Sayonara&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Sayonara!&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;SNR&gt;26_(wise)</code> |
| **Right hand side** | <code>empty(g:v_motion_force) ? 'v' : g:v_motion_force</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-hi-surround)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#matchparen#highlight_surrounding()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;SplitjoinJoin</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sj#Join()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;SplitjoinSplit</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sj#Split()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignOperator)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;17_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;17_easy_align_repeat()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(LiveEasyAlign)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;17_live_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;17_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('n', 'a', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('n', 'i', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('n', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('n', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('n', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('n', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-replace-auto)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-delete-auto)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-query-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)&lt;Plug&gt;(operator-sandwich-release-count)&lt;Plug&gt;(textobj-sandwich-query-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-gv)</code> |
| **Right hand side** | <code>gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |
| **Right hand side** | <code>g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('replace')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('delete')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('add')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-dot)</code> |
| **Right hand side** | <code>operator#sandwich#dot()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-predot)</code> |
| **Right hand side** | <code>operator#sandwich#predot()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-query1st)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#query1st('replace', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-query1st)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#query1st('add', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#prerequisite('replace', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#prerequisite('delete', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-pre)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#prerequisite('add', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-pre)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | Toggle whitespace stripping |
| :---- | :---- |
| **Left hand side** | <code>&lt;F2&gt;</code> |
| **Right hand side** | |

| **Description** | Go to next buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bn&lt;CR&gt;</code> |

| **Description** | Go to previous buffer |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bp&lt;CR&gt;</code> |

| **Description** | Resize buffer to the bottom |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code>:resize -2&lt;CR&gt;</code> |

| **Description** | Resize buffer to the top |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code>:resize +2&lt;CR&gt;</code> |

| **Description** | Resize buffer to the right |
| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code>:vertical resize -2&lt;CR&gt;</code> |

| **Description** | Resize buffer to the left |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code>:vertical resize +2&lt;CR&gt;</code> |

| **Description** | Go to the top window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;C-K&gt;</code> |

| **Description** | Go to the bottom window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;NL&gt;</code> |

| **Description** | Go to the left window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;C-H&gt;</code> |

| **Description** | Toggle NeoTree |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NeoTreeRevealToggle&lt;CR&gt;</code> |

| **Description** | Go to the right window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;C-L&gt;</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gy</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('v')&lt;CR&gt;</code> |

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

| **Description** | Dedent current selection |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;gv</code> |

| **Description** | Indent current selection |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

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
| **Left hand side** | <code>as</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ab</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ga</code> |
| **Right hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>is</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ib</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sr</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-replace)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sd</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-delete)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sa</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |

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
| **Right hand side** | <code>&lt;SNR&gt;27_(matchup-Z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;27_(matchup-Z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside_prev(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-z%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;27_(matchup-z%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;27_(matchup-z%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#jump_inside(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;27_(matchup-[%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-]%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;27_(matchup-]%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;27_(matchup-[%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;27_(matchup-]%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_unmatched(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-g%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;27_(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;27_(matchup-g%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(matchup-%)</code> |
| **Right hand side** | <code>&lt;SNR&gt;27_(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;SNR&gt;27_(matchup-%)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call matchup#motion#find_matching_pair(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('x', 'a', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('x', 'i', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('x', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('x', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('x', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('x', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tag-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#at()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tag-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#it()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tagname-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#a()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tagname-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#i()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#a('x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-ap)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ap('x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#i('x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-ip)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ip('x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |
| **Right hand side** | <code>g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('replace')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('delete')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('add')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-query1st)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#query1st('replace', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-query1st)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#query1st('add', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#prerequisite('replace', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#prerequisite('delete', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-pre)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call operator#sandwich#prerequisite('add', 'x')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-pre)&lt;Plug&gt;(operator-sandwich-gv)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-pre)&lt;Plug&gt;(operator-sandwich-gv)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-pre)&lt;Plug&gt;(operator-sandwich-gv)&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;9_repeat_in_visual()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(LiveEasyAlign)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;9_live_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;9_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |

| **Description** | Yank selection to clipboard |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-y&gt;</code> |
| **Right hand side** | <code>"+y</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-[%)</code> |

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
| **Left hand side** | <code>as</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ab</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Ignore&gt;&lt;Plug&gt;(matchup-g%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(matchup-i%)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>is</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ib</code> |
| **Right hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sa</code> |
| **Right hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('o', 'a', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-literal-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('o', 'i', {}, [])</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-a)</code> |
| **Right hand side** | <code>textobj#sandwich#query('o', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-query-i)</code> |
| **Right hand side** | <code>textobj#sandwich#query('o', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-a)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('o', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-auto-i)</code> |
| **Right hand side** | <code>textobj#sandwich#auto('o', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tag-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#at()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tag-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#it()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tagname-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#a()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-tagname-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#t#i()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#a('o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-ap)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ap('o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#i('o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(textobj-sandwich-function-ip)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call sandwich#magicchar#f#ip('o')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |
| **Right hand side** | <code>g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('replace')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('delete')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add-visualrepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call operator#sandwich#visualrepeat('add')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-squash-count)</code> |
| **Right hand side** | <code>operator#sandwich#squash_count()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-release-count)</code> |
| **Right hand side** | <code>operator#sandwich#release_count()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-synchro-count)</code> |
| **Right hand side** | <code>operator#sandwich#synchro_count()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-replace)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-delete)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(operator-sandwich-add)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(operator-sandwich-g@)</code> |

