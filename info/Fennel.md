# Fennel Neovim Configuration Information

An opinionated configuration reminiscent of Doom-Emacs, written in Fennel

- Install and initialize: **`lazyman -x Fennel`**
- Configuration category: [Starter](https://lazyman.dev/configurations/#starter-configurations)
- Base configuration:     Custom
- Plugin manager:         [Packer](https://github.com/wbthomason/packer.nvim)
- Installation location:  **`~/.config/nvim-Fennel`**

## Git repository

[https://github.com/jhchabran/nvim-config](https://github.com/jhchabran/nvim-config)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Packer managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [numtostr/FTerm.nvim](https://github.com/numtostr/FTerm.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [hrsh7th/cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip)
- [Olical/conjure](https://github.com/Olical/conjure)
- [junegunn/fzf](https://github.com/junegunn/fzf)
- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
- [lourenci/github-colors](https://github.com/lourenci/github-colors)
- [ruifm/gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [luisiacc/gruvbox-baby](https://github.com/luisiacc/gruvbox-baby)
- [lambdalisue/guise.vim](https://github.com/lambdalisue/guise.vim)
- [phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)
- [rktjmp/hotpot.nvim](https://github.com/rktjmp/hotpot.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [simrat39/inlay-hints.nvim](https://github.com/simrat39/inlay-hints.nvim)
- [ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind-nvim)
- [folke/lua-dev.nvim](https://github.com/folke/lua-dev.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [phaazon/mind.nvim](https://github.com/phaazon/mind.nvim)
- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
- [code-biscuits/nvim-biscuits](https://github.com/code-biscuits/nvim-biscuits)
- [ojroques/nvim-bufdel](https://github.com/ojroques/nvim-bufdel)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [kosayoda/nvim-lightbulb](https://github.com/kosayoda/nvim-lightbulb)
- [mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [ojroques/nvim-lspfuzzy](https://github.com/ojroques/nvim-lspfuzzy)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [gpanders/nvim-parinfer](https://github.com/gpanders/nvim-parinfer)
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)
- [tami5/sqlite.lua](https://github.com/tami5/sqlite.lua)
- [cshuaimin/ssr.nvim](https://github.com/cshuaimin/ssr.nvim)
- [nvim-telescope/telescope-dap.nvim](https://github.com/nvim-telescope/telescope-dap.nvim)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [nvim-telescope/telescope-frecency.nvim](https://github.com/nvim-telescope/telescope-frecency.nvim)
- [nvim-telescope/telescope-live-grep-args.nvim](https://github.com/nvim-telescope/telescope-live-grep-args.nvim)
- [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [jjo/vim-cue](https://github.com/jjo/vim-cue)
- [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [romainl/vim-qf](https://github.com/romainl/vim-qf)
- [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
- [psliwka/vim-smoothie](https://github.com/psliwka/vim-smoothie)
- [tpope/vim-surround](https://github.com/tpope/vim-surround)
- [vim-test/vim-test](https://github.com/vim-test/vim-test)
- [tpope/vim-vinegar](https://github.com/tpope/vim-vinegar)
- [bronson/vim-visual-star-search](https://github.com/bronson/vim-visual-star-search)
- [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [ziglang/zig.vim](https://github.com/ziglang/zig.vim)

## Fennel Keymaps

### Normal mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> *</code> |
| **Right hand side** | <code>:execute 'noautocmd vimgrep /\V' . substitute(escape(expand("&lt;lt&gt;cword&gt;"), '\'), '\n', '\\n', 'g') . '/ **'&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gy</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('n')&lt;CR&gt;</code> |

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
| **Left hand side** | <code>-</code> |
| **Right hand side** | <code>&lt;Plug&gt;VinegarUp</code> |

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
| **Left hand side** | <code>cS</code> |
| **Right hand side** | <code>&lt;Plug&gt;CSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | <code>&lt;Plug&gt;Csurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | <code>&lt;Plug&gt;Dsurround</code> |

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
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseX</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitNormalBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ySS</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ySs</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSsurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yss</code> |
| **Right hand side** | <code>&lt;Plug&gt;Yssurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>yS</code> |
| **Right hand side** | <code>&lt;Plug&gt;YSurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | <code>&lt;Plug&gt;Ysurround</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("zb") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z-</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z-") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("zz") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z.</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z.") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z&lt;CR&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z\&lt;lt&gt;CR&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("zt") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z^</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z^") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z+</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z+") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-cut-text)</code> |
| **Right hand side** | <code>:set operatorfunc=&lt;SNR&gt;60_vsnip_cut_text_normal&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-select-text)</code> |
| **Right hand side** | <code>:set operatorfunc=&lt;SNR&gt;60_vsnip_select_text_normal&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VinegarVerticalSplitUp</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;58_opendir('vsplit')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VinegarSplitUp</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;58_opendir('split')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VinegarTabUp</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;58_opendir('tabedit')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VinegarUp</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;58_opendir('edit')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;55_opfunc2('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Ysurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;55_opfunc('setup')</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;YSsurround</code> |
| **Right hand side** | <code>&lt;SNR&gt;55_opfunc2('setup').'_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Yssurround</code> |
| **Right hand side** | <code>'^'.v:count1.&lt;SNR&gt;55_opfunc('setup').'g_'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;CSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;55_changesurround(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Csurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;55_changesurround()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;Dsurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;55_dosurround(&lt;SNR&gt;55_inputtarget())&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;SurroundRepeat</code> |
| **Right hand side** | <code>.</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieBackwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#backwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieForwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#forwards()  &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieUpwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#upwards()   &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieDownwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#downwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;PageUp&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;PageUp&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Up&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;S-Up&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;C-B&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;PageDown&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;PageDown&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Down&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;S-Down&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;C-F&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;C-U&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;C-D&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_switch)</code> |
| **Right hand side** | <code>&filetype ==# 'qf' ? '&lt;C-W&gt;p' : '&lt;C-W&gt;b'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_loc_toggle_stay)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#toggle#ToggleLocWindow(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_loc_toggle)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#toggle#ToggleLocWindow(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_toggle_stay)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#toggle#ToggleQfWindow(1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_toggle)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#toggle#ToggleQfWindow(0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_loc_next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#wrap#WrapCommand('down', 'l')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_loc_previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#wrap#WrapCommand('up', 'l')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_next)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#wrap#WrapCommand('down', 'c')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(qf_qf_previous)</code> |
| **Right hand side** | <code>:&lt;C-U&gt; call qf#wrap#WrapCommand('up', 'c')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfSwitch</code> |
| **Right hand side** | <code>&filetype ==# 'qf' ? '&lt;C-W&gt;p' : '&lt;C-W&gt;b'</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfLtoggle</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_loc_toggle)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfCtoggle</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_qf_toggle)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfLnext</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_loc_next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfLprevious</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_loc_previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfCnext</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_qf_next)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;QfCprevious</code> |
| **Right hand side** | <code>&lt;Plug&gt;(qf_qf_previous)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;fugitive:y&lt;C-G&gt;</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call setreg(v:register, fugitive#Object(@%))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignOperator)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;51_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> |
| **Right hand side** | <code>:call &lt;SNR&gt;51_easy_align_repeat()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(LiveEasyAlign)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;51_live_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |
| **Right hand side** | <code>:set opfunc=&lt;SNR&gt;51_easy_align_op&lt;CR&gt;g@</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;PlenaryTestFile</code> |
| **Right hand side** | <code>:lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-maps-n)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call fzf#vim#maps('n', 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-normal)</code> |
| **Right hand side** | <code></code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-insert)</code> |
| **Right hand side** | <code>i</code> |

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
| **Left hand side** | <code>&lt;Plug&gt;(hotpot-operator-eval)</code> |
| **Right hand side** | <code>:lua require("hotpot.api.command")["eval-operator-bang"]()&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> *</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call VisualStarSearchSet('/')&lt;CR&gt;:execute 'noautocmd vimgrep /' . @/ . '/ **'&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> gy</code> |
| **Right hand side** | <code>&lt;Cmd&gt;lua require'gitlinker'.get_buf_range_url('v')&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call VisualStarSearchSet('?')&lt;CR&gt;?&lt;C-R&gt;=@/&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualForward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call VisualStarSearchSet('/')&lt;CR&gt;/&lt;C-R&gt;=@/&lt;CR&gt;&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;lt&gt;</code> |
| **Right hand side** | <code>&lt;lt&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&gt;</code> |
| **Right hand side** | <code>&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | <code>&lt;Plug&gt;VSurround</code> |

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
| **Left hand side** | <code>gS</code> |
| **Right hand side** | <code>&lt;Plug&gt;VgSurround</code> |

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
| **Left hand side** | <code>gx</code> |
| **Right hand side** | <code>&lt;Plug&gt;NetrwBrowseXVis</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g%</code> |
| **Right hand side** | <code>&lt;Plug&gt;(MatchitVisualBackward)</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zb</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("zb") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z-</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z-") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zz</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("zz") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z.</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z.") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z&lt;CR&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z\&lt;lt&gt;CR&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>zt</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("zt") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z^</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z^") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>z+</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("z+") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-cut-text)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;60_vsnip_visual_text(visualmode())&lt;CR&gt;gv"_c</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(vsnip-select-text)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;60_vsnip_visual_text(visualmode())&lt;CR&gt;gv</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VgSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;55_opfunc(visualmode(),visualmode() ==# 'V' ? 0 : 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;VSurround</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;55_opfunc(visualmode(),visualmode() ==# 'V' ? 1 : 0)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieBackwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#backwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieForwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#forwards()  &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieUpwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#upwards()   &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieDownwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#downwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;PageUp&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;PageUp&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Up&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;S-Up&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-B&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;C-B&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;PageDown&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;PageDown&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;S-Down&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;S-Down&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-F&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;C-F&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-U&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;C-U&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-D&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#do("\&lt;lt&gt;C-D&gt;") &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlignRepeat)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;51_repeat_in_visual()&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(LiveEasyAlign)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;51_live_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(EasyAlign)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call &lt;SNR&gt;51_easy_align_op(visualmode(), 1)&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-maps-x)</code> |
| **Right hand side** | <code>:&lt;C-U&gt;call fzf#vim#maps('x', 0)&lt;CR&gt;</code> |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_blockwise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())&lt;CR&gt;</code> |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(comment_toggle_linewise_visual)</code> |
| **Right hand side** | <code>&lt;Esc&gt;&lt;Cmd&gt;lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())&lt;CR&gt;</code> |

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

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieBackwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#backwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieForwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#forwards()  &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieUpwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#upwards()   &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(SmoothieDownwards)</code> |
| **Right hand side** | <code>&lt;Cmd&gt;call smoothie#downwards() &lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;Plug&gt;(fzf-maps-o)</code> |
| **Right hand side** | <code>&lt;C-C&gt;:&lt;C-U&gt;call fzf#vim#maps('o', 0)&lt;CR&gt;</code> |

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

