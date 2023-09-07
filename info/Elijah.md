## Elijah Neovim Configuration Information

Personal Neovim configuration of Elijah Manor

- Install and initialize: **`lazyman -w Elijah`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     [LazyVim](https://lazyvim.github.io)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Elijah`**

### Git repository

[https://github.com/elijahmanor/dotfiles](https://github.com/elijahmanor/dotfiles)

### Website

[https://elijahmanor.com](https://elijahmanor.com)

### YouTube channel

[https://www.youtube.com/@ElijahManor](https://www.youtube.com/@ElijahManor)

### Lazy managed plugins

- [LazyVim/LazyVim](https://github.com/LazyVim/LazyVim.git)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim.git)
- [Rawnly/gist.nvim](https://github.com/Rawnly/gist.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [VidocqH/lsp-lens.nvim](https://github.com/VidocqH/lsp-lens.nvim.git)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [TimUntersberger/neogit](https://github.com/TimUntersberger/neogit)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [samjwill/nvim-unception](https://github.com/samjwill/nvim-unception.git)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [pwntester/octo.nvim](https://github.com/pwntester/octo.nvim)
- [stevearc/oil.nvim](https://github.com/stevearc/oil.nvim.git)
- [mhanberg/output-panel.nvim](https://github.com/mhanberg/output-panel.nvim.git)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [luukvbaal/statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [dmmulroy/tsc.nvim](https://github.com/dmmulroy/tsc.nvim)
- [jose-elias-alvarez/typescript.nvim](https://github.com/jose-elias-alvarez/typescript.nvim)
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

### Elijah Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Find Files (cwd) | <code> fF</code> |  |
| Find Files (root dir) | <code> ff</code> |  |
| Buffers | <code> fb</code> | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |
| Command History | <code> :</code> | <code>&lt;Cmd&gt;Telescope command_history&lt;CR&gt;</code> |
| Grep (root dir) | <code> /</code> |  |
| Switch Buffer | <code> ,</code> | <code>&lt;Cmd&gt;Telescope buffers show_all_buffers=true&lt;CR&gt;</code> |
| Browse Files | <code> sB</code> | <code>:Telescope file_browser file_browser path=%:p:h=%:p:h&lt;CR&gt;</code> |
| Goto Symbol (Workspace) | <code> sS</code> |  |
| Goto Symbol | <code> ss</code> |  |
| Colorscheme with preview | <code> uC</code> |  |
| Find Files (root dir) | <code>  </code> |  |
| Word (cwd) | <code> sW</code> |  |
| Word (root dir) | <code> sw</code> |  |
| Resume | <code> sR</code> | <code>&lt;Cmd&gt;Telescope resume&lt;CR&gt;</code> |
| Options | <code> so</code> | <code>&lt;Cmd&gt;Telescope vim_options&lt;CR&gt;</code> |
| Jump to Mark | <code> sm</code> | <code>&lt;Cmd&gt;Telescope marks&lt;CR&gt;</code> |
| Man Pages | <code> sM</code> | <code>&lt;Cmd&gt;Telescope man_pages&lt;CR&gt;</code> |
| Key Maps | <code> sk</code> | <code>&lt;Cmd&gt;Telescope keymaps&lt;CR&gt;</code> |
| Search Highlight Groups | <code> sH</code> | <code>&lt;Cmd&gt;Telescope highlights&lt;CR&gt;</code> |
| Help Pages | <code> sh</code> | <code>&lt;Cmd&gt;Telescope help_tags&lt;CR&gt;</code> |
| Grep (cwd) | <code> sG</code> |  |
| Grep (root dir) | <code> sg</code> |  |
| Workspace diagnostics | <code> sD</code> | <code>&lt;Cmd&gt;Telescope diagnostics&lt;CR&gt;</code> |
| Document diagnostics | <code> sd</code> | <code>&lt;Cmd&gt;Telescope diagnostics bufnr=0&lt;CR&gt;</code> |
| Commands | <code> sC</code> | <code>&lt;Cmd&gt;Telescope commands&lt;CR&gt;</code> |
| Command History | <code> sc</code> | <code>&lt;Cmd&gt;Telescope command_history&lt;CR&gt;</code> |
| Buffer | <code> sb</code> | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |
| Auto Commands | <code> sa</code> | <code>&lt;Cmd&gt;Telescope autocommands&lt;CR&gt;</code> |
| Registers | <code> s"</code> | <code>&lt;Cmd&gt;Telescope registers&lt;CR&gt;</code> |
| status | <code> gs</code> | <code>&lt;Cmd&gt;Telescope git_status&lt;CR&gt;</code> |
| commits | <code> gc</code> | <code>&lt;Cmd&gt;Telescope git_commits&lt;CR&gt;</code> |
| Resume | <code> fR</code> |  |
| Recent | <code> fr</code> | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |
| Mason | <code> cm</code> |  |
| Todo | <code> st</code> |  |
| Todo/Fix/Fixme | <code> sT</code> |  |
| Todo/Fix/Fixme (Trouble) | <code> xT</code> |  |
| Todo (Trouble) | <code> xt</code> |  |
| Quickfix List (Trouble) | <code> xQ</code> |  |
| Location List (Trouble) | <code> xL</code> |  |
| Workspace Diagnostics (Trouble) | <code> xX</code> |  |
| Document Diagnostics (Trouble) | <code> xx</code> |  |
| Widgets | <code> dw</code> |  |
| Terminate | <code> dt</code> |  |
| Session | <code> ds</code> |  |
| Toggle REPL | <code> dr</code> |  |
| Pause | <code> dp</code> |  |
| Step Over | <code> dO</code> |  |
| Step Out | <code> do</code> |  |
| Run Last | <code> dl</code> |  |
| Up | <code> dk</code> |  |
| Down | <code> dj</code> |  |
| Step Into | <code> di</code> |  |
| Go to line (no execute) | <code> dg</code> |  |
| Run to Cursor | <code> dC</code> |  |
| Continue | <code> dc</code> |  |
| Toggle Breakpoint | <code> db</code> |  |
| Breakpoint Condition | <code> dB</code> |  |
| Debug Nearest | <code> td</code> |  |
| Dismiss All | <code> snd</code> |  |
| Noice All | <code> sna</code> |  |
| Noice History | <code> snh</code> |  |
| Noice Last Message | <code> snl</code> |  |
| Open Yank History | <code> p</code> |  |
| Replace in files (Spectre) | <code> sr</code> |  |
| Explorer NeoTree (cwd) | <code> E</code> |  |
| Explorer NeoTree (root dir) | <code> e</code> |  |
| Explorer NeoTree (cwd) | <code> fE</code> |  |
| Explorer NeoTree (root dir) | <code> fe</code> |  |
| Restore Session | <code> qs</code> |  |
| Don't Save Current Session | <code> qd</code> |  |
| Restore Last Session | <code> ql</code> |  |
| Open mini.files (cwd) | <code> fM</code> |  |
| Open mini.files (directory of current file) | <code> fm</code> |  |
| Toggle pin | <code> bp</code> |  |
| Delete non-pinned buffers | <code> bP</code> |  |
| Toggle Summary | <code> ts</code> |  |
| Run Nearest | <code> tr</code> |  |
| Run All Test Files | <code> tT</code> |  |
| Run File | <code> tt</code> |  |
| Stop | <code> tS</code> |  |
| Toggle Output Panel | <code> tO</code> |  |
| Show Output | <code> to</code> |  |
| Diffview Open | <code> gd</code> |  |
| Dismiss all Notifications | <code> un</code> |  |
| Delete Buffer | <code> bd</code> |  |
| Delete Buffer (Force) | <code> bD</code> |  |
| Neogit | <code> gn</code> |  |
| Dap UI | <code> du</code> |  |
| Eval | <code> de</code> |  |
| Toggle LSP output | <code> uo</code> |  |
| Type-check | <code> tc</code> |  |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| Open parent directory | <code>-</code> |  |
| Put and indent left | <code>&lt;lt&gt;p</code> |  |
| Put before and indent left | <code>&lt;lt&gt;P</code> |  |
| Put after applying a filter | <code>=p</code> |  |
| Put before applying a filter | <code>=P</code> |  |
| Put and indent right | <code>&gt;p</code> |  |
| Put before and indent right | <code>&gt;P</code> |  |
| Put yanked text before cursor | <code>P</code> |  |
| Flash Treesitter | <code>S</code> |  |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
| Previous todo comment | <code>[t</code> |  |
| Previous trouble/quickfix item | <code>[q</code> |  |
| Prev Reference | <code>[[</code> |  |
| Put indented before cursor (linewise) | <code>[p</code> |  |
| Put indented before cursor (linewise) | <code>[P</code> |  |
| Cycle forward through yank history | <code>[y</code> |  |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
| Next todo comment | <code>]t</code> |  |
| Next trouble/quickfix item | <code>]q</code> |  |
| Next Reference | <code>]]</code> |  |
| Cycle backward through yank history | <code>]y</code> |  |
| Put indented after cursor (linewise) | <code>]p</code> |  |
| Put indented after cursor (linewise) | <code>]P</code> |  |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseX</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
| Put yanked text after selection | <code>gp</code> |  |
| Put yanked text before selection | <code>gP</code> |  |
| Replace surrounding | <code>gzr</code> |  |
| Update `MiniSurround.config.n_lines` | <code>gzn</code> |  |
| Highlight surrounding | <code>gzh</code> |  |
| Delete surrounding | <code>gzd</code> |  |
| Find right surrounding | <code>gzf</code> |  |
| Find left surrounding | <code>gzF</code> |  |
| Add surrounding | <code>gza</code> |  |
| Put yanked text after cursor | <code>p</code> |  |
| Flash | <code>s</code> |  |
| Yank text | <code>y</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseX</code> | <code>:call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
| Scroll forward | <code>&lt;C-F&gt;</code> |  |
| Scroll backward | <code>&lt;C-B&gt;</code> |  |
|  | <code>&lt;C-L&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Selection (cwd) | <code> sW</code> |  |
| Selection (root dir) | <code> sw</code> |  |
| Eval | <code> de</code> |  |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
| Put yanked text before cursor | <code>P</code> |  |
| Treesitter Search | <code>R</code> |  |
| Flash Treesitter | <code>S</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>gx</code> | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
| Put yanked text before selection | <code>gP</code> |  |
| Put yanked text after selection | <code>gp</code> |  |
| Add surrounding | <code>gza</code> |  |
| Put yanked text after cursor | <code>p</code> |  |
| Flash | <code>s</code> |  |
| Yank text | <code>y</code> |  |
|  | <code>&lt;Plug&gt;NetrwBrowseXVis</code> | <code>:&lt;C-U&gt;call netrw#BrowseXVis()&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
| Treesitter Search | <code>R</code> |  |
| Flash Treesitter | <code>S</code> |  |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
| Remote Flash | <code>r</code> |  |
| Flash | <code>s</code> |  |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |
