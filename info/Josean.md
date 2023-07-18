## Josean Neovim Configuration Information

Josean Martinez [video tutorial](https://youtu.be/vdn_pKJUda8)

- Install and initialize: **`lazyman -w Josean`**
- Configuration category: [Personal](https://github.com/doctorfree/nvim-lazyman#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Josean`**

[Links to all Lazyman supported configuration documents](https://github.com/doctorfree/nvim-lazyman/wiki/infodocs)

### Git repository

[https://github.com/josean-dev/dev-environment-files](https://github.com/josean-dev/dev-environment-files)

### Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [jose-elias-alvarez/typescript.nvim](https://github.com/jose-elias-alvarez/typescript.nvim)
- [inkarkat/vim-ReplaceWithRegister](https://github.com/inkarkat/vim-ReplaceWithRegister)
- [szw/vim-maximizer](https://github.com/szw/vim-maximizer)
- [bluz71/vim-nightfly-guicolors](https://github.com/bluz71/vim-nightfly-guicolors)
- [tpope/vim-surround](https://github.com/tpope/vim-surround)
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

### Josean Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  |  rs | :LspRestart<CR> |
|  |  gs | <Cmd>Telescope git_status<CR> |
|  |  gb | <Cmd>Telescope git_branches<CR> |
|  |  gfc | <Cmd>Telescope git_bcommits<CR> |
|  |  gc | <Cmd>Telescope git_commits<CR> |
|  |  fh | <Cmd>Telescope help_tags<CR> |
|  |  fb | <Cmd>Telescope buffers<CR> |
|  |  fc | <Cmd>Telescope grep_string<CR> |
|  |  fs | <Cmd>Telescope live_grep<CR> |
|  |  ff | <Cmd>Telescope find_files<CR> |
|  |  e | :NvimTreeToggle<CR> |
|  |  sm | :MaximizerToggle<CR> |
|  |  tp | :tabp<CR> |
|  |  tn | :tabn<CR> |
|  |  tx | :tabclose<CR> |
|  |  to | :tabnew<CR> |
|  |  sx | :close<CR> |
|  |  se | <C-W>= |
|  |  sh | <C-W>s |
|  |  sv | <C-W>v |
|  |  - | <C-X> |
|  |  + | <C-A> |
|  |  nh | :nohl<CR> |
|  | % | <Plug>(MatchitNormalForward) |
| Nvim builtin | & | :&&<CR> |
| Nvim builtin | Y | y$ |
|  | [% | <Plug>(MatchitNormalMultiBackward) |
|  | ]% | <Plug>(MatchitNormalMultiForward) |
|  | cS | <Plug>CSurround |
|  | cs | <Plug>Csurround |
|  | ds | <Plug>Dsurround |
|  | grr | <Plug>ReplaceWithRegisterLine |
|  | gr | <Plug>ReplaceWithRegisterOperator |
|  | g% | <Plug>(MatchitNormalBackward) |
| Comment insert end of line | gcA |  |
| Comment insert above | gcO |  |
| Comment insert below | gco |  |
| Comment toggle current block | gbc |  |
| Comment toggle current line | gcc |  |
| Comment toggle blockwise | gb | <Plug>(comment_toggle_blockwise) |
| Comment toggle linewise | gc | <Plug>(comment_toggle_linewise) |
|  | x | "_x |
|  | ySS | <Plug>YSsurround |
|  | ySs | <Plug>YSsurround |
|  | yss | <Plug>Yssurround |
|  | yS | <Plug>YSurround |
|  | ys | <Plug>Ysurround |
|  | <C-Bslash> | :<C-U>TmuxNavigatePrevious<CR> |
|  | <C-K> | :<C-U>TmuxNavigateUp<CR> |
|  | <C-J> | :<C-U>TmuxNavigateDown<CR> |
|  | <C-H> | :<C-U>TmuxNavigateLeft<CR> |
|  | <Plug>YSurround | <SNR>39_opfunc2('setup') |
|  | <Plug>Ysurround | <SNR>39_opfunc('setup') |
|  | <Plug>YSsurround | <SNR>39_opfunc2('setup').'_' |
|  | <Plug>Yssurround | '^'.v:count1.<SNR>39_opfunc('setup').'g_' |
|  | <Plug>CSurround | :<C-U>call <SNR>39_changesurround(1)<CR> |
|  | <Plug>Csurround | :<C-U>call <SNR>39_changesurround()<CR> |
|  | <Plug>Dsurround | :<C-U>call <SNR>39_dosurround(<SNR>39_inputtarget())<CR> |
|  | <Plug>SurroundRepeat | . |
|  | <F3> | :MaximizerToggle<CR> |
|  | <Plug>ReplaceWithRegisterVisual | :<C-U>call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<lt>Plug>ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|execute 'normal!' ReplaceWithRegister#VisualMode()|call ReplaceWithRegister#Operator('visual', "\<lt>Plug>ReplaceWithRegisterVisual")<CR> |
|  | <Plug>ReplaceWithRegisterLine | :<C-U>call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<lt>Plug>ReplaceWithRegisterLine", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|call ReplaceWithRegister#SetCount()|execute 'normal! V' . v:count1 . "_\<lt>Esc>"|call ReplaceWithRegister#Operator('visual', "\<lt>Plug>ReplaceWithRegisterLine", 1)<CR> |
|  | <Plug>ReplaceWithRegisterExpressionSpecial | :<C-U>let g:ReplaceWithRegister#expr = getreg('=')|execute 'normal!' v:count1 . '.'<CR> |
|  | <Plug>ReplaceWithRegisterOperator | ReplaceWithRegister#OperatorExpression() |
|  | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>luasnip-delete-check |  |
| Comment toggle blockwise with count | <Plug>(comment_toggle_blockwise_count) |  |
| Comment toggle linewise with count | <Plug>(comment_toggle_linewise_count) |  |
| Comment toggle current block | <Plug>(comment_toggle_blockwise_current) |  |
| Comment toggle current line | <Plug>(comment_toggle_linewise_current) |  |
| Comment toggle blockwise | <Plug>(comment_toggle_blockwise) |  |
| Comment toggle linewise | <Plug>(comment_toggle_linewise) |  |
|  | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> |
|  | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> |
|  | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> |
|  | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> |
|  | <C-L> | :<C-U>TmuxNavigateRight<CR> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | # | y?\V<C-R>"<CR> |
|  | % | <Plug>(MatchitVisualForward) |
| Nvim builtin | * | y/\V<C-R>"<CR> |
|  | S | <Plug>VSurround |
|  | [% | <Plug>(MatchitVisualMultiBackward) |
|  | ]% | <Plug>(MatchitVisualMultiForward) |
|  | a% | <Plug>(MatchitVisualTextObject) |
|  | gS | <Plug>VgSurround |
|  | gr | <Plug>ReplaceWithRegisterVisual |
|  | g% | <Plug>(MatchitVisualBackward) |
| Comment toggle blockwise (visual) | gb | <Plug>(comment_toggle_blockwise_visual) |
| Comment toggle linewise (visual) | gc | <Plug>(comment_toggle_linewise_visual) |
|  | <C-Bslash> | :<C-U>TmuxNavigatePrevious<CR> |
|  | <C-K> | :<C-U>TmuxNavigateUp<CR> |
|  | <C-J> | :<C-U>TmuxNavigateDown<CR> |
|  | <C-H> | :<C-U>TmuxNavigateLeft<CR> |
|  | <Plug>VgSurround | :<C-U>call <SNR>39_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)<CR> |
|  | <Plug>VSurround | :<C-U>call <SNR>39_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)<CR> |
|  | <F3> | :MaximizerToggle<CR>gv |
|  | <Plug>ReplaceWithRegisterVisual | :<C-U>call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<lt>Plug>ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|call ReplaceWithRegister#Operator('visual', "\<lt>Plug>ReplaceWithRegisterVisual")<CR> |
|  | <Plug>luasnip-expand-repeat |  |
| Comment toggle blockwise (visual) | <Plug>(comment_toggle_blockwise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())<CR> |
| Comment toggle linewise (visual) | <Plug>(comment_toggle_linewise_visual) | <Esc><Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())<CR> |
|  | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) |
|  | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` |
|  | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` |
|  | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |
|  | <C-L> | :<C-U>TmuxNavigateRight<CR> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | % | <Plug>(MatchitOperationForward) |
|  | [% | <Plug>(MatchitOperationMultiBackward) |
|  | ]% | <Plug>(MatchitOperationMultiForward) |
|  | g% | <Plug>(MatchitOperationBackward) |
|  | <C-Bslash> | :<C-U>TmuxNavigatePrevious<CR> |
|  | <C-K> | :<C-U>TmuxNavigateUp<CR> |
|  | <C-J> | :<C-U>TmuxNavigateDown<CR> |
|  | <C-H> | :<C-U>TmuxNavigateLeft<CR> |
|  | <Plug>luasnip-expand-repeat |  |
|  | <Plug>(MatchitOperationMultiForward) | :<C-U>call matchit#MultiMatch("W",  "o")<CR> |
|  | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR> |
|  | <Plug>(MatchitOperationBackward) | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|  | <Plug>(MatchitOperationForward) | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |
|  | <C-L> | :<C-U>TmuxNavigateRight<CR> |
