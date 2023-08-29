---
title: LAZYMANKEYS
section: 5
header: User Manual
footer: lazyman 2.1.8
date: March 13, 2023
---

# LAZYMANKEYS

## NAME

lazyman-keymaps - key mappings in the Lazyman Neovim configuration

## DESCRIPTION

Extended information on the `Lazyman` Neovim configuration can be viewed with
the command `lazyman -N nvim-Lazyman info` which opens a browser to display
[this information document](https://github.com/doctorfree/nvim-lazyman/blob/main/info/Lazyman.md).

Vimdoc help for `Lazyman keymaps` can be viewed with `:h Lazyman-Keymaps` or `,hk`

The Lazyman Neovim configuration includes a custom cheatsheet for
easy reference using the `:Cheatsheet` command. The Lazyman
cheatsheet includes the following key mappings.

## Custom Cheatsheet Lazyman Mappings

- Asciiville Command : `<leader>av`
- Htop Command : `<leader>H`
- Lazygit Command : `<leader>G`
- Lazygit Root Dir : `<leader>gg`
- Lazygit Current Dir : `<leader>gG`
- Generate .gitignore : `<leader>gi`
- Lazy Menu : `<leader>L`
- Lazy Update : `<leader>U`
- Lazyman Configuration : `<leader>lc`
- Lazyman Help : `<leader>hl`
- Lazyman Keymaps : `<leader>hk`
- Lazyman Menu : `<leader>lm`
- Mason Menu : `<leader>M`
- Options : `<leader>o`
- Toggle Conceal Level : `<leader>uc`
- Toggle Line Numbers : `<leader>ul`
- Toggle Spelling : `<leader>us`
- Toggle Transparency : `<leader>ut`
- Toggle File Tree : `<leader>T`
- Toggle Word Wrap : `<leader>uw`
- Other Window : `<leader>ww`
- Delete Window : `<leader>wd`
- Split Window Below : `<leader>w-`
- Split Window Right : <code><leader>w&#124;</code>
- Last Tab : `<leader><tab>l`
- First Tab : `<leader><tab>f`
- New Tab : `<leader><tab><tab>`
- Next Tab : `<leader><tab>]`
- Close Tab : `<leader><tab>d`
- Previous Tab : `<leader><tab>[]`

## Custom Cheatsheet Plugin Mappings

- Open Diagnostics Float : `<leader>de`
- Diagnostics Location List : `<leader>dq`
- Toggle Diagnostics : `<leader>dt`
- Line Diagnostics : `<leader>cd`
- LSP Info : `<leader>cl`
- Code Action : `<leader>ca`
- Format Document : `<leader>cf`
- Rename : `<leader>cr`
- Signature Help : `<leader>ls`
- Toggle Breakpoint : `<leader>B`
- Alpha Dashboard : `<leader>ad`
- Noice Last Message : `<leader>snl`
- Noice History : `<leader>snh`
- Noice All : `<leader>sna`
- Delete All Notifications : `<leader>un`
- Toggle Treesitter Join : `<leader>tt`
- Treesitter Join : `<leader>tj`
- Treesitter Split : `<leader>ts`
- Explorer (root dir)\_ : `<leader>e`
- Explorer Float \_ : `<leader>E`
- Find in Files (Grep) : `<leader>/`
- Command History : `<leader>:`
- Find Files (root dir) : `<leader><space>`
- Find Files (cwd) : `<leader>fF`
- Git Commits : `<leader>gc`
- Git Commits : `<leader>gm`
- Git Status : `<leader>gs`
- Telescope Auto Commands : `<leader>sa`
- Telescope Command History : `<leader>sc`
- Telescope Commands : `<leader>sC`
- Telescope Diagnostics : `<leader>sd`
- Live Grep (root dir) : `<leader>sg`
- Live Grep (cwd) : `<leader>sG`
- Search Hightlight Groups : `<leader>sH`
- Telescope Man Pages : `<leader>sM`
- Jump to Mark : `<leader>sm`
- Options : `<leader>so`
- Resume : `<leader>sR`
- Grep Word (root dir) : `<leader>sw`
- Grep Word (cwd) : `<leader>sW`
- Colorscheme with Preview : `<leader>uC`
- Goto Symbol : `<leader>ss`
- Goto Symbol (workspace) : `<leader>sS`
- Document Diagnostics (Trouble) : `<leader>xx`
- Workspace Diagnostics (Trouble) : `<leader>xX`
- Location List (Trouble) : `<leader>xL`
- Quickfix List (Trouble) : `<leader>xQ`
- Todo (Trouble) : `<leader>xt`
- Todo/Fix/Fixme (Trouble) : `<leader>xT`
- Todo : `<leader>st`
- Restore Session (persistence) : `<leader>ps`
- Restore Last Session (persistence) : `<leader>pl`
- Don't Save Current Session : `<leader>pd`
- Close Buffer : `<leader>D`
- Commands : `<leader>sc`
- Strings : `<leader>st`
- Help : `<leader>s?`
- Headings : `<leader>sh`
- Keymaps : `<leader>sk`
- Vim Options : `<leader>sO`
- Projects : `<leader>sp`
- Registers : `<leader>sR`
- Text Under Cursor : `<leader>ss`
- Emoji : `<leader>sS`
- Search History : `<leader>s:`
- Command History : `<leader>s;`
- Fuzzy Search : `<leader>sf`
- Branches : `<leader>gh`
- File Browser : `<leader>fb`
- Zoxide : `<leader>fz`
- Open File : `<leader>ff`
- Recent Files : `<leader>fr`
- Run 'make' : `<leader>mm`
- Telescope : `<leader>mt`
- Buffer List : `<leader>bb`

### Terminal mappings

- Terminal Send : `<leader>ts`
- Terminal Toggle : `<leader>to`
- New Terminal Toggle : `<leader>tO`
- Terminal Run : `<leader>tr`
- New Terminal Run : `<leader>tR`
- Terminal Kill : `<leader>tk`
- Terminal Next : `<leader>t]`
- Terminal Prev : `<leader>t[`
- Move Below Right : `<leader>tl`
- Move Bottom Right : `<leader>tL`
- Move Below Right New : `<leader>th`
- Move Bottom Right New : `<leader>tH`
- Move Float : `<leader>tf`

### Gitsigns mappings

- Diff This : `<leader>ghd`
- Diff This ~ : `<leader>ghD`
- Stage Buffer : `<leader>ghS`
- Reset Buffer : `<leader>ghR`
- Stage Hunk : `<leader>ghs`
- Undo Stage Hunk : `<leader>ghu`
- Reset hunk : `<leader>ghr`
- Preview Hunk : `<leader>ghp`
- Blame Current Line : `<leader>ghb`
- Next Hunk : `]h`
- Previous Hunk : `[h`

## KEYMAPS

This list of keymaps in `nvim-Lazyman` was generated using the
[information.sh](https://github.com/doctorfree/nvim-lazyman/blob/main/scripts/information.sh)
and [keymaps.sh](https://github.com/doctorfree/nvim-lazyman/blob/main/scripts/keymaps.sh)
scripts.

### Normal mode keymaps

| Description                     | LHS                                | RHS                                                    |
| ------------------------------- | ---------------------------------- | ------------------------------------------------------ | ---------- | ----------------- |
|                                 | %                                  | <Plug>(MatchitNormalForward)                           |
| Nvim builtin                    | &                                  | :&&<CR>                                                |
| Mason Menu                      | ,M                                 | <Cmd>Mason<CR>                                         |
| Move Float                      | ,tf                                |                                                        |
| Move Bottom Right New           | ,tH                                |                                                        |
| Move Below Right New            | ,th                                |                                                        |
| Move Bottom Right               | ,tL                                |                                                        |
| Move Below Right                | ,tl                                |                                                        |
| Terminal Prev                   | ,t[                                |                                                        |
| Terminal Next                   | ,t]                                |                                                        |
| Terminal Kill                   | ,tk                                |                                                        |
| New Terminal Run                | ,tR                                |                                                        |
| Terminal Run                    | ,tr                                |                                                        |
| New Terminal Toggle             | ,tO                                |                                                        |
| Terminal Toggle                 | ,to                                |                                                        |
| Toggle Transparency             | ,ut                                |                                                        |
| Close Buffer                    | ,D                                 |                                                        |
|                                 | ,A                                 |                                                        |
| Explorer (root dir)             | ,e                                 |                                                        |
| Explorer Float                  | ,E                                 |                                                        |
| Terminal Send                   | ,ts                                |                                                        |
| Treesitter Join                 | ,tj                                |                                                        |
| Toggle Treesitter Join          | ,tt                                |                                                        |
| Delete all Notifications        | ,un                                |                                                        |
| Noice Last Message              | ,snl                               |                                                        |
| Noice All                       | ,sna                               |                                                        |
| Noice History                   | ,snh                               |                                                        |
| Colorscheme with preview        | ,uC                                |                                                        |
| Word (cwd)                      | ,sW                                |                                                        |
| Word (root dir)                 | ,sw                                |                                                        |
| Options                         | ,so                                |                                                        |
| Jump to Mark                    | ,sm                                |                                                        |
| Man Pages                       | ,sM                                |                                                        |
| Search Highlight Groups         | ,sH                                |                                                        |
| Grep (cwd)                      | ,sG                                |                                                        |
| Grep (root dir)                 | ,sg                                |                                                        |
| Diagnostics                     | ,sd                                |                                                        |
| Commands                        | ,sC                                |                                                        |
| Buffer                          | ,sb                                |                                                        |
| Auto Commands                   | ,sa                                |                                                        |
| Command History                 | ,:                                 |                                                        |
| Find in Files (Grep)            | ,/                                 |                                                        |
| Switch Buffer                   | ,,                                 |                                                        |
| Bufferlist                      | ,B                                 |                                                        |
| Telescope                       | ,mt                                |                                                        |
| Run make                        | ,mm                                |                                                        |
| Recent files                    | ,fr                                |                                                        |
| Open file                       | ,ff                                |                                                        |
| Zoxide                          | ,fz                                |                                                        |
| Filebrowser                     | ,fb                                |                                                        |
| Commits                         | ,gm                                |                                                        |
| Status                          | ,gs                                |                                                        |
| Branches                        | ,gh                                |                                                        |
| Fuzzy search                    | ,sf                                |                                                        |
| Command history                 | ,s;                                |                                                        |
| Search History                  | ,s:                                |                                                        |
| Goto Symbol (Workspace)         | ,sS                                |                                                        |
| Goto Symbol                     | ,ss                                |                                                        |
| Resume                          | ,sR                                |                                                        |
| Vim Options                     | ,sO                                |                                                        |
| Key Maps                        | ,sk                                |                                                        |
| Help Pages                      | ,sh                                |                                                        |
| Help                            | ,s?                                |                                                        |
| Command History                 | ,sc                                |                                                        |
| Find Files (root dir)           | ,                                  |                                                        |
| Eval                            | ,de                                |                                                        |
| Dap UI                          | ,du                                |                                                        |
| Todo                            | ,st                                |                                                        |
| Todo/Fix/Fixme (Trouble)        | ,xT                                |                                                        |
| Todo (Trouble)                  | ,xt                                |                                                        |
| Step Out                        | ,do                                |                                                        |
| Step Over                       | ,dO                                |                                                        |
| Pause                           | ,dp                                |                                                        |
| Toggle REPL                     | ,dr                                |                                                        |
| Widgets                         | ,dw                                |                                                        |
| Terminate                       | ,dt                                |                                                        |
| Go to line (no execute)         | ,dg                                |                                                        |
| Run to Cursor                   | ,dC                                |                                                        |
| Continue                        | ,dc                                |                                                        |
| Toggle Breakpoint               | ,db                                |                                                        |
| Breakpoint Condition            | ,dB                                |                                                        |
| Run Last                        | ,dl                                |                                                        |
| Up                              | ,dk                                |                                                        |
| Down                            | ,dj                                |                                                        |
| Step Into                       | ,di                                |                                                        |
| Session                         | ,ds                                |                                                        |
| Workspace Diagnostics (Trouble) | ,xX                                |                                                        |
| Document Diagnostics (Trouble)  | ,xx                                |                                                        |
| Quickfix List (Trouble)         | ,xQ                                |                                                        |
| Location List (Trouble)         | ,xL                                |                                                        |
| Toggle zen mode                 | ,z                                 |                                                        |
| F                               | F                                  |                                                        |
| Leap backward to                | S                                  |                                                        |
| T                               | T                                  |                                                        |
| Nvim builtin                    | Y                                  | y$                                                     |
|                                 | [%                                 | <Plug>(MatchitNormalMultiBackward)                     |
| Prev Reference                  | [[                                 |                                                        |
| Previous todo comment           | [t                                 |                                                        |
| Previous trouble/quickfix item  | [q                                 |                                                        |
|                                 | ]%                                 | <Plug>(MatchitNormalMultiForward)                      |
| Next Reference                  | ]]                                 |                                                        |
| Next todo comment               | ]t                                 |                                                        |
| Next trouble/quickfix item      | ]q                                 |                                                        |
| f                               | f                                  |                                                        |
|                                 | g%                                 | <Plug>(MatchitNormalBackward)                          |
| Leap from windows               | gs                                 |                                                        |
| Leap forward to                 | s                                  |                                                        |
| t                               | t                                  |                                                        |
|                                 | y<C-G>                             | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|                                 | <Plug>(MatchitNormalMultiForward)  | :<C-U>call matchit#MultiMatch("W", "n")<CR>            |
|                                 | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>           |
|                                 | <Plug>(MatchitNormalBackward)      | :<C-U>call matchit#Match_wrapper('',0,'n')<CR>         |
|                                 | <Plug>(MatchitNormalForward)       | :<C-U>call matchit#Match_wrapper('',1,'n')<CR>         |
|                                 | <Plug>fugitive:                    |                                                        |
|                                 | <Plug>fugitive:y<C-G>              | :<C-U>call setreg(v:register, fugitive#Object(@%))<CR> |
|                                 | <F9>                               | :call NextColor(0)<CR>                                 |
|                                 | <F8>                               | :call NextColor(1)<CR>                                 |
|                                 | <F7>                               | :call NextColor(-1)<CR>                                |
| Search in buffer                | <C-S>                              |                                                        |
| Nvim builtin                    | <C-L>                              | <Cmd>nohlsearch                                        | diffupdate | normal! <C-L><CR> |

### Visual mode keymaps

| Description       | LHS                                | RHS                                                                     |
| ----------------- | ---------------------------------- | ----------------------------------------------------------------------- | ----------------- | ------------- |
| Nvim builtin      | #                                  | y?\V<C-R>"<CR>                                                          |
|                   | %                                  | <Plug>(MatchitVisualForward)                                            |
| Nvim builtin      | \*                                 | y/\V<C-R>"<CR>                                                          |
| Terminal Send     | ,ts                                |                                                                         |
| Eval              | ,de                                |                                                                         |
| F                 | F                                  |                                                                         |
| Leap backward to  | S                                  |                                                                         |
| T                 | T                                  |                                                                         |
|                   | [%                                 | <Plug>(MatchitVisualMultiBackward)                                      |
|                   | ]%                                 | <Plug>(MatchitVisualMultiForward)                                       |
|                   | a%                                 | <Plug>(MatchitVisualTextObject)                                         |
| f                 | f                                  |                                                                         |
|                   | g%                                 | <Plug>(MatchitVisualBackward)                                           |
| Leap from windows | gs                                 |                                                                         |
| Leap forward to   | s                                  |                                                                         |
| t                 | t                                  |                                                                         |
|                   | <Plug>(MatchitVisualTextObject)    | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)    |
|                   | <Plug>(MatchitVisualMultiForward)  | :<C-U>call matchit#MultiMatch("W", "n")<CR>m'gv``|
|                   | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``                      |
|                   | <Plug>(MatchitVisualBackward)      | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``|
|                   | <Plug>(MatchitVisualForward)       | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` |

### Operator mode keymaps

| Description       | LHS                                   | RHS                                            |
| ----------------- | ------------------------------------- | ---------------------------------------------- |
|                   | %                                     | <Plug>(MatchitOperationForward)                |
| F                 | F                                     |                                                |
| Leap backward to  | S                                     |                                                |
| T                 | T                                     |                                                |
|                   | [%                                    | <Plug>(MatchitOperationMultiBackward)          |
|                   | ]%                                    | <Plug>(MatchitOperationMultiForward)           |
| f                 | f                                     |                                                |
|                   | g%                                    | <Plug>(MatchitOperationBackward)               |
| Leap from windows | gs                                    |                                                |
| Leap forward to   | s                                     |                                                |
| t                 | t                                     |                                                |
|                   | <Plug>(MatchitOperationMultiForward)  | :<C-U>call matchit#MultiMatch("W", "o")<CR>    |
|                   | <Plug>(MatchitOperationMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "o")<CR>   |
|                   | <Plug>(MatchitOperationBackward)      | :<C-U>call matchit#Match_wrapper('',0,'o')<CR> |
|                   | <Plug>(MatchitOperationForward)       | :<C-U>call matchit#Match_wrapper('',1,'o')<CR> |

## SEE ALSO

**lazyman**(1), **nvims**(1)
