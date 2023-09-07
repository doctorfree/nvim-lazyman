## Josean Neovim Configuration Information

Josean Martinez [video tutorial](https://youtu.be/vdn_pKJUda8)

- Install and initialize: **`lazyman -w Josean`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Josean`**

### Git repository

[https://github.com/josean-dev/dev-environment-files](https://github.com/josean-dev/dev-environment-files)

### YouTube channel

[https://www.youtube.com/@joseanmartinez](https://www.youtube.com/@joseanmartinez)

### Packer managed plugins


### Josean Keymaps

#### normal mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Go to previous harpoon mark | ` hp` | `<Cmd>lua require('harpoon.ui').nav_prev()<CR>` |
| Go to next harpoon mark | ` hn` | `<Cmd>lua require('harpoon.ui').nav_next()<CR>` |
| Mark file with harpoon | ` hm` | `<Cmd>lua require('harpoon.mark').add_file()<CR>` |
| Save session for auto session root dir | ` ws` | `<Cmd>SessionSave<CR>` |
| Restore session for cwd | ` wr` | `<Cmd>SessionRestore<CR>` |
| Refresh file explorer | ` er` | `<Cmd>NvimTreeRefresh<CR>` |
| Collapse file explorer | ` ec` | `<Cmd>NvimTreeCollapse<CR>` |
| Toggle file explorer on current file | ` ef` | `<Cmd>NvimTreeFindFileToggle<CR>` |
| Toggle file explorer | ` ee` | `<Cmd>NvimTreeToggle<CR>` |
| Find string under cursor in cwd | ` fc` | `<Cmd>Telescope grep_string<CR>` |
| Find string in cwd | ` fs` | `<Cmd>Telescope live_grep<CR>` |
| Fuzzy find recent files | ` fr` | `<Cmd>Telescope oldfiles<CR>` |
| Fuzzy find files in cwd | ` ff` | `<Cmd>Telescope find_files<CR>` |
|  | ` sm` |  |
| Open current buffer in new tab | ` tf` | `<Cmd>tabnew %<CR>` |
| Go to previous tab | ` tp` | `<Cmd>tabp<CR>` |
| Go to next tab | ` tn` | `<Cmd>tabn<CR>` |
| Close current tab | ` tx` | `<Cmd>tabclose<CR>` |
| Open new tab | ` to` | `<Cmd>tabnew<CR>` |
| Close current split | ` sx` | `<Cmd>close<CR>` |
| Make splits equal size | ` se` | `<C-W>=` |
| Split window horizontally | ` sh` | `<C-W>s` |
| Split window vertically | ` sv` | `<C-W>v` |
| Decrement number | ` -` | `<C-X>` |
| Increment number | ` +` | `<C-A>` |
| Clear search highlights | ` nh` | `:nohl<CR>` |
|  | `%` | `<Plug>(MatchitNormalForward)` |
| Nvim builtin | `&` | `:&&<CR>` |
| Nvim builtin | `Y` | `y$` |
|  | `[%` | `<Plug>(MatchitNormalMultiBackward)` |
|  | `]%` | `<Plug>(MatchitNormalMultiForward)` |
|  | `g%` | `<Plug>(MatchitNormalBackward)` |
|  | `grr` | `<Plug>ReplaceWithRegisterLine` |
|  | `gr` | `<Plug>ReplaceWithRegisterOperator` |
|  | `<Plug>(MatchitNormalMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>` |
|  | `<Plug>(MatchitNormalMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>` |
|  | `<Plug>(MatchitNormalBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'n')<CR>` |
|  | `<Plug>(MatchitNormalForward)` | `:<C-U>call matchit#Match_wrapper('',1,'n')<CR>` |
|  | `<C-Bslash>` | `:<C-U>TmuxNavigatePrevious<CR>` |
|  | `<C-K>` | `:<C-U>TmuxNavigateUp<CR>` |
|  | `<C-J>` | `:<C-U>TmuxNavigateDown<CR>` |
|  | `<C-H>` | `:<C-U>TmuxNavigateLeft<CR>` |
|  | `<Plug>ReplaceWithRegisterVisual` | `:<C-U>call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<lt>Plug>ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|execute 'normal!' ReplaceWithRegister#VisualMode()|call ReplaceWithRegister#Operator('visual', "\<lt>Plug>ReplaceWithRegisterVisual")<CR>` |
|  | `<Plug>ReplaceWithRegisterLine` | `:<C-U>call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<lt>Plug>ReplaceWithRegisterLine", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|call ReplaceWithRegister#SetCount()|execute 'normal! V' . v:count1 . "_\<lt>Esc>"|call ReplaceWithRegister#Operator('visual', "\<lt>Plug>ReplaceWithRegisterLine", 1)<CR>` |
|  | `<Plug>ReplaceWithRegisterExpressionSpecial` | `:<C-U>let g:ReplaceWithRegister#expr = getreg('=')|execute 'normal!' v:count1 . '.'<CR>` |
|  | `<Plug>ReplaceWithRegisterOperator` | `ReplaceWithRegister#OperatorExpression()` |
|  | `<Plug>PlenaryTestFile` | `:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR>` |
|  | `<C-L>` | `:<C-U>TmuxNavigateRight<CR>` |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | `#` | `y?\V<C-R>"<CR>` |
|  | `%` | `<Plug>(MatchitVisualForward)` |
| Nvim builtin | `*` | `y/\V<C-R>"<CR>` |
|  | `[%` | `<Plug>(MatchitVisualMultiBackward)` |
|  | `]%` | `<Plug>(MatchitVisualMultiForward)` |
|  | `a%` | `<Plug>(MatchitVisualTextObject)` |
|  | `g%` | `<Plug>(MatchitVisualBackward)` |
|  | `gr` | `<Plug>ReplaceWithRegisterVisual` |
|  | `<Plug>(MatchitVisualTextObject)` | `<Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)` |
|  | `<Plug>(MatchitVisualMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``` |
|  | `<Plug>(MatchitVisualBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``` |
|  | `<Plug>(MatchitVisualForward)` | `:<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv``` |
|  | `<Plug>ReplaceWithRegisterVisual` | `:<C-U>call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<lt>Plug>ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|call ReplaceWithRegister#Operator('visual', "\<lt>Plug>ReplaceWithRegisterVisual")<CR>` |
|  | `<C-Bslash>` | `:<C-U>TmuxNavigatePrevious<CR>` |
|  | `<C-K>` | `:<C-U>TmuxNavigateUp<CR>` |
|  | `<C-J>` | `:<C-U>TmuxNavigateDown<CR>` |
|  | `<C-H>` | `:<C-U>TmuxNavigateLeft<CR>` |
|  | `<C-L>` | `:<C-U>TmuxNavigateRight<CR>` |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | `%` | `<Plug>(MatchitOperationForward)` |
|  | `[%` | `<Plug>(MatchitOperationMultiBackward)` |
|  | `]%` | `<Plug>(MatchitOperationMultiForward)` |
|  | `g%` | `<Plug>(MatchitOperationBackward)` |
|  | `<Plug>(MatchitOperationMultiForward)` | `:<C-U>call matchit#MultiMatch("W",  "o")<CR>` |
|  | `<Plug>(MatchitOperationMultiBackward)` | `:<C-U>call matchit#MultiMatch("bW", "o")<CR>` |
|  | `<Plug>(MatchitOperationBackward)` | `:<C-U>call matchit#Match_wrapper('',0,'o')<CR>` |
|  | `<Plug>(MatchitOperationForward)` | `:<C-U>call matchit#Match_wrapper('',1,'o')<CR>` |
|  | `<C-Bslash>` | `:<C-U>TmuxNavigatePrevious<CR>` |
|  | `<C-K>` | `:<C-U>TmuxNavigateUp<CR>` |
|  | `<C-J>` | `:<C-U>TmuxNavigateDown<CR>` |
|  | `<C-H>` | `:<C-U>TmuxNavigateLeft<CR>` |
|  | `<C-L>` | `:<C-U>TmuxNavigateRight<CR>` |
