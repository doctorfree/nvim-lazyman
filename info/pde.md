# pde Neovim Configuration Information

Configure Neovim as a Personalized Development Environment (PDE)

- Install and initialize: **`lazyman -x pde`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-pde`**

## Git repository

[https://github.com/alpha2phi/neovim-pde](https://github.com/alpha2phi/neovim-pde)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [antoinemadec/FixCursorHold.nvim](https://github.com/antoinemadec/FixCursorHold.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [b0o/SchemaStore.nvim](https://github.com/b0o/SchemaStore.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [uga-rosa/ccc.nvim](https://github.com/uga-rosa/ccc.nvim.git)
- [p00f/clangd_extensions.nvim](https://github.com/p00f/clangd_extensions.nvim.git)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Saecki/crates.nvim](https://github.com/Saecki/crates.nvim.git)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [folke/edgy.nvim](https://github.com/folke/edgy.nvim.git)
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [anuvyklack/hydra.nvim](https://github.com/anuvyklack/hydra.nvim.git)
- [Vigemus/iron.nvim](https://github.com/Vigemus/iron.nvim.git)
- [goerz/jupytext.vim](https://github.com/goerz/jupytext.vim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai.git)
- [echasnovski/mini.hipatterns](https://github.com/echasnovski/mini.hipatterns.git)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)
- [jfpedroza/neotest-elixir](https://github.com/jfpedroza/neotest-elixir.git)
- [alfaix/neotest-gtest](https://github.com/alfaix/neotest-gtest.git)
- [nvim-neotest/neotest-jest](https://github.com/nvim-neotest/neotest-jest.git)
- [thenbe/neotest-playwright](https://github.com/thenbe/neotest-playwright.git)
- [nvim-neotest/neotest-plenary](https://github.com/nvim-neotest/neotest-plenary)
- [nvim-neotest/neotest-python](https://github.com/nvim-neotest/neotest-python)
- [olimorris/neotest-rspec](https://github.com/olimorris/neotest-rspec.git)
- [rouge8/neotest-rust](https://github.com/rouge8/neotest-rust.git)
- [stevanmilic/neotest-scala](https://github.com/stevanmilic/neotest-scala.git)
- [nvim-neotest/neotest-vim-test](https://github.com/nvim-neotest/neotest-vim-test)
- [marilari88/neotest-vitest](https://github.com/marilari88/neotest-vitest.git)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python.git)
- [suketa/nvim-dap-ruby](https://github.com/suketa/nvim-dap-ruby.git)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [DaikyXendo/nvim-material-icon](https://github.com/DaikyXendo/nvim-material-icon.git)
- [scalameta/nvim-metals](https://github.com/scalameta/nvim-metals.git)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [jbyuki/one-small-step-for-vimkind](https://github.com/jbyuki/one-small-step-for-vimkind.git)
- [stevearc/overseer.nvim](https://github.com/stevearc/overseer.nvim.git)
- [folke/persistence.nvim](https://github.com/folke/persistence.nvim.git)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)
- [rust-lang/rust.vim](https://github.com/rust-lang/rust.vim.git)
- [roobert/tailwindcss-colorizer-cmp.nvim](https://github.com/roobert/tailwindcss-colorizer-cmp.nvim.git)
- [lpoto/telescope-docker.nvim](https://github.com/lpoto/telescope-docker.nvim.git)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [pmizio/typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim.git)
- [linux-cultist/venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim.git)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [tpope/vim-rhubarb](https://github.com/tpope/vim-rhubarb)
- [tpope/vim-sleuth](https://github.com/tpope/vim-sleuth.git)
- [nvim-neotest/neotest-vim-test](https://github.com/nvim-neotest/neotest-vim-test)
- [johnpapa/vscode-angular-snippets](https://github.com/johnpapa/vscode-angular-snippets.git)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## pde Keymaps

### Normal mode keymaps

| **Description** | Toggle Highlighter |
| :---- | :---- |
| **Left hand side** | <code> zCh</code> |
| **Right hand side** | |

| **Description** | Convert |
| :---- | :---- |
| **Left hand side** | <code> zCc</code> |
| **Right hand side** | |

| **Description** | Pick |
| :---- | :---- |
| **Left hand side** | <code> zCp</code> |
| **Right hand side** | |

| **Description** | +Mark |
| :---- | :---- |
| **Left hand side** | <code> xm</code> |
| **Right hand side** | |

| **Description** | +REPL |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | |

| **Description** | Hide |
| :---- | :---- |
| **Left hand side** | <code> xH</code> |
| **Right hand side** | |

| **Description** | Focus |
| :---- | :---- |
| **Left hand side** | <code> xF</code> |
| **Right hand side** | |

| **Description** | Restart |
| :---- | :---- |
| **Left hand side** | <code> xS</code> |
| **Right hand side** | |

| **Description** | REPL |
| :---- | :---- |
| **Left hand side** | <code> xR</code> |
| **Right hand side** | |

| **Description** | Remove Mark |
| :---- | :---- |
| **Left hand side** | <code> xmr</code> |
| **Right hand side** | |

| **Description** | Mark Motion |
| :---- | :---- |
| **Left hand side** | <code> xmm</code> |
| **Right hand side** | |

| **Description** | Send Mark |
| :---- | :---- |
| **Left hand side** | <code> xms</code> |
| **Right hand side** | |

| **Description** | Clear |
| :---- | :---- |
| **Left hand side** | <code> xc</code> |
| **Right hand side** | |

| **Description** | Close REPL |
| :---- | :---- |
| **Left hand side** | <code> xC</code> |
| **Right hand side** | |

| **Description** | Interrupt |
| :---- | :---- |
| **Left hand side** | <code> xI</code> |
| **Right hand side** | |

| **Description** | ENTER |
| :---- | :---- |
| **Left hand side** | <code> x&lt;CR&gt;</code> |
| **Right hand side** | |

| **Description** | Send File |
| :---- | :---- |
| **Left hand side** | <code> xf</code> |
| **Right hand side** | |

| **Description** | Send Until Cursor |
| :---- | :---- |
| **Left hand side** | <code> xt</code> |
| **Right hand side** | |

| **Description** | Send Line |
| :---- | :---- |
| **Left hand side** | <code> xl</code> |
| **Right hand side** | |

| **Description** | Send Motion |
| :---- | :---- |
| **Left hand side** | <code> xs</code> |
| **Right hand side** | |

| **Description** | Summary |
| :---- | :---- |
| **Left hand side** | <code> tS</code> |
| **Right hand side** | |

| **Description** | Stop |
| :---- | :---- |
| **Left hand side** | <code> ts</code> |
| **Right hand side** | |

| **Description** | Output |
| :---- | :---- |
| **Left hand side** | <code> to</code> |
| **Right hand side** | |

| **Description** | Debug Nearest |
| :---- | :---- |
| **Left hand side** | <code> tN</code> |
| **Right hand side** | |

| **Description** | Nearest |
| :---- | :---- |
| **Left hand side** | <code> tn</code> |
| **Right hand side** | |

| **Description** | Last |
| :---- | :---- |
| **Left hand side** | <code> tl</code> |
| **Right hand side** | |

| **Description** | All Files |
| :---- | :---- |
| **Left hand side** | <code> tF</code> |
| **Right hand side** | |

| **Description** | File |
| :---- | :---- |
| **Left hand side** | <code> tf</code> |
| **Right hand side** | |

| **Description** | Attach |
| :---- | :---- |
| **Left hand side** | <code> ta</code> |
| **Right hand side** | |

| **Description** | Debug Last |
| :---- | :---- |
| **Left hand side** | <code> tL</code> |
| **Right hand side** | |

| **Description** | Debug File |
| :---- | :---- |
| **Left hand side** | <code> td</code> |
| **Right hand side** | |

| **Description** | Step Out |
| :---- | :---- |
| **Left hand side** | <code> du</code> |
| **Right hand side** | |

| **Description** | Terminate |
| :---- | :---- |
| **Left hand side** | <code> dx</code> |
| **Right hand side** | |

| **Description** | Toggle Breakpoint |
| :---- | :---- |
| **Left hand side** | <code> dt</code> |
| **Right hand side** | |

| **Description** | Start |
| :---- | :---- |
| **Left hand side** | <code> ds</code> |
| **Right hand side** | |

| **Description** | Toggle REPL |
| :---- | :---- |
| **Left hand side** | <code> dr</code> |
| **Right hand side** | |

| **Description** | Quit |
| :---- | :---- |
| **Left hand side** | <code> dq</code> |
| **Right hand side** | |

| **Description** | Pause |
| :---- | :---- |
| **Left hand side** | <code> dp</code> |
| **Right hand side** | |

| **Description** | Step Over |
| :---- | :---- |
| **Left hand side** | <code> do</code> |
| **Right hand side** | |

| **Description** | Step Into |
| :---- | :---- |
| **Left hand side** | <code> di</code> |
| **Right hand side** | |

| **Description** | Scopes |
| :---- | :---- |
| **Left hand side** | <code> dS</code> |
| **Right hand side** | |

| **Description** | Hover Variables |
| :---- | :---- |
| **Left hand side** | <code> dh</code> |
| **Right hand side** | |

| **Description** | Get Session |
| :---- | :---- |
| **Left hand side** | <code> dg</code> |
| **Right hand side** | |

| **Description** | Evaluate |
| :---- | :---- |
| **Left hand side** | <code> de</code> |
| **Right hand side** | |

| **Description** | Disconnect |
| :---- | :---- |
| **Left hand side** | <code> dd</code> |
| **Right hand side** | |

| **Description** | Continue |
| :---- | :---- |
| **Left hand side** | <code> dc</code> |
| **Right hand side** | |

| **Description** | Step Back |
| :---- | :---- |
| **Left hand side** | <code> db</code> |
| **Right hand side** | |

| **Description** | Toggle UI |
| :---- | :---- |
| **Left hand side** | <code> dU</code> |
| **Right hand side** | |

| **Description** | Conditional Breakpoint |
| :---- | :---- |
| **Left hand side** | <code> dC</code> |
| **Right hand side** | |

| **Description** | Evaluate Input |
| :---- | :---- |
| **Left hand side** | <code> dE</code> |
| **Right hand side** | |

| **Description** | Run to Cursor |
| :---- | :---- |
| **Left hand side** | <code> dR</code> |
| **Right hand side** | |

| **Description** | Help |
| :---- | :---- |
| **Left hand side** | <code> fh</code> |
| **Right hand side** | |

| **Description** | Buffers |
| :---- | :---- |
| **Left hand side** | <code> fb</code> |
| **Right hand side** | |

| **Description** | Git Files |
| :---- | :---- |
| **Left hand side** | <code> fg</code> |
| **Right hand side** | |

| **Description** | Find Files |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | |

| **Description** | Task Action |
| :---- | :---- |
| **Left hand side** | <code> tta</code> |
| **Right hand side** | |

| **Description** | Run Command |
| :---- | :---- |
| **Left hand side** | <code> ttR</code> |
| **Right hand side** | |

| **Description** | Toggle |
| :---- | :---- |
| **Left hand side** | <code> ttt</code> |
| **Right hand side** | |

| **Description** | Save Bundle |
| :---- | :---- |
| **Left hand side** | <code> tts</code> |
| **Right hand side** | |

| **Description** | Run |
| :---- | :---- |
| **Left hand side** | <code> ttr</code> |
| **Right hand side** | |

| **Description** | Quick Action |
| :---- | :---- |
| **Left hand side** | <code> ttq</code> |
| **Right hand side** | |

| **Description** | Open |
| :---- | :---- |
| **Left hand side** | <code> tto</code> |
| **Right hand side** | |

| **Description** | Load Bundle |
| :---- | :---- |
| **Left hand side** | <code> ttl</code> |
| **Right hand side** | |

| **Description** | Delete Bundle |
| :---- | :---- |
| **Left hand side** | <code> ttd</code> |
| **Right hand side** | |

| **Description** | Close |
| :---- | :---- |
| **Left hand side** | <code> ttc</code> |
| **Right hand side** | |

| **Description** | Build |
| :---- | :---- |
| **Left hand side** | <code> ttb</code> |
| **Right hand side** | |

| **Description** | Select VirtualEnv |
| :---- | :---- |
| **Left hand side** | <code> lv</code> |
| **Right hand side** | |

| **Description** | Restore Last Session |
| :---- | :---- |
| **Left hand side** | <code> ql</code> |
| **Right hand side** | |

| **Description** | Restore Session |
| :---- | :---- |
| **Left hand side** | <code> qs</code> |
| **Right hand side** | |

| **Description** | Don't Save Current Session |
| :---- | :---- |
| **Left hand side** | <code> qd</code> |
| **Right hand side** | |

| **Description** | Docker |
| :---- | :---- |
| **Left hand side** | <code> fd</code> |
| **Right hand side** | |

| **Description** | Status |
| :---- | :---- |
| **Left hand side** | <code> gs</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code></code> |

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
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |
| **Right hand side** | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |

| **Description** | Scroll forward |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | |

| **Description** | Scroll backward |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | |

| **Description** | Previous Cell |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | |

| **Description** | Next Cell |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | |

| **Description** | Delete Cell |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-x&gt;</code> |
| **Right hand side** | |

| **Description** | Execute Cell |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-e&gt;</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Evaluate |
| :---- | :---- |
| **Left hand side** | <code> de</code> |
| **Right hand side** | |

| **Description** | +Mark |
| :---- | :---- |
| **Left hand side** | <code> xm</code> |
| **Right hand side** | |

| **Description** | +REPL |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | |

| **Description** | Mark Visual |
| :---- | :---- |
| **Left hand side** | <code> xmv</code> |
| **Right hand side** | |

| **Description** | Clear Highlight |
| :---- | :---- |
| **Left hand side** | <code> xL</code> |
| **Right hand side** | |

| **Description** | Send |
| :---- | :---- |
| **Left hand side** | <code> xs</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> </code> |
| **Right hand side** | <code></code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |


### Operator mode keymaps

