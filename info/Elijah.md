## Elijah Neovim Configuration Information

Personal Neovim configuration of Elijah Manor

- Install and initialize: **`lazyman -w Elijah`**
- Configuration category: [Personal](https://github.com/doctorfree/nvim-lazyman#personal-configurations)
- Base configuration:     [LazyVim](https://lazyvim.github.io)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Elijah`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

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
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

### Elijah Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Browse Files |  sB | :Telescope file_browser file_browser path=%:p:h=%:p:h<CR> |
| Goto Symbol (Workspace) |  sS |  |
| Goto Symbol |  ss |  |
| Colorscheme with preview |  uC |  |
| Word (cwd) |  sW |  |
| Word (root dir) |  sw |  |
| Resume |  sR | <Cmd>Telescope resume<CR> |
| Options |  so | <Cmd>Telescope vim_options<CR> |
| Jump to Mark |  sm | <Cmd>Telescope marks<CR> |
| Man Pages |  sM | <Cmd>Telescope man_pages<CR> |
| Key Maps |  sk | <Cmd>Telescope keymaps<CR> |
| Search Highlight Groups |  sH | <Cmd>Telescope highlights<CR> |
| Help Pages |  sh | <Cmd>Telescope help_tags<CR> |
| Find Files (root dir) |  ff |  |
| Buffers |  fb | <Cmd>Telescope buffers<CR> |
| Command History |  : | <Cmd>Telescope command_history<CR> |
| Document diagnostics |  sd | <Cmd>Telescope diagnostics bufnr=0<CR> |
| Commands |  sC | <Cmd>Telescope commands<CR> |
| Command History |  sc | <Cmd>Telescope command_history<CR> |
| Buffer |  sb | <Cmd>Telescope current_buffer_fuzzy_find<CR> |
| Auto Commands |  sa | <Cmd>Telescope autocommands<CR> |
| status |  gs | <Cmd>Telescope git_status<CR> |
| commits |  gc | <Cmd>Telescope git_commits<CR> |
| Resume |  fR |  |
| Find Files (root dir) |    |  |
| Find Files (cwd) |  fF |  |
| Grep (cwd) |  sG |  |
| Grep (root dir) |  sg |  |
| Workspace diagnostics |  sD | <Cmd>Telescope diagnostics<CR> |
| Grep (root dir) |  / |  |
| Switch Buffer |  , | <Cmd>Telescope buffers show_all_buffers=true<CR> |
| Recent |  fr | <Cmd>Telescope oldfiles<CR> |
| Diffview Open |  gd |  |
| Toggle LSP output |  uo |  |
| Explorer NeoTree (cwd) |  fE |  |
| Explorer NeoTree (root dir) |  fe |  |
| Explorer NeoTree (cwd) |  E |  |
| Explorer NeoTree (root dir) |  e |  |
| Dismiss all Notifications |  un |  |
| Type-check |  tc |  |
| Toggle Summary |  ts |  |
| Run Nearest |  tr |  |
| Run All Test Files |  tT |  |
| Run File |  tt |  |
| Stop |  tS |  |
| Toggle Output Panel |  tO |  |
| Show Output |  to |  |
| Open Yank History |  p |  |
| Open mini.files (directory of current file) |  fm |  |
| Open mini.files (cwd) |  fM |  |
| Eval |  de |  |
| Dap UI |  du |  |
| Delete non-pinned buffers |  bP |  |
| Toggle pin |  bp |  |
| Neogit |  gn |  |
| Todo |  st |  |
| Todo/Fix/Fixme |  sT |  |
| Todo/Fix/Fixme (Trouble) |  xT |  |
| Todo (Trouble) |  xt |  |
| Quickfix List (Trouble) |  xQ |  |
| Location List (Trouble) |  xL |  |
| Workspace Diagnostics (Trouble) |  xX |  |
| Document Diagnostics (Trouble) |  xx |  |
| Delete Buffer |  bd |  |
| Delete Buffer (Force) |  bD |  |
| Dismiss All |  snd |  |
| Noice All |  sna |  |
| Noice History |  snh |  |
| Noice Last Message |  snl |  |
| Replace in files (Spectre) |  sr |  |
| Mason |  cm |  |
| Step Into |  di |  |
| Go to line (no execute) |  dg |  |
| Run to Cursor |  dC |  |
| Continue |  dc |  |
| Toggle Breakpoint |  db |  |
| Breakpoint Condition |  dB |  |
| Debug Nearest |  td |  |
| Widgets |  dw |  |
| Terminate |  dt |  |
| Session |  ds |  |
| Toggle REPL |  dr |  |
| Pause |  dp |  |
| Step Over |  dO |  |
| Step Out |  do |  |
| Run Last |  dl |  |
| Up |  dk |  |
| Down |  dj |  |
| Don't Save Current Session |  qd |  |
| Restore Last Session |  ql |  |
| Restore Session |  qs |  |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
| Open parent directory | - |  |
| Put and indent left | <lt>p |  |
| Put before and indent left | <lt>P |  |
| Put after applying a filter | =p |  |
| Put before applying a filter | =P |  |
| Put and indent right | >p |  |
| Put before and indent right | >P |  |
| Put yanked text before cursor | P |  |
| Flash Treesitter | S |  |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
| Put indented before cursor (linewise) | [p |  |
| Put indented before cursor (linewise) | [P |  |
| Cycle forward through yank history | [y |  |
| Previous todo comment | [t |  |
| Previous trouble/quickfix item | [q |  |
| Prev Reference | [[ |  |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
| Put indented after cursor (linewise) | ]p |  |
| Put indented after cursor (linewise) | ]P |  |
| Cycle backward through yank history | ]y |  |
| Next todo comment | ]t |  |
| Next trouble/quickfix item | ]q |  |
| Next Reference | ]] |  |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
| Put yanked text before selection | gP |  |
| Put yanked text after selection | gp |  |
| Find right surrounding | gzf |  |
| Find left surrounding | gzF |  |
| Update `MiniSurround.config.n_lines` | gzn |  |
| Replace surrounding | gzr |  |
| Delete surrounding | gzd |  |
| Highlight surrounding | gzh |  |
| Add surrounding | gza |  |
| Put yanked text after cursor | p |  |
| Flash | s |  |
| Yank text | y |  |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <C-Bslash> | :<C-U>TmuxNavigatePrevious<CR> |
|  | <C-K> | :<C-U>TmuxNavigateUp<CR> |
|  | <C-J> | :<C-U>TmuxNavigateDown<CR> |
|  | <C-H> | :<C-U>TmuxNavigateLeft<CR> |
| Scroll backward | <C-B> |  |
| Scroll forward | <C-F> |  |
|  | <C-L> | :<C-U>TmuxNavigateRight<CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Eval |  de |  |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
| Put yanked text before cursor | P |  |
| Treesitter Search | R |  |
| Flash Treesitter | S |  |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
| Add surrounding | gza |  |
| Put yanked text before selection | gP |  |
| Put yanked text after selection | gp |  |
| Put yanked text after cursor | p |  |
| Flash | s |  |
| Yank text | y |  |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
|  | <C-Bslash> | :<C-U>TmuxNavigatePrevious<CR> |
|  | <C-K> | :<C-U>TmuxNavigateUp<CR> |
|  | <C-J> | :<C-U>TmuxNavigateDown<CR> |
|  | <C-H> | :<C-U>TmuxNavigateLeft<CR> |
|  | <C-L> | :<C-U>TmuxNavigateRight<CR> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
| Treesitter Search | R |  |
| Flash Treesitter | S |  |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
| Remote Flash | r |  |
| Flash | s |  |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
|  | <C-Bslash> | :<C-U>TmuxNavigatePrevious<CR> |
|  | <C-K> | :<C-U>TmuxNavigateUp<CR> |
|  | <C-J> | :<C-U>TmuxNavigateDown<CR> |
|  | <C-H> | :<C-U>TmuxNavigateLeft<CR> |
|  | <C-L> | :<C-U>TmuxNavigateRight<CR> |
