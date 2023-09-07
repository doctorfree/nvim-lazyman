# LamarVim Neovim Configuration Information

Personal Neovim configuration of Cassio Lamarck

- Install and initialize: **`lazyman -w LamarVim`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-LamarVim`**

## Git repository

[https://github.com/Lamarcke/dotfiles](https://github.com/Lamarcke/dotfiles)

## Dotfyle entry

[https://dotfyle.com/Lamarcke/dotfiles-config-nvim](https://dotfyle.com/Lamarcke/dotfiles-config-nvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

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

## LamarVim Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Esc&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;noh&lt;CR&gt;&lt;Esc&gt;</code> |

| **Description** | Alpha Dashboard |
| :---- | :---- |
| **Left hand side** | <code> ;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Alpha&lt;CR&gt;</code> |

| **Description** | Close buffer |
| :---- | :---- |
| **Left hand side** | <code> c</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferKill&lt;CR&gt;</code> |

| **Description** | Quit all |
| :---- | :---- |
| **Left hand side** | <code> q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;qa!&lt;CR&gt;</code> |

| **Description** | Save all |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>&lt;Cmd&gt;wa!&lt;CR&gt;</code> |

| **Description** | No HL Search |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohl&lt;CR&gt;</code> |

| **Description** | Lazydocker |
| :---- | :---- |
| **Left hand side** | <code> sd</code> |
| **Right hand side** | |

| **Description** | Lazygit |
| :---- | :---- |
| **Left hand side** | <code> sg</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>D</code> |
| **Right hand side** | <code>"_D</code> |

| **Description** | Show error diagnostics |
| :---- | :---- |
| **Left hand side** | <code>E</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>mzJ`z</code> |

| **Description** | Hover |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | Go to previous error |
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

| **Description** | Go to next error |
| :---- | :---- |
| **Left hand side** | <code>]d</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>d</code> |
| **Right hand side** | <code>"_d</code> |

| **Description** | Show code actions |
| :---- | :---- |
| **Left hand side** | <code>ga</code> |
| **Right hand side** | |

| **Description** | Go to type definition |
| :---- | :---- |
| **Left hand side** | <code>gt</code> |
| **Right hand side** | |

| **Description** | Show signature help |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | |

| **Description** | Go to declaration |
| :---- | :---- |
| **Left hand side** | <code>gD</code> |
| **Right hand side** | |

| **Description** | Go to references |
| :---- | :---- |
| **Left hand side** | <code>gf</code> |
| **Right hand side** | |

| **Description** | Go to implementation |
| :---- | :---- |
| **Left hand side** | <code>gi</code> |
| **Right hand side** | |

| **Description** | Go to definition |
| :---- | :---- |
| **Left hand side** | <code>gd</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zt(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zz(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zb(250)&lt;CR&gt;</code> |

| **Description** | Terminal window |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-4&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;2ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |

| **Description** | Run window |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-3&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;1ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |

| **Description** | File navigation |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-1&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NvimTreeToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-H&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineMovePrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineMoveNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-Q&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineCloseOthers&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-q&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferKill&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-c&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLinePick&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineCyclePrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineCycleNext&lt;CR&gt;</code> |

| **Description** | Increase window width |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Right&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vertical resize +2&lt;CR&gt;</code> |

| **Description** | Decrease window width |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Left&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vertical resize -2&lt;CR&gt;</code> |

| **Description** | Go to upper window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | Go to lower window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | Go to left window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | Move lines |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>:m .-2&lt;CR&gt;==</code> |

| **Description** | Move lines |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | <code>:m .+1&lt;CR&gt;==</code> |

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

| **Description** | Decrease window height |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Down&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;resize -2&lt;CR&gt;</code> |

| **Description** | Increase window height |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Up&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;resize +2&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;C-E&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

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

| **Description** | Go to right window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |


### Visual mode keymaps

| **Description** | Alpha Dashboard |
| :---- | :---- |
| **Left hand side** | <code> ;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Alpha&lt;CR&gt;</code> |

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
| **Left hand side** | <code>D</code> |
| **Right hand side** | <code>"_D</code> |

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
| **Left hand side** | <code>d</code> |
| **Right hand side** | <code>"_d</code> |

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
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zt(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zz(250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').zb(250)&lt;CR&gt;</code> |

| **Description** | Terminal window |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-4&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;2ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |

| **Description** | Run window |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-3&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;1ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |

| **Description** | Move lines |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |

| **Description** | Move lines |
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
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Regex)</code> |
| **Right hand side** | <code>:call vm#commands#find_by_regex(2)&lt;CR&gt;:call feedkeys('/', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Find-Subword-Under)</code> |
| **Right hand side** | <code>&lt;SNR&gt;23_Visual('under')</code> |

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
| **Right hand side** | <code>&lt;SNR&gt;23_Visual('all')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(VM-Visual-Find)</code> |
| **Right hand side** | <code>vm#operators#find(1, 1)</code> |

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
| **Left hand side** | <code>&lt;C-E&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(vim.wo.scroll, true, 250)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Y&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('neoscroll').scroll(-0.10, false, 100)&lt;CR&gt;</code> |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |


### Operator mode keymaps

| **Description** | Alpha Dashboard |
| :---- | :---- |
| **Left hand side** | <code> ;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Alpha&lt;CR&gt;</code> |

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

| **Description** | Terminal window |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-4&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;2ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |

| **Description** | Run window |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-3&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;1ToggleTerm dir=CWD direction=float&lt;CR&gt;</code> |

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

