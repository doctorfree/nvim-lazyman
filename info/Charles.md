# Charles Neovim Configuration Information

Well structured lazy config with several setup scripts and a Wiki

- Install and initialize: **`lazyman -w Charles`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Charles`**

## Git repository

[https://github.com/CharlesChiuGit/nvimdots.lua](https://github.com/CharlesChiuGit/nvimdots.lua)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- accelerated-jk.nvim
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- autoclose.nvim
- [max397574/better-escape.nvim](https://github.com/max397574/better-escape.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [doctorfree/cheatsheet.nvim](https://github.com/doctorfree/cheatsheet.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [kdheepak/cmp-latex-symbols](https://github.com/kdheepak/cmp-latex-symbols)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [f3fora/cmp-spell](https://github.com/f3fora/cmp-spell)
- cmp-tabnine
- cmp-tmux
- cmp-treesitter
- cmp-under-comparator
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- copilot-cmp
- copilot.lua
- delaytrain.nvim
- dial.nvim
- diffview.nvim
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- fzy-lua-native
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- glance.nvim
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- headlines.nvim
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- leap-ast.nvim
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [lvimuser/lsp-inlayhints.nvim](https://github.com/lvimuser/lsp-inlayhints.nvim)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- neodim
- neogen
- [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
- nginx.vim
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [ojroques/nvim-bufdel](https://github.com/ojroques/nvim-bufdel)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- nvim-comment-frame
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- nvim-neoclip.lua
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- nvim-scrollbar
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- nvim-unception
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- oil.nvim
- paint.nvim
- persisted.nvim
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)
- python-copy-reference.vim
- rainbow-delimiters.nvim
- search-replace.nvim
- smartyank.nvim
- sniprun
- [tami5/sqlite.lua](https://github.com/tami5/sqlite.lua)
- [lambdalisue/suda.vim](https://github.com/lambdalisue/suda.vim)
- swenv.nvim
- [simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- syntax-tree-surfer
- tabout.nvim
- telescope-env.nvim
- [nvim-telescope/telescope-frecency.nvim](https://github.com/nvim-telescope/telescope-frecency.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope-live-grep-args.nvim](https://github.com/nvim-telescope/telescope-live-grep-args.nvim)
- telescope-undo.nvim
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- tmux.nvim
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [Wansmer/treesj](https://github.com/Wansmer/treesj)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- vim-cool
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- vim-highlighturl
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- vim-log-highlighting
- [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
- [lervag/vimtex](https://github.com/lervag/vimtex)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)

## Charles Keymaps

### Normal mode keymaps

| **Description** | buffer: Switch to next |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | <code>:BufferLineCycleNext&lt;CR&gt;</code> |

| **Description** | edit: Clear search highlight |
| :---- | :---- |
| **Left hand side** | <code>&lt;Esc&gt;</code> |
| **Right hand side** | <code>:noh&lt;CR&gt;</code> |

| **Description** | edit: Split code block |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TSJSplit&lt;CR&gt;</code> |

| **Description** | edit: Join code block |
| :---- | :---- |
| **Left hand side** | <code> j</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TSJJoin&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | edit: Increment |
| :---- | :---- |
| **Left hand side** | <code>+</code> |
| **Right hand side** | <code>&lt;C-A&gt;</code> |

| **Description** | buffer: Sort by direrctory |
| :---- | :---- |
| **Left hand side** | <code>,bd</code> |
| **Right hand side** | <code>:BufferLineSortByDirectory&lt;CR&gt;</code> |

| **Description** | buffer: Sort by extension |
| :---- | :---- |
| **Left hand side** | <code>,be</code> |
| **Right hand side** | <code>:BufferLineSortByExtension&lt;CR&gt;</code> |

| **Description** | find: Word in project |
| :---- | :---- |
| **Left hand side** | <code>,fw</code> |
| **Right hand side** | |

| **Description** | lsp: Show loclist |
| :---- | :---- |
| **Left hand side** | <code>,tl</code> |
| **Right hand side** | <code>:TroubleToggle loclist&lt;CR&gt;</code> |

| **Description** | lsp: Show quickfix list |
| :---- | :---- |
| **Left hand side** | <code>,tq</code> |
| **Right hand side** | <code>:TroubleToggle quickfix&lt;CR&gt;</code> |

| **Description** | debug: Open REPL |
| :---- | :---- |
| **Left hand side** | <code>,do</code> |
| **Right hand side** | |

| **Description** | ui: Change colorscheme for current session |
| :---- | :---- |
| **Left hand side** | <code>,fc</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Telescope colorscheme&lt;CR&gt;</code> |

| **Description** | find: File in project |
| :---- | :---- |
| **Left hand side** | <code>,ff</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Telescope find_files&lt;CR&gt;</code> |

| **Description** | find: File by history |
| :---- | :---- |
| **Left hand side** | <code>,fe</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Telescope oldfiles&lt;CR&gt;</code> |

| **Description** | find: File by frecency |
| :---- | :---- |
| **Left hand side** | <code>,fr</code> |
| **Right hand side** | |

| **Description** | find: Project |
| :---- | :---- |
| **Left hand side** | <code>,fp</code> |
| **Right hand side** | |

| **Description** | edit: Show undo history |
| :---- | :---- |
| **Left hand side** | <code>,u</code> |
| **Right hand side** | |

| **Description** | lsp: Show workspace diagnostics |
| :---- | :---- |
| **Left hand side** | <code>,tw</code> |
| **Right hand side** | <code>:TroubleToggle workspace_diagnostics&lt;CR&gt;</code> |

| **Description** | lsp: Show document diagnostics |
| :---- | :---- |
| **Left hand side** | <code>,td</code> |
| **Right hand side** | <code>:TroubleToggle document_diagnostics&lt;CR&gt;</code> |

| **Description** | lsp: Show lsp references |
| :---- | :---- |
| **Left hand side** | <code>,tr</code> |
| **Right hand side** | <code>:TroubleToggle lsp_references&lt;CR&gt;</code> |

| **Description** | lsp: Toggle trouble list |
| :---- | :---- |
| **Left hand side** | <code>,tt</code> |
| **Right hand side** | <code>:TroubleToggle&lt;CR&gt;</code> |

| **Description** | git: Toggle lazygit |
| :---- | :---- |
| **Left hand side** | <code>,lg</code> |
| **Right hand side** | |

| **Description** | debug: Run last |
| :---- | :---- |
| **Left hand side** | <code>,dl</code> |
| **Right hand side** | |

| **Description** | debug: Run to cursor |
| :---- | :---- |
| **Left hand side** | <code>,dc</code> |
| **Right hand side** | |

| **Description** | debug: Set breakpoint with condition |
| :---- | :---- |
| **Left hand side** | <code>,db</code> |
| **Right hand side** | |

| **Description** | find: Session |
| :---- | :---- |
| **Left hand side** | <code>,fd</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Telescope persisted&lt;CR&gt;</code> |

| **Description** | find: Current word |
| :---- | :---- |
| **Left hand side** | <code>,fs</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Telescope grep_string&lt;CR&gt;</code> |

| **Description** | find: Buffer opened |
| :---- | :---- |
| **Left hand side** | <code>,fb</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Telescope buffers&lt;CR&gt;</code> |

| **Description** | tool: Run code by file |
| :---- | :---- |
| **Left hand side** | <code>,R</code> |
| **Right hand side** | <code>:&lt;C-U&gt;%SnipRun&lt;CR&gt;</code> |

| **Description** | find: file in git project |
| :---- | :---- |
| **Left hand side** | <code>,fg</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Telescope git_files&lt;CR&gt;</code> |

| **Description** | buffer: New |
| :---- | :---- |
| **Left hand side** | <code>,fn</code> |
| **Right hand side** | <code>:&lt;C-U&gt;:enew&lt;CR&gt;</code> |

| **Description** | filetree: Refresh |
| :---- | :---- |
| **Left hand side** | <code>,nr</code> |
| **Right hand side** | <code>:NvimTreeRefresh&lt;CR&gt;</code> |

| **Description** | filetree: Find file |
| :---- | :---- |
| **Left hand side** | <code>,nf</code> |
| **Right hand side** | <code>:NvimTreeFindFile&lt;CR&gt;</code> |

| **Description** | git: Open git-fugitive |
| :---- | :---- |
| **Left hand side** | <code>,G</code> |
| **Right hand side** | <code>:&lt;C-U&gt;Git&lt;CR&gt;</code> |

| **Description** |  |
| :---- | :---- |
| **Left hand side** | <code>,-</code> |
| **Right hand side** | |

| **Description** |  |
| :---- | :---- |
| **Left hand side** | <code>,=</code> |
| **Right hand side** | |

| **Description** | git: Show diff |
| :---- | :---- |
| **Left hand side** | <code>,dv</code> |
| **Right hand side** | <code>:DiffviewOpen&lt;CR&gt;</code> |

| **Description** | edit: Add comment box around multi lines of texts |
| :---- | :---- |
| **Left hand side** | <code>,cF</code> |
| **Right hand side** | |

| **Description** | git: Close diff |
| :---- | :---- |
| **Left hand side** | <code>,,dv</code> |
| **Right hand side** | <code>:DiffviewClose&lt;CR&gt;</code> |

| **Description** | edit: Add comment box around the texts |
| :---- | :---- |
| **Left hand side** | <code>,cf</code> |
| **Right hand side** | |

| **Description** | session: Delete |
| :---- | :---- |
| **Left hand side** | <code>,sd</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SessionDelete&lt;CR&gt;</code> |

| **Description** | session: Load current |
| :---- | :---- |
| **Left hand side** | <code>,sl</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SessionLoad&lt;CR&gt;</code> |

| **Description** | session: Save |
| :---- | :---- |
| **Left hand side** | <code>,ss</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SessionSave&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle multi buffers CFile |
| :---- | :---- |
| **Left hand side** | <code>,rbf</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceMultiBufferCFile&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle multi buffers CExpr |
| :---- | :---- |
| **Left hand side** | <code>,rbe</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceMultiBufferCExpr&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle multi buffers CWORD |
| :---- | :---- |
| **Left hand side** | <code>,rbW</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceMultiBufferCWORD&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle multi buffers CWord |
| :---- | :---- |
| **Left hand side** | <code>,rbw</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceMultiBufferCWord&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle in multi buffers |
| :---- | :---- |
| **Left hand side** | <code>,rbo</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceMultiBufferOpen&lt;CR&gt;</code> |

| **Description** | edit: Show search-repacle menu for multi buffer |
| :---- | :---- |
| **Left hand side** | <code>,rbs</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceMultiBufferSelections&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle current buffer CFile |
| :---- | :---- |
| **Left hand side** | <code>,rf</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceSingleBufferCFile&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle current buffer CExpr |
| :---- | :---- |
| **Left hand side** | <code>,re</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceSingleBufferCExpr&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle current buffer CWORD |
| :---- | :---- |
| **Left hand side** | <code>,rW</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceSingleBufferCWORD&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle current buffer CWord |
| :---- | :---- |
| **Left hand side** | <code>,rw</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceSingleBufferCWord&lt;CR&gt;</code> |

| **Description** | edit: Search-repacle in current buffer |
| :---- | :---- |
| **Left hand side** | <code>,ro</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceSingleBufferOpen&lt;CR&gt;</code> |

| **Description** | edit: Show search-repacle menu in current buffer |
| :---- | :---- |
| **Left hand side** | <code>,rs</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceSingleBufferSelections&lt;CR&gt;</code> |

| **Description** | package: Profile |
| :---- | :---- |
| **Left hand side** | <code>,pp</code> |
| **Right hand side** | <code>:Lazy profile&lt;CR&gt;</code> |

| **Description** | package: Sync |
| :---- | :---- |
| **Left hand side** | <code>,ps</code> |
| **Right hand side** | <code>:Lazy sync&lt;CR&gt;</code> |

| **Description** | package: Debug |
| :---- | :---- |
| **Left hand side** | <code>,pd</code> |
| **Right hand side** | <code>:Lazy debug&lt;CR&gt;</code> |

| **Description** | package: Show |
| :---- | :---- |
| **Left hand side** | <code>,ph</code> |
| **Right hand side** | <code>:Lazy&lt;CR&gt;</code> |

| **Description** | package: Check |
| :---- | :---- |
| **Left hand side** | <code>,pc</code> |
| **Right hand side** | <code>:Lazy check&lt;CR&gt;</code> |

| **Description** | package: Log |
| :---- | :---- |
| **Left hand side** | <code>,pl</code> |
| **Right hand side** | <code>:Lazy log&lt;CR&gt;</code> |

| **Description** | package: Clean |
| :---- | :---- |
| **Left hand side** | <code>,px</code> |
| **Right hand side** | <code>:Lazy clean&lt;CR&gt;</code> |

| **Description** | package: Install |
| :---- | :---- |
| **Left hand side** | <code>,pi</code> |
| **Right hand side** | <code>:Lazy install&lt;CR&gt;</code> |

| **Description** | package: Restore |
| :---- | :---- |
| **Left hand side** | <code>,pr</code> |
| **Right hand side** | <code>:Lazy restore&lt;CR&gt;</code> |

| **Description** | package: Update |
| :---- | :---- |
| **Left hand side** | <code>,pu</code> |
| **Right hand side** | <code>:Lazy update&lt;CR&gt;</code> |

| **Description** | edit: Start replacment mode of current word |
| :---- | :---- |
| **Left hand side** | <code>,,s</code> |
| **Right hand side** | <code>&lt;Cmd&gt;%s/\&lt;lt&gt;&lt;C-R&gt;&lt;C-W&gt;\&gt;/&lt;C-R&gt;&lt;C-W&gt;/gI&lt;Left&gt;&lt;Left&gt;&lt;Left&gt;</code> |

| **Description** | filetree: Open Oil |
| :---- | :---- |
| **Left hand side** | <code>,o</code> |
| **Right hand side** | |

| **Description** | file: chmod +x current file |
| :---- | :---- |
| **Left hand side** | <code>,,x</code> |
| **Right hand side** | <code>&lt;Cmd&gt;!chmod +x %&lt;CR&gt;</code> |

| **Description** | edit: Decrement |
| :---- | :---- |
| **Left hand side** | <code>-</code> |
| **Right hand side** | <code>&lt;C-X&gt;</code> |

| **Description** | buffer: Move current to prev |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;tab-S-k&gt;</code> |
| **Right hand side** | <code>:BufferLineMovePrev&lt;CR&gt;</code> |

| **Description** | buffer: Move current to next |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;tab-S-j&gt;</code> |
| **Right hand side** | <code>:BufferLineMoveNext&lt;CR&gt;</code> |

| **Description** | edit: Delete text to EOL |
| :---- | :---- |
| **Left hand side** | <code>D</code> |
| **Right hand side** | <code>d$</code> |

| **Description** | leapn: Jump backward to character |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | jump: Jump to specified node |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | |

| **Description** | edit: Prev search result |
| :---- | :---- |
| **Left hand side** | <code>N</code> |
| **Right hand side** | <code>Nzzzv</code> |

| **Description** | leapn: Jump backward till character |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | edit: Yank text to EOL |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | edit: Change a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | |

| **Description** | edit: Delete a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | |

| **Description** | leapn: Jump to character |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | git: Pull |
| :---- | :---- |
| **Left hand side** | <code>gpl</code> |
| **Right hand side** | <code>:G pull&lt;CR&gt;</code> |

| **Description** | git: Push |
| :---- | :---- |
| **Left hand side** | <code>gps</code> |
| **Right hand side** | <code>:G push&lt;CR&gt;</code> |

| **Description** | edit: Toggle comment for block with operator |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |

| **Description** | edit: Align with delimiter |
| :---- | :---- |
| **Left hand side** | <code>gea</code> |
| **Right hand side** | <code>:EasyAlign&lt;CR&gt;</code> |

| **Description** | edit: Toggle comment for line with operator |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |

| **Description** | edit: Toggle comment for block |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | edit: Toggle comment for line |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | leapn: Jump to character across windows |
| :---- | :---- |
| **Left hand side** | <code>gt</code> |
| **Right hand side** | |

| **Description** | jump: Jump to functions |
| :---- | :---- |
| **Left hand side** | <code>jif</code> |
| **Right hand side** | |

| **Description** | jump: Jump to functions |
| :---- | :---- |
| **Left hand side** | <code>jfu</code> |
| **Right hand side** | |

| **Description** | jump: Jump to visible variable_declarations |
| :---- | :---- |
| **Left hand side** | <code>jv</code> |
| **Right hand side** | |

| **Description** |  |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | |

| **Description** |  |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | |

| **Description** | Jumpx: Jump across syntax tree |
| :---- | :---- |
| **Left hand side** | <code>m</code> |
| **Right hand side** | |

| **Description** | edit: Next search result |
| :---- | :---- |
| **Left hand side** | <code>n</code> |
| **Right hand side** | <code>nzzzv</code> |

| **Description** | edit: Split or Join code block with autodetect |
| :---- | :---- |
| **Left hand side** | <code>sj</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TSJToggle&lt;CR&gt;</code> |

| **Description** | leapn: Jump till character |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | tab: Only keep current tab |
| :---- | :---- |
| **Left hand side** | <code>to</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabonly&lt;CR&gt;</code> |

| **Description** | tab: Move to previous tab |
| :---- | :---- |
| **Left hand side** | <code>tj</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabprevious&lt;CR&gt;</code> |

| **Description** | tab: Move to next tab |
| :---- | :---- |
| **Left hand side** | <code>tk</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnext&lt;CR&gt;</code> |

| **Description** | tab: Create a new tab |
| :---- | :---- |
| **Left hand side** | <code>tn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnew&lt;CR&gt;</code> |

| **Description** | edit: Visual select current node |
| :---- | :---- |
| **Left hand side** | <code>vn</code> |
| **Right hand side** | <code>:&lt;C-U&gt;STSSelectCurrentNode&lt;CR&gt;</code> |

| **Description** | edit: Visual select master node |
| :---- | :---- |
| **Left hand side** | <code>vx</code> |
| **Right hand side** | <code>:&lt;C-U&gt;STSSelectMasterNode&lt;CR&gt;</code> |

| **Description** | edit: Add a surrounding pair around the current line, on new lines |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | |

| **Description** | edit: Add a surrounding pair around a motion, on new lines |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | |

| **Description** | edit: Add a surrounding pair around current line |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | |

| **Description** | edit: Add a surrounding pair around a motion |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | |

| **Description** | tmux: Resize tmux/nvim pane rightward |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-l&gt;</code> |
| **Right hand side** | |

| **Description** | terminal: Toggle float |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-d&gt;</code> |
| **Right hand side** | <code>:execute v:count . "ToggleTerm direction=float"&lt;CR&gt;</code> |

| **Description** | terminal: Toggle vertical |
| :---- | :---- |
| **Left hand side** | <code>&lt;F5&gt;</code> |
| **Right hand side** | <code>:execute v:count . "ToggleTerm direction=vertical"&lt;CR&gt;</code> |

| **Description** | terminal: Toggle vertical |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-Bslash&gt;</code> |
| **Right hand side** | <code>:execute v:count . "ToggleTerm direction=vertical"&lt;CR&gt;</code> |

| **Description** | debug: Step over |
| :---- | :---- |
| **Left hand side** | <code>&lt;F11&gt;</code> |
| **Right hand side** | |

| **Description** | terminal: Toggle horizontal |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | <code>:execute v:count . "ToggleTerm direction=horizontal"&lt;CR&gt;</code> |

| **Description** | debug: Step out |
| :---- | :---- |
| **Left hand side** | <code>&lt;F10&gt;</code> |
| **Right hand side** | |

| **Description** | debug: Step into |
| :---- | :---- |
| **Left hand side** | <code>&lt;F9&gt;</code> |
| **Right hand side** | |

| **Description** | tmux: Resize to tmux/nvim pane leftward |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-h&gt;</code> |
| **Right hand side** | |

| **Description** | debug: Toggle breakpoint |
| :---- | :---- |
| **Left hand side** | <code>&lt;F8&gt;</code> |
| **Right hand side** | |

| **Description** | tmux: Resize to tmux/nvim pane upward |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-k&gt;</code> |
| **Right hand side** | |

| **Description** | debug: Stop |
| :---- | :---- |
| **Left hand side** | <code>&lt;F7&gt;</code> |
| **Right hand side** | |

| **Description** | tmux: Resize tmux/nvim pane downward |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-j&gt;</code> |
| **Right hand side** | |

| **Description** | debug: Run/Continue |
| :---- | :---- |
| **Left hand side** | <code>&lt;F6&gt;</code> |
| **Right hand side** | |

| **Description** | tool: Preview markdown |
| :---- | :---- |
| **Left hand side** | <code>&lt;F12&gt;</code> |
| **Right hand side** | <code>:MarkdownPreviewToggle&lt;CR&gt;</code> |

| **Description** | buffer: Close current |
| :---- | :---- |
| **Left hand side** | <code>&lt;F4&gt;</code> |
| **Right hand side** | <code>:BufDel&lt;CR&gt;</code> |

| **Description** | editn: Save file using sudo |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-s&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SudaWrite&lt;CR&gt;</code> |

| **Description** | Formater: Toggle format on save |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-f&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;FormatToggle&lt;CR&gt;</code> |

| **Description** | edit: Save file |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-S&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;write&lt;CR&gt;</code> |

| **Description** | edit: Select all |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>gg0vG$</code> |

| **Description** | buffer: Switch to prev |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Tab&gt;</code> |
| **Right hand side** | <code>:BufferLineCyclePrev&lt;CR&gt;</code> |

| **Description** | edit: Force quit |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-Q&gt;</code> |
| **Right hand side** | <code>:q!&lt;CR&gt;</code> |

| **Description** | filetree: Toggle |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-N&gt;</code> |
| **Right hand side** | <code>:NvimTreeToggle&lt;CR&gt;</code> |

| **Description** | tool: Toggle command panel |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-P&gt;</code> |
| **Right hand side** | |

| **Description** | edit: Save file and quit |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Q&gt;</code> |
| **Right hand side** | <code>:wq&lt;CR&gt;</code> |

| **Description** | window: Resize +2 horizontally |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-'&gt;</code> |
| **Right hand side** | <code>:resize +2&lt;CR&gt;</code> |

| **Description** | window: Resize -2 horizontally |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-;&gt;</code> |
| **Right hand side** | <code>:resize -2&lt;CR&gt;</code> |

| **Description** | window: Resize +5 vertically |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-]&gt;</code> |
| **Right hand side** | <code>:vertical resize +5&lt;CR&gt;</code> |

| **Description** | window: Resize -5 vertically |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-[&gt;</code> |
| **Right hand side** | <code>:vertical resize -5&lt;CR&gt;</code> |

| **Description** | tmux: Move to tmux/nvim top window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | |

| **Description** | tmux: Move to tmux/nvim bottom window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | |

| **Description** | tmux: Move to tmux/nvim left window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | |

| **Description** | tmux: Move tmux/nvim right window |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | |


### Visual mode keymaps

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** |  |
| :---- | :---- |
| **Left hand side** | <code>,=</code> |
| **Right hand side** | |

| **Description** |  |
| :---- | :---- |
| **Left hand side** | <code>,-</code> |
| **Right hand side** | |

| **Description** | tool: Run code by range |
| :---- | :---- |
| **Left hand side** | <code>,R</code> |
| **Right hand side** | <code>:SnipRun&lt;CR&gt;</code> |

| **Description** | move: Change selection region to child node |
| :---- | :---- |
| **Left hand side** | <code>-</code> |
| **Right hand side** | <code>:&lt;C-U&gt;STSSelectChildNode&lt;CR&gt;</code> |

| **Description** | edit: Decrease indent |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;gv</code> |

| **Description** | move: Change selection region to parent node |
| :---- | :---- |
| **Left hand side** | <code>=</code> |
| **Right hand side** | <code>:&lt;C-U&gt;STSSelectParentNode&lt;CR&gt;</code> |

| **Description** | edit: Increase indent |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&gt;gv</code> |

| **Description** | leapx: Visual select backward to character |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | edit: Move this line down |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |

| **Description** | edit: Move this line up |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |

| **Description** | leapx: Visual select backward till character |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | move: Change selection region to preivous sibling node |
| :---- | :---- |
| **Left hand side** | <code>[</code> |
| **Right hand side** | <code>:&lt;C-U&gt;STSSelectPrevSiblingNode&lt;CR&gt;</code> |

| **Description** | move: Change selection region to next sibling node |
| :---- | :---- |
| **Left hand side** | <code>]</code> |
| **Right hand side** | <code>:&lt;C-U&gt;STSSelectNextSiblingNode&lt;CR&gt;</code> |

| **Description** | leapx: Visual select to character |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | edit: Toggle comment for line with selection |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

| **Description** | edit: Toggle comment for block with selection |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |

| **Description** | edit: Align with delimiter |
| :---- | :---- |
| **Left hand side** | <code>gea</code> |
| **Right hand side** | <code>:EasyAlign&lt;CR&gt;</code> |

| **Description** | Jumpx: Jump across syntax tree |
| :---- | :---- |
| **Left hand side** | <code>m</code> |
| **Right hand side** | |

| **Description** | leapx: Visual select till character |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | edit: Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | |

| **Description** | edit: Add a surrounding pair around a visual selection |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | |

| **Description** | edit: Search-replace with selection within one line |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-R&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceSingleBufferVisualSelection&lt;CR&gt;</code> |

| **Description** | edit: Search-replace with selection within one line CWord |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-W&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;SearchReplaceWithinVisualSelectionCWord&lt;CR&gt;</code> |

| **Description** | edit: Select all |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Esc&gt;gg0vG$</code> |


### Operator mode keymaps

| **Description** | leapo: Operatate backward to character |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | leapo: Operatate backward till character |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | leapo: Operatate to character |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | Jumpo: Jump across syntax tree |
| :---- | :---- |
| **Left hand side** | <code>m</code> |
| **Right hand side** | |

| **Description** | leapo: Operatate till character |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

