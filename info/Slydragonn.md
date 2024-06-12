# Slydragonn Neovim Configuration Information

[Introductory video](https://youtu.be/vkCnPdaRBE0)

- Install and initialize: **`lazyman -w Slydragonn`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Slydragonn`**

## Git repository

[https://github.com/slydragonn/dotfiles](https://github.com/slydragonn/dotfiles)

## YouTube channel

[https://www.youtube.com/@slydragonn](https://www.youtube.com/@slydragonn)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Packer managed plugins

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [xiyaowong/nvim-transparent](https://github.com/xiyaowong/nvim-transparent)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)

## Slydragonn Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> mn</code> |
| **Right hand side** | <code>&lt;Cmd&gt;MarkdownPreviewStop&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> m</code> |
| **Right hand side** | <code>&lt;Cmd&gt;MarkdownPreview&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> tv</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ToggleTerm size=80 direction=vertical&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> th</code> |
| **Right hand side** | <code>&lt;Cmd&gt;ToggleTerm size=10 direction=horizontal&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> o</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Neotree focus&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | <code>&lt;Cmd&gt;Neotree toggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> p</code> |
| **Right hand side** | <code>&lt;Cmd&gt;split&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ñ</code> |
| **Right hand side** | <code>&lt;Cmd&gt;vsplit&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> q</code> |
| **Right hand side** | <code>&lt;Cmd&gt;q&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> w</code> |
| **Right hand side** | <code>&lt;Cmd&gt;update&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fs</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fh</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fb</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> fg</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> ff</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | LuaSnip: Repeat last node expansion |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
| **Right hand side** | |

| **Description** | LuaSnip: Removes current snippet from jumplist |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-delete-check</code> |
| **Right hand side** | |

| **Description** | Toggle Terminal |
| :---- | :---- |
| **Left hand side** | <code>&lt;F7&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;execute v:count . "ToggleTerm"&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;C-Down&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;-</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Up&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;+</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Right&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-Left&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;&lt;lt&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-J&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-H&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Tab&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;bprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |


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
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | LuaSnip: Repeat last node expansion |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
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

| **Description** | LuaSnip: Repeat last node expansion |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;luasnip-expand-repeat</code> |
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

