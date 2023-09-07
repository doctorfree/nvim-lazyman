## LaTeX Neovim Configuration Information

Neovim configuration optimized for writing in LaTeX. Personal Neovim configuration of [Benjamin Brast-McKie](http://www.benbrastmckie.com). Keymaps and more described in the configuration [Cheatsheet](https://github.com/benbrastmckie/.config/blob/master/CheatSheet.md). Blog article by the author detailing [tools used by his configuration](http://www.benbrastmckie.com/tools#access). [Video playlist](https://www.youtube.com/watch?v=_Ct2S65kpjQ&list=PLBYZ1xfnKeDRhCoaM4bTFrjCl3NKDBvqk) of tutorials on using this config for writing LaTeX in Neovim

- Install and initialize: **`lazyman -L LaTeX`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-LaTeX`**

### Git repository

[https://github.com/benbrastmckie/.config](https://github.com/benbrastmckie/.config)

### Neovimcraft entry

[http://neovimcraft.com/plugin/benbrastmckie/.config](http://neovimcraft.com/plugin/benbrastmckie/.config)

### YouTube channel

[https://www.youtube.com/@benbrastmckie](https://www.youtube.com/@benbrastmckie)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [gaoDean/autolist.nvim](https://github.com/gaoDean/autolist.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [kdheepak/cmp-latex-symbols](https://github.com/kdheepak/cmp-latex-symbols)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-omni](https://github.com/hrsh7th/cmp-omni)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [f3fora/cmp-spell](https://github.com/f3fora/cmp-spell)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [glacambre/firenvim](https://github.com/glacambre/firenvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [lewis6991/impatient.nvim](https://github.com/lewis6991/impatient.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [jbyuki/nabla.nvim](https://github.com/jbyuki/nabla.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Shatur/neovim-session-manager](https://github.com/Shatur/neovim-session-manager)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope-bibtex.nvim](https://github.com/nvim-telescope/telescope-bibtex.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [lervag/vimtex](https://github.com/lervag/vimtex)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [gbprod/yanky.nvim](https://github.com/gbprod/yanky.nvim)

### LaTeX Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>&lt;CR&gt;</code> | <code>:noh&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>&lt;lt&gt;</code> | <code>V&lt;lt&gt;&lt;Esc&gt;</code> |
|  | <code>&gt;</code> | <code>V&gt;&lt;Esc&gt;</code> |
|  | <code>E</code> | <code>ge</code> |
|  | <code>H</code> | <code>g^</code> |
|  | <code>J</code> | <code>gj</code> |
|  | <code>K</code> | <code>gk</code> |
|  | <code>L</code> | <code>g$</code> |
|  | <code>M</code> | <code>:execute "help " . expand("&lt;lt&gt;cword&gt;")&lt;CR&gt;</code> |
|  | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>\</code> | <code>:Neotree reveal&lt;CR&gt;</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| Change a surrounding pair, putting replacements on new lines | <code>cS</code> | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>m</code> | <code>zz</code> |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyYank)</code> |  |
|  | <code>&lt;Plug&gt;(YankyCycleBackward)</code> |  |
|  | <code>&lt;Plug&gt;(YankyCycleForward)</code> |  |
| Move to previous reference | <code>&lt;M-p&gt;</code> |  |
| Move to next reference | <code>&lt;M-n&gt;</code> |  |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;luasnip-delete-check</code> |  |
| Comment toggle blockwise with count | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |  |
| Comment toggle linewise with count | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |  |
| Comment toggle current block | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |  |
| Comment toggle current line | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |  |
| Comment toggle blockwise | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |  |
| Comment toggle linewise | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
| Toggle Terminal | <code>&lt;C-T&gt;</code> | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |
| Change a surrounding pair, putting replacements on new lines | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |  |
| Change a surrounding pair | <code>&lt;Plug&gt;(nvim-surround-change)</code> |  |
| Delete a surrounding pair | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |  |
| Add a surrounding pair around the current line, on new lines (normal mode) | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |  |
| Add a surrounding pair around a motion, on new lines (normal mode) | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |  |
| Add a surrounding pair around the current line (normal mode) | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |  |
| Add a surrounding pair around a motion (normal mode) | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |  |
|  | <code>&lt;C-D&gt;</code> | <code>&lt;C-D&gt;zz</code> |
|  | <code>&lt;C-U&gt;</code> | <code>&lt;C-U&gt;zz</code> |
|  | <code>&lt;M-k&gt;</code> | <code>&lt;Esc&gt;:m .-2&lt;CR&gt;==</code> |
|  | <code>&lt;M-j&gt;</code> | <code>&lt;Esc&gt;:m .+1&lt;CR&gt;==</code> |
|  | <code>&lt;S-Tab&gt;</code> | <code>:bprevious&lt;CR&gt;</code> |
|  | <code>&lt;BS&gt;</code> | <code>:bnext&lt;CR&gt;</code> |
|  | <code>&lt;M-l&gt;</code> | <code>:vertical resize +2&lt;CR&gt;</code> |
|  | <code>&lt;M-h&gt;</code> | <code>:vertical resize -2&lt;CR&gt;</code> |
|  | <code>&lt;M-Right&gt;</code> | <code>:vertical resize +2&lt;CR&gt;</code> |
|  | <code>&lt;M-Left&gt;</code> | <code>:vertical resize -2&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>&lt;C-W&gt;k</code> |
|  | <code>&lt;C-J&gt;</code> | <code>&lt;C-W&gt;j</code> |
|  | <code>&lt;C-H&gt;</code> | <code>&lt;C-W&gt;h</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |
|  | <code>&lt;C-P&gt;</code> |  |
|  | <code>&lt;C-S&gt;</code> |  |
|  | <code>&lt;C-Z&gt;</code> | <code></code> |
|  | <code>&lt;C-L&gt;</code> | <code>&lt;C-W&gt;l</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>&lt;lt&gt;</code> | <code>&lt;lt&gt;gv</code> |
|  | <code>&gt;</code> | <code>&gt;gv</code> |
|  | <code>E</code> | <code>ge</code> |
|  | <code>H</code> | <code>g^</code> |
|  | <code>J</code> | <code>gj</code> |
|  | <code>K</code> | <code>gk</code> |
|  | <code>L</code> | <code>g$</code> |
| Add a surrounding pair around a visual selection | <code>S</code> | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |
|  | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>m</code> | <code>zz</code> |
|  | <code>p</code> | <code>"_dP</code> |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyGPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutIndentBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBeforeJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutBefore)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeftJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftLeft)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRightJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterShiftRight)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterFilter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterBlockwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterCharwise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewiseJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterLinewise)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfterJoined)</code> |  |
|  | <code>&lt;Plug&gt;(YankyPutAfter)</code> |  |
|  | <code>&lt;Plug&gt;(YankyYank)</code> |  |
|  | <code>&lt;M-i&gt;</code> |  |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
| Comment toggle blockwise (visual) | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |
| Comment toggle linewise (visual) | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
| Add a surrounding pair around a visual selection, on new lines | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = true })&lt;CR&gt;</code> |
| Add a surrounding pair around a visual selection | <code>&lt;Plug&gt;(nvim-surround-visual)</code> | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = false })&lt;CR&gt;</code> |
|  | <code>&lt;M-k&gt;</code> | <code>:m-2&lt;CR&gt;gv</code> |
|  | <code>&lt;M-j&gt;</code> | <code>:m'&gt;+&lt;CR&gt;gv</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>&lt;M-i&gt;</code> |  |
|  | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
