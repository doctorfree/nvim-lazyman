# Beethoven Neovim Configuration Information

Personal Neovim configuration of mechanical engineering student Alexander Vazquez. See the videos on [plugin setup](https://youtu.be/f5-XZadSFBc) and [workstation setup](https://youtu.be/adODck89qVk).

- Install and initialize: **`lazyman -w Beethoven`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Beethoven`**

## Git repository

[https://github.com/Elteoremadebeethoven/nvim-config](https://github.com/Elteoremadebeethoven/nvim-config)

## YouTube channel

[https://www.youtube.com/@TheoremofBeethoven](https://www.youtube.com/@TheoremofBeethoven)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [utilyre/barbecue.nvim](https://github.com/utilyre/barbecue.nvim.git)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [aca/emmet-ls](https://github.com/aca/emmet-ls.git)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [rmagatti/goto-preview](https://github.com/rmagatti/goto-preview)
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim.git)
- [derektata/lorem.nvim](https://github.com/derektata/lorem.nvim.git)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [yorik1984/newpaper.nvim](https://github.com/yorik1984/newpaper.nvim.git)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [SmiteshP/nvim-navbuddy](https://github.com/SmiteshP/nvim-navbuddy.git)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre.git)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [HiPhish/rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim.git)
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [tiagovla/tokyodark.nvim](https://github.com/tiagovla/tokyodark.nvim.git)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [xiyaowong/transparent.nvim](https://github.com/xiyaowong/transparent.nvim.git)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [tikhomirov/vim-glsl](https://github.com/tikhomirov/vim-glsl.git)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [tpope/vim-rhubarb](https://github.com/tpope/vim-rhubarb)
- [tpope/vim-sleuth](https://github.com/tpope/vim-sleuth.git)
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## Beethoven Keymaps

### Normal mode keymaps

| **Description** | Search on current file |
| :---- | :---- |
| **Left hand side** | <code> sp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("spectre").open_file_search({select_word=true})&lt;CR&gt;</code> |

| **Description** | Open Spectre |
| :---- | :---- |
| **Left hand side** | <code> E</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("spectre").open()&lt;CR&gt;</code> |

| **Description** | LSP: Navbuddy |
| :---- | :---- |
| **Left hand side** | <code> U</code> |
| **Right hand side** | <code>:Navbuddy&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> p</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('illuminate').goto_prev_reference()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> n</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('illuminate').goto_next_reference()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> f</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.format{async=true}&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> F</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.lsp.buf.formatting()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TroubleToggle workspace_diagnostics&lt;CR&gt;&lt;Cmd&gt;TroubleToggle lsp_references&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tl</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TroubleToggle workspace_diagnostics&lt;CR&gt;&lt;Cmd&gt;TroubleToggle loclist&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tq</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TroubleToggle workspace_diagnostics&lt;CR&gt;&lt;Cmd&gt;TroubleToggle quickfix&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> td</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TroubleToggle workspace_diagnostics&lt;CR&gt;&lt;Cmd&gt;TroubleToggle document_diagnostics&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tw</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TroubleToggle workspace_diagnostics&lt;CR&gt;&lt;Cmd&gt;TroubleToggle workspace_diagnostics&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;TroubleToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> Q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;:q&lt;CR&gt;</code> |

| **Description** | LSP: Show line diagnostic |
| :---- | :---- |
| **Left hand side** | <code> L</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua vim.diagnostic.open_float({scope="line"}) &lt;CR&gt;</code> |

| **Description** | [/] Fuzzily search in current buffer |
| :---- | :---- |
| **Left hand side** | <code> g</code> |
| **Right hand side** | |

| **Description** | [ ] Find existing buffers |
| :---- | :---- |
| **Left hand side** | <code>  </code> |
| **Right hand side** | |

| **Description** | [?] Find recently opened files |
| :---- | :---- |
| **Left hand side** | <code> ?</code> |
| **Right hand side** | |

| **Description** | Open diagnostics list |
| :---- | :---- |
| **Left hand side** | <code> q</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | <code>&lt;Cmd&gt;:NvimTreeToggle&lt;CR&gt;</code> |

| **Description** | LSP: Refresh |
| :---- | :---- |
| **Left hand side** | <code> R</code> |
| **Right hand side** | <code>&lt;Cmd&gt;w&lt;CR&gt;&lt;Cmd&gt;e!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> N</code> |
| **Right hand side** | <code>*</code> |

| **Description** | LSP: [W]orkspace [L]ist Folders |
| :---- | :---- |
| **Left hand side** | <code> wl</code> |
| **Right hand side** | |

| **Description** | LSP: [W]orkspace [R]emove Folder |
| :---- | :---- |
| **Left hand side** | <code> wr</code> |
| **Right hand side** | |

| **Description** | LSP: [W]orkspace [A]dd Folder |
| :---- | :---- |
| **Left hand side** | <code> wa</code> |
| **Right hand side** | |

| **Description** | LSP: Signature Documentation |
| :---- | :---- |
| **Left hand side** | <code> l</code> |
| **Right hand side** | |

| **Description** | LSP: [W]orkspace [S]ymbols |
| :---- | :---- |
| **Left hand side** | <code> ws</code> |
| **Right hand side** | |

| **Description** | LSP: [D]ocument [S]ymbols |
| :---- | :---- |
| **Left hand side** | <code> ds</code> |
| **Right hand side** | |

| **Description** | LSP: Type [D]efinition |
| :---- | :---- |
| **Left hand side** | <code> D</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ca</code> |
| **Right hand side** | |

| **Description** | LSP: [R]e[n]ame |
| :---- | :---- |
| **Left hand side** | <code> rn</code> |
| **Right hand side** | |

| **Description** | [S]earch [D]iagnostics |
| :---- | :---- |
| **Left hand side** | <code> sd</code> |
| **Right hand side** | |

| **Description** | [S]earch by [G]rep |
| :---- | :---- |
| **Left hand side** | <code> sg</code> |
| **Right hand side** | |

| **Description** | Search current word |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("spectre").open_visual({select_word=true})&lt;CR&gt;</code> |

| **Description** | [S]earch [H]elp |
| :---- | :---- |
| **Left hand side** | <code> sh</code> |
| **Right hand side** | |

| **Description** | [S]earch [F]iles |
| :---- | :---- |
| **Left hand side** | <code> sf</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> X</code> |
| **Right hand side** | <code>:qa!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>:noh&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> B</code> |
| **Right hand side** | <code>:&lt;C-U&gt;bprevious &#124; bdelete #&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | <code>:&lt;C-U&gt;bprevious &#124; bdelete #&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> /</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require("Comment.api").toggle.linewise.current()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>+</code> |
| **Right hand side** | <code>&lt;C-A&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>-</code> |
| **Right hand side** | <code>&lt;C-X&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>H</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineCyclePrev&lt;CR&gt;</code> |

| **Description** | LSP: Hover Documentation |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>L</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineCycleNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>:HopWord&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | Go to previous diagnostic message |
| :---- | :---- |
| **Left hand side** | <code>[d</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Reselect-Last)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\/</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Start-Regex-Search)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\\</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\A</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Select-All)</code> |

| **Description** | Go to next diagnostic message |
| :---- | :---- |
| **Left hand side** | <code>]d</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | <code>"_c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dw</code> |
| **Right hand side** | <code>diw</code> |

| **Description** | LSP: [G]oto [D]eclaration |
| :---- | :---- |
| **Left hand side** | <code>gD</code> |
| **Right hand side** | |

| **Description** | LSP: [G]oto [I]mplementation |
| :---- | :---- |
| **Left hand side** | <code>gI</code> |
| **Right hand side** | |

| **Description** | LSP: [G]oto [R]eferences |
| :---- | :---- |
| **Left hand side** | <code>gr</code> |
| **Right hand side** | |

| **Description** | LSP: [G]oto [D]efinition |
| :---- | :---- |
| **Left hand side** | <code>gd</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gpr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('goto-preview').goto_preview_references()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gP</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('goto-preview').close_all_win()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gpi</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('goto-preview').goto_preview_implementation()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gpd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('goto-preview').goto_preview_definition()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | Comment insert end of line |
| :---- | :---- |
| **Left hand side** | <code>gcA</code> |
| **Right hand side** | |

| **Description** | Comment insert above |
| :---- | :---- |
| **Left hand side** | <code>gcO</code> |
| **Right hand side** | |

| **Description** | Comment insert below |
| :---- | :---- |
| **Left hand side** | <code>gco</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>v:count == 0 ? 'gj' : 'j'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>v:count == 0 ? 'gk' : 'k'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sh</code> |
| **Right hand side** | <code>:noh&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | <code>:HopAnywhere&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>sv</code> |
| **Right hand side** | <code>:vsplit&lt;CR&gt;&lt;C-W&gt;w</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ss</code> |
| **Right hand side** | <code>:split&lt;CR&gt;&lt;C-W&gt;w</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>te</code> |
| **Right hand side** | <code>:tabedit&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>x</code> |
| **Right hand side** | <code>"_x</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-N&gt;</code> |
| **Right hand side** | <code>*</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-Q&gt;</code> |
| **Right hand side** | <code>:qa!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;-</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;+</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;lt&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-X&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;bprevious &#124; bdelete #&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-S&gt;</code> |
| **Right hand side** | <code>:SymbolsOutline&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>:w&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-b&gt;</code> |
| **Right hand side** | <code>:BufferLineMovePrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-m&gt;</code> |
| **Right hand side** | <code>:BufferLineMoveNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>:m .-2&lt;CR&gt;==</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>:m .+1&lt;CR&gt;==</code> |

| **Description** | Toggle Terminal |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |

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

| **Description** | Comment toggle blockwise with count |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise with count |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-RightMouse&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Mouse-Column)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-RightMouse&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Mouse-Word)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-LeftMouse&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Mouse-Cursor)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-K&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Up)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-C-J&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Down)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Down&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Down)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Up&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Up)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Right&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Select-l)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Left&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Select-h)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Find-Under)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-BBW)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('BBW', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-gE)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('gE', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-ge)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('ge', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-E)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('E', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-e)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('e', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-B)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('B', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-b)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('b', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-W)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('W', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-w)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('w', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-l)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('l', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-k)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('k', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-j)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('j', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-h)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#motion('h', v:count1, 1, 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Mouse-Column)</code> |
| **Right hand side** | <code>:call vm#commands#mouse_column()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Mouse-Word)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Left-Mouse)&lt;Plug&gt;(VM-Find-Under)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Mouse-Cursor)</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Left-Mouse)&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Left-Mouse)</code> |
| **Right hand side** | <code>&lt;LeftMouse&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Slash-Search)</code> |
| **Right hand side** | <code>@=vm#commands#find_by_regex(3)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Start-Regex-Search)</code> |
| **Right hand side** | <code>@=vm#commands#find_by_regex(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Find-Under)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#ctrln(v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-All)</code> |
| **Right hand side** | <code>:call vm#commands#find_all(0, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Reselect-Last)</code> |
| **Right hand side** | <code>:call vm#commands#reselect_last()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-Cursor-Up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#add_cursor_up(1, v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Select-Cursor-Down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#add_cursor_down(1, v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Up)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#add_cursor_up(0, v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-Down)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#commands#add_cursor_down(0, v:count1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Word)</code> |
| **Right hand side** | <code>:call vm#commands#add_cursor_at_word(1, 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Add-Cursor-At-Pos)</code> |
| **Right hand side** | <code>:call vm#commands#add_cursor_at_pos(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | Move to previous reference |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-p&gt;</code> |
| **Right hand side** | |

| **Description** | Move to next reference |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-n&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S-V&gt;</code> |
| **Right hand side** | <code>"+p</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S-C&gt;</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> p</code> |
| **Right hand side** | <code>"_dP</code> |

| **Description** | Search current word |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("spectre").open_visual()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> /</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").toggle.linewise(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code></code> |

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
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\c</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-Add)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\f</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-Find)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\/</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>\\A</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Visual-All)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |

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

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-i&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> |
| **Right hand side** | <code>:call vm#commands#find_by_regex(2)&lt;CR&gt;:call feedkeys('/', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> |
| **Right hand side** | <code>&lt;SNR&gt;24_Visual('under')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Reduce)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vm#visual#reduce()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Add)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call vm#commands#visual_add()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Cursors)</code> |
| **Right hand side** | <code>&lt;Esc&gt;:call vm#commands#visual_cursors()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-All)</code> |
| **Right hand side** | <code>&lt;SNR&gt;24_Visual('all')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Find)</code> |
| **Right hand side** | <code>vm#operators#find(1, 1)</code> |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S-C&gt;</code> |
| **Right hand side** | <code>"+y</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |


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
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-i&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |

