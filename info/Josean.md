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
| Go to previous harpoon mark | <code> hp</code> | <code>&lt;Cmd&gt;lua require('harpoon.ui').nav_prev()&lt;CR&gt;</code> |
| Go to next harpoon mark | <code> hn</code> | <code>&lt;Cmd&gt;lua require('harpoon.ui').nav_next()&lt;CR&gt;</code> |
| Mark file with harpoon | <code> hm</code> | <code>&lt;Cmd&gt;lua require('harpoon.mark').add_file()&lt;CR&gt;</code> |
| Save session for auto session root dir | <code> ws</code> | <code>&lt;Cmd&gt;SessionSave&lt;CR&gt;</code> |
| Restore session for cwd | <code> wr</code> | <code>&lt;Cmd&gt;SessionRestore&lt;CR&gt;</code> |
| Refresh file explorer | <code> er</code> | <code>&lt;Cmd&gt;NvimTreeRefresh&lt;CR&gt;</code> |
| Collapse file explorer | <code> ec</code> | <code>&lt;Cmd&gt;NvimTreeCollapse&lt;CR&gt;</code> |
| Toggle file explorer on current file | <code> ef</code> | <code>&lt;Cmd&gt;NvimTreeFindFileToggle&lt;CR&gt;</code> |
| Toggle file explorer | <code> ee</code> | <code>&lt;Cmd&gt;NvimTreeToggle&lt;CR&gt;</code> |
| Find string under cursor in cwd | <code> fc</code> | <code>&lt;Cmd&gt;Telescope grep_string&lt;CR&gt;</code> |
| Find string in cwd | <code> fs</code> | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |
| Fuzzy find recent files | <code> fr</code> | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |
| Fuzzy find files in cwd | <code> ff</code> | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |
|  | <code> sm</code> |  |
| Open current buffer in new tab | <code> tf</code> | <code>&lt;Cmd&gt;tabnew %&lt;CR&gt;</code> |
| Go to previous tab | <code> tp</code> | <code>&lt;Cmd&gt;tabp&lt;CR&gt;</code> |
| Go to next tab | <code> tn</code> | <code>&lt;Cmd&gt;tabn&lt;CR&gt;</code> |
| Close current tab | <code> tx</code> | <code>&lt;Cmd&gt;tabclose&lt;CR&gt;</code> |
| Open new tab | <code> to</code> | <code>&lt;Cmd&gt;tabnew&lt;CR&gt;</code> |
| Close current split | <code> sx</code> | <code>&lt;Cmd&gt;close&lt;CR&gt;</code> |
| Make splits equal size | <code> se</code> | <code>&lt;C-W&gt;=</code> |
| Split window horizontally | <code> sh</code> | <code>&lt;C-W&gt;s</code> |
| Split window vertically | <code> sv</code> | <code>&lt;C-W&gt;v</code> |
| Decrement number | <code> -</code> | <code>&lt;C-X&gt;</code> |
| Increment number | <code> +</code> | <code>&lt;C-A&gt;</code> |
| Clear search highlights | <code> nh</code> | <code>:nohl&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |
| Nvim builtin | <code>&</code> | <code>:&&&lt;CR&gt;</code> |
| Nvim builtin | <code>Y</code> | <code>y$</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |
|  | <code>grr</code> | <code>&lt;Plug&gt;ReplaceWithRegisterLine</code> |
|  | <code>gr</code> | <code>&lt;Plug&gt;ReplaceWithRegisterOperator</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitNormalForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'n')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;ReplaceWithRegisterVisual</code> | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|execute 'normal!' ReplaceWithRegister#VisualMode()|call ReplaceWithRegister#Operator('visual', "\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;ReplaceWithRegisterLine</code> | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithRegisterLine", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|call ReplaceWithRegister#SetCount()|execute 'normal! V' . v:count1 . "_\&lt;lt&gt;Esc&gt;"|call ReplaceWithRegister#Operator('visual', "\&lt;lt&gt;Plug&gt;ReplaceWithRegisterLine", 1)&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;ReplaceWithRegisterExpressionSpecial</code> | <code>:&lt;C-U&gt;let g:ReplaceWithRegister#expr = getreg('=')&#124;execute 'normal!' v:count1 . '.'&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;ReplaceWithRegisterOperator</code> | <code>ReplaceWithRegister#OperatorExpression()</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;PlenaryTestFile</code> | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |

#### visual mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
| Nvim builtin | <code>#</code> | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |
| Nvim builtin | <code>*</code> | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>a%</code> | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |
|  | <code>gr</code> | <code>&lt;Plug&gt;ReplaceWithRegisterVisual</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualTextObject)</code> | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)o&lt;Plug&gt;(MatchitVisualMultiForward)</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "n")&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'v')&lt;CR&gt;m'gv``</code> |
|  | <code>&lt;Plug&gt;(MatchitVisualForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'v')&lt;CR&gt;:if col("''") != col("$") &#124; exe ":normal! m'" | endif&lt;CR&gt;gv``</code> |
|  | <code>&lt;Plug&gt;ReplaceWithRegisterVisual</code> | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|call ReplaceWithRegister#Operator('visual', "\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual")&lt;CR&gt;</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |

#### operator mode keymaps

| Description | LHS | RHS |
| ----------- | --- | --- |
|  | <code>%</code> | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |
|  | <code>[%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> |
|  | <code>]%</code> | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> |
|  | <code>g%</code> | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiForward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("W",  "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationMultiBackward)</code> | <code>:&lt;C-U&gt;call matchit#MultiMatch("bW", "o")&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',0,'o')&lt;CR&gt;</code> |
|  | <code>&lt;Plug&gt;(MatchitOperationForward)</code> | <code>:&lt;C-U&gt;call matchit#Match_wrapper('',1,'o')&lt;CR&gt;</code> |
|  | <code>&lt;C-Bslash&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigatePrevious&lt;CR&gt;</code> |
|  | <code>&lt;C-K&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateUp&lt;CR&gt;</code> |
|  | <code>&lt;C-J&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateDown&lt;CR&gt;</code> |
|  | <code>&lt;C-H&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateLeft&lt;CR&gt;</code> |
|  | <code>&lt;C-L&gt;</code> | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |
