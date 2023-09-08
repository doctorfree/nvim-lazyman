# Josean Neovim Configuration Information

Josean Martinez [video tutorial](https://youtu.be/vdn_pKJUda8)

- Install and initialize: **`lazyman -w Josean`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Josean`**

## Git repository

[https://github.com/josean-dev/dev-environment-files](https://github.com/josean-dev/dev-environment-files)

## YouTube channel

[https://www.youtube.com/@joseanmartinez](https://www.youtube.com/@joseanmartinez)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Packer managed plugins


## Josean Keymaps

### Normal mode keymaps

| **Description** | Go to previous harpoon mark |
| :---- | :---- |
| **Left hand side** | <code> hp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('harpoon.ui').nav_prev()&lt;CR&gt;</code> |

| **Description** | Go to next harpoon mark |
| :---- | :---- |
| **Left hand side** | <code> hn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('harpoon.ui').nav_next()&lt;CR&gt;</code> |

| **Description** | Mark file with harpoon |
| :---- | :---- |
| **Left hand side** | <code> hm</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require('harpoon.mark').add_file()&lt;CR&gt;</code> |

| **Description** | Refresh file explorer |
| :---- | :---- |
| **Left hand side** | <code> er</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NvimTreeRefresh&lt;CR&gt;</code> |

| **Description** | Collapse file explorer |
| :---- | :---- |
| **Left hand side** | <code> ec</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NvimTreeCollapse&lt;CR&gt;</code> |

| **Description** | Toggle file explorer on current file |
| :---- | :---- |
| **Left hand side** | <code> ef</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NvimTreeFindFileToggle&lt;CR&gt;</code> |

| **Description** | Toggle file explorer |
| :---- | :---- |
| **Left hand side** | <code> ee</code> |
| **Right hand side** | <code>&lt;Cmd&gt;NvimTreeToggle&lt;CR&gt;</code> |

| **Description** | Save session for auto session root dir |
| :---- | :---- |
| **Left hand side** | <code> ws</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SessionSave&lt;CR&gt;</code> |

| **Description** | Restore session for cwd |
| :---- | :---- |
| **Left hand side** | <code> wr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;SessionRestore&lt;CR&gt;</code> |

| **Description** | Find string under cursor in cwd |
| :---- | :---- |
| **Left hand side** | <code> fc</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope grep_string&lt;CR&gt;</code> |

| **Description** | Find string in cwd |
| :---- | :---- |
| **Left hand side** | <code> fs</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope live_grep&lt;CR&gt;</code> |

| **Description** | Fuzzy find recent files |
| :---- | :---- |
| **Left hand side** | <code> fr</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope oldfiles&lt;CR&gt;</code> |

| **Description** | Fuzzy find files in cwd |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Telescope find_files&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> sm</code> |
| **Right hand side** | |

| **Description** | Open current buffer in new tab |
| :---- | :---- |
| **Left hand side** | <code> tf</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnew %&lt;CR&gt;</code> |

| **Description** | Go to previous tab |
| :---- | :---- |
| **Left hand side** | <code> tp</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabp&lt;CR&gt;</code> |

| **Description** | Go to next tab |
| :---- | :---- |
| **Left hand side** | <code> tn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabn&lt;CR&gt;</code> |

| **Description** | Close current tab |
| :---- | :---- |
| **Left hand side** | <code> tx</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabclose&lt;CR&gt;</code> |

| **Description** | Open new tab |
| :---- | :---- |
| **Left hand side** | <code> to</code> |
| **Right hand side** | <code>&lt;Cmd&gt;tabnew&lt;CR&gt;</code> |

| **Description** | Close current split |
| :---- | :---- |
| **Left hand side** | <code> sx</code> |
| **Right hand side** | <code>&lt;Cmd&gt;close&lt;CR&gt;</code> |

| **Description** | Make splits equal size |
| :---- | :---- |
| **Left hand side** | <code> se</code> |
| **Right hand side** | <code>&lt;C-W&gt;=</code> |

| **Description** | Split window horizontally |
| :---- | :---- |
| **Left hand side** | <code> sh</code> |
| **Right hand side** | <code>&lt;C-W&gt;s</code> |

| **Description** | Split window vertically |
| :---- | :---- |
| **Left hand side** | <code> sv</code> |
| **Right hand side** | <code>&lt;C-W&gt;v</code> |

| **Description** | Decrement number |
| :---- | :---- |
| **Left hand side** | <code> -</code> |
| **Right hand side** | <code>&lt;C-X&gt;</code> |

| **Description** | Increment number |
| :---- | :---- |
| **Left hand side** | <code> +</code> |
| **Right hand side** | <code>&lt;C-A&gt;</code> |

| **Description** | Clear search highlights |
| :---- | :---- |
| **Left hand side** | <code> nh</code> |
| **Right hand side** | <code>:nohl&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

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
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>grr</code> |
| **Right hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterLine</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gr</code> |
| **Right hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterOperator</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterVisual</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|execute 'normal!' ReplaceWithRegister#VisualMode()|call ReplaceWithRegister#Operator('visual', "\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterLine</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithRegisterLine", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|call ReplaceWithRegister#SetCount()|execute 'normal! V' . v:count1 . "_\&lt;lt&gt;Esc&gt;"|call ReplaceWithRegister#Operator('visual', "\&lt;lt&gt;Plug&gt;ReplaceWithRegisterLine", 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterExpressionSpecial</code> |
| **Right hand side** | <code>:&lt;C-U&gt;let g:ReplaceWithRegister#expr = getreg('=')&#124;execute 'normal!' v:count1 . '.'&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterOperator</code> |
| **Right hand side** | <code>ReplaceWithRegister#OperatorExpression()</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |


### Visual mode keymaps

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
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gr</code> |
| **Right hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterVisual</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;ReplaceWithRegisterVisual</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setline('.', getline('.'))&#124;execute 'silent! call repeat#setreg("\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister#expr = getreg('=')|endif|call ReplaceWithRegister#Operator('visual', "\&lt;lt&gt;Plug&gt;ReplaceWithRegisterVisual")&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;TmuxNavigateRight&lt;CR&gt;</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

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

