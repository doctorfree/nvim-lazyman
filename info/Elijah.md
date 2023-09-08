# Elijah Neovim Configuration Information

Personal Neovim configuration of Elijah Manor

- Install and initialize: **`lazyman -w Elijah`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     [LazyVim](https://lazyvim.github.io)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Elijah`**

## Git repository

[https://github.com/elijahmanor/dotfiles](https://github.com/elijahmanor/dotfiles)

## Website

[https://elijahmanor.com](https://elijahmanor.com)

## YouTube channel

[https://www.youtube.com/@ElijahManor](https://www.youtube.com/@ElijahManor)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

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

## Elijah Keymaps

### Normal mode keymaps

| **Description** | Goto Symbol |
| :---- | :---- |
| **Left hand side** | <code> ss</code> |
| **Right hand side** | |

| **Description** | Colorscheme with preview |
| :---- | :---- |
| **Left hand side** | <code> uC</code> |
| **Right hand side** | |

| **Description** | Word (cwd) |
| :---- | :---- |
| **Left hand side** | <code> sW</code> |
| **Right hand side** | |

| **Description** | Word (root dir) |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | |

| **Description** | Resume |
| :---- | :---- |
| **Left hand side** | <code> sR</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope resume&lt;CR&gt;</code> |

| **Description** | Options |
| :---- | :---- |
| **Left hand side** | <code> so</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope vim_options&lt;CR&gt;</code> |

| **Description** | Jump to Mark |
| :---- | :---- |
| **Left hand side** | <code> sm</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope marks&lt;CR&gt;</code> |

| **Description** | Man Pages |
| :---- | :---- |
| **Left hand side** | <code> sM</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope man_pages&lt;CR&gt;</code> |

| **Description** | Key Maps |
| :---- | :---- |
| **Left hand side** | <code> sk</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope keymaps&lt;CR&gt;</code> |

| **Description** | Help Pages |
| :---- | :---- |
| **Left hand side** | <code> sh</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope help_tags&lt;CR&gt;</code> |

| **Description** | Grep (cwd) |
| :---- | :---- |
| **Left hand side** | <code> sG</code> |
| **Right hand side** | |

| **Description** | Grep (root dir) |
| :---- | :---- |
| **Left hand side** | <code> sg</code> |
| **Right hand side** | |

| **Description** | Workspace diagnostics |
| :---- | :---- |
| **Left hand side** | <code> sD</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope diagnostics&lt;CR&gt;</code> |

| **Description** | Document diagnostics |
| :---- | :---- |
| **Left hand side** | <code> sd</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope diagnostics bufnr=0&lt;CR&gt;</code> |

| **Description** | Commands |
| :---- | :---- |
| **Left hand side** | <code> sC</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope commands&lt;CR&gt;</code> |

| **Description** | Command History |
| :---- | :---- |
| **Left hand side** | <code> sc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope command_history&lt;CR&gt;</code> |

| **Description** | Buffer |
| :---- | :---- |
| **Left hand side** | <code> sb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope current_buffer_fuzzy_find&lt;CR&gt;</code> |

| **Description** | Auto Commands |
| :---- | :---- |
| **Left hand side** | <code> sa</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope autocommands&lt;CR&gt;</code> |

| **Description** | Registers |
| :---- | :---- |
| **Left hand side** | <code> s"</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope registers&lt;CR&gt;</code> |

| **Description** | status |
| :---- | :---- |
| **Left hand side** | <code> gs</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope git_status&lt;CR&gt;</code> |

| **Description** | commits |
| :---- | :---- |
| **Left hand side** | <code> gc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope git_commits&lt;CR&gt;</code> |

| **Description** | Resume |
| :---- | :---- |
| **Left hand side** | <code> fR</code> |
| **Right hand side** | |

| **Description** | Recent |
| :---- | :---- |
| **Left hand side** | <code> fr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |

| **Description** | Find Files (cwd) |
| :---- | :---- |
| **Left hand side** | <code> fF</code> |
| **Right hand side** | |

| **Description** | Find Files (root dir) |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | |

| **Description** | Buffers |
| :---- | :---- |
| **Left hand side** | <code> fb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope buffers&lt;CR&gt;</code> |

| **Description** | Command History |
| :---- | :---- |
| **Left hand side** | <code> :</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope command_history&lt;CR&gt;</code> |

| **Description** | Grep (root dir) |
| :---- | :---- |
| **Left hand side** | <code> /</code> |
| **Right hand side** | |

| **Description** | Switch Buffer |
| :---- | :---- |
| **Left hand side** | <code> ,</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope buffers show_all_buffers=true&lt;CR&gt;</code> |

| **Description** | Search Highlight Groups |
| :---- | :---- |
| **Left hand side** | <code> sH</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope highlights&lt;CR&gt;</code> |

| **Description** | Browse Files |
| :---- | :---- |
| **Left hand side** | <code> sB</code> |
| **Right hand side** | <code>:Telescope file_browser file_browser path=%:p:h=%:p:h&lt;CR&gt;</code> |

| **Description** | Goto Symbol (Workspace) |
| :---- | :---- |
| **Left hand side** | <code> sS</code> |
| **Right hand side** | |

| **Description** | Neogit |
| :---- | :---- |
| **Left hand side** | <code> gn</code> |
| **Right hand side** | |

| **Description** | Dismiss all Notifications |
| :---- | :---- |
| **Left hand side** | <code> un</code> |
| **Right hand side** | |

| **Description** | Toggle LSP output |
| :---- | :---- |
| **Left hand side** | <code> uo</code> |
| **Right hand side** | |

| **Description** | Diffview Open |
| :---- | :---- |
| **Left hand side** | <code> gd</code> |
| **Right hand side** | |

| **Description** | Mason |
| :---- | :---- |
| **Left hand side** | <code> cm</code> |
| **Right hand side** | |

| **Description** | Quickfix List (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xQ</code> |
| **Right hand side** | |

| **Description** | Location List (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xL</code> |
| **Right hand side** | |

| **Description** | Workspace Diagnostics (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xX</code> |
| **Right hand side** | |

| **Description** | Document Diagnostics (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xx</code> |
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

| **Description** | Dap UI |
| :---- | :---- |
| **Left hand side** | <code> du</code> |
| **Right hand side** | |

| **Description** | Eval |
| :---- | :---- |
| **Left hand side** | <code> de</code> |
| **Right hand side** | |

| **Description** | Delete non-pinned buffers |
| :---- | :---- |
| **Left hand side** | <code> bP</code> |
| **Right hand side** | |

| **Description** | Toggle pin |
| :---- | :---- |
| **Left hand side** | <code> bp</code> |
| **Right hand side** | |

| **Description** | Delete Buffer |
| :---- | :---- |
| **Left hand side** | <code> bd</code> |
| **Right hand side** | |

| **Description** | Delete Buffer (Force) |
| :---- | :---- |
| **Left hand side** | <code> bD</code> |
| **Right hand side** | |

| **Description** | Show Output |
| :---- | :---- |
| **Left hand side** | <code> to</code> |
| **Right hand side** | |

| **Description** | Toggle Summary |
| :---- | :---- |
| **Left hand side** | <code> ts</code> |
| **Right hand side** | |

| **Description** | Run Nearest |
| :---- | :---- |
| **Left hand side** | <code> tr</code> |
| **Right hand side** | |

| **Description** | Run All Test Files |
| :---- | :---- |
| **Left hand side** | <code> tT</code> |
| **Right hand side** | |

| **Description** | Run File |
| :---- | :---- |
| **Left hand side** | <code> tt</code> |
| **Right hand side** | |

| **Description** | Stop |
| :---- | :---- |
| **Left hand side** | <code> tS</code> |
| **Right hand side** | |

| **Description** | Toggle Output Panel |
| :---- | :---- |
| **Left hand side** | <code> tO</code> |
| **Right hand side** | |

| **Description** | Replace in files (Spectre) |
| :---- | :---- |
| **Left hand side** | <code> sr</code> |
| **Right hand side** | |

| **Description** | Explorer NeoTree (cwd) |
| :---- | :---- |
| **Left hand side** | <code> E</code> |
| **Right hand side** | |

| **Description** | Explorer NeoTree (root dir) |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | |

| **Description** | Explorer NeoTree (cwd) |
| :---- | :---- |
| **Left hand side** | <code> fE</code> |
| **Right hand side** | |

| **Description** | Explorer NeoTree (root dir) |
| :---- | :---- |
| **Left hand side** | <code> fe</code> |
| **Right hand side** | |

| **Description** | Widgets |
| :---- | :---- |
| **Left hand side** | <code> dw</code> |
| **Right hand side** | |

| **Description** | Terminate |
| :---- | :---- |
| **Left hand side** | <code> dt</code> |
| **Right hand side** | |

| **Description** | Session |
| :---- | :---- |
| **Left hand side** | <code> ds</code> |
| **Right hand side** | |

| **Description** | Toggle REPL |
| :---- | :---- |
| **Left hand side** | <code> dr</code> |
| **Right hand side** | |

| **Description** | Pause |
| :---- | :---- |
| **Left hand side** | <code> dp</code> |
| **Right hand side** | |

| **Description** | Step Over |
| :---- | :---- |
| **Left hand side** | <code> dO</code> |
| **Right hand side** | |

| **Description** | Step Out |
| :---- | :---- |
| **Left hand side** | <code> do</code> |
| **Right hand side** | |

| **Description** | Run Last |
| :---- | :---- |
| **Left hand side** | <code> dl</code> |
| **Right hand side** | |

| **Description** | Up |
| :---- | :---- |
| **Left hand side** | <code> dk</code> |
| **Right hand side** | |

| **Description** | Down |
| :---- | :---- |
| **Left hand side** | <code> dj</code> |
| **Right hand side** | |

| **Description** | Step Into |
| :---- | :---- |
| **Left hand side** | <code> di</code> |
| **Right hand side** | |

| **Description** | Go to line (no execute) |
| :---- | :---- |
| **Left hand side** | <code> dg</code> |
| **Right hand side** | |

| **Description** | Run to Cursor |
| :---- | :---- |
| **Left hand side** | <code> dC</code> |
| **Right hand side** | |

| **Description** | Continue |
| :---- | :---- |
| **Left hand side** | <code> dc</code> |
| **Right hand side** | |

| **Description** | Toggle Breakpoint |
| :---- | :---- |
| **Left hand side** | <code> db</code> |
| **Right hand side** | |

| **Description** | Breakpoint Condition |
| :---- | :---- |
| **Left hand side** | <code> dB</code> |
| **Right hand side** | |

| **Description** | Debug Nearest |
| :---- | :---- |
| **Left hand side** | <code> td</code> |
| **Right hand side** | |

| **Description** | Open mini.files (cwd) |
| :---- | :---- |
| **Left hand side** | <code> fM</code> |
| **Right hand side** | |

| **Description** | Open mini.files (directory of current file) |
| :---- | :---- |
| **Left hand side** | <code> fm</code> |
| **Right hand side** | |

| **Description** | Noice History |
| :---- | :---- |
| **Left hand side** | <code> snh</code> |
| **Right hand side** | |

| **Description** | Noice Last Message |
| :---- | :---- |
| **Left hand side** | <code> snl</code> |
| **Right hand side** | |

| **Description** | Dismiss All |
| :---- | :---- |
| **Left hand side** | <code> snd</code> |
| **Right hand side** | |

| **Description** | Noice All |
| :---- | :---- |
| **Left hand side** | <code> sna</code> |
| **Right hand side** | |

| **Description** | Type-check |
| :---- | :---- |
| **Left hand side** | <code> tc</code> |
| **Right hand side** | |

| **Description** | Open Yank History |
| :---- | :---- |
| **Left hand side** | <code> p</code> |
| **Right hand side** | |

| **Description** | Todo (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xt</code> |
| **Right hand side** | |

| **Description** | Todo |
| :---- | :---- |
| **Left hand side** | <code> st</code> |
| **Right hand side** | |

| **Description** | Todo/Fix/Fixme |
| :---- | :---- |
| **Left hand side** | <code> sT</code> |
| **Right hand side** | |

| **Description** | Todo/Fix/Fixme (Trouble) |
| :---- | :---- |
| **Left hand side** | <code> xT</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | Open parent directory |
| :---- | :---- |
| **Left hand side** | <code>-</code> |
| **Right hand side** | |

| **Description** | Put and indent left |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;p</code> |
| **Right hand side** | |

| **Description** | Put before and indent left |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;P</code> |
| **Right hand side** | |

| **Description** | Put after applying a filter |
| :---- | :---- |
| **Left hand side** | <code>=p</code> |
| **Right hand side** | |

| **Description** | Put before applying a filter |
| :---- | :---- |
| **Left hand side** | <code>=P</code> |
| **Right hand side** | |

| **Description** | Put and indent right |
| :---- | :---- |
| **Left hand side** | <code>&gt;p</code> |
| **Right hand side** | |

| **Description** | Put before and indent right |
| :---- | :---- |
| **Left hand side** | <code>&gt;P</code> |
| **Right hand side** | |

| **Description** | Put yanked text before cursor |
| :---- | :---- |
| **Left hand side** | <code>P</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | Previous trouble/quickfix item |
| :---- | :---- |
| **Left hand side** | <code>[q</code> |
| **Right hand side** | |

| **Description** | Prev Reference |
| :---- | :---- |
| **Left hand side** | <code>[[</code> |
| **Right hand side** | |

| **Description** | Put indented before cursor (linewise) |
| :---- | :---- |
| **Left hand side** | <code>[p</code> |
| **Right hand side** | |

| **Description** | Put indented before cursor (linewise) |
| :---- | :---- |
| **Left hand side** | <code>[P</code> |
| **Right hand side** | |

| **Description** | Cycle forward through yank history |
| :---- | :---- |
| **Left hand side** | <code>[y</code> |
| **Right hand side** | |

| **Description** | Previous todo comment |
| :---- | :---- |
| **Left hand side** | <code>[t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | Next trouble/quickfix item |
| :---- | :---- |
| **Left hand side** | <code>]q</code> |
| **Right hand side** | |

| **Description** | Next Reference |
| :---- | :---- |
| **Left hand side** | <code>]]</code> |
| **Right hand side** | |

| **Description** | Cycle backward through yank history |
| :---- | :---- |
| **Left hand side** | <code>]y</code> |
| **Right hand side** | |

| **Description** | Put indented after cursor (linewise) |
| :---- | :---- |
| **Left hand side** | <code>]p</code> |
| **Right hand side** | |

| **Description** | Put indented after cursor (linewise) |
| :---- | :---- |
| **Left hand side** | <code>]P</code> |
| **Right hand side** | |

| **Description** | Next todo comment |
| :---- | :---- |
| **Left hand side** | <code>]t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | Delete surrounding |
| :---- | :---- |
| **Left hand side** | <code>gzd</code> |
| **Right hand side** | |

| **Description** | Find right surrounding |
| :---- | :---- |
| **Left hand side** | <code>gzf</code> |
| **Right hand side** | |

| **Description** | Find left surrounding |
| :---- | :---- |
| **Left hand side** | <code>gzF</code> |
| **Right hand side** | |

| **Description** | Update `MiniSurround.config.n_lines` |
| :---- | :---- |
| **Left hand side** | <code>gzn</code> |
| **Right hand side** | |

| **Description** | Replace surrounding |
| :---- | :---- |
| **Left hand side** | <code>gzr</code> |
| **Right hand side** | |

| **Description** | Add surrounding |
| :---- | :---- |
| **Left hand side** | <code>gza</code> |
| **Right hand side** | |

| **Description** | Highlight surrounding |
| :---- | :---- |
| **Left hand side** | <code>gzh</code> |
| **Right hand side** | |

| **Description** | Put yanked text before selection |
| :---- | :---- |
| **Left hand side** | <code>gP</code> |
| **Right hand side** | |

| **Description** | Put yanked text after selection |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | |

| **Description** | Put yanked text after cursor |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | Yank text |
| :---- | :---- |
| **Left hand side** | <code>y</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | Scroll forward |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | |

| **Description** | Scroll backward |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Selection (cwd) |
| :---- | :---- |
| **Left hand side** | <code> sW</code> |
| **Right hand side** | |

| **Description** | Selection (root dir) |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | |

| **Description** | Eval |
| :---- | :---- |
| **Left hand side** | <code> de</code> |
| **Right hand side** | |

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

| **Description** | Put yanked text before cursor |
| :---- | :---- |
| **Left hand side** | <code>P</code> |
| **Right hand side** | |

| **Description** | Treesitter Search |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
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
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | Add surrounding |
| :---- | :---- |
| **Left hand side** | <code>gza</code> |
| **Right hand side** | |

| **Description** | Put yanked text after selection |
| :---- | :---- |
| **Left hand side** | <code>gp</code> |
| **Right hand side** | |

| **Description** | Put yanked text before selection |
| :---- | :---- |
| **Left hand side** | <code>gP</code> |
| **Right hand side** | |

| **Description** | Put yanked text after cursor |
| :---- | :---- |
| **Left hand side** | <code>p</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | Yank text |
| :---- | :---- |
| **Left hand side** | <code>y</code> |
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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | Treesitter Search |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
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
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| **Description** | Remote Flash |
| :---- | :---- |
| **Left hand side** | <code>r</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Bslash&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |

