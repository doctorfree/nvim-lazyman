# SeniorMars Neovim Configuration Information

The popular personal Neovim configuration of SeniorMars

- Install and initialize: **`lazyman -w SeniorMars`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     Custom
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-SeniorMars`**

## Git repository

[https://github.com/SeniorMars/dotfiles](https://github.com/SeniorMars/dotfiles)

## Dotfyle entry

[https://dotfyle.com/SeniorMars/dotfiles-config-nvim](https://dotfyle.com/SeniorMars/dotfiles-config-nvim)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)
- [rmagatti/auto-session](https://github.com/rmagatti/auto-session.git)
- [uga-rosa/ccc.nvim](https://github.com/uga-rosa/ccc.nvim.git)
- [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim.git)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua.git)
- [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim.git)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [ellisonleao/gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [nmac427/guess-indent.nvim](https://github.com/nmac427/guess-indent.nvim.git)
- [edluffy/hologram.nvim](https://github.com/edluffy/hologram.nvim.git)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [smjonas/live-command.nvim](https://github.com/smjonas/live-command.nvim.git)
- [sbdchd/neoformat](https://github.com/sbdchd/neoformat.git)
- [danymat/neogen](https://github.com/danymat/neogen.git)
- [nvim-neorg/neorg](https://github.com/nvim-neorg/neorg)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf.git)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [haringsrob/nvim_context_vt](https://github.com/haringsrob/nvim_context_vt.git)
- [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [tami5/sqlite.lua](https://github.com/tami5/sqlite.lua)
- [wellle/targets.vim](https://github.com/wellle/targets.vim.git)
- [nvim-telescope/telescope-frecency.nvim](https://github.com/nvim-telescope/telescope-frecency.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [mhinz/vim-grepper](https://github.com/mhinz/vim-grepper.git)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [honza/vim-snippets](https://github.com/honza/vim-snippets.git)
- [puremourning/vimspector](https://github.com/puremourning/vimspector.git)
- [lervag/vimtex](https://github.com/lervag/vimtex)
- [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)

## SeniorMars Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> d</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua _G.diagnostic()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> q</code> |
| **Right hand side** | <code>:&lt;C-U&gt;CocList&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> o</code> |
| **Right hand side** | <code>:&lt;C-U&gt;CocList outline&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> c</code> |
| **Right hand side** | <code>:&lt;C-U&gt;CocList commands&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> e</code> |
| **Right hand side** | <code>:&lt;C-U&gt;CocList extensions&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> f</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-fix-current)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> g</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-codelens-action)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> x</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-codeaction-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> s</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-codeaction-source)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-codeaction-cursor)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> l</code> |
| **Right hand side** | <code>&lt;C-W&gt;l</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> k</code> |
| **Right hand side** | <code>&lt;C-W&gt;k</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> j</code> |
| **Right hand side** | <code>&lt;C-W&gt;j</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> h</code> |
| **Right hand side** | <code>&lt;C-W&gt;h</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> t</code> |
| **Right hand side** | <code>:ToggleTerm size=60 direction=vertical&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>  </code> |
| **Right hand side** | <code>:ToggleTerm size=15&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalForward)</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,lg</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua Lazygit_toggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,q</code> |
| **Right hand side** | <code>:lua VimtexPDFToggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,0</code> |
| **Right hand side** | <code>:silent !open -a Firefox %&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,gf</code> |
| **Right hand side** | <code>:Commits&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,gw</code> |
| **Right hand side** | <code>:Gwrite&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ge</code> |
| **Right hand side** | <code>:Gedit&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,gd</code> |
| **Right hand side** | <code>:Gdiff&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ga</code> |
| **Right hand side** | <code>:Git add %:p&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,gg</code> |
| **Right hand side** | <code>:Git&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,*</code> |
| **Right hand side** | <code>:Grepper -tool rg -cword -noprompt&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fS</code> |
| **Right hand side** | <code>:Rg </code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fs</code> |
| **Right hand side** | <code>:GrepperRg "" .&lt;Left&gt;&lt;Left&gt;&lt;Left&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fh</code> |
| **Right hand side** | <code>:Telescope help_tags&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fk</code> |
| **Right hand side** | <code>:Telescope keymaps&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ft</code> |
| **Right hand side** | <code>:Telescope treesitter&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fm</code> |
| **Right hand side** | <code>:Telescope man_pages&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fb</code> |
| **Right hand side** | <code>:Telescope buffers&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ff</code> |
| **Right hand side** | <code>:Telescope frecency workspace=CWD theme=ivy layout_config={height=0.4}&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,fl</code> |
| **Right hand side** | <code>:Telescope live_grep&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,,f</code> |
| **Right hand side** | <code>:Telescope git_files&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,wk</code> |
| **Right hand side** | <code>&lt;C-W&gt;t&lt;C-H&gt;K</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,wh</code> |
| **Right hand side** | <code>&lt;C-W&gt;t&lt;C-H&gt;H</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,sr</code> |
| **Right hand side** | <code>:%s/&lt;lt&gt;&lt;C-R&gt;&lt;C-W&gt;&gt;//g&lt;Left&gt;&lt;Left&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,5</code> |
| **Right hand side** | <code>:lua SpellToggle()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,4</code> |
| **Right hand side** | <code>:Format&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,3</code> |
| **Right hand side** | <code>:retab&lt;CR&gt;:FixWhitespace&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,2</code> |
| **Right hand side** | <code>:bn&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,1</code> |
| **Right hand side** | <code>:bp&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,z</code> |
| **Right hand side** | <code>[s1z=``</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,sf</code> |
| **Right hand side** | <code>:source %&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,p</code> |
| **Right hand side** | <code>"+gp</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,P</code> |
| **Right hand side** | <code>"+gP</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cp</code> |
| **Right hand side** | <code>:cprevious&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cn</code> |
| **Right hand side** | <code>:cnext&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cc</code> |
| **Right hand side** | <code>:bdelete&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,cd</code> |
| **Right hand side** | <code>:cd %:p:h&lt;CR&gt;:pwd&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,e</code> |
| **Right hand side** | <code>:Neoformat&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,lm</code> |
| **Right hand side** | <code>:Neorg inject-metadata&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,lc</code> |
| **Right hand side** | <code>:Neorg keybind all core.looking-glass.magnify-code-block&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,wd</code> |
| **Right hand side** | <code>:Neorg journal today&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,ww</code> |
| **Right hand side** | <code>:Neorg workspace notes&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,u</code> |
| **Right hand side** | <code>:UndotreeToggle&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,t</code> |
| **Right hand side** | <code>:lua require('neogen').generate()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[g</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-diagnostic-prev)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>[%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]g</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-diagnostic-next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>]%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalMultiForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cp</code> |
| **Right hand side** | <code>yap&lt;lt&gt;S-}p</code> |

| **Description** | Change a surrounding pair, putting replacements on new lines |
| :---- | :---- |
| **Left hand side** | <code>cS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |

| **Description** | Change a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-change)</code> |

| **Description** | Delete a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | Comment insert end of line |
| :---- | :---- |
| **Left hand side** | <code>gcA</code> |
| **Right hand side** | |

| **Description** | Comment insert above |
| :---- | :---- |
| **Left hand side** | <code>gcO</code> |
| **Right hand side** | |

| **Description** | Comment insert below |
| :---- | :---- |
| **Left hand side** | <code>gco</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gr</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-references)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gi</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-implementation)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gy</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-type-definition)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gd</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-definition)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | <code>&lt;Plug&gt;(GrepperOperator)</code> |

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
| **Left hand side** | <code>g&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gnormal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gnormal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>j</code> |
| **Right hand side** | <code>(v:count ? 'j' : 'gj')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>k</code> |
| **Right hand side** | <code>(v:count ? 'k' : 'gk')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |

| **Description** | Add a surrounding pair around the current line (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |

| **Description** | Add a surrounding pair around a motion (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-K&gt;</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-rename)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>coc#float#has_scroll() ? coc#float#scroll(0) : "&lt;C-B&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>coc#float#has_scroll() ? coc#float#scroll(1) : "&lt;C-F&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Left&gt;</code> |
| **Right hand side** | <code>:vertical resize -2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Right&gt;</code> |
| **Right hand side** | <code>:vertical resize +2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Up&gt;</code> |
| **Right hand side** | <code>:resize -2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Down&gt;</code> |
| **Right hand side** | <code>:resize +2&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;BS&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;C-^</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-x&gt;</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;VimspectorDisassemble</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vimspector#ShowDisassembly()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorBreakpoints</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vimspector#ListBreakpoints()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorJumpToProgramCounter</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vimspector#JumpToProgramCounter()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorJumpToPreviousBreakpoint</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorJumpToPreviousBreakpoint" )&lt;CR&gt; :&lt;C-U&gt;call vimspector#JumpToPreviousBreakpoint()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorJumpToNextBreakpoint</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorJumpToNextBreakpoint" )&lt;CR&gt; :&lt;C-U&gt;call vimspector#JumpToNextBreakpoint()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorDownFrame</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorDownFrame" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#DownFrame()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorUpFrame</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorUpFrame" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#UpFrame()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorBalloonEval</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorBalloonEval" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#ShowEvalBalloon( 0 )&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorGoToCurrentLine</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorGoToCurrentLine" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#GoToCurrentLine()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorRunToCursor</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorRunToCursor" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#RunToCursor()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorStepOut</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorStepOut" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#StepOut()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorStepInto</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorStepInto" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#StepInto()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorStepOver</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorStepOver" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#StepOver()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorAddFunctionBreakpoint</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorAddFunctionBreakpoint" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#AddFunctionBreakpoint( expand( '&lt;lt&gt;cexpr&gt;' ) )&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorToggleConditionalBreakpoint</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorToggleConditionalBreakpoint" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#ToggleAdvancedBreakpoint()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorToggleBreakpoint</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorToggleBreakpoint" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#ToggleBreakpoint()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorPause</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vimspector#Pause()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorRestart</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vimspector#Restart()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorStop</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vimspector#Stop()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorLaunch</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call vimspector#Launch( v:true )&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorContinue</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;30_SetRepeat( "\&lt;Plug&gt;VimspectorContinue" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#Continue()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GrepperOperator)</code> |
| **Right hand side** | <code>:set opfunc=GrepperOperator&lt;CR&gt;g@</code> |

| **Description** | Change a surrounding pair, putting replacements on new lines |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-change-line)</code> |
| **Right hand side** | |

| **Description** | Change a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-change)</code> |
| **Right hand side** | |

| **Description** | Delete a surrounding pair |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-delete)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur-line)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion, on new lines (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-line)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around the current line (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal-cur)</code> |
| **Right hand side** | |

| **Description** | Add a surrounding pair around a motion (normal mode) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-normal)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | Comment toggle blockwise with count |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise with count |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_count)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_current)</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise)</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise)</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_normal()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_normal"&lt;CR&gt;g@&lt;Cmd&gt;lua require("dial.command").textobj()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-cursors-position)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('cursorsSelect', bufnr('%'), 'position', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-cursors-word)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('cursorsSelect', bufnr('%'), 'word', 'n')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-cursors-operator)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set operatorfunc=&lt;SNR&gt;6_CursorRangeFromSelected&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-refactor)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('refactor')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-command-repeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocAction('repeatCommand')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-float-jump)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       coc#float#jump()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-float-hide)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       coc#float#close_all()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-fix-current)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('doQuickfix')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-openlink)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('openLink')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-references-used)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('jumpUsed')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-references)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('jumpReferences')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-type-definition)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('jumpTypeDefinition')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-implementation)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('jumpImplementation')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-declaration)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('jumpDeclaration')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-definition)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('jumpDefinition')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-diagnostic-prev-error)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('diagnosticPrevious', 'error')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-diagnostic-next-error)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('diagnosticNext',     'error')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-diagnostic-prev)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('diagnosticPrevious')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-diagnostic-next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('diagnosticNext')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-diagnostic-info)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('diagnosticInfo')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-format)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('format')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-format-selected)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set        operatorfunc=&lt;SNR&gt;6_FormatFromSelected&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-rename)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('rename')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codeaction-source)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('codeAction', '', ['source'], v:true)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codeaction-refactor)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('codeAction', 'cursor', ['refactor'], v:true)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codeaction-cursor)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('codeAction', 'cursor')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codeaction-line)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('codeAction', 'currline')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codeaction)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('codeAction', '')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codeaction-refactor-selected)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set        operatorfunc=&lt;SNR&gt;6_CodeActionRefactorFromSelected&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codeaction-selected)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;set        operatorfunc=&lt;SNR&gt;6_CodeActionFromSelected&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codelens-action)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('codeLensAction')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-range-select)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('rangeSelect',     '', v:true)&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> a</code> |
| **Right hand side** | <code>&lt;Plug&gt;(coc-codeaction-selected)</code> |

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
| **Left hand side** | <code>,</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,y</code> |
| **Right hand side** | <code>"*y :let @+=@*&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>.</code> |
| **Right hand side** | <code>:norm.&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>@(targets)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call targets#do()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>A</code> |
| **Right hand side** | <code>targets#e('o', 'A', 'A')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>I</code> |
| **Right hand side** | <code>targets#e('o', 'I', 'I')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>J</code> |
| **Right hand side** | <code>:m '&gt;+1&lt;CR&gt;gv=gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>K</code> |
| **Right hand side** | <code>:m '&lt;lt&gt;-2&lt;CR&gt;gv=gv</code> |

| **Description** | Add a surrounding pair around a visual selection |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>a</code> |
| **Right hand side** | <code>targets#e('o', 'a', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gs</code> |
| **Right hand side** | <code>&lt;Plug&gt;(GrepperOperator)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gvisual"&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gvisual"&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_gvisual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_gvisual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i</code> |
| **Right hand side** | <code>targets#e('o', 'i', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>coc#float#has_scroll() ? coc#float#scroll(0) : "&lt;C-B&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>coc#float#has_scroll() ? coc#float#scroll(1) : "&lt;C-F&gt;"</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-X&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_visual"&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-A&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_visual"&lt;CR&gt;g@</code> |

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

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Add a surrounding pair around a visual selection, on new lines |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-visual-line)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = true })&lt;CR&gt;</code> |

| **Description** | Add a surrounding pair around a visual selection |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(nvim-surround-visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require'nvim-surround'.visual_surround({ line_mode = false })&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-decrement)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#decrement_visual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(dial-increment)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require"dial.command".select_augend_visual()&lt;CR&gt;&lt;Cmd&gt;let &opfunc="dial#operator#increment_visual"&lt;CR&gt;g@gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VimspectorBalloonEval</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;13_SetRepeat( "\&lt;Plug&gt;VimspectorBalloonEval" )&lt;CR&gt;:&lt;C-U&gt;call vimspector#ShowEvalBalloon( 1 )&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(GrepperOperator)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call GrepperOperator(visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-classobj-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('selectSymbolRange', v:false, visualmode(), ['Interface', 'Struct', 'Class'])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-classobj-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('selectSymbolRange', v:true, visualmode(), ['Interface', 'Struct', 'Class'])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-funcobj-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('selectSymbolRange', v:false, visualmode(), ['Method', 'Function'])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-funcobj-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('selectSymbolRange', v:true, visualmode(), ['Method', 'Function'])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-cursors-range)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('cursorsSelect', bufnr('%'), 'range', visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codeaction-refactor-selected)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('codeAction', visualmode(), ['refactor'], v:true)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-codeaction-selected)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('codeAction', visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-format-selected)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('formatSelected', visualmode())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-range-select-backward)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('rangeSelect',     visualmode(), v:false)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-range-select)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call       CocActionAsync('rangeSelect',     visualmode(), v:true)&lt;CR&gt;</code> |


### Operator mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>,</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>;</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>@(targets)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call targets#do()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>A</code> |
| **Right hand side** | <code>targets#e('o', 'A', 'A')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>F</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>I</code> |
| **Right hand side** | <code>targets#e('o', 'I', 'I')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>T</code> |
| **Right hand side** | |

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
| **Left hand side** | <code>a</code> |
| **Right hand side** | <code>targets#e('o', 'a', 'a')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>f</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitOperationBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>i</code> |
| **Right hand side** | <code>targets#e('o', 'i', 'i')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>t</code> |
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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-classobj-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('selectSymbolRange', v:false, '', ['Interface', 'Struct', 'Class'])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-classobj-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('selectSymbolRange', v:true, '', ['Interface', 'Struct', 'Class'])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-funcobj-a)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('selectSymbolRange', v:false, '', ['Method', 'Function'])&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(coc-funcobj-i)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call CocAction('selectSymbolRange', v:true, '', ['Method', 'Function'])&lt;CR&gt;</code> |

