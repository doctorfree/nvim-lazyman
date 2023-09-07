## Dillon Neovim Configuration Information

Author of [tsc.nvim](https://github.com/dmmulroy/tsc.nvim), asynchronous TypeScript type-checking

- Install and initialize: **`lazyman -w Dillon`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Dillon`**

### Git repository

[https://github.com/dmmulroy/dotfiles](https://github.com/dmmulroy/dotfiles)

### Dotfyle entry

[https://dotfyle.com/dmmulroy/dotfiles-config-nvim](https://dotfyle.com/dmmulroy/dotfiles-config-nvim)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [antosha417/nvim-lsp-file-operations](https://github.com/antosha417/nvim-lsp-file-operations)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [s1n7ax/nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [dmmulroy/tsc.nvim](https://github.com/dmmulroy/tsc.nvim)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [dmmulroy/vim-kitty-navigator](https://github.com/dmmulroy/vim-kitty-navigator)
- [szw/vim-maximizer](https://github.com/szw/vim-maximizer)
- [tpope/vim-surround](https://github.com/tpope/vim-surround)
- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)

### Dillon Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> oc</code> |  |
| Illuminate: Goto previous reference | <code> [</code> |  |
| Illuminate: Goto next reference | <code> ]</code> |  |
|  | <code> so</code> | <code>:SymbolsOutline&lt;CR&gt;</code> |
| [S]earch [S]pelling suggestions | <code> ss</code> |  |
| [/] Fuzzily search in current buffer] | <code> /</code> |  |
|  | <code> sc</code> |  |
| [S]earch [D]iagnostics | <code> sd</code> |  |
| [S]earch by [G]rep | <code> sg</code> |  |
| [S]earch current [W]ord | <code> sw</code> |  |
| [S]earch [H]elp | <code> sh</code> |  |
| [S]earch [F]iles | <code> sf</code> |  |
| [S]earch Open [B]uffers | <code> sb</code> |  |
| [?] Find recently opened files | <code> ?</code> |  |
|  | <code> gb</code> | <code>:Gitsigns toggle_current_line_blame&lt;CR&gt;</code> |
|  | <code> 5</code> |  |
|  | <code> 4</code> |  |
|  | <code> 3</code> |  |
|  | <code> 2</code> |  |
|  | <code> 1</code> |  |
|  | <code> hc</code> |  |
|  | <code> hr</code> |  |
|  | <code> ha</code> |  |
|  | <code> ho</code> |  |
|  | <code> tc</code> | <code>:TSC&lt;CR&gt;</code> |
| [R]otate [W]indows | <code> rw</code> | <code>:RotateWindows&lt;CR&gt;</code> |
|  | <code> f</code> | <code>:Format&lt;CR&gt;</code> |
|  | <code> =</code> | <code>&lt;C-W&gt;=</code> |
|  | <code> m</code> | <code>:MaximizerToggle&lt;CR&gt;</code> |
|  | <code> cc</code> | <code>:cclose&lt;CR&gt;zz</code> |
|  | <code> co</code> | <code>:copen&lt;CR&gt;zz</code> |
|  | <code> cp</code> | <code>:cprevious&lt;CR&gt;zz</code> |
|  | <code> cn</code> | <code>:cnext&lt;CR&gt;zz</code> |
| Quickfix [L]ist [D]iagnostics | <code> ld</code> |  |
|  | <code> d</code> |  |
|  | <code> no</code> | <code>&lt;Cmd&gt;noh&lt;CR&gt;</code> |
|  | <code> E</code> | <code>&lt;Cmd&gt;Neotree action=focus&lt;CR&gt;</code> |
|  | <code> e</code> | <code>&lt;Cmd&gt;Neotree toggle&lt;CR&gt;</code> |
|  | <code> z</code> | <code>&lt;Cmd&gt;wq&lt;CR&gt;</code> |
|  | <code> q</code> | <code>&lt;Cmd&gt;q&lt;CR&gt;</code> |
|  | <code> w</code> | <code>&lt;Cmd&gt;w&lt;CR&gt;</code> |
|  | <code> </code> | <code></code> |
|  | <code>#</code> | <code>#zz</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
|  | <code>*</code> | <code>*zz</code> |
|  | <code>G</code> | <code>Gzz</code> |
|  | <code>H</code> | <code>^</code> |
|  | <code>L</code> | <code>$</code> |
|  | <code>N</code> | <code>Nzz</code> |
|  | <code>S</code> |  |
|  | <code>U</code> | <code>&lt;C-R&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>[w</code> |  |
|  | <code>[e</code> |  |
|  | <code>[d</code> |  |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>]w</code> |  |
|  | <code>]e</code> |  |
|  | <code>]d</code> |  |
|  | <code>cS</code> | <code>&lt;Plug&gt;CSurround</code> |
|  | <code>cs</code> | <code>&lt;Plug&gt;Csurround</code> |
|  | <code>ds</code> | <code>&lt;Plug&gt;Dsurround</code> |
| Comment insert end of line | <code>gcA</code> |  |
| Comment insert above | <code>gcO</code> |  |
| Comment insert below | <code>gco</code> |  |
| Comment toggle current block | <code>gbc</code> |  |
| Comment toggle current line | <code>gcc</code> |  |
| Comment toggle blockwise | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| Comment toggle linewise | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>gx</code> | <code>:sil !open &lt;lt&gt;cWORD&gt;&lt;CR&gt;</code> |
|  | <code>gg</code> | <code>ggzz</code> |
|  | <code>n</code> | <code>nzz</code> |
|  | <code>ySS</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>ySs</code> | <code>&lt;Plug&gt;YSsurround</code> |
|  | <code>yss</code> | <code>&lt;Plug&gt;Yssurround</code> |
|  | <code>yS</code> | <code>&lt;Plug&gt;YSurround</code> |
|  | <code>ys</code> | <code>&lt;Plug&gt;Ysurround</code> |
|  | <code>{</code> | <code>{zz</code> |
|  | <code>}</code> | <code>}zz</code> |
|  | <code>&lt;Plug&gt;YSurround</code> | <code>&lt;SNR&gt;48_opfunc2('setup')</code> |
|  | <code>&lt;Plug&gt;Ysurround</code> | <code>&lt;SNR&gt;48_opfunc('setup')</code> |
|  | <code>&lt;Plug&gt;YSsurround</code> | <code>&lt;SNR&gt;48_opfunc2('setup').'_'</code> |
|  | <code>&lt;Plug&gt;Yssurround</code> | <code>'^'.v:count1.&lt;SNR&gt;48_opfunc('setup').'g_'</code> |
|  | <code>&lt;Plug&gt;CSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;48_changesurround(1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Csurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;48_changesurround()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;Dsurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;48_dosurround(&lt;SNR&gt;48_inputtarget())&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;SurroundRepeat</code> | <code>.</code> |
|  | <code>&lt;F3&gt;</code> | <code>:MaximizerToggle&lt;CR&gt;</code> |
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
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;C-O&gt;</code> | <code>&lt;C-O&gt;zz</code> |
|  | <code>&lt;C-I&gt;</code> | <code>&lt;Tab&gt;zz</code> |
|  | <code>&lt;C-D&gt;</code> | <code>&lt;C-D&gt;zz</code> |
|  | <code>&lt;C-U&gt;</code> | <code>&lt;C-U&gt;zz</code> |
| Switch to last buffer | <code>&lt;C-'&gt;</code> | <code>&lt;C-^&gt;</code> |
|  | <code>&lt;C-H&gt;</code> |  |
|  | <code>&lt;C-K&gt;</code> |  |
|  | <code>&lt;C-J&gt;</code> |  |
|  | <code>&lt;C-L&gt;</code> |  |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code> p</code> | <code>"_dP</code> |
|  | <code> </code> | <code></code> |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>H</code> | <code>^</code> |
|  | <code>L</code> | <code>$&lt;Left&gt;</code> |
|  | <code>S</code> | <code>&lt;Plug&gt;VSurround</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
| Comment toggle blockwise (visual) | <code>gb</code> | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| Comment toggle linewise (visual) | <code>gc</code> | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
|  | <code>gS</code> | <code>&lt;Plug&gt;VgSurround</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>&lt;Plug&gt;VgSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;48_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;VSurround</code> | <code>:&lt;C-U&gt;call &lt;SNR&gt;48_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |
|  | <code>&lt;F3&gt;</code> | <code>:MaximizerToggle&lt;CR&gt;gv</code> |
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
|  | <code>&lt;M-k&gt;</code> | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |
|  | <code>&lt;M-j&gt;</code> | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |

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
