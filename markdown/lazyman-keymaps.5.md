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

The following list of keymaps was generated using the following commands
with a file open in the `nvim-Lazyman` Neovim configuration:

```
:redir! > /tmp/lazyman-keymaps.5.md
:silent verbose map
:redir END
```

## KEYMAPS

```
n  ,rÞ         *@<Nop>
	Last set from Lua
n  ,tÞ         *@<Nop>
	Last set from Lua
n  ,ghÞ        *@<Nop>
	Last set from Lua
n  ,ghD        *@<Lua 1140: ~/.config/nvim-Lazyman/lua/plugins/gitsigns.lua:32>
                 Diff This ~
	Last set from Lua
n  ,ghd        *@<Lua 1147: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:1042>
                 Diff This
	Last set from Lua
n  ,ghb        *@<Lua 949: ~/.config/nvim-Lazyman/lua/plugins/gitsigns.lua:30>
                 Blame Line
	Last set from Lua
n  ,ghp        *@<Lua 943: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:708>
                 Preview Hunk
	Last set from Lua
n  ,ghR        *@<Lua 1167: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:401>
                 Reset Buffer
	Last set from Lua
n  ,ghu        *@<Lua 1168: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/async.lua:192>
                 Undo Stage Hunk
	Last set from Lua
n  ,ghS        *@<Lua 1132: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/async.lua:192>
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
n  ,td         *@<Lua 317: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:213>
                 Toggle deleted
	Last set from Lua
n  ,hD         *@<Lua 324: ~/.config/nvim-Lazyman/lua/config/lsp/gitsigns.lua:44>
                 Diff this ~
	Last set from Lua
n  ,hd         *@<Lua 299: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:1042>
                 Diff this
	Last set from Lua
n  ,tb         *@<Lua 357: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:195>
                 Toggle line blame
	Last set from Lua
n  ,hb         *@<Lua 362: ~/.config/nvim-Lazyman/lua/config/lsp/gitsigns.lua:39>
                 Blame line
	Last set from Lua
n  ,hp         *@<Lua 367: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:708>
                 Preview hunk
	Last set from Lua
n  ,hR         *@<Lua 449: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:401>
                 Reset buffer
	Last set from Lua
n  ,hu         *@<Lua 480: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/async.lua:192>
                 Undo stage hunk
	Last set from Lua
n  ,hS         *@<Lua 489: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/async.lua:192>
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
v  ,cf         *@<Lua 560: ~/.config/nvim-Lazyman/lua/config/lsp/format.lua:21>
                 Format Range
	Last set from Lua
v  ,ca         *@<Lua 502: /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/lua/vim/lsp/buf.lua:758>
                 Code Action
	Last set from Lua
n  ,ca         *@<Lua 1192: /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/lua/vim/lsp/buf.lua:758>
                 Code Action
	Last set from Lua
n  ,cf         *@<Lua 351: ~/.config/nvim-Lazyman/lua/config/lsp/format.lua:21>
                 Format Document
	Last set from Lua
n  ,cd         *@<Lua 516: /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/lua/vim/diagnostic.lua:1272>
                 Line Diagnostics
	Last set from Lua
n  ,cl         *@<Cmd>LspInfo<CR>
                 Lsp Info
	Last set from Lua
x  <nop>       *@:lua require'nvim-treesitter.incremental_selection'.scope_incremental()<CR>
                 Increment selection to surrounding scope
	Last set from Lua
n  K           *@<Cmd>lua vim.lsp.buf.hover()<CR>
	Last set from Lua
n  [h          *@<Lua 1164: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:625>
                 Prev Hunk
	Last set from Lua
n  [c          *@<Lua 682: ~/.config/nvim-Lazyman/lua/config/lsp/gitsigns.lua:22>
	Last set from Lua
n  [e          *@<Lua 176: ~/.config/nvim-Lazyman/lua/config/lsp/keymaps.lua:87>
                 Prev Error
	Last set from Lua
n  [w          *@<Lua 575: ~/.config/nvim-Lazyman/lua/config/lsp/keymaps.lua:87>
                 Prev Warning
	Last set from Lua
n  [d          *@<Cmd>lua vim.diagnostic.goto_prev({buffer=0})<CR>
	Last set from Lua
n  [[          *@<Lua 659: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:188>
                 Prev Reference
	Last set from Lua
n  ]h          *@<Lua 52: ~/.local/share/nvim-Lazyman/lazy/gitsigns.nvim/lua/gitsigns/actions.lua:613>
                 Next Hunk
	Last set from Lua
n  ]c          *@<Lua 1190: ~/.config/nvim-Lazyman/lua/config/lsp/gitsigns.lua:12>
	Last set from Lua
n  ]e          *@<Lua 622: ~/.config/nvim-Lazyman/lua/config/lsp/keymaps.lua:87>
                 Next Error
	Last set from Lua
n  ]w          *@<Lua 173: ~/.config/nvim-Lazyman/lua/config/lsp/keymaps.lua:87>
                 Next Warning
	Last set from Lua
n  ]d          *@<Cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>
	Last set from Lua
n  ]]          *@<Lua 658: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:188>
                 Next Reference
	Last set from Lua
x  al          *@<Lua 655: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @loop.outer
	Last set from Lua
o  al          *@<Lua 654: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @loop.outer
	Last set from Lua
x  af          *@<Lua 651: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @function.outer
	Last set from Lua
o  af          *@<Lua 650: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @function.outer
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
n  gD          *@<Lua 1191: /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/lua/vim/lsp/buf.lua:64>
                 Goto Declaration
	Last set from Lua
n  gd          *@<Cmd>Telescope lsp_definitions<CR>
                 Goto Definition
	Last set from Lua
x  ih          *@:<C-U>Gitsigns select_hunk<CR>
	Last set from Lua
o  ih          *@:<C-U>Gitsigns select_hunk<CR>
	Last set from Lua
x  if          *@<Lua 657: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @function.inner
	Last set from Lua
o  if          *@<Lua 656: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @function.inner
	Last set from Lua
x  il          *@<Lua 653: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @loop.inner
	Last set from Lua
o  il          *@<Lua 652: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter-textobjects/lua/nvim-treesitter/textobjects/select.lua:187>
                 Select textobject @loop.inner
	Last set from Lua
x  <F4>        *@<Cmd>lua vim.lsp.buf.range_code_action()<CR>
	Last set from Lua
n  <F4>        *@<Cmd>lua vim.lsp.buf.code_action()<CR>
	Last set from Lua
n  <F2>        *@<Cmd>lua vim.lsp.buf.rename()<CR>
	Last set from Lua
x  <BS>        *@:lua require'nvim-treesitter.incremental_selection'.node_decremental()<CR>
                 Shrink selection to previous named node
	Last set from Lua
n  <C-Space>   *@<Lua 646: ~/.local/share/nvim-Lazyman/lazy/nvim-treesitter/lua/nvim-treesitter/incremental_selection.lua:14>
                 Start selecting nodes with nvim-treesitter
	Last set from Lua
x  <C-Space>   *@:lua require'nvim-treesitter.incremental_selection'.node_incremental()<CR>
                 Increment selection to named node
	Last set from Lua
s  <Tab>       * <Lua 1173: ~/.local/share/nvim-Lazyman/lazy/nvim-cmp/lua/cmp/utils/keymap.lua:127>
                 cmp.utils.keymap.set_map
	Last set from Lua
n  <Esc>       * <Cmd>noh<CR><Esc>
                 Escape and clear hlsearch
	Last set from Lua
n  !aÞ         * <Nop>
	Last set from Lua
n  !iÞ         * <Nop>
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
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 73
x  %             <Plug>(MatchitVisualForward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 71
n  %             <Plug>(MatchitNormalForward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 69
n  &           * :&&<CR>
                 Nvim builtin
	Last set from Lua
n  '           * <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})<CR>
	Last set from Lua
x  *           * y/\V<C-R>"<CR>
                 Nvim builtin
	Last set from Lua
n  ,un         * <Lua 152: ~/.config/nvim-Lazyman/lua/plugins/ui.lua:147>
                 Delete all Notifications
	Last set from Lua
x  ,pÞ         * <Nop>
	Last set from Lua
v  ,pe         * <Lua 689: ~/.config/nvim-Lazyman/lua/plugins/chatgpt.lua:127>
                 Edit with instructions
	Last set from Lua
x  ,wÞ         * <Nop>
	Last set from Lua
x  ,<Tab>Þ     * <Nop>
	Last set from Lua
x  ,bÞ         * <Nop>
	Last set from Lua
x  ,cÞ         * <Nop>
	Last set from Lua
x  ,ghÞ        * <Nop>
	Last set from Lua
x  ,gÞ         * <Nop>
	Last set from Lua
x  ,uÞ         * <Nop>
	Last set from Lua
x  ,xÞ         * <Nop>
	Last set from Lua
x  ,fÞ         * <Nop>
	Last set from Lua
x  ,snÞ        * <Nop>
	Last set from Lua
x  ,sÞ         * <Nop>
	Last set from Lua
x  ,qÞ         * <Nop>
	Last set from Lua
x  ,Þ          * <Nop>
	Last set from Lua
x  ,           * <Cmd>lua require("which-key").show(",", {mode = "v", auto = true})<CR>
	Last set from Lua
n  ,<Tab>Þ     * <Nop>
	Last set from Lua
n  ,wÞ         * <Nop>
	Last set from Lua
n  ,xÞ         * <Nop>
	Last set from Lua
n  ,uÞ         * <Nop>
	Last set from Lua
n  ,snÞ        * <Nop>
	Last set from Lua
n  ,sÞ         * <Nop>
	Last set from Lua
n  ,bÞ         * <Nop>
	Last set from Lua
n  ,fÞ         * <Nop>
	Last set from Lua
n  ,hÞ         * <Nop>
	Last set from Lua
n  ,qÞ         * <Nop>
	Last set from Lua
n  ,lÞ         * <Nop>
	Last set from Lua
n  ,aÞ         * <Nop>
	Last set from Lua
n  ,gÞ         * <Nop>
	Last set from Lua
n  ,dÞ         * <Nop>
	Last set from Lua
n  ,cÞ         * <Nop>
	Last set from Lua
n  ,mÞ         * <Nop>
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
n  ,fT         * <Lua 749: ~/.config/nvim-Lazyman/lua/keymaps.lua:175>
                 Terminal (cwd)
	Last set from Lua
n  ,ft         * <Lua 750: ~/.config/nvim-Lazyman/lua/keymaps.lua:174>
                 Terminal (root dir)
	Last set from Lua
n  ,ui         * <Lua 751: /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/lua/vim/_inspector.lua:143>
                 Inspect Pos
	Last set from Lua
n  ,qq         * <Cmd>qa<CR>
                 Quit all
	Last set from Lua
n  ,gi         * <Lua 752: ~/.local/share/nvim-Lazyman/lazy/gitignore.nvim/lua/gitignore/init.lua:103>
                 Generate .gitignore
	Last set from Lua
n  ,snl        * <Lua 66: ~/.config/nvim-Lazyman/lua/plugins/ui.lua:76>
                 Noice Last Message
	Last set from Lua
n  ,snh        * <Lua 64: ~/.config/nvim-Lazyman/lua/plugins/ui.lua:77>
                 Noice History
	Last set from Lua
n  ,sna        * <Lua 63: ~/.config/nvim-Lazyman/lua/plugins/ui.lua:78>
                 Noice All
	Last set from Lua
n  ,s?         * <Cmd>Telescope help_tags<CR>
                 Help
	Last set from Lua
n  ,sO         * <Cmd>Telescope vim_options<CR>
                 Vim Options
	Last set from Lua
n  ,so         * <Cmd>Telescope vim_options<CR>
                 Options
	Last set from Lua
n  ,/          * <Lua 129: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Find in Files (Grep)
	Last set from Lua
n  ,sm         * <Cmd>Telescope marks<CR>
                 Jump to Mark
	Last set from Lua
n  ,sR         * <Cmd>Telescope regiesters<CR>
                 Registers
	Last set from Lua
n  ,sM         * <Cmd>Telescope man_pages<CR>
                 Man Pages
	Last set from Lua
n  ,sw         * <Lua 125: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Word (root dir)
	Last set from Lua
n  ,gg         * <Cmd>Telescope git_status<CR>
                 Status
	Last set from Lua
n  ,s:         * <Cmd>Telescope search_history<CR>
                 Search History
	Last set from Lua
n  ,sW         * <Lua 122: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Word (cwd)
	Last set from Lua
n  ,gm         * <Cmd>Telescope git_commits<CR>
                 Commits
	Last set from Lua
n  ,uC         * <Lua 120: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Colorscheme with preview
	Last set from Lua
n  ,sf         * <Cmd>lua require'telescope.builtin'.grep_string{ shorten_path = true, word_match = '-w', only_sort_text = true, search = '' }<CR>
                 Fuzzy search
	Last set from Lua
n  ,gh         * <Cmd>Telescope git_branches<CR>
                 Branches
	Last set from Lua
n  ,ss         * <Cmd>Telescope grep_string<CR>
                 Text under cursor
	Last set from Lua
n  ,fz         * <Cmd>Telescope zoxide list<CR>
                 Zoxide
	Last set from Lua
n  ,s;         * <Cmd>Telescope command_history<CR>
                 Command history
	Last set from Lua
n  ,ff         * <Cmd>Telescope git_files<CR>
                 Open file
	Last set from Lua
n  ,sS         * <Cmd>Telescope symbols<CR>
                 Emoji
	Last set from Lua
n  ,st         * <Cmd>Telescope live_grep<CR>
                 Strings
	Last set from Lua
n  ,bb         * <Cmd>Telescope buffers<CR>
                 Bufferlist
	Last set from Lua
n  ,fF         * <Lua 110: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Find Files (cwd)
	Last set from Lua
n  ,fr         * <Cmd>Telescope oldfiles prompt_title=Recent<CR>
                 Recent files
	Last set from Lua
n  ,gc         * <Cmd>Telescope git_commits<CR>
                 commits
	Last set from Lua
n  ,gs         * <Cmd>Telescope git_status<CR>
                 status
	Last set from Lua
n  ,sa         * <Cmd>Telescope autocommands<CR>
                 Auto Commands
	Last set from Lua
n  ,sb         * <Cmd>Telescope current_buffer_fuzzy_find<CR>
                 Buffer
	Last set from Lua
n  ,sc         * <Cmd>Telescope commands<CR>
                 Commands
	Last set from Lua
n  ,sC         * <Cmd>Telescope commands<CR>
                 Commands
	Last set from Lua
n  ,sd         * <Cmd>Telescope diagnostics<CR>
                 Diagnostics
	Last set from Lua
n  ,sg         * <Lua 101: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Grep (root dir)
	Last set from Lua
n  ,sG         * <Lua 100: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Grep (cwd)
	Last set from Lua
n  ,sh         * <Cmd>Telescope heading<CR>
                 Headings
	Last set from Lua
n  ,sH         * <Cmd>Telescope highlights<CR>
                 Search Highlight Groups
	Last set from Lua
n  ,,          * <Cmd>Telescope buffers show_all_buffers=true<CR>
                 Switch Buffer
	Last set from Lua
n  ,mm         * <Cmd>Telescope make<CR>
                 Run make
	Last set from Lua
n  ,sk         * <Cmd>Telescope keymaps<CR>
                 Keymaps
	Last set from Lua
n  ,mt         * <Cmd>Telescope<CR>
                 Telescope
	Last set from Lua
n  ,:          * <Cmd>Telescope command_history<CR>
                 Command History
	Last set from Lua
n  ,<Space>    * <Lua 92: ~/.config/nvim-Lazyman/lua/utils/utils.lua:151>
                 Find Files (root dir)
	Last set from Lua
n  ,fb         * <Cmd>Telescope file_browser grouped=true<CR>
                 Filebrowser
	Last set from Lua
n  ,gG         * <Lua 783: ~/.config/nvim-Lazyman/lua/keymaps.lua:159>
                 Lazygit (cwd)
	Last set from Lua
n  ,uc         * <Lua 784: ~/.config/nvim-Lazyman/lua/keymaps.lua:153>
                 Toggle Conceal
	Last set from Lua
n  ,ul         * <Lua 785: ~/.config/nvim-Lazyman/lua/keymaps.lua:147>
                 Toggle Line Numbers
	Last set from Lua
n  ,uw         * <Lua 786: ~/.config/nvim-Lazyman/lua/keymaps.lua:146>
                 Toggle Word Wrap
	Last set from Lua
n  ,us         * <Lua 787: ~/.config/nvim-Lazyman/lua/keymaps.lua:145>
                 Toggle Spelling
	Last set from Lua
n  ,uf         * <Lua 91: ~/.config/nvim-Lazyman/lua/config/lsp/format.lua:7>
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
n  ,k          * <Lua 788: ~/.config/nvim-Lazyman/lua/keymaps.lua:119>
                 toggle signature
	Last set from Lua
n  ,ur         * <Cmd>nohlsearch|diffupdate|normal! <C-L><CR>
                 Redraw / clear hlsearch / diff update
	Last set from Lua
n  ,`          * <Cmd>e #<CR>
                 Switch to Other Buffer
	Last set from Lua
n  ,T          * :Neotree toggle<CR>
	Last set from Lua
n  ,av         * <Cmd>:Asciiville<CR>
                 Asciiville
	Last set from Lua
n  ,lc         * <Cmd>:Lazyconf<CR>
                 Lazyman configuration
	Last set from Lua
n  ,lm         * <Cmd>:Lazyman<CR>
                 Lazyman menu
	Last set from Lua
n  ,G          * <Cmd>:Lazygit<CR>
                 Lazygit command
	Last set from Lua
n  ,H          * <Cmd>:Htop<CR>
                 Htop command
	Last set from Lua
n  ,hl         * <Cmd>:help Lazyman<CR>
                 Lazyman Help
	Last set from Lua
n  ,o          * <Cmd>:options<CR>
                 Options
	Last set from Lua
n  ,M          * <Cmd>:Mason<CR>
                 Mason Menu
	Last set from Lua
n  ,U          * <Cmd>:Lazy update<CR>
                 Lazy Update
	Last set from Lua
n  ,L          * <Cmd>:Lazy<CR>
                 Lazy Menu
	Last set from Lua
n  ,ad         * <Cmd>Alpha<CR>
	Last set from Lua
n  ,xT         * <Cmd>TodoTrouble keywords=TODO,FIX,FIXME<CR>
                 Todo/Fix/Fixme (Trouble)
	Last set from Lua
n  ,xt         * <Cmd>TodoTrouble<CR>
                 Todo (Trouble)
	Last set from Lua
n  ,dt         * <Lua 559: ~/.config/nvim-Lazyman/lua/config/lspconfig.lua:91>
                 Toggle diagnostics
	Last set from Lua
n  ,dq         * <Lua 558: /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/lua/vim/diagnostic.lua:1527>
                 Set diagnostics location list
	Last set from Lua
n  ,de         * <Lua 517: /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/lua/vim/diagnostic.lua:1272>
                 Open float
	Last set from Lua
n  ,cm         * <Cmd>Mason<CR>
                 Mason
	Last set from Lua
n  ,xX         * <Cmd>TroubleToggle workspace_diagnostics<CR>
                 Workspace Diagnostics (Trouble)
	Last set from Lua
n  ,xL         * <Cmd>TroubleToggle loclist<CR>
                 Location List (Trouble)
	Last set from Lua
n  ,xx         * <Cmd>TroubleToggle document_diagnostics<CR>
                 Document Diagnostics (Trouble)
	Last set from Lua
n  ,xQ         * <Cmd>TroubleToggle quickfix<CR>
                 Quickfix List (Trouble)
	Last set from Lua
n  ,ut         * <Lua 195: ~/.config/nvim-Lazyman/lua/themes/tokyonight.lua:82>
                 Toggle Transparency
	Last set from Lua
n  ,e          * <Lua 149: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Explorer (root dir)
	Last set from Lua
n  ,E          * <Lua 145: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Explorer Float
	Last set from Lua
n  ,D          * <Lua 143: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Close Buffer
	Last set from Lua
n  ,t          * <Lua 67: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
	Last set from Lua
n  <aÞ         * <Nop>
	Last set from Lua
n  <iÞ         * <Nop>
	Last set from Lua
n  <Þ          * <Nop>
	Last set from Lua
n  <           * <Cmd>lua require("which-key").show("<", {mode = "n", auto = true})<CR>
	Last set from Lua
v  <           * <gv
	Last set from Lua
n  >aÞ         * <Nop>
	Last set from Lua
n  >iÞ         * <Nop>
	Last set from Lua
n  >Þ          * <Nop>
	Last set from Lua
n  >           * <Cmd>lua require("which-key").show(">", {mode = "n", auto = true})<CR>
	Last set from Lua
v  >           * >gv
	Last set from Lua
n  @Þ          * <Nop>
	Last set from Lua
n  @           * <Cmd>lua require("which-key").show("@", {mode = "n", auto = true})<CR>
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
n  [[          * <Lua 621: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:188>
                 Prev Reference
	Last set from Lua
n  [t          * <Lua 164: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:283>
                 Previous todo comment
	Last set from Lua
n  [d          * <Lua 519: /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/lua/vim/diagnostic.lua:807>
	Last set from Lua
n  [q          * <Lua 162: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:251>
                 Previous trouble/quickfix item
	Last set from Lua
o  [%            <Plug>(MatchitOperationMultiBackward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 81
x  [%            <Plug>(MatchitVisualMultiBackward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 79
n  [%            <Plug>(MatchitNormalMultiBackward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 77
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
n  ]]          * <Lua 620: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:188>
                 Next Reference
	Last set from Lua
n  ]t          * <Lua 172: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:282>
                 Next todo comment
	Last set from Lua
n  ]d          * <Lua 557: /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/lua/vim/diagnostic.lua:853>
	Last set from Lua
n  ]q          * <Lua 160: ~/.config/nvim-Lazyman/lua/plugins/editor.lua:262>
                 Next trouble/quickfix item
	Last set from Lua
o  ]%            <Plug>(MatchitOperationMultiForward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 82
x  ]%            <Plug>(MatchitVisualMultiForward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 80
n  ]%            <Plug>(MatchitNormalMultiForward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 78
n  `           * <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})<CR>
	Last set from Lua
x  aÞ          * <Nop>
	Last set from Lua
x  a           * <Cmd>lua require("which-key").show("a", {mode = "v", auto = true})<CR>
	Last set from Lua
x  a%            <Plug>(MatchitVisualTextObject)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 85
n  caÞ         * <Nop>
	Last set from Lua
n  ciÞ         * <Nop>
	Last set from Lua
n  cÞ          * <Nop>
	Last set from Lua
n  c           * <Cmd>lua require("which-key").show("c", {mode = "n", auto = true})<CR>
	Last set from Lua
n  daÞ         * <Nop>
	Last set from Lua
n  diÞ         * <Nop>
	Last set from Lua
n  dÞ          * <Nop>
	Last set from Lua
n  d           * <Cmd>lua require("which-key").show("d", {mode = "n", auto = true})<CR>
	Last set from Lua
x  gzÞ         * <Nop>
	Last set from Lua
n  gzÞ         * <Nop>
	Last set from Lua
x  gÞ          * <Nop>
	Last set from Lua
x  g           * <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})<CR>
	Last set from Lua
n  guaÞ        * <Nop>
	Last set from Lua
n  guiÞ        * <Nop>
	Last set from Lua
n  guÞ         * <Nop>
	Last set from Lua
n  g~aÞ        * <Nop>
	Last set from Lua
n  g~iÞ        * <Nop>
	Last set from Lua
n  g~Þ         * <Nop>
	Last set from Lua
n  gUaÞ        * <Nop>
	Last set from Lua
n  gUiÞ        * <Nop>
	Last set from Lua
n  gUÞ         * <Nop>
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
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 74
x  g%            <Plug>(MatchitVisualBackward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 72
n  g%            <Plug>(MatchitNormalBackward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 70
x  iÞ          * <Nop>
	Last set from Lua
x  i           * <Cmd>lua require("which-key").show("i", {mode = "v", auto = true})<CR>
	Last set from Lua
n  j           * v:count == 0 ? 'gj' : 'j'
	Last set from Lua
n  k           * v:count == 0 ? 'gk' : 'k'
	Last set from Lua
x  mÞ          * <Nop>
	Last set from Lua
x  m           * <Cmd>lua require("which-key").show("m", {mode = "v", auto = true})<CR>
	Last set from Lua
n  mÞ          * <Nop>
	Last set from Lua
n  m           * <Cmd>lua require("which-key").show("m", {mode = "n", auto = true})<CR>
	Last set from Lua
o  mt          * <Cmd>lua MiniComment.textobject()<CR>
                 Comment textobject
	Last set from Lua
n  ml          * v:lua.MiniComment.operator() . "_"
                 Comment line
	Last set from Lua
x  mc          * :<C-U>lua MiniComment.operator('visual')<CR>
                 Comment selection
	Last set from Lua
n  mc          * v:lua.MiniComment.operator()
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
x  sÞ          * <Nop>
	Last set from Lua
x  s           * <Cmd>lua require("which-key").show("s", {mode = "v", auto = true})<CR>
	Last set from Lua
n  sÞ          * <Nop>
	Last set from Lua
n  s           * <Cmd>lua require("which-key").show("s", {mode = "n", auto = true})<CR>
	Last set from Lua
n  sh          * <Lua 142: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Highlight surrounding
	Last set from Lua
n  sr          * <Lua 141: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Replace surrounding
	Last set from Lua
n  sF          * <Lua 140: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Find left surrounding
	Last set from Lua
n  sd          * <Lua 139: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Delete surrounding
	Last set from Lua
n  sf          * <Lua 138: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Find right surrounding
	Last set from Lua
n  sn          * <Lua 137: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Update `MiniSurround.config.n_lines`
	Last set from Lua
v  sa          * <Lua 134: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Add surrounding
	Last set from Lua
n  sa          * <Lua 133: ~/.local/share/nvim-Lazyman/lazy/lazy.nvim/lua/lazy/core/handler/keys.lua:67>
                 Add surrounding
	Last set from Lua
n  vaÞ         * <Nop>
	Last set from Lua
n  viÞ         * <Nop>
	Last set from Lua
n  vÞ          * <Nop>
	Last set from Lua
n  v           * <Cmd>lua require("which-key").show("v", {mode = "n", auto = true})<CR>
	Last set from Lua
n  yaÞ         * <Nop>
	Last set from Lua
n  yiÞ         * <Nop>
	Last set from Lua
n  yÞ          * <Nop>
	Last set from Lua
n  y           * <Cmd>lua require("which-key").show("y", {mode = "n", auto = true})<CR>
	Last set from Lua
n  y<C-G>      & :<C-U>call setreg(v:register, fugitive#Object(@%))<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/vim-fugitive/plugin/fugitive.vim line 746
x  zÞ          * <Nop>
	Last set from Lua
x  z           * <Cmd>lua require("which-key").show("z", {mode = "v", auto = true})<CR>
	Last set from Lua
x  zb          * <Cmd>lua require('neoscroll').zb(250)<CR>
	Last set from Lua
n  zb          * <Cmd>lua require('neoscroll').zb(250)<CR>
	Last set from Lua
x  zz          * <Cmd>lua require('neoscroll').zz(250)<CR>
	Last set from Lua
n  zz          * <Cmd>lua require('neoscroll').zz(250)<CR>
	Last set from Lua
x  zt          * <Cmd>lua require('neoscroll').zt(250)<CR>
	Last set from Lua
n  zt          * <Cmd>lua require('neoscroll').zt(250)<CR>
	Last set from Lua
n  zfaÞ        * <Nop>
	Last set from Lua
n  zfiÞ        * <Nop>
	Last set from Lua
n  zfÞ         * <Nop>
	Last set from Lua
n  zÞ          * <Nop>
	Last set from Lua
n  z           * <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})<CR>
	Last set from Lua
s  <C-F>       * <Lua 1068: ~/.local/share/nvim-Lazyman/lazy/nvim-cmp/lua/cmp/utils/keymap.lua:127>
                 cmp.utils.keymap.set_map
	Last set from Lua
s  <C-B>       * <Lua 1023: ~/.local/share/nvim-Lazyman/lazy/nvim-cmp/lua/cmp/utils/keymap.lua:127>
                 cmp.utils.keymap.set_map
	Last set from Lua
x  <C-F>       * <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)<CR>
	Last set from Lua
n  <C-F>       * <Cmd>lua require('neoscroll').scroll(vim.api.nvim_win_get_height(0), true, 450)<CR>
	Last set from Lua
x  <C-B>       * <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)<CR>
	Last set from Lua
n  <C-B>       * <Cmd>lua require('neoscroll').scroll(-vim.api.nvim_win_get_height(0), true, 450)<CR>
	Last set from Lua
x  <C-Y>       * <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)<CR>
	Last set from Lua
n  <C-Y>       * <Cmd>lua require('neoscroll').scroll(-0.10, false, 100)<CR>
	Last set from Lua
x  <C-E>       * <Cmd>lua require('neoscroll').scroll(0.10, false, 100)<CR>
	Last set from Lua
n  <C-E>       * <Cmd>lua require('neoscroll').scroll(0.10, false, 100)<CR>
	Last set from Lua
x  <C-U>       * <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)<CR>
	Last set from Lua
n  <C-U>       * <Cmd>lua require('neoscroll').scroll(-vim.wo.scroll, true, 250)<CR>
	Last set from Lua
x  <C-D>       * <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)<CR>
	Last set from Lua
n  <C-D>       * <Cmd>lua require('neoscroll').scroll(vim.wo.scroll, true, 250)<CR>
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
n  <C-K>       * <Lua 10: ~/.config/nvim-Lazyman/lua/keymaps.lua:115>
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
x  <M-i>       * <Lua 617: ~/.local/share/nvim-Lazyman/lazy/vim-illuminate/lua/illuminate.lua:292>
	Last set from Lua line 45
o  <M-i>       * <Lua 616: ~/.local/share/nvim-Lazyman/lazy/vim-illuminate/lua/illuminate.lua:292>
	Last set from Lua line 45
n  <M-p>       * <Lua 615: ~/.local/share/nvim-Lazyman/lazy/vim-illuminate/lua/illuminate.lua:285>
                 Move to previous reference
	Last set from Lua line 45
n  <M-n>       * <Lua 153: ~/.local/share/nvim-Lazyman/lazy/vim-illuminate/lua/illuminate.lua:278>
                 Move to next reference
	Last set from Lua line 45
s  <Plug>luasnip-jump-prev * <Lua 466: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:57>
	Last set from Lua
s  <Plug>luasnip-jump-next * <Lua 465: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:54>
	Last set from Lua
s  <Plug>luasnip-prev-choice * <Lua 464: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:51>
	Last set from Lua
s  <Plug>luasnip-next-choice * <Lua 463: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:48>
	Last set from Lua
s  <Plug>luasnip-expand-snippet * <Lua 462: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:45>
	Last set from Lua
s  <Plug>luasnip-expand-or-jump * <Lua 461: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:42>
	Last set from Lua
   <Plug>luasnip-expand-repeat * <Lua 459: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:35>
	Last set from Lua
n  <Plug>luasnip-delete-check * <Lua 457: ~/.local/share/nvim-Lazyman/lazy/LuaSnip/plugin/luasnip.lua:28>
	Last set from Lua
s  <S-Tab>     * <Lua 61: ~/.local/share/nvim-Lazyman/lazy/nvim-cmp/lua/cmp/utils/keymap.lua:127>
                 cmp.utils.keymap.set_map
	Last set from Lua
n  <Plug>PlenaryTestFile * :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/plenary.nvim/plugin/plenary.vim line 9
x  <Plug>(MatchitVisualTextObject)   <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 66
o  <Plug>(MatchitOperationMultiForward) * :<C-U>call matchit#MultiMatch("W",  "o")<CR>
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 63
o  <Plug>(MatchitOperationMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "o")<CR>
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 62
x  <Plug>(MatchitVisualMultiForward) * :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv``
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 61
x  <Plug>(MatchitVisualMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv``
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 60
n  <Plug>(MatchitNormalMultiForward) * :<C-U>call matchit#MultiMatch("W",  "n")<CR>
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 59
n  <Plug>(MatchitNormalMultiBackward) * :<C-U>call matchit#MultiMatch("bW", "n")<CR>
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 58
o  <Plug>(MatchitOperationBackward) * :<C-U>call matchit#Match_wrapper('',0,'o')<CR>
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 55
o  <Plug>(MatchitOperationForward) * :<C-U>call matchit#Match_wrapper('',1,'o')<CR>
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 54
x  <Plug>(MatchitVisualBackward) * :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv``
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 53
x  <Plug>(MatchitVisualForward) * :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv``
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 51
n  <Plug>(MatchitNormalBackward) * :<C-U>call matchit#Match_wrapper('',0,'n')<CR>
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 50
n  <Plug>(MatchitNormalForward) * :<C-U>call matchit#Match_wrapper('',1,'n')<CR>
	Last set from /home/linuxbrew/.linuxbrew/Cellar/neovim/0.9.0/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim line 49
n  <Plug>fugitive: & <Nop>
	Last set from ~/.local/share/nvim-Lazyman/lazy/vim-fugitive/plugin/fugitive.vim line 721
n  <Plug>fugitive:y<C-G> & :<C-U>call setreg(v:register, fugitive#Object(@%))<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/vim-fugitive/plugin/fugitive.vim line 720
n  <F9>        * :call NextColor(0)<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/SetColorSchemes.vim/plugin/setcolorschemes.vim line 116
n  <F8>        * :call NextColor(1)<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/SetColorSchemes.vim/plugin/setcolorschemes.vim line 115
n  <F7>        * :call NextColor(-1)<CR>
	Last set from ~/.local/share/nvim-Lazyman/lazy/SetColorSchemes.vim/plugin/setcolorschemes.vim line 114
n  <C-L>       * <C-W>l
                 Go to right window
	Last set from Lua
```
