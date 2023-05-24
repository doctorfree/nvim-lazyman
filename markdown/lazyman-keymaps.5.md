---
title: LAZYMANKEYS
section: 5
header: User Manual
footer: lazyman 1.0.2
date: March 13, 2023
---

# LAZYMANKEYS

## NAME

lazyman-keymaps - key mappings in the Lazyman Neovim configurations

## DESCRIPTION

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

## List of Key Mappings

This list of keymaps was generated using the following commands
with a file open in the `nvim-Lazyman` Neovim configuration:

```
:redir! > /tmp/lazyman-keymaps.5.md
:silent verbose map
:redir END
```

## KEYMAPS

```
n  ,ghD        *@<Lua 1272: ~/.config/nvim-Lazyman/lua/plugins/gitsigns.lua:32>
                 Diff This ~
	Last set from Lua
n  ,ghd        *@<Lua 1292: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:1052>
                 Diff This
	Last set from Lua
n  ,ghb        *@<Lua 1070: ~/.config/nvim-Lazyman/lua/plugins/gitsigns.lua:30>
                 Blame Line
	Last set from Lua
n  ,ghp        *@<Lua 1291: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:708>
                 Preview Hunk
	Last set from Lua
n  ,ghR        *@<Lua 1304: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:401>
                 Reset Buffer
	Last set from Lua
n  ,ghu        *@<Lua 1305: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/async.lua:192>
                 Undo Stage Hunk
	Last set from Lua
n  ,ghS        *@<Lua 1277: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/async.lua:192>
                 Stage Buffer
	Last set from Lua
v  ,ghr        *@:Gitsigns reset_hunk<CR>
                 Reset Hunk
	Last set from Lua
n  ,ghr        *@:Gitsigns reset_hunk<CR>
                 Reset Hunk
	Last set from Lua
v  ,ghs        *@:Gitsigns stage_hunk<CR>
                 Stage Hunk
	Last set from Lua
n  ,ghs        *@:Gitsigns stage_hunk<CR>
                 Stage Hunk
	Last set from Lua
n  ,cr         *@<Lua 1060: ~/.local/share/nvim/runtime/lua/vim/lsp/buf.lua:271>
                 Rename
	Last set from Lua
n  ,gd         *@<Lua 360: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:213>
                 Toggle deleted
	Last set from Lua
n  ,hD         *@<Lua 365: ~/.config/nvim-Lazyman/lua/config/lsp/gitsigns.lua:44>
                 Diff this ~
	Last set from Lua
n  ,hd         *@<Lua 396: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:1052>
                 Diff this
	Last set from Lua
n  ,gb         *@<Lua 401: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:195>
                 Toggle line blame
	Last set from Lua
n  ,hb         *@<Lua 406: ~/.config/nvim-Lazyman/lua/config/lsp/gitsigns.lua:39>
                 Blame line
	Last set from Lua
n  ,hp         *@<Lua 411: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:708>
                 Preview hunk
	Last set from Lua
n  ,hR         *@<Lua 499: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:401>
                 Reset buffer
	Last set from Lua
n  ,hu         *@<Lua 530: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/async.lua:192>
                 Undo stage hunk
	Last set from Lua
n  ,hS         *@<Lua 531: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/async.lua:192>
                 Stage buffer
	Last set from Lua
v  ,hr         *@:Gitsigns reset_hunk<CR>
	Last set from Lua
n  ,hr         *@:Gitsigns reset_hunk<CR>
	Last set from Lua
v  ,hs         *@:Gitsigns stage_hunk<CR>
	Last set from Lua
n  ,hs         *@:Gitsigns stage_hunk<CR>
	Last set from Lua
n  ,lq         *@<Cmd>lua vim.diagnostic.setloclist()<CR>
	Last set from Lua
n  ,ls         *@<Cmd>lua vim.lsp.buf.signature_help()<CR>
	Last set from Lua
n  ,rn         *@<Cmd>lua require('renamer').rename()<CR>
	Last set from Lua
n  ,cd         *@<Lua 1055: ~/.local/share/nvim/runtime/lua/vim/diagnostic.lua:1272>
                 Line Diagnostics
	Last set from Lua
n  ,cf         *@<Lua 130: ~/.config/nvim-Lazyman/lua/config/lsp/format.lua:21>
                 Format Document
	Last set from Lua
v  ,cf         *@<Lua 1061: ~/.config/nvim-Lazyman/lua/config/lsp/format.lua:21>
                 Format Range
	Last set from Lua
v  ,ca         *@<Lua 126: ~/.local/share/nvim/runtime/lua/vim/lsp/buf.lua:758>
                 Code Action
	Last set from Lua
n  ,ca         *@<Lua 65: ~/.local/share/nvim/runtime/lua/vim/lsp/buf.lua:758>
                 Code Action
	Last set from Lua
n  ,cl         *@<Cmd>LspInfo<CR>
                 Lsp Info
	Last set from Lua
x  <nop>       *@:lua require'nvim-treesitter.incremental_selection'.scope_incremental()<CR>
                 Increment selection to surrounding scope
	Last set from Lua
n  K           *@<Cmd>lua vim.lsp.buf.hover()<CR>
	Last set from Lua
n  [h          *@<Lua 1298: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:625>
                 Prev Hunk
	Last set from Lua
n  [c          *@<Lua 551: ~/.config/nvim-Lazyman/lua/config/lsp/gitsigns.lua:22>
	Last set from Lua
n  [e          *@<Lua 260: ~/.config/nvim-Lazyman/lua/config/lsp/keymaps.lua:87>
                 Prev Error
	Last set from Lua
n  [w          *@<Lua 1058: ~/.config/nvim-Lazyman/lua/config/lsp/keymaps.lua:87>
                 Prev Warning
	Last set from Lua
n  [d          *@<Cmd>lua vim.diagnostic.goto_prev({buffer=0})<CR>
	Last set from Lua
n  [[          *@<Lua 716: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:71>
                 Prev Reference
	Last set from Lua
n  ]h          *@<Lua 823: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:613>
                 Next Hunk
	Last set from Lua
n  ]c          *@<Lua 1062: ~/.config/nvim-Lazyman/lua/config/lsp/gitsigns.lua:12>
	Last set from Lua
n  ]e          *@<Lua 1059: ~/.config/nvim-Lazyman/lua/config/lsp/keymaps.lua:87>
                 Next Error
	Last set from Lua
n  ]w          *@<Lua 253: ~/.config/nvim-Lazyman/lua/config/lsp/keymaps.lua:87>
                 Next Warning
	Last set from Lua
n  ]d          *@<Cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>
	Last set from Lua
n  ]]          *@<Lua 715: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:71>
                 Next Reference
	Last set from Lua
x  ab          *@<Lua 707: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @block.outer
	Last set from Lua
o  ab          *@<Lua 706: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @block.outer
	Last set from Lua
x  af          *@<Lua 703: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @function.outer
	Last set from Lua
o  af          *@<Lua 702: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @function.outer
	Last set from Lua
x  ar          *@<Lua 701: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @parameter.outer
	Last set from Lua
o  ar          *@<Lua 700: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @parameter.outer
	Last set from Lua
x  al          *@<Lua 699: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @loop.outer
	Last set from Lua
o  al          *@<Lua 698: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @loop.outer
	Last set from Lua
n  gK          *@<Lua 627: ~/.local/share/nvim/runtime/lua/vim/lsp/buf.lua:101>
                 Signature Help
	Last set from Lua
n  gI          *@<Cmd>Telescope lsp_implementations<CR>
                 Goto Implementation
	Last set from Lua
n  gt          *@<Cmd>Telescope lsp_type_definitions<CR>
                 Goto Type Definition
	Last set from Lua
n  gl          *@<Cmd>lua vim.diagnostic.open_float()<CR>
	Last set from Lua
n  gs          *@<Cmd>lua vim.lsp.buf.signature_help()<CR>
	Last set from Lua
n  gr          *@<Cmd>Telescope lsp_references<CR>
                 References
	Last set from Lua
n  go          *@<Cmd>lua vim.lsp.buf.type_definition()<CR>
	Last set from Lua
n  gi          *@<Cmd>lua vim.lsp.buf.implementation()<CR>
	Last set from Lua
n  gD          *@<Lua 522: ~/.local/share/nvim/runtime/lua/vim/lsp/buf.lua:64>
                 Goto Declaration
	Last set from Lua
n  gd          *@<Cmd>Telescope lsp_definitions<CR>
                 Goto Definition
	Last set from Lua
x  ih          *@:<C-U>Gitsigns select_hunk<CR>
                 GitSigns Select Hunk
	Last set from Lua
o  ih          *@:<C-U>Gitsigns select_hunk<CR>
                 GitSigns Select Hunk
	Last set from Lua
x  if          *@<Lua 713: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @function.inner
	Last set from Lua
o  if          *@<Lua 712: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @function.inner
	Last set from Lua
x  ib          *@<Lua 711: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @block.inner
	Last set from Lua
o  ib          *@<Lua 710: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @block.inner
	Last set from Lua
x  il          *@<Lua 709: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @loop.inner
	Last set from Lua
o  il          *@<Lua 708: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @loop.inner
	Last set from Lua
x  ir          *@<Lua 705: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @parameter.inner
	Last set from Lua
o  ir          *@<Lua 704: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @parameter.inner
	Last set from Lua
x  <F4>        *@<Cmd>lua vim.lsp.buf.range_code_action()<CR>
	Last set from Lua
n  <F4>        *@<Cmd>lua vim.lsp.buf.code_action()<CR>
	Last set from Lua
n  <F2>        *@<Cmd>lua vim.lsp.buf.rename()<CR>
	Last set from Lua
x  <C-Space>   *@:lua require'nvim-treesitter.incremental_selection'.node_incremental()<CR>
                 Increment selection to named node
	Last set from Lua
n  <C-Space>   *@<Lua 714: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter/lua/nvim-treesitter/incremental_selection.lua:14>
                 Start selecting nodes with nvim-treesitter
	Last set from Lua
x  <BS>        *@:lua require'nvim-treesitter.incremental_selection'.node_decremental()<CR>
                 Shrink selection to previous named node
	Last set from Lua
s  <Tab>       * <Lua 964: ~/.local/share/nvim-Lazyman/lazy/nvim-cmp/lua/cmp/utils/keymap.lua:127>
                 cmp.utils.keymap.set_map
	Last set from Lua
n  <Esc>       * <Cmd>noh<CR><Esc>
                 Escape and clear hlsearch
	Last set from Lua
n  !iÞ         * <Nop>
	Last set from Lua
n  !aÞ         * <Nop>
	Last set from Lua
n  !Þ          * <Nop>
	Last set from Lua
n  !           * <Cmd>lua require("which-key").show("!", {mode = "n", auto = true})<CR>
	Last set from Lua
x  "           * <Cmd>lua require("which-key").show("\"", {mode = "v", auto = true})<CR>
	Last set from Lua
n  "           * <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})<CR>
	Last set from Lua
x  #           * y?\V<C-R>"<CR>
                 Nvim builtin
	Last set from Lua
o  %             <Plug>(MatchitOperationForward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 73
x  %             <Plug>(MatchitVisualForward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 71
n  %             <Plug>(MatchitNormalForward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 69
n  &           * :&&<CR>
                 Nvim builtin
	Last set from Lua
n  '           * <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})<CR>
	Last set from Lua
x  *           * y/\V<C-R>"<CR>
                 Nvim builtin
	Last set from Lua
n  ,un         * <Lua 100: ~/.config/nvim-Lazyman/lua/plugins/ui.lua:123>
                 Delete all Notifications
	Last set from Lua
x  ,pÞ         * <Nop>
	Last set from Lua
v  ,pe         * <Lua 85: ~/.config/nvim-Lazyman/lua/plugins/chatgpt.lua:127>
                 Edit with instructions
	Last set from Lua
x  ,uÞ         * <Nop>
	Last set from Lua
x  ,ghÞ        * <Nop>
	Last set from Lua
x  ,gÞ         * <Nop>
	Last set from Lua
x  ,xÞ         * <Nop>
	Last set from Lua
x  ,wÞ         * <Nop>
	Last set from Lua
x  ,bÞ         * <Nop>
	Last set from Lua
x  ,fÞ         * <Nop>
	Last set from Lua
x  ,cÞ         * <Nop>
	Last set from Lua
x  ,qÞ         * <Nop>
	Last set from Lua
x  ,<Tab>Þ     * <Nop>
	Last set from Lua
x  ,snÞ        * <Nop>
	Last set from Lua
x  ,sÞ         * <Nop>
	Last set from Lua
n  ,cÞ         * <Nop>
	Last set from Lua
x  ,hÞ         * <Nop>
	Last set from Lua
x  ,dÞ         * <Nop>
	Last set from Lua
x  ,Þ          * <Nop>
	Last set from Lua
x  ,           * <Cmd>lua require("which-key").show(",", {mode = "v", auto = true})<CR>
	Last set from Lua
n  ,GÞ         * <Nop>
	Last set from Lua
n  ,vÞ         * <Nop>
	Last set from Lua
n  ,uÞ         * <Nop>
	Last set from Lua
n  ,xÞ         * <Nop>
	Last set from Lua
n  ,fÞ         * <Nop>
	Last set from Lua
n  ,bÞ         * <Nop>
	Last set from Lua
n  ,mÞ         * <Nop>
	Last set from Lua
n  ,lÞ         * <Nop>
	Last set from Lua
n  ,qÞ         * <Nop>
	Last set from Lua
n  ,snÞ        * <Nop>
	Last set from Lua
n  ,sÞ         * <Nop>
	Last set from Lua
n  ,tÞ         * <Nop>
	Last set from Lua
n  ,gÞ         * <Nop>
	Last set from Lua
n  ,wÞ         * <Nop>
	Last set from Lua
n  ,hfÞ        * <Nop>
	Last set from Lua
n  ,hqÞ        * <Nop>
	Last set from Lua
n  ,hÞ         * <Nop>
	Last set from Lua
n  ,<Tab>Þ     * <Nop>
	Last set from Lua
n  ,dÞ         * <Nop>
	Last set from Lua
n  ,Þ          * <Nop>
	Last set from Lua
n  ,           * <Cmd>lua require("which-key").show(",", {mode = "n", auto = true})<CR>
	Last set from Lua
n  ,<Tab>[     * <Cmd>tabprevious<CR>
                 Previous Tab
	Last set from Lua
n  ,<Tab>d     * <Cmd>tabclose<CR>
                 Close Tab
	Last set from Lua
n  ,<Tab>]     * <Cmd>tabnext<CR>
                 Next Tab
	Last set from Lua
n  ,<Tab><Tab> * <Cmd>tabnew<CR>
                 New Tab
	Last set from Lua
n  ,<Tab>f     * <Cmd>tabfirst<CR>
                 First Tab
	Last set from Lua
n  ,<Tab>l     * <Cmd>tablast<CR>
                 Last Tab
	Last set from Lua
n  ,|          * <C-W>v
                 Split window right
	Last set from Lua
n  ,-          * <C-W>s
                 Split window below
	Last set from Lua
n  ,w|         * <C-W>v
                 Split window right
	Last set from Lua
n  ,w-         * <C-W>s
                 Split window below
	Last set from Lua
n  ,wd         * <C-W>c
                 Delete window
	Last set from Lua
n  ,ww         * <C-W>p
                 Other window
	Last set from Lua
n  ,fT         * <Lua 857: ~/.config/nvim-Lazyman/lua/keymaps.lua:194>
                 Terminal (cwd)
	Last set from Lua
n  ,ft         * <Lua 858: ~/.config/nvim-Lazyman/lua/keymaps.lua:193>
                 Terminal (root dir)
	Last set from Lua
n  ,ui         * <Lua 859: ~/.local/share/nvim/runtime/lua/vim/_inspector.lua:143>
                 Inspect Pos
	Last set from Lua
n  ,qq         * <Cmd>qa<CR>
                 Quit all
	Last set from Lua
n  ,gi         * <Lua 860: ~/.local/share/nvim-Lazyman/lazy/gitignore.nvim/lua/gitignore/init.lua:103>
                 Generate .gitignore
	Last set from Lua
n  ,snl        * <Lua 99: ~/.config/nvim-Lazyman/lua/plugins/ui.lua:53>
                 Noice Last Message
	Last set from Lua
n  ,snh        * <Lua 95: ~/.config/nvim-Lazyman/lua/plugins/ui.lua:54>
                 Noice History
	Last set from Lua
n  ,sna        * <Lua 94: ~/.config/nvim-Lazyman/lua/plugins/ui.lua:55>
                 Noice All
	Last set from Lua
n  ,<Space>    * <Lua 216: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Find Files (root dir)
	Last set from Lua
n  ,B          * <Cmd>Telescope buffers<CR>
                 Bufferlist
	Last set from Lua
n  ,ff         * <Cmd>Telescope find_files<CR>
                 Open file
	Last set from Lua
n  ,sa         * <Cmd>Telescope autocommands<CR>
                 Auto Commands
	Last set from Lua
n  ,sf         * <Cmd>lua require'telescope.builtin'.grep_string{ shorten_path = true, word_match = '-w', only_sort_text = true, search = '' }<CR>
                 Fuzzy search
	Last set from Lua
n  ,sH         * <Cmd>Telescope highlights<CR>
                 Search Highlight Groups
	Last set from Lua
n  ,sb         * <Cmd>Telescope current_buffer_fuzzy_find<CR>
                 Buffer
	Last set from Lua
n  ,st         * <Cmd>Telescope live_grep<CR>
                 Strings
	Last set from Lua
n  ,s?         * <Cmd>Telescope help_tags<CR>
                 Help
	Last set from Lua
n  ,sc         * <Cmd>Telescope command_history<CR>
                 Command History
	Last set from Lua
n  ,sM         * <Cmd>Telescope man_pages<CR>
                 Man Pages
	Last set from Lua
n  ,sm         * <Cmd>Telescope marks<CR>
                 Jump to Mark
	Last set from Lua
n  ,sC         * <Cmd>Telescope commands<CR>
                 Commands
	Last set from Lua
n  ,sO         * <Cmd>Telescope vim_options<CR>
                 Vim Options
	Last set from Lua
n  ,sd         * <Cmd>Telescope diagnostics<CR>
                 Diagnostics
	Last set from Lua
n  ,so         * <Cmd>Telescope vim_options<CR>
                 Options
	Last set from Lua
n  ,sg         * <Lua 201: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Grep (root dir)
	Last set from Lua
n  ,sW         * <Lua 200: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Word (cwd)
	Last set from Lua
n  ,sG         * <Lua 199: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Grep (cwd)
	Last set from Lua
n  ,sh         * <Cmd>Telescope help_tags<CR>
                 Help Pages
	Last set from Lua
n  ,s:         * <Cmd>Telescope search_history<CR>
                 Search History
	Last set from Lua
n  ,s;         * <Cmd>Telescope command_history<CR>
                 Command history
	Last set from Lua
n  ,sk         * <Cmd>Telescope keymaps<CR>
                 Key Maps
	Last set from Lua
n  ,gh         * <Cmd>Telescope git_branches<CR>
                 Branches
	Last set from Lua
n  ,gs         * <Cmd>Telescope git_status<CR>
                 Status
	Last set from Lua
n  ,fb         * <Cmd>Telescope file_browser grouped=true<CR>
                 Filebrowser
	Last set from Lua
n  ,gm         * <Cmd>Telescope git_commits<CR>
                 Commits
	Last set from Lua
n  ,fz         * <Cmd>Telescope zoxide list<CR>
                 Zoxide
	Last set from Lua
n  ,sR         * <Cmd>Telescope resume<CR>
                 Resume
	Last set from Lua
n  ,sw         * <Lua 188: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Word (root dir)
	Last set from Lua
n  ,fr         * <Cmd>Telescope oldfiles prompt_title=Recent<CR>
                 Recent files
	Last set from Lua
n  ,uC         * <Lua 186: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Colorscheme with preview
	Last set from Lua
n  ,mm         * <Cmd>Telescope make<CR>
                 Run make
	Last set from Lua
n  ,ss         * <Lua 184: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Goto Symbol
	Last set from Lua
n  ,mt         * <Cmd>Telescope<CR>
                 Telescope
	Last set from Lua
n  ,sS         * <Lua 182: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Goto Symbol (Workspace)
	Last set from Lua
n  ,,          * <Cmd>Telescope buffers show_all_buffers=true<CR>
                 Switch Buffer
	Last set from Lua
n  ,/          * <Lua 155: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Find in Files (Grep)
	Last set from Lua
n  ,:          * <Cmd>Telescope command_history<CR>
                 Command History
	Last set from Lua
n  ,uc         * <Lua 899: ~/.config/nvim-Lazyman/lua/keymaps.lua:177>
                 Toggle Conceal
	Last set from Lua
n  ,ul         * <Lua 900: ~/.config/nvim-Lazyman/lua/keymaps.lua:171>
                 Toggle Line Numbers
	Last set from Lua
n  ,uw         * <Lua 901: ~/.config/nvim-Lazyman/lua/keymaps.lua:170>
                 Toggle Word Wrap
	Last set from Lua
n  ,us         * <Lua 902: ~/.config/nvim-Lazyman/lua/keymaps.lua:169>
                 Toggle Spelling
	Last set from Lua
n  ,uf         * <Lua 181: ~/.config/nvim-Lazyman/lua/config/lsp/format.lua:7>
                 Toggle format on Save
	Last set from Lua
n  ,xq         * <Cmd>copen<CR>
                 Quickfix List
	Last set from Lua
n  ,xl         * <Cmd>lopen<CR>
                 Location List
	Last set from Lua
n  ,fn         * <Cmd>enew<CR>
                 New File
	Last set from Lua
n  ,k          * <Lua 903: ~/.config/nvim-Lazyman/lua/keymaps.lua:143>
                 toggle signature
	Last set from Lua
n  ,ur         * <Cmd>nohlsearch|diffupdate|normal! <C-L><CR>
                 Redraw / clear hlsearch / diff update
	Last set from Lua
n  ,`          * <Cmd>e #<CR>
                 Switch to Other Buffer
	Last set from Lua
n  ,bb         * <Cmd>e #<CR>
                 Switch to Other Buffer
	Last set from Lua
n  ,Gg         * <Cmd>CellularAutomaton game_of_life<CR>
                 Game of Life
	Last set from Lua
n  ,Gr         * <Cmd>CellularAutomaton make_it_rain<CR>
                 Make it Rain
	Last set from Lua
n  ,Gv         * <Cmd>VimBeGood<CR>
                 Vim-Be-Good
	Last set from Lua
n  ,Gs         * <Cmd>Sudoku<CR>
                 Sudoku
	Last set from Lua
n  ,Gf         * <Cmd>:HackFollow<CR>
                 Hack current buffer
	Last set from Lua
n  ,Gh         * <Cmd>:Hack<CR>
                 Hack
	Last set from Lua
n  ,Gb         * <Cmd>BlackJackNewGame<CR>
                 Blackjack
	Last set from Lua
n  ,T          * <Cmd>Neotree toggle<CR>
	Last set from Lua
n  ,lc         * <Cmd>Lazyconf<CR>
                 Lazyman configuration
	Last set from Lua
n  ,lm         * <Cmd>Lazyman<CR>
                 Lazyman menu
	Last set from Lua
n  ,gg         * <Cmd>Lazygit<CR>
                 Lazygit command
	Last set from Lua
n  ,H          * <Cmd>Htop<CR>
                 Htop command
	Last set from Lua
n  ,hk         * <Cmd>help Lazyman-Keymaps-lazymankeys<CR>
                 Lazyman Keymaps
	Last set from Lua
n  ,o          * <Cmd>options<CR>
                 Options
	Last set from Lua
n  ,U          * <Cmd>Lazy update<CR>
                 Lazy Update
	Last set from Lua
n  ,L          * <Cmd>Lazy<CR>
                 Lazy Menu
	Last set from Lua
n  ,A          * <Cmd>Alpha<CR>
	Last set from Lua
n  ,xt         * <Cmd>TodoTrouble<CR>
                 Todo (Trouble)
	Last set from Lua
n  ,xT         * <Cmd>TodoTrouble keywords=TODO,FIX,FIXME<CR>
                 Todo/Fix/Fixme (Trouble)
	Last set from Lua
n  ,dq         * <Lua 607: ~/.local/share/nvim/runtime/lua/vim/diagnostic.lua:1527>
                 Set diagnostics location list
	Last set from Lua
n  ,xx         * <Cmd>TroubleToggle document_diagnostics<CR>
                 Document Diagnostics (Trouble)
	Last set from Lua
n  ,xQ         * <Cmd>TroubleToggle quickfix<CR>
                 Quickfix List (Trouble)
	Last set from Lua
n  ,xX         * <Cmd>TroubleToggle workspace_diagnostics<CR>
                 Workspace Diagnostics (Trouble)
	Last set from Lua
n  ,xL         * <Cmd>TroubleToggle loclist<CR>
                 Location List (Trouble)
	Last set from Lua
n  ,M          * <Cmd>Mason<CR>
                 Mason Menu
	Last set from Lua
n  ,lS         * <Lua 300: ~/.config/nvim-Lazyman/lua/config/hop.lua:221>
                 Trigger LuaSnip snippet
	Last set from Lua
n  ,vO         * <Lua 298: ~/.config/nvim-Lazyman/lua/config/hop.lua:201>
                 Open new line above HopLineStart target
	Last set from Lua
n  ,vo         * <Lua 296: ~/.config/nvim-Lazyman/lua/config/hop.lua:184>
                 Open new line below HopLineStart target
	Last set from Lua
n  ,vP         * <Lua 294: ~/.config/nvim-Lazyman/lua/config/hop.lua:169>
                 Paste above target using HopLineStart
	Last set from Lua
n  ,vp         * <Lua 292: ~/.config/nvim-Lazyman/lua/config/hop.lua:154>
                 Paste below target using HopLineStart
	Last set from Lua
n  ,hd         * <Lua 170: ~/.config/nvim-Lazyman/lua/config/hop.lua:74>
                 Jump to definition
	Last set from Lua
n  ,hq]        * <Cmd>lua require'hop'.hint_patterns({}, [[}]])<CR>
	Last set from Lua
n  ,hq[        * <Cmd>lua require'hop'.hint_patterns({}, [[{]])<CR>
	Last set from Lua
n  ,hqk        * <Cmd>lua require'hop'.hint_patterns({}, [[)]])<CR>
	Last set from Lua
n  ,hqj        * <Cmd>lua require'hop'.hint_patterns({}, [[(]])<CR>
	Last set from Lua
n  ,hf/        * <Cmd>lua require'hop'.hint_patterns({}, [[/\|?]])<CR>
	Last set from Lua
n  ,hf;        * <Cmd>lua require'hop'.hint_patterns({}, [[;\|:]])<CR>
	Last set from Lua
n  ,hf-        * <Cmd>lua require'hop'.hint_patterns({}, [[-\|+]])<CR>
	Last set from Lua
n  ,hf'        * <Cmd>lua require'hop'.hint_patterns({}, [["\|']])<CR>
	Last set from Lua
n  ,hH         * <Cmd>lua require'hop'.hint_patterns({}, [[\d\+]])<CR>
	Last set from Lua
n  ,hW         * <Cmd>HopWordMW<CR>
	Last set from Lua
x  ,hl         * <Cmd>HopLineStart<CR>
	Last set from Lua
n  ,hl         * <Cmd>help Lazyman-lazyman<CR>
                 Lazyman Help
	Last set from Lua
n  ,hw         * <Cmd>HopWord<CR>
	Last set from Lua
x  ,hw         * <Cmd>HopWord<CR>
	Last set from Lua
n  ,h]         * <Lua 286: ~/.config/nvim-Lazyman/lua/plugins/hop.lua:16>
                 Move to end of Treehopper node
	Last set from Lua
n  ,h[         * <Lua 285: ~/.config/nvim-Lazyman/lua/plugins/hop.lua:13>
                 Move to start of Treehopper node
	Last set from Lua
n  ,hm         * <Lua 284: ~/.config/nvim-Lazyman/lua/plugins/hop.lua:10>
                 Treehopper nodes
	Last set from Lua
n  ,ut         * <Lua 279: ~/.config/nvim-Lazyman/lua/themes/tokyonight.lua:82>
                 Toggle Transparency
	Last set from Lua
n  ,ts         * <Lua 153: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Treesitter Split
	Last set from Lua
n  ,tj         * <Lua 129: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Treesitter Join
	Last set from Lua
n  ,tt         * <Lua 128: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Toggle Treesitter Join
	Last set from Lua
n  ,D          * <Lua 117: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Close Buffer
	Last set from Lua
n  ,E          * <Lua 92: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Explorer Float
	Last set from Lua
n  ,e          * <Lua 78: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Explorer (root dir)
	Last set from Lua
n  ,du         * <Lua 75: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Dap UI
	Last set from Lua
v  ,de         * <Lua 74: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Eval
	Last set from Lua
n  ,de         * <Lua 574: ~/.local/share/nvim/runtime/lua/vim/diagnostic.lua:1272>
                 Open float
	Last set from Lua
n  ,dg         * <Lua 68: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Go to line (no execute)
	Last set from Lua
n  ,ds         * <Lua 67: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Session
	Last set from Lua
n  ,di         * <Lua 66: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Step Into
	Last set from Lua
n  ,dt         * <Lua 608: ~/.config/nvim-Lazyman/lua/config/lspconfig.lua:89>
                 Toggle diagnostics
	Last set from Lua
n  ,dj         * <Lua 64: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Down
	Last set from Lua
n  ,dw         * <Lua 63: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Widgets
	Last set from Lua
n  ,dk         * <Lua 62: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Up
	Last set from Lua
n  ,dp         * <Lua 61: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Pause
	Last set from Lua
n  ,dB         * <Lua 60: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Breakpoint Condition
	Last set from Lua
n  ,dr         * <Lua 59: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Toggle REPL
	Last set from Lua
n  ,db         * <Lua 58: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Toggle Breakpoint
	Last set from Lua
n  ,dl         * <Lua 57: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Run Last
	Last set from Lua
n  ,dc         * <Lua 56: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Continue
	Last set from Lua
n  ,do         * <Lua 55: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Step Out
	Last set from Lua
n  ,dC         * <Lua 52: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Run to Cursor
	Last set from Lua
n  ,dO         * <Lua 50: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Step Over
	Last set from Lua
n  <iÞ         * <Nop>
	Last set from Lua
n  <aÞ         * <Nop>
	Last set from Lua
n  <Þ          * <Nop>
	Last set from Lua
n  <           * <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})<CR>
	Last set from Lua
v  <           * <gv
	Last set from Lua
n  >iÞ         * <Nop>
	Last set from Lua
n  >aÞ         * <Nop>
	Last set from Lua
n  >Þ          * <Nop>
	Last set from Lua
n  >           * <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})<CR>
	Last set from Lua
v  >           * >gv
	Last set from Lua
n  ?           * /
	Last set from Lua
n  @Þ          * <Nop>
	Last set from Lua
n  @           * <Cmd>lua require("which-key").show("@", {mode = "n", auto = true})<CR>
	Last set from Lua
   F             <Lua 175: ~/.config/nvim-Lazyman/lua/config/hop.lua:51>
	Last set from Lua
n  H           * <Cmd>bprevious<CR>
                 Prev buffer
	Last set from Lua
n  L           * <Cmd>bnext<CR>
                 Next buffer
	Last set from Lua
o  N           * 'nN'[v:searchforward]
                 Prev search result
	Last set from Lua
x  N           * 'nN'[v:searchforward]
                 Prev search result
	Last set from Lua
n  N           * 'nN'[v:searchforward]
                 Prev search result
	Last set from Lua
x  S           * <Plug>(nvim-surround-visual)
                 Add a surrounding pair around a visual selection
	Last set from Lua
   T             <Lua 173: ~/.config/nvim-Lazyman/lua/config/hop.lua:64>
	Last set from Lua
n  Y           * y$
                 Nvim builtin
	Last set from Lua
x  [Þ          * <Nop>
	Last set from Lua
x  [           * <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})<CR>
	Last set from Lua
n  [Þ          * <Nop>
	Last set from Lua
n  [           * <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})<CR>
	Last set from Lua
n  [b          * <Cmd>bprevious<CR>
                 Prev buffer
	Last set from Lua
n  [t          * <Lua 124: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:166>
                 Previous todo comment
	Last set from Lua
n  [[          * <Lua 665: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:71>
                 Prev Reference
	Last set from Lua
n  [d          * <Lua 73: ~/.local/share/nvim/runtime/lua/vim/diagnostic.lua:807>
	Last set from Lua
n  [q          * <Lua 115: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:134>
                 Previous trouble/quickfix item
	Last set from Lua
o  [%            <Plug>(MatchitOperationMultiBackward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 81
x  [%            <Plug>(MatchitVisualMultiBackward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 79
n  [%            <Plug>(MatchitNormalMultiBackward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 77
x  ]Þ          * <Nop>
	Last set from Lua
x  ]           * <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})<CR>
	Last set from Lua
n  ]Þ          * <Nop>
	Last set from Lua
n  ]           * <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})<CR>
	Last set from Lua
n  ]b          * <Cmd>bnext<CR>
                 Next buffer
	Last set from Lua
n  ]t          * <Lua 127: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:165>
                 Next todo comment
	Last set from Lua
n  ]]          * <Lua 664: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:71>
                 Next Reference
	Last set from Lua
n  ]d          * <Lua 575: ~/.local/share/nvim/runtime/lua/vim/diagnostic.lua:853>
	Last set from Lua
n  ]q          * <Lua 108: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:145>
                 Next trouble/quickfix item
	Last set from Lua
o  ]%            <Plug>(MatchitOperationMultiForward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 82
x  ]%            <Plug>(MatchitVisualMultiForward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 80
n  ]%            <Plug>(MatchitNormalMultiForward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 78
n  `           * <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})<CR>
	Last set from Lua
x  a%            <Plug>(MatchitVisualTextObject)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 85
n  cs          * <Plug>(nvim-surround-change)
                 Change a surrounding pair
	Last set from Lua
n  ciÞ         * <Nop>
	Last set from Lua
n  caÞ         * <Nop>
	Last set from Lua
n  cÞ          * <Nop>
	Last set from Lua
n  c           * <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})<CR>
	Last set from Lua
n  ds          * <Plug>(nvim-surround-delete)
                 Delete a surrounding pair
	Last set from Lua
n  diÞ         * <Nop>
	Last set from Lua
n  daÞ         * <Nop>
	Last set from Lua
n  dÞ          * <Nop>
	Last set from Lua
n  d           * <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})<CR>
	Last set from Lua
   f             <Lua 176: ~/.config/nvim-Lazyman/lua/config/hop.lua:45>
	Last set from Lua
x  gS          * <Plug>(nvim-surround-visual-line)
                 Add a surrounding pair around a visual selection, on new lines
	Last set from Lua
x  gzÞ         * <Nop>
	Last set from Lua
n  gzÞ         * <Nop>
	Last set from Lua
x  gÞ          * <Nop>
	Last set from Lua
x  g           * <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})<CR>
	Last set from Lua
n  guiÞ        * <Nop>
	Last set from Lua
n  guaÞ        * <Nop>
	Last set from Lua
n  guÞ         * <Nop>
	Last set from Lua
n  gUiÞ        * <Nop>
	Last set from Lua
n  gUaÞ        * <Nop>
	Last set from Lua
n  gUÞ         * <Nop>
	Last set from Lua
n  g~iÞ        * <Nop>
	Last set from Lua
n  g~aÞ        * <Nop>
	Last set from Lua
n  g~Þ         * <Nop>
	Last set from Lua
n  gÞ          * <Nop>
	Last set from Lua
n  g           * <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})<CR>
	Last set from Lua
x  gw          * *N
                 Search word under cursor
	Last set from Lua
n  gw          * *N
                 Search word under cursor
	Last set from Lua
o  g%            <Plug>(MatchitOperationBackward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 74
x  g%            <Plug>(MatchitVisualBackward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 72
n  g%            <Plug>(MatchitNormalBackward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 70
n  j           * v:count == 0 ? 'gj' : 'j'
	Last set from Lua
n  k           * v:count == 0 ? 'gk' : 'k'
	Last set from Lua
o  mt          * <Cmd>lua MiniComment.textobject()<CR>
                 Comment textobject
	Last set from Lua
n  ml          * <Lua 740: ~/.local/share/nvim-Lazyman/lazy/mini.comment/lua/mini/comment.lua:322>
                 Comment line
	Last set from Lua
x  mc          * :<C-U>lua MiniComment.operator('visual')<CR>
                 Comment selection
	Last set from Lua
n  mc          * <Lua 745: ~/.local/share/nvim-Lazyman/lazy/mini.comment/lua/mini/comment.lua:310>
                 Comment
	Last set from Lua
o  n           * 'Nn'[v:searchforward]
                 Next search result
	Last set from Lua
x  n           * 'Nn'[v:searchforward]
                 Next search result
	Last set from Lua
n  n           * 'Nn'[v:searchforward]
                 Next search result
	Last set from Lua
   t             <Lua 174: ~/.config/nvim-Lazyman/lua/config/hop.lua:57>
	Last set from Lua
n  vaÞ         * <Nop>
	Last set from Lua
n  viÞ         * <Nop>
	Last set from Lua
n  vÞ          * <Nop>
	Last set from Lua
n  v           * <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})<CR>
	Last set from Lua
n  vy          * <Lua 301: ~/.config/nvim-Lazyman/lua/config/hop.lua:231>
                 Treehopper node target insert
	Last set from Lua
n  vY          * <Lua 299: ~/.config/nvim-Lazyman/lua/config/hop.lua:212>
                 HopLineStart target in normal mode
	Last set from Lua
n  vO          * <Lua 297: ~/.config/nvim-Lazyman/lua/config/hop.lua:193>
                 Open new line above HopLineStart target
	Last set from Lua
n  vo          * <Lua 295: ~/.config/nvim-Lazyman/lua/config/hop.lua:177>
                 Open new line below HopLineStart target
	Last set from Lua
n  vP          * <Lua 293: ~/.config/nvim-Lazyman/lua/config/hop.lua:163>
                 Paste above target using HopLineStart
	Last set from Lua
n  vp          * <Lua 164: ~/.config/nvim-Lazyman/lua/config/hop.lua:148>
                 Paste below target using HopLineStart
	Last set from Lua
n  ySS         * <Plug>(nvim-surround-normal-cur-line)
                 Add a surrounding pair around the current line, on new lines (normal mode)
	Last set from Lua
n  yS          * <Plug>(nvim-surround-normal-line)
                 Add a surrounding pair around a motion, on new lines (normal mode)
	Last set from Lua
n  yss         * <Plug>(nvim-surround-normal-cur)
                 Add a surrounding pair around the current line (normal mode)
	Last set from Lua
n  ys          * <Plug>(nvim-surround-normal)
                 Add a surrounding pair around a motion (normal mode)
	Last set from Lua
n  yaÞ         * <Nop>
	Last set from Lua
n  yiÞ         * <Nop>
	Last set from Lua
n  yÞ          * <Nop>
	Last set from Lua
n  y           * <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})<CR>
	Last set from Lua
n  ym          * <Lua 165: ~/.config/nvim-Lazyman/lua/config/hop.lua:138>
                 Yank using Treehopper
	Last set from Lua
n  yc          * <Lua 166: ~/.config/nvim-Lazyman/lua/config/hop.lua:124>
                 Yank a Treesitter code block
	Last set from Lua
n  yl          * <Lua 167: ~/.config/nvim-Lazyman/lua/config/hop.lua:113>
                 Yank a line with HopLineStart
	Last set from Lua
n  yx          * <Lua 169: ~/.config/nvim-Lazyman/lua/config/hop.lua:100>
                 Yank user syntax-tree-surfer
	Last set from Lua
n  y<C-G>      & :<C-U>call setreg(v:register, fugitive#Object(@%))<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/vim-fugitive/plugin/fugitive.vim line 746
x  zt          * <Cmd>lua require('neoscroll').zt(250)<CR>
	Last set from Lua
n  zt          * <Cmd>lua require('neoscroll').zt(250)<CR>
	Last set from Lua
x  zz          * <Cmd>lua require('neoscroll').zz(250)<CR>
	Last set from Lua
n  zz          * <Cmd>lua require('neoscroll').zz(250)<CR>
	Last set from Lua
x  zb          * <Cmd>lua require('neoscroll').zb(250)<CR>
	Last set from Lua
n  zb          * <Cmd>lua require('neoscroll').zb(250)<CR>
	Last set from Lua
n  zfiÞ        * <Nop>
	Last set from Lua
n  zfaÞ        * <Nop>
	Last set from Lua
n  zfÞ         * <Nop>
	Last set from Lua
n  zÞ          * <Nop>
	Last set from Lua
n  z           * <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})<CR>
	Last set from Lua
s  <C-B>       * <Lua 1147: ~/.local/share/nvim-Lazyman/lazy/nvim-cmp/lua/cmp/utils/keymap.lua:127>
                 cmp.utils.keymap.set_map
	Last set from Lua
s  <C-F>       * <Lua 972: ~/.local/share/nvim-Lazyman/lazy/nvim-cmp/lua/cmp/utils/keymap.lua:127>
                 cmp.utils.keymap.set_map
	Last set from Lua
x  <C-B>       * <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)<CR>
	Last set from Lua
n  <C-B>       * <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)<CR>
	Last set from Lua
x  <C-F>       * <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)<CR>
	Last set from Lua
n  <C-F>       * <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)<CR>
	Last set from Lua
x  <C-Y>       * <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)<CR>
	Last set from Lua
n  <C-Y>       * <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)<CR>
	Last set from Lua
x  <C-U>       * <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)<CR>
	Last set from Lua
n  <C-U>       * <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)<CR>
	Last set from Lua
x  <C-D>       * <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)<CR>
	Last set from Lua
n  <C-D>       * <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)<CR>
	Last set from Lua
x  <C-E>       * <Cmd>lua require('neoscroll').scroll(0.10, false, 100)<CR>
	Last set from Lua
n  <C-E>       * <Cmd>lua require('neoscroll').scroll(0.10, false, 100)<CR>
	Last set from Lua
n  <Plug>(nvim-surround-change) * <Lua 763: ~/.local/share/nvim-Lazyman/lazy/nvim-surround/lua/nvim-surround/init.lua:181>
                 Change a surrounding pair
	Last set from Lua
n  <Plug>(nvim-surround-delete) * <Lua 760: ~/.local/share/nvim-Lazyman/lazy/nvim-surround/lua/nvim-surround/init.lua:148>
                 Delete a surrounding pair
	Last set from Lua
x  <Plug>(nvim-surround-visual-line) * <Esc><Cmd>lua require'nvim-surround'.visual_surround({ line_mode = true })<CR>
                 Add a surrounding pair around a visual selection, on new lines
	Last set from Lua
x  <Plug>(nvim-surround-visual) * <Esc><Cmd>lua require'nvim-surround'.visual_surround({ line_mode = false })<CR>
                 Add a surrounding pair around a visual selection
	Last set from Lua
n  <Plug>(nvim-surround-normal-cur-line) * <Lua 765: ~/.local/share/nvim-Lazyman/lazy/nvim-surround/lua/nvim-surround/config.lua:665>
                 Add a surrounding pair around the current line, on new lines (normal mode)
	Last set from Lua
n  <Plug>(nvim-surround-normal-line) * <Lua 762: ~/.local/share/nvim-Lazyman/lazy/nvim-surround/lua/nvim-surround/config.lua:652>
                 Add a surrounding pair around a motion, on new lines (normal mode)
	Last set from Lua
n  <Plug>(nvim-surround-normal-cur) * <Lua 767: ~/.local/share/nvim-Lazyman/lazy/nvim-surround/lua/nvim-surround/config.lua:639>
                 Add a surrounding pair around the current line (normal mode)
	Last set from Lua
n  <Plug>(nvim-surround-normal) * <Lua 764: ~/.local/share/nvim-Lazyman/lazy/nvim-surround/lua/nvim-surround/config.lua:626>
                 Add a surrounding pair around a motion (normal mode)
	Last set from Lua
n  <C-W>Þ      * <Nop>
	Last set from Lua
n  <C-W>       * <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})<CR>
	Last set from Lua
n  <C-Bslash>  * <Cmd>execute v:count . "ToggleTerm"<CR>
                 Toggle Terminal
	Last set from Lua
n  <C-S>       * <Cmd>Telescope current_buffer_fuzzy_find<CR>
                 Search in buffer
	Last set from Lua
s  <C-S>       * <Cmd>w<CR><Esc>
                 Save file
	Last set from Lua
x  <C-S>       * <Cmd>w<CR><Esc>
                 Save file
	Last set from Lua
v  <M-k>       * :m '<-2<CR>gv=gv
                 Move up
	Last set from Lua
v  <M-j>       * :m '>+1<CR>gv=gv
                 Move down
	Last set from Lua
n  <M-k>       * <Cmd>m .-2<CR>==
                 Move up
	Last set from Lua
n  <M-j>       * <Cmd>m .+1<CR>==
                 Move down
	Last set from Lua
n  <C-Right>   * <Cmd>vertical resize +2<CR>
                 Increase window width
	Last set from Lua
n  <C-Left>    * <Cmd>vertical resize -2<CR>
                 Decrease window width
	Last set from Lua
n  <C-Down>    * <Cmd>resize -2<CR>
                 Decrease window height
	Last set from Lua
n  <C-Up>      * <Cmd>resize +2<CR>
                 Increase window height
	Last set from Lua
n  <C-K>       * <Lua 11: ~/.config/nvim-Lazyman/lua/keymaps.lua:139>
                 toggle signature
	Last set from Lua
n  <C-J>       * <C-W>j
                 Go to lower window
	Last set from Lua
n  <C-H>       * <C-W>h
                 Go to left window
	Last set from Lua
n  <C-6>       * <C-^>
	Last set from Lua
x  <M-i>       * <Lua 661: ~/.local/share/nvim-Lazyman/lazy/vim-illuminate/lua/illuminate.lua:292>
	Last set from Lua line 45
o  <M-i>       * <Lua 660: ~/.local/share/nvim-Lazyman/lazy/vim-illuminate/lua/illuminate.lua:292>
	Last set from Lua line 45
n  <M-p>       * <Lua 659: ~/.local/share/nvim-Lazyman/lazy/vim-illuminate/lua/illuminate.lua:285>
                 Move to previous reference
	Last set from Lua line 45
n  <M-n>       * <Lua 637: ~/.local/share/nvim-Lazyman/lazy/vim-illuminate/lua/illuminate.lua:278>
                 Move to next reference
	Last set from Lua line 45
s  <Plug>luasnip-jump-prev * <Lua 516: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:57>
	Last set from Lua
s  <Plug>luasnip-jump-next * <Lua 515: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:54>
	Last set from Lua
s  <Plug>luasnip-prev-choice * <Lua 514: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:51>
	Last set from Lua
s  <Plug>luasnip-next-choice * <Lua 513: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:48>
	Last set from Lua
s  <Plug>luasnip-expand-snippet * <Lua 512: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:45>
	Last set from Lua
s  <Plug>luasnip-expand-or-jump * <Lua 511: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:42>
	Last set from Lua
   <Plug>luasnip-expand-repeat * <Lua 509: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:35>
	Last set from Lua
n  <Plug>luasnip-delete-check * <Lua 507: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:28>
	Last set from Lua
s  <S-Tab>     * <Lua 1164: ~/.local/share/nvim-Lazyman/lazy/nvim-cmp/lua/cmp/utils/keymap.lua:127>
                 cmp.utils.keymap.set_map
	Last set from Lua
n  <Plug>PlenaryTestFile * :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/plenary.nvim/plugin/plenary.vim line 9
x  <Plug>(MatchitVisualTextObject)   <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 66
o  <Plug>(MatchitOperationMultiForward) * :<C-U>call matchit#MultiMatch("W",  "o")<CR>
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 63
o  <Plug>(MatchitOperationMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "o")<CR>
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 62
x  <Plug>(MatchitVisualMultiForward) * :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 61
x  <Plug>(MatchitVisualMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 60
n  <Plug>(MatchitNormalMultiForward) * :<C-U>call matchit#MultiMatch("W",  "n")<CR>
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 59
n  <Plug>(MatchitNormalMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "n")<CR>
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 58
o  <Plug>(MatchitOperationBackward) * :<C-U>call matchit#Match_wrapper('',0,'o')<CR>
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 55
o  <Plug>(MatchitOperationForward) * :<C-U>call matchit#Match_wrapper('',1,'o')<CR>
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 54
x  <Plug>(MatchitVisualBackward) * :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 53
x  <Plug>(MatchitVisualForward) * :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv``
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 51
n  <Plug>(MatchitNormalBackward) * :<C-U>call matchit#Match_wrapper('',0,'n')<CR>
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 50
n  <Plug>(MatchitNormalForward) * :<C-U>call matchit#Match_wrapper('',1,'n')<CR>
	Last set from ~/.local/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 49
n  <F9>        * :call NextColor(0)<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/SetColorSchemes.vim/plugin/setcolorschemes.vim line 116
n  <F8>        * :call NextColor(1)<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/SetColorSchemes.vim/plugin/setcolorschemes.vim line 115
n  <F7>        * :call NextColor(-1)<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/SetColorSchemes.vim/plugin/setcolorschemes.vim line 114
x  <M-q>       * q
	Last set from Lua
n  <M-q>       * q
	Last set from Lua
n  <Plug>fugitive: & <Nop>
	Last set from ~/.local/share/nvim-Lazyman/lazy/vim-fugitive/plugin/fugitive.vim line 721
n  <Plug>fugitive:y<C-G> & :<C-U>call setreg(v:register, fugitive#Object(@%))<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/vim-fugitive/plugin/fugitive.vim line 720
n  <C-L>       * <C-W>l
                 Go to right window
	Last set from Lua
```
