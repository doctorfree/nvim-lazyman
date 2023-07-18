## Go2one Neovim Configuration Information

Neovim Go development environment that does not touch standard Neovim configuration folders

- Install and initialize: **`lazyman -L Go2one`**
- Configuration category: [Language](https://github.com/doctorfree/nvim-lazyman#language-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Go2one`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/leoluz/go2one](https://github.com/leoluz/go2one)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [chentoast/marks.nvim](https://github.com/chentoast/marks.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope-github.nvim](https://github.com/nvim-telescope/telescope-github.nvim)
- [gbrlsnchs/telescope-lsp-handlers.nvim](https://github.com/gbrlsnchs/telescope-lsp-handlers.nvim)
- [cljoly/telescope-repo.nvim](https://github.com/cljoly/telescope-repo.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [airblade/vim-rooter](https://github.com/airblade/vim-rooter)
- [tpope/vim-surround](https://github.com/tpope/vim-surround)

### Go2one Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  q | :NvimTreeToggle<CR> |
|  |  gp | :Git push<CR> |
|  |  gc | :Git commit -s<CR> |
|  |  gg | :Git<CR> |
|  |  gs |  |
|  |  gb |  |
|  |  gl |  |
|  |  gd |  |
|  |  b |  |
|  |  f; |  |
|  |  fk |  |
|  |  fg |  |
|  |  fh |  |
|  |  ff |  |
|  |  fm | :DashboardJumpMarks<CR> |
|  |  fn | :DashboardNewFile<CR> |
|  |  fl | :SessionLoad<CR> |
|  |  fr | :DashboardFindHistory<CR> |
|  |  y |  |
|  |  db | :lua require'dap'.toggle_breakpoint()<CR> |
|  |  dd | :lua require'dap'.continue()<CR> |
|  |  do | :lua require'dap'.step_over()<CR> |
|  |  di | :lua require'dap'.step_into()<CR> |
|  |  dc | :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR> |
|  |  du | :lua require'dapui'.toggle()<CR> |
|  |  i | :lua require'dapui'.eval()<CR> |
|  |  9 | <Cmd>BufferLineGoToBuffer 9<CR> |
|  |  8 | <Cmd>BufferLineGoToBuffer 8<CR> |
|  |  7 | <Cmd>BufferLineGoToBuffer 7<CR> |
|  |  6 | <Cmd>BufferLineGoToBuffer 6<CR> |
|  |  5 | <Cmd>BufferLineGoToBuffer 5<CR> |
|  |  4 | <Cmd>BufferLineGoToBuffer 4<CR> |
|  |  3 | <Cmd>BufferLineGoToBuffer 3<CR> |
|  |  2 | <Cmd>BufferLineGoToBuffer 2<CR> |
|  |  1 | <Cmd>BufferLineGoToBuffer 1<CR> |
|  |  t | :lua require'go2one.gotest'.test_nearest({layout_strategy = 'vertical', layout_config = {preview_cutoff = 1}})<CR> |
|  |  s | :lua require'utils'.reload('go2one')<CR> |
|  |  a | ggVG$ |
|  |  v | :e $MYVIMRC<CR> |
|  |  - | :q!<CR> |
|  |  gj | :%!jq .<CR> |
|  |  x | :ccl<CR> |
|  |  , | 10<C-W><lt> |
|  |  . | 10<C-W>> |
|  |  = | <C-W>= |
|  |  m | <C-W>_ |
|  |  l | <C-W>l |
|  |  h | <C-W>h |
|  |  k | <C-W>k |
|  |  j | <C-W>j |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
|  | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | _ | :bdelete!<CR> |
|  | cS | <Plug>CSurround |
|  | cs | <Plug>Csurround |
|  | ds | <Plug>Dsurround |
|  | dm- | <Cmd>lua require'marks'.delete_line()<CR> |
|  | dm4 | <Cmd>lua require'marks'.delete_bookmark4()<CR> |
|  | dm | <Cmd>lua require'marks'.delete()<CR> |
|  | dm3 | <Cmd>lua require'marks'.delete_bookmark3()<CR> |
|  | dm6 | <Cmd>lua require'marks'.delete_bookmark6()<CR> |
|  | dm7 | <Cmd>lua require'marks'.delete_bookmark7()<CR> |
|  | dm2 | <Cmd>lua require'marks'.delete_bookmark2()<CR> |
|  | dm8 | <Cmd>lua require'marks'.delete_bookmark8()<CR> |
|  | dm1 | <Cmd>lua require'marks'.delete_bookmark1()<CR> |
|  | dm  | <Cmd>lua require'marks'.delete_buf()<CR> |
|  | dm0 | <Cmd>lua require'marks'.delete_bookmark0()<CR> |
|  | dm= | <Cmd>lua require'marks'.delete_bookmark()<CR> |
|  | dm5 | <Cmd>lua require'marks'.delete_bookmark5()<CR> |
|  | dm9 | <Cmd>lua require'marks'.delete_bookmark9()<CR> |
| Comment insert end of line | gcA |  |
| Comment insert above | gcO |  |
| Comment insert below | gco |  |
| Comment toggle current block | gbc |  |
| Comment toggle current line | g/ |  |
| Comment toggle linewise | gc | <Plug>(comment_toggle_linewise) |
|  | gx | <Plug>NetrwBrowseX |
|  | g% | <Plug>(MatchitNormalBackward) |
| Comment toggle blockwise | gb | <Plug>(comment_toggle_blockwise) |
|  | j | (v:count == 0 ? 'gj' : 'j') |
|  | k | (v:count == 0 ? 'gk' : 'k') |
|  | m{ | <Cmd>lua require'marks'.prev_bookmark()<CR> |
|  | m3 | <Cmd>lua require'marks'.set_bookmark3()<CR> |
|  | m4 | <Cmd>lua require'marks'.set_bookmark4()<CR> |
|  | m6 | <Cmd>lua require'marks'.set_bookmark6()<CR> |
|  | m | <Cmd>lua require'marks'.set()<CR> |
|  | m9 | <Cmd>lua require'marks'.set_bookmark9()<CR> |
|  | m2 | <Cmd>lua require'marks'.set_bookmark2()<CR> |
|  | m[ | <Cmd>lua require'marks'.prev()<CR> |
|  | m8 | <Cmd>lua require'marks'.set_bookmark8()<CR> |
|  | m: | <Cmd>lua require'marks'.preview()<CR> |
|  | m1 | <Cmd>lua require'marks'.set_bookmark1()<CR> |
|  | m7 | <Cmd>lua require'marks'.set_bookmark7()<CR> |
|  | m] | <Cmd>lua require'marks'.next()<CR> |
|  | m0 | <Cmd>lua require'marks'.set_bookmark0()<CR> |
|  | m; | <Cmd>lua require'marks'.toggle()<CR> |
|  | m} | <Cmd>lua require'marks'.next_bookmark()<CR> |
|  | m, | <Cmd>lua require'marks'.set_next()<CR> |
|  | m5 | <Cmd>lua require'marks'.set_bookmark5()<CR> |
|  | ySS | <Plug>YSsurround |
|  | ySs | <Plug>YSsurround |
|  | yss | <Plug>Yssurround |
|  | yS | <Plug>YSurround |
|  | ys | <Plug>Ysurround |
|  | y<C-G> | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|  | <Plug>YSurround | <SNR>45_opfunc2('setup') |
|  | <Plug>Ysurround | <SNR>45_opfunc('setup') |
|  | <Plug>YSsurround | <SNR>45_opfunc2('setup').'_' |
|  | <Plug>Yssurround | '^'.v:count1.<SNR>45_opfunc('setup').'g_' |
|  | <Plug>CSurround | :<C-U>call <SNR>45_changesurround(1)<CR> |
|  | <Plug>Csurround | :<C-U>call <SNR>45_changesurround()<CR> |
|  | <Plug>Dsurround | :<C-U>call <SNR>45_dosurround(<SNR>45_inputtarget())<CR> |
|  | <Plug>SurroundRepeat | . |
|  | <Plug>fugitive: |  |
|  | <Plug>fugitive:y<C-G> | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>(Marks-prev-bookmark9) | <Cmd> lua require'marks'.prev_bookmark9()<CR> |
|  | <Plug>(Marks-next-bookmark9) | <Cmd> lua require'marks'.next_bookmark9()<CR> |
|  | <Plug>(Marks-toggle-bookmark9) | <Cmd> lua require'marks'.toggle_bookmark9()<CR> |
|  | <Plug>(Marks-delete-bookmark9) | <Cmd> lua require'marks'.delete_bookmark9()<CR> |
|  | <Plug>(Marks-set-bookmark9) | <Cmd> lua require'marks'.set_bookmark9()<CR> |
|  | <Plug>(Marks-prev-bookmark8) | <Cmd> lua require'marks'.prev_bookmark8()<CR> |
|  | <Plug>(Marks-next-bookmark8) | <Cmd> lua require'marks'.next_bookmark8()<CR> |
|  | <Plug>(Marks-toggle-bookmark8) | <Cmd> lua require'marks'.toggle_bookmark8()<CR> |
|  | <Plug>(Marks-delete-bookmark8) | <Cmd> lua require'marks'.delete_bookmark8()<CR> |
|  | <Plug>(Marks-set-bookmark8) | <Cmd> lua require'marks'.set_bookmark8()<CR> |
|  | <Plug>(Marks-prev-bookmark7) | <Cmd> lua require'marks'.prev_bookmark7()<CR> |
|  | <Plug>(Marks-next-bookmark7) | <Cmd> lua require'marks'.next_bookmark7()<CR> |
|  | <Plug>(Marks-toggle-bookmark7) | <Cmd> lua require'marks'.toggle_bookmark7()<CR> |
|  | <Plug>(Marks-delete-bookmark7) | <Cmd> lua require'marks'.delete_bookmark7()<CR> |
|  | <Plug>(Marks-set-bookmark7) | <Cmd> lua require'marks'.set_bookmark7()<CR> |
|  | <Plug>(Marks-prev-bookmark6) | <Cmd> lua require'marks'.prev_bookmark6()<CR> |
|  | <Plug>(Marks-next-bookmark6) | <Cmd> lua require'marks'.next_bookmark6()<CR> |
|  | <Plug>(Marks-toggle-bookmark6) | <Cmd> lua require'marks'.toggle_bookmark6()<CR> |
|  | <Plug>(Marks-delete-bookmark6) | <Cmd> lua require'marks'.delete_bookmark6()<CR> |
|  | <Plug>(Marks-set-bookmark6) | <Cmd> lua require'marks'.set_bookmark6()<CR> |
|  | <Plug>(Marks-prev-bookmark5) | <Cmd> lua require'marks'.prev_bookmark5()<CR> |
|  | <Plug>(Marks-next-bookmark5) | <Cmd> lua require'marks'.next_bookmark5()<CR> |
|  | <Plug>(Marks-toggle-bookmark5) | <Cmd> lua require'marks'.toggle_bookmark5()<CR> |
|  | <Plug>(Marks-delete-bookmark5) | <Cmd> lua require'marks'.delete_bookmark5()<CR> |
|  | <Plug>(Marks-set-bookmark5) | <Cmd> lua require'marks'.set_bookmark5()<CR> |
|  | <Plug>(Marks-prev-bookmark4) | <Cmd> lua require'marks'.prev_bookmark4()<CR> |
|  | <Plug>(Marks-next-bookmark4) | <Cmd> lua require'marks'.next_bookmark4()<CR> |
|  | <Plug>(Marks-toggle-bookmark4) | <Cmd> lua require'marks'.toggle_bookmark4()<CR> |
|  | <Plug>(Marks-delete-bookmark4) | <Cmd> lua require'marks'.delete_bookmark4()<CR> |
|  | <Plug>(Marks-set-bookmark4) | <Cmd> lua require'marks'.set_bookmark4()<CR> |
|  | <Plug>(Marks-prev-bookmark3) | <Cmd> lua require'marks'.prev_bookmark3()<CR> |
|  | <Plug>(Marks-next-bookmark3) | <Cmd> lua require'marks'.next_bookmark3()<CR> |
|  | <Plug>(Marks-toggle-bookmark3) | <Cmd> lua require'marks'.toggle_bookmark3()<CR> |
|  | <Plug>(Marks-delete-bookmark3) | <Cmd> lua require'marks'.delete_bookmark3()<CR> |
|  | <Plug>(Marks-set-bookmark3) | <Cmd> lua require'marks'.set_bookmark3()<CR> |
|  | <Plug>(Marks-prev-bookmark2) | <Cmd> lua require'marks'.prev_bookmark2()<CR> |
|  | <Plug>(Marks-next-bookmark2) | <Cmd> lua require'marks'.next_bookmark2()<CR> |
|  | <Plug>(Marks-toggle-bookmark2) | <Cmd> lua require'marks'.toggle_bookmark2()<CR> |
|  | <Plug>(Marks-delete-bookmark2) | <Cmd> lua require'marks'.delete_bookmark2()<CR> |
|  | <Plug>(Marks-set-bookmark2) | <Cmd> lua require'marks'.set_bookmark2()<CR> |
|  | <Plug>(Marks-prev-bookmark1) | <Cmd> lua require'marks'.prev_bookmark1()<CR> |
|  | <Plug>(Marks-next-bookmark1) | <Cmd> lua require'marks'.next_bookmark1()<CR> |
|  | <Plug>(Marks-toggle-bookmark1) | <Cmd> lua require'marks'.toggle_bookmark1()<CR> |
|  | <Plug>(Marks-delete-bookmark1) | <Cmd> lua require'marks'.delete_bookmark1()<CR> |
|  | <Plug>(Marks-set-bookmark1) | <Cmd> lua require'marks'.set_bookmark1()<CR> |
|  | <Plug>(Marks-prev-bookmark0) | <Cmd> lua require'marks'.prev_bookmark0()<CR> |
|  | <Plug>(Marks-next-bookmark0) | <Cmd> lua require'marks'.next_bookmark0()<CR> |
|  | <Plug>(Marks-toggle-bookmark0) | <Cmd> lua require'marks'.toggle_bookmark0()<CR> |
|  | <Plug>(Marks-delete-bookmark0) | <Cmd> lua require'marks'.delete_bookmark0()<CR> |
|  | <Plug>(Marks-set-bookmark0) | <Cmd> lua require'marks'.set_bookmark0()<CR> |
|  | <Plug>(Marks-prev-bookmark) | <Cmd> lua require'marks'.prev_bookmark()<CR> |
|  | <Plug>(Marks-next-bookmark) | <Cmd> lua require'marks'.next_bookmark()<CR> |
|  | <Plug>(Marks-delete-bookmark) | <Cmd> lua require'marks'.delete_bookmark()<CR> |
|  | <Plug>(Marks-prev) | <Cmd> lua require'marks'.prev()<CR> |
|  | <Plug>(Marks-next) | <Cmd> lua require'marks'.next()<CR> |
|  | <Plug>(Marks-preview) | <Cmd> lua require'marks'.preview()<CR> |
|  | <Plug>(Marks-deletebuf) | <Cmd> lua require'marks'.delete_buf()<CR> |
|  | <Plug>(Marks-deleteline) | <Cmd> lua require'marks'.delete_line()<CR> |
|  | <Plug>(Marks-delete) | <Cmd> lua require'marks'.delete()<CR> |
|  | <Plug>(Marks-toggle) | <Cmd> lua require'marks'.toggle()<CR> |
|  | <Plug>(Marks-setnext) | <Cmd> lua require'marks'.set_next()<CR> |
|  | <Plug>(Marks-set) | <Cmd> lua require'marks'.set()<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>luasnip-delete-check |  |
| Comment toggle blockwise with count | <Plug>(comment_toggle_blockwise_count) |  |
| Comment toggle linewise with count | <Plug>(comment_toggle_linewise_count) |  |
| Comment toggle current block | <Plug>(comment_toggle_blockwise_current) |  |
| Comment toggle current line | <Plug>(comment_toggle_linewise_current) |  |
| Comment toggle blockwise | <Plug>(comment_toggle_blockwise) |  |
| Comment toggle linewise | <Plug>(comment_toggle_linewise) |  |
|  | <F11> | :lua require'dap'.step_out()<CR> |
|  | <F10> | :lua require'dap'.step_into()<CR> |
|  | <F9> | :lua require'dap'.step_over()<CR> |
|  | <F8> | :lua require'dap'.continue()<CR> |
|  | <F7> | :lua require'dap'.toggle_breakpoint()<CR> |
|  | <C-J> | :BufferLineMovePrev<CR> |
|  | <C-K> | :BufferLineMoveNext<CR> |
|  | <C-H> | :BufferLineCyclePrev<CR> |
|  | <Plug>NetrwBrowseX | :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))<CR> |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <C-X> | :split term://bash<CR> |
|  | <BS> | :bdelete<CR> |
|  | <C-S> | :w<CR> |
|  | <F4> | :setlocal spell! spelllang=en_us<CR> |
|  | <C-L> | :BufferLineCycleNext<CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | <lt>silent><C-S> | :sort<CR> |
|  | S | <Plug>VSurround |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gS | <Plug>VgSurround |
| Comment toggle blockwise (visual) | gb | <Plug>(comment_toggle_blockwise_visual) |
| Comment toggle linewise (visual) | gc | <Plug>(comment_toggle_linewise_visual) |
|  | gx | <Plug>NetrwBrowseXVis |
|  | g% | <Plug>(MatchitVisualBackward) |
|  | <Plug>VgSurround | :<C-U>call <SNR>45_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR> |
|  | <Plug>VSurround | :<C-U>call <SNR>45_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR> |
|  | <Plug>luasnip-expand-repeat |  |
| Comment toggle blockwise (visual) | <Plug>(comment_toggle_blockwise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR> |
| Comment toggle linewise (visual) | <Plug>(comment_toggle_linewise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR> |
|  | <Plug>NetrwBrowseXVis | :<C-U>call netrw#BrowseXVis()<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
