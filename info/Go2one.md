# Go2one Neovim Configuration Information

Neovim Go development environment that does not touch standard Neovim configuration folders

- Install and initialize: **`lazyman -L Go2one`**
- Configuration category: [Language](https://lazyman.dev/configurations/#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Go2one`**

## Git repository

[https://github.com/leoluz/go2one](https://github.com/leoluz/go2one)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [aaronhallaert/advanced-git-search.nvim](https://github.com/aaronhallaert/advanced-git-search.nvim.git)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [chentoast/marks.nvim](https://github.com/chentoast/marks.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-neotest/nvim-nio](https://github.com/nvim-neotest/nvim-nio.git)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope-github.nvim](https://github.com/nvim-telescope/telescope-github.nvim)
- [gbrlsnchs/telescope-lsp-handlers.nvim](https://github.com/gbrlsnchs/telescope-lsp-handlers.nvim)
- [cljoly/telescope-repo.nvim](https://github.com/cljoly/telescope-repo.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [leoluz/testo.nvim](https://github.com/leoluz/testo.nvim.git)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)

## Go2one Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> t</code> |
| **Right hand side** | <code>:lua require'testo'.test_nearest()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fp</code> |
| **Right hand side** | <code>:lua print(vim.api.nvim_buf_get_name(0))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>:lua require'utils'.reload('go2one')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> a</code> |
| **Right hand side** | <code>ggVG$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> v</code> |
| **Right hand side** | <code>:e $MYVIMRC&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> -</code> |
| **Right hand side** | <code>:q!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gj</code> |
| **Right hand side** | <code>:%!jq .&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | <code>:ccl&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ,</code> |
| **Right hand side** | <code>10&lt;C-W&gt;&lt;lt&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> .</code> |
| **Right hand side** | <code>10&lt;C-W&gt;&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> =</code> |
| **Right hand side** | <code>&lt;C-W&gt;=</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> m</code> |
| **Right hand side** | <code>&lt;C-W&gt;_</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> l</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> k</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> j</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> y</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dd</code> |
| **Right hand side** | <code>:lua require'dap'.continue()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> di</code> |
| **Right hand side** | <code>:lua require'dap'.step_into()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> db</code> |
| **Right hand side** | <code>:lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> du</code> |
| **Right hand side** | <code>:lua require'dapui'.toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> i</code> |
| **Right hand side** | <code>:lua require'dapui'.eval()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> dc</code> |
| **Right hand side** | <code>:DiffviewClose&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> do</code> |
| **Right hand side** | <code>:DiffviewOpen master...HEAD&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> 9</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineGoToBuffer 9&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> 8</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineGoToBuffer 8&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> 7</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineGoToBuffer 7&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> 6</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineGoToBuffer 6&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> 5</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineGoToBuffer 5&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> 4</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineGoToBuffer 4&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> 3</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineGoToBuffer 3&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> 2</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineGoToBuffer 2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> 1</code> |
| **Right hand side** | <code>&lt;Cmd&gt;BufferLineGoToBuffer 1&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> /</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ghc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ghf</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ghh</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gs</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gb</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gl</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gd</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> b</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> f;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fd</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fk</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fg</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fh</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gp</code> |
| **Right hand side** | <code>:Git push&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gc</code> |
| **Right hand side** | <code>:Git commit -s&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gg</code> |
| **Right hand side** | <code>:Git&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> q</code> |
| **Right hand side** | <code>:NvimTreeToggle&lt;CR&gt;</code> |

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
| **Left hand side** | <code>,</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>_</code> |
| **Right hand side** | <code>:bdelete!&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cS</code> |
| **Right hand side** | <code>&lt;Plug&gt;CSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;Csurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm=</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm3</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm4</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm2</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm5</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm6</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm1</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm7</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm0</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm8</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm </code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_buf()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm-</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_line()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>dm9</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.delete_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | <code>&lt;Plug&gt;Dsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>`.</code> |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>(v:count == 0 ? 'gj' : 'j')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>(v:count == 0 ? 'gk' : 'k')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m]</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m:</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.preview()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m}</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.next_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m[</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.prev()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m{</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.prev_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m2</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m4</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m3</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m9</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m8</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m1</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m7</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m,</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m0</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m6</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>m5</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'marks'.set_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ySs</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | <code>&lt;Plug&gt;Yssurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | <code>&lt;Plug&gt;Ysurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>:split term://bash&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;BS&gt;</code> |
| **Right hand side** | <code>:bdelete&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>:w&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F4&gt;</code> |
| **Right hand side** | <code>:setlocal spell! spelllang=en_us&lt;CR&gt;</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark9)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark9()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark8)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark8()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark7)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark7()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark6)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark6()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark5)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark5()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark4)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark4()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark3)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark3()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark2)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark2()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark1)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark1()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set-bookmark0)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_bookmark0()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev-bookmark)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next-bookmark)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete-bookmark)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_bookmark()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-prev)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.prev()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-next)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-preview)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.preview()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-deletebuf)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_buf()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-deleteline)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete_line()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-delete)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.delete()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-toggle)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-setnext)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set_next()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(Marks-set)</code> |
| **Right hand side** | <code>&lt;Cmd&gt; lua require'marks'.set()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F11&gt;</code> |
| **Right hand side** | <code>:lua require'dap'.step_out()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F10&gt;</code> |
| **Right hand side** | <code>:lua require'dap'.step_into()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F9&gt;</code> |
| **Right hand side** | <code>:lua require'dap'.step_over()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F8&gt;</code> |
| **Right hand side** | <code>:lua require'dap'.continue()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;F7&gt;</code> |
| **Right hand side** | <code>:lua require'dap'.toggle_breakpoint()&lt;CR&gt;</code> |

| **Description** | LuaSnip: Repeat last node expansion |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | LuaSnip: Removes current snippet from jumplist |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>:BufferLineMovePrev&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>:BufferLineMoveNext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;YSurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;14_opfunc2('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Ysurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;14_opfunc('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSsurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;14_opfunc2('setup').'_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Yssurround</code> |
| **Right hand side** | <code>'^'.v:count1.&lt;SNR&gt;14_opfunc('setup').'g_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;14_changesurround(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Csurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;14_changesurround()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Dsurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;14_dosurround(&lt;SNR&gt;14_inputtarget())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;SurroundRepeat</code> |
| **Right hand side** | <code>.</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:BufferLineCycleNext&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> /</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

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
| **Left hand side** | <code>,</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;silent&gt;&lt;C-S&gt;</code> |
| **Right hand side** | <code>:sort&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;VSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |

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
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;VgSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

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

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | LuaSnip: Repeat last node expansion |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VgSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;16_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;16_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

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

| **Description** | LuaSnip: Repeat last node expansion |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

