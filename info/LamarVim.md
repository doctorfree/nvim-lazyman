## LamarVim Neovim Configuration Information

Personal Neovim configuration of Cassio Lamarck

- Install and initialize: **`lazyman -w LamarVim`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-LamarVim`**

### Git repository

[https://github.com/Lamarcke/dotfiles](https://github.com/Lamarcke/dotfiles)

### Dotfyle entry

[https://dotfyle.com/Lamarcke/dotfiles-config-nvim](https://dotfyle.com/Lamarcke/dotfiles-config-nvim)

### Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [LunarVim/bigfile.nvim](https://github.com/LunarVim/bigfile.nvim.git)
- [famiu/bufdelete.nvim](https://github.com/famiu/bufdelete.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [mfussenegger/nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls)
- [antosha417/nvim-lsp-file-operations](https://github.com/antosha417/nvim-lsp-file-operations)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [stevearc/overseer.nvim](https://github.com/stevearc/overseer.nvim.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [pmizio/typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim.git)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

### LamarVim Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>&lt;Esc&gt;</code> | <code>&lt;Cmd&gt;noh&lt;CR&gt;&lt;Esc&gt;</code> |
| Alpha Dashboard | <code> ;</code> | <code>&lt;Cmd&gt;Alpha&lt;CR&gt;</code> |
| Close buffer | <code> c</code> | <code>&lt;Cmd&gt;BufferKill&lt;CR&gt;</code> |
| Quit all | <code> q</code> | <code>&lt;Cmd&gt;qa!&lt;CR&gt;</code> |
| Save all | <code> w</code> | <code>&lt;Cmd&gt;wa!&lt;CR&gt;</code> |
| No HL Search | <code> h</code> | <code>&lt;Cmd&gt;nohl&lt;CR&gt;</code> |
| Lazydocker | <code> sd</code> |  |
| Lazygit | <code> sg</code> |  |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>D</code> | <code>"_D</code> |
| Show error diagnostics | <code>E</code> |  |
|  | <code>J</code> | <code>mzJ`z</code> |
| Hover | <code>K</code> |  |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
| Go to previous error | <code>[d</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>\\gS</code> | <code>&lt;Plug&gt;(VM-Reselect-Last)</code> |
|  | <code>\\/</code> | <code>&lt;Plug&gt;(VM-Start-Regex-Search)</code> |
|  | <code>\\\</code> | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |
|  | <code>\\A</code> | <code>&lt;Plug&gt;(VM-Select-All)</code> |
| Go to next error | <code>]d</code> |  |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>d</code> | <code>"_d</code> |
| Show code actions | <code>ga</code> |  |
| Go to type definition | <code>gt</code> |  |
| Show signature help | <code>gs</code> |  |
| Go to declaration | <code>gD</code> |  |
| Go to references | <code>gf</code> |  |
| Go to implementation | <code>gi</code> |  |
| Go to definition | <code>gd</code> |  |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
| Comment toggle blockwise | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
|  | <code>j</code> | <code>v:count == 0 ? 'gj' : 'j'</code> |
|  | <code>k</code> | <code>v:count == 0 ? 'gk' : 'k'</code> |
|  | <code>zt</code> | <code>&lt;Cmd&gt;lua require('neoscroll').zt(250)&lt;CR&gt;</code> |
|  | <code>zb</code> | <code>&lt;Cmd&gt;lua require('neoscroll').zb(250)&lt;CR&gt;</code> |
|  | <code>zz</code> | <code>&lt;Cmd&gt;lua require('neoscroll').zz(250)&lt;CR&gt;</code> |
| Terminal window | <code>&lt;M-4&gt;</code> | <code>&lt;Cmd&gt;2ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |
| Run window | <code>&lt;M-3&gt;</code> | <code>&lt;Cmd&gt;1ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |
| File navigation | <code>&lt;M-1&gt;</code> | <code>&lt;Cmd&gt;NvimTreeToggle&lt;CR&gt;</code> |
|  | <code>&lt;M-H&gt;</code> | <code>&lt;Cmd&gt;BufferLineMovePrev&lt;CR&gt;</code> |
|  | <code>&lt;M-L&gt;</code> | <code>&lt;Cmd&gt;BufferLineMoveNext&lt;CR&gt;</code> |
|  | <code>&lt;M-Q&gt;</code> | <code>&lt;Cmd&gt;BufferLineCloseOthers&lt;CR&gt;</code> |
|  | <code>&lt;M-q&gt;</code> | <code>&lt;Cmd&gt;BufferKill&lt;CR&gt;</code> |
|  | <code>&lt;M-c&gt;</code> | <code>&lt;Cmd&gt;BufferLinePick&lt;CR&gt;</code> |
|  | <code>&lt;M-h&gt;</code> | <code>&lt;Cmd&gt;BufferLineCyclePrev&lt;CR&gt;</code> |
|  | <code>&lt;M-l&gt;</code> | <code>&lt;Cmd&gt;BufferLineCycleNext&lt;CR&gt;</code> |
| Increase window width | <code>&lt;C-Right&gt;</code> | <code>&lt;Cmd&gt;vertical resize +2&lt;CR&gt;</code> |
| Decrease window width | <code>&lt;C-Left&gt;</code> | <code>&lt;Cmd&gt;vertical resize -2&lt;CR&gt;</code> |
| Go to upper window | <code>&lt;C-K&gt;</code> | <code>&lt;C-W&gt;k</code> |
| Go to lower window | <code>&lt;C-J&gt;</code> | <code>&lt;C-W&gt;j</code> |
| Go to left window | <code>&lt;C-H&gt;</code> | <code>&lt;C-W&gt;h</code> |
| Move lines | <code>&lt;M-k&gt;</code> | <code>:m .-2&lt;CR&gt;==</code> |
| Move lines | <code>&lt;M-j&gt;</code> | <code>:m .+1&lt;CR&gt;==</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
| Decrease window height | <code>&lt;C-Down&gt;</code> | <code>&lt;Cmd&gt;resize -2&lt;CR&gt;</code> |
| Increase window height | <code>&lt;C-Up&gt;</code> | <code>&lt;Cmd&gt;resize +2&lt;CR&gt;</code> |
|  | <code>&lt;S-Right&gt;</code> | <code>&lt;Plug&gt;(VM-Select-l)</code> |
|  | <code>&lt;S-Left&gt;</code> | <code>&lt;Plug&gt;(VM-Select-h)</code> |
|  | <code>&lt;C-N&gt;</code> | <code>&lt;Plug&gt;(VM-Find-Under)</code> |
|  | <code>&lt;Plug&gt;(VM-Select-BBW)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('BBW', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-gE)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('gE', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-ge)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('ge', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-E)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('E', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-e)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('e', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-B)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('B', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-b)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('b', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-W)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('W', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-w)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('w', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-l)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('l', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-k)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('k', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-j)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('j', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-h)</code> | <code>:&lt;C-U&gt;call vm#commands#motion('h', v:count1, 1, 0)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Mouse-Column)</code> | <code>:call vm#commands#mouse_column()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Mouse-Word)</code> | <code>&lt;Plug&gt;(VM-Left-Mouse)&lt;Plug&gt;(VM-Find-Under)</code> |
|  | <code>&lt;Plug&gt;(VM-Mouse-Cursor)</code> | <code>&lt;Plug&gt;(VM-Left-Mouse)&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |
|  | <code>&lt;Plug&gt;(VM-Left-Mouse)</code> | <code>&lt;LeftMouse&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Slash-Search)</code> | <code>@=vm#commands#find_by_regex(3)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Start-Regex-Search)</code> | <code>@=vm#commands#find_by_regex(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Find-Under)</code> | <code>:&lt;C-U&gt;call vm#commands#ctrln(v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-All)</code> | <code>:call vm#commands#find_all(0, 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Reselect-Last)</code> | <code>:call vm#commands#reselect_last()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-Cursor-Up)</code> | <code>:&lt;C-U&gt;call vm#commands#add_cursor_up(1, v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Select-Cursor-Down)</code> | <code>:&lt;C-U&gt;call vm#commands#add_cursor_down(1, v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Add-Cursor-Up)</code> | <code>:&lt;C-U&gt;call vm#commands#add_cursor_up(0, v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Add-Cursor-Down)</code> | <code>:&lt;C-U&gt;call vm#commands#add_cursor_down(0, v:count1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Word)</code> | <code>:call vm#commands#add_cursor_at_word(1, 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> | <code>:call vm#commands#add_cursor_at_pos(0)&lt;CR&gt;</code> |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
|  | <code>&lt;C-Y&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-0.10, false, 100)&lt;CR&gt;</code> |
|  | <code>&lt;C-B&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |
|  | <code>&lt;C-U&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)&lt;CR&gt;</code> |
|  | <code>&lt;C-D&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.wo.scroll, true, 250)&lt;CR&gt;</code> |
|  | <code>&lt;C-E&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(0.10, false, 100)&lt;CR&gt;</code> |
|  | <code>&lt;C-F&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |
| Move to previous reference | <code>&lt;M-p&gt;</code> |  |
| Move to next reference | <code>&lt;M-n&gt;</code> |  |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
| Go to right window | <code>&lt;C-L&gt;</code> | <code>&lt;C-W&gt;l</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Alpha Dashboard | <code> ;</code> | <code>&lt;Cmd&gt;Alpha&lt;CR&gt;</code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>&lt;lt&gt;</code> | <code>&lt;lt&gt;gv</code> |
|  | <code>&gt;</code> | <code>&gt;gv</code> |
|  | <code>D</code> | <code>"_D</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>\\c</code> | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> |
|  | <code>\\a</code> | <code>&lt;Plug&gt;(VM-Visual-Add)</code> |
|  | <code>\\f</code> | <code>&lt;Plug&gt;(VM-Visual-Find)</code> |
|  | <code>\\/</code> | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> |
|  | <code>\\A</code> | <code>&lt;Plug&gt;(VM-Visual-All)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>d</code> | <code>"_d</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
|  | <code>zt</code> | <code>&lt;Cmd&gt;lua require('neoscroll').zt(250)&lt;CR&gt;</code> |
|  | <code>zz</code> | <code>&lt;Cmd&gt;lua require('neoscroll').zz(250)&lt;CR&gt;</code> |
|  | <code>zb</code> | <code>&lt;Cmd&gt;lua require('neoscroll').zb(250)&lt;CR&gt;</code> |
| Terminal window | <code>&lt;M-4&gt;</code> | <code>&lt;Cmd&gt;2ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |
| Run window | <code>&lt;M-3&gt;</code> | <code>&lt;Cmd&gt;1ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |
| Move lines | <code>&lt;M-k&gt;</code> | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |
| Move lines | <code>&lt;M-j&gt;</code> | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;C-N&gt;</code> | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> | <code>:call vm#commands#find_by_regex(2)&lt;CR&gt;:call feedkeys('/', 'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> | <code>&lt;SNR&gt;25_Visual('under')</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Reduce)</code> | <code>:&lt;C-U&gt;call vm#visual#reduce()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Add)</code> | <code>&lt;Esc&gt;:call vm#commands#visual_add()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> | <code>&lt;Esc&gt;:call vm#commands#visual_cursors()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-All)</code> | <code>&lt;SNR&gt;25_Visual('all')</code> |
|  | <code>&lt;Plug&gt;(VM-Visual-Find)</code> | <code>vm#operators#find(1, 1)</code> |
|  | <code>&lt;C-E&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(0.10, false, 100)&lt;CR&gt;</code> |
|  | <code>&lt;C-Y&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-0.10, false, 100)&lt;CR&gt;</code> |
|  | <code>&lt;C-B&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |
|  | <code>&lt;C-F&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |
|  | <code>&lt;C-U&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)&lt;CR&gt;</code> |
|  | <code>&lt;C-D&gt;</code> | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.wo.scroll, true, 250)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;M-i&gt;</code> |  |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Alpha Dashboard | <code> ;</code> | <code>&lt;Cmd&gt;Alpha&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
| Terminal window | <code>&lt;M-4&gt;</code> | <code>&lt;Cmd&gt;2ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |
| Run window | <code>&lt;M-3&gt;</code> | <code>&lt;Cmd&gt;1ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;M-i&gt;</code> |  |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
