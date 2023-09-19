# Vimacs Neovim Configuration Information

'NvChad' based Neovim configuration heavily inspired by Emacs philosophy

- Install and initialize: **`lazyman -w Vimacs`**
- Configuration category: [Personal](https://lazyman.dev/configurations/#personal-configurations)
- Base configuration:     [NvChad](https://nvchad.com)
- Plugin manager:         [Lazy](https://github.com/folke/lazy.nvim)
- Installation location:  **`~/.config/nvim-Vimacs`**

## Git repository

[https://github.com/UTFeight/vimacs](https://github.com/UTFeight/vimacs)

|  Jump  |   to   | Keymaps |
| :----: | :----: | :-----: |
| [Normal mode keymaps](#normal-mode-keymaps) | [Visual mode keymaps](#visual-mode-keymaps) | [Operator mode keymaps](#operator-mode-keymaps) |

## Lazy managed plugins

- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [NvChad/base46](https://github.com/NvChad/base46)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [NvChad/nvterm](https://github.com/NvChad/nvterm)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [bluz71/vim-nightfly-guicolors](https://github.com/bluz71/vim-nightfly-guicolors)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

## Vimacs Keymaps

### Normal mode keymaps

| **Description** | Find Project |
| :---- | :---- |
| **Left hand side** | <code> fp</code> |
| **Right hand side** | |

| **Description** | List Questions |
| :---- | :---- |
| **Left hand side** | <code> clq</code> |
| **Right hand side** | |

| **Description** | Submit Code |
| :---- | :---- |
| **Left hand side** | <code> cls</code> |
| **Right hand side** | |

| **Description** | Run Code |
| :---- | :---- |
| **Left hand side** | <code> clt</code> |
| **Right hand side** | |

| **Description** | Reset Code |
| :---- | :---- |
| **Left hand side** | <code> clr</code> |
| **Right hand side** | |

| **Description** | View Question |
| :---- | :---- |
| **Left hand side** | <code> cll</code> |
| **Right hand side** | |

| **Description** | Inline Variable |
| :---- | :---- |
| **Left hand side** | <code> ci</code> |
| **Right hand side** | |

| **Description** | Extract to file |
| :---- | :---- |
| **Left hand side** | <code> cf</code> |
| **Right hand side** | |

| **Description** | Refactor names |
| :---- | :---- |
| **Left hand side** | <code> cn</code> |
| **Right hand side** | |

| **Description** | Extract Block To File |
| :---- | :---- |
| **Left hand side** | <code> cg</code> |
| **Right hand side** | |

| **Description** | Extract To Block |
| :---- | :---- |
| **Left hand side** | <code> cb</code> |
| **Right hand side** | |

| **Description** | Extract To Variable |
| :---- | :---- |
| **Left hand side** | <code> cv</code> |
| **Right hand side** | |

| **Description** | Extract To Function |
| :---- | :---- |
| **Left hand side** | <code> ce</code> |
| **Right hand side** | |

| **Description** | List Refactorings |
| :---- | :---- |
| **Left hand side** | <code> cr</code> |
| **Right hand side** | |

| **Description** | Open Github Actions |
| :---- | :---- |
| **Left hand side** | <code> ga</code> |
| **Right hand side** | |

| **Description** | Rule of 5 |
| :---- | :---- |
| **Left hand side** | <code> cpp</code> |
| **Right hand side** | |

| **Description** | Rule of 3 |
| :---- | :---- |
| **Left hand side** | <code> cpo</code> |
| **Right hand side** | |

| **Description** | Make Concrete Class |
| :---- | :---- |
| **Left hand side** | <code> cpm</code> |
| **Right hand side** | |

| **Description** | Define Class function |
| :---- | :---- |
| **Left hand side** | <code> cpl</code> |
| **Right hand side** | |

| **Description** | Run Project |
| :---- | :---- |
| **Left hand side** | <code> rr</code> |
| **Right hand side** | |

| **Description** | Toggle Results |
| :---- | :---- |
| **Left hand side** | <code> rt</code> |
| **Right hand side** | |

| **Description** | Open interactive test session |
| :---- | :---- |
| **Left hand side** | <code> to</code> |
| **Right hand side** | |

| **Description** | Run tests for the session |
| :---- | :---- |
| **Left hand side** | <code> te</code> |
| **Right hand side** | |

| **Description** | View Undo Tree |
| :---- | :---- |
| **Left hand side** | <code> fg</code> |
| **Right hand side** | |

| **Description** | View buffer URLs |
| :---- | :---- |
| **Left hand side** | <code> fuu</code> |
| **Right hand side** | |

| **Description** | View Packer plugin URLs |
| :---- | :---- |
| **Left hand side** | <code> fuv</code> |
| **Right hand side** | |

| **Description** | View Packer plugin URLs |
| :---- | :---- |
| **Left hand side** | <code> fup</code> |
| **Right hand side** | |

| **Description** | View Lazy URLs |
| :---- | :---- |
| **Left hand side** | <code> ful</code> |
| **Right hand side** | |

| **Description** | Exception Breakpoints |
| :---- | :---- |
| **Left hand side** | <code> de</code> |
| **Right hand side** | |

| **Description** | Watches |
| :---- | :---- |
| **Left hand side** | <code> dw</code> |
| **Right hand side** | |

| **Description** | Variables |
| :---- | :---- |
| **Left hand side** | <code> dv</code> |
| **Right hand side** | |

| **Description** | Scopes |
| :---- | :---- |
| **Left hand side** | <code> du</code> |
| **Right hand side** | |

| **Description** | Evaluate |
| :---- | :---- |
| **Left hand side** | <code> da</code> |
| **Right hand side** | |

| **Description** | Toggle UI |
| :---- | :---- |
| **Left hand side** | <code> dd</code> |
| **Right hand side** | |

| **Description** | Open REPL |
| :---- | :---- |
| **Left hand side** | <code> dr</code> |
| **Right hand side** | |

| **Description** | Run Last |
| :---- | :---- |
| **Left hand side** | <code> dl</code> |
| **Right hand side** | |

| **Description** | Set Breakpoint |
| :---- | :---- |
| **Left hand side** | <code> dB</code> |
| **Right hand side** | |

| **Description** | Toggle Breakpoint |
| :---- | :---- |
| **Left hand side** | <code> db</code> |
| **Right hand side** | |

| **Description** | Step Out |
| :---- | :---- |
| **Left hand side** | <code> do</code> |
| **Right hand side** | |

| **Description** | Pick One |
| :---- | :---- |
| **Left hand side** | <code> di</code> |
| **Right hand side** | |

| **Description** | Step Over |
| :---- | :---- |
| **Left hand side** | <code> ds</code> |
| **Right hand side** | |

| **Description** | Continue |
| :---- | :---- |
| **Left hand side** | <code> dc</code> |
| **Right hand side** | |

| **Description** | UFO Mode |
| :---- | :---- |
| **Left hand side** | <code> mu</code> |
| **Right hand side** | |

| **Description** | Enable Lsp Lens |
| :---- | :---- |
| **Left hand side** | <code> cj</code> |
| **Right hand side** | |

| **Description** | Biscuit Mode |
| :---- | :---- |
| **Left hand side** | <code> mb</code> |
| **Right hand side** | |

| **Description** | Goyo Mode |
| :---- | :---- |
| **Left hand side** | <code> mg</code> |
| **Right hand side** | |

| **Description** | Eval Code Snip |
| :---- | :---- |
| **Left hand side** | <code> cmd</code> |
| **Right hand side** | |

| **Description** | Markdown Preview |
| :---- | :---- |
| **Left hand side** | <code> mp</code> |
| **Right hand side** | |

| **Description** | Browser Repo |
| :---- | :---- |
| **Left hand side** | <code> ghpb</code> |
| **Right hand side** | |

| **Description** | View Repo |
| :---- | :---- |
| **Left hand side** | <code> ghpv</code> |
| **Right hand side** | |

| **Description** | Url Repo |
| :---- | :---- |
| **Left hand side** | <code> ghpu</code> |
| **Right hand side** | |

| **Description** | Fork Repo |
| :---- | :---- |
| **Left hand side** | <code> ghpf</code> |
| **Right hand side** | |

| **Description** | List Repo |
| :---- | :---- |
| **Left hand side** | <code> ghpl</code> |
| **Right hand side** | |

| **Description** | List Actions |
| :---- | :---- |
| **Left hand side** | <code> gha</code> |
| **Right hand side** | |

| **Description** | List Gists |
| :---- | :---- |
| **Left hand side** | <code> ghg</code> |
| **Right hand side** | |

| **Description** | Checkout PR |
| :---- | :---- |
| **Left hand side** | <code> ghno</code> |
| **Right hand side** | |

| **Description** | Create PR |
| :---- | :---- |
| **Left hand side** | <code> ghnn</code> |
| **Right hand side** | |

| **Description** | Merge PR |
| :---- | :---- |
| **Left hand side** | <code> ghnm</code> |
| **Right hand side** | |

| **Description** | Open PR in Browser |
| :---- | :---- |
| **Left hand side** | <code> ghnb</code> |
| **Right hand side** | |

| **Description** | Reload PR |
| :---- | :---- |
| **Left hand side** | <code> ghnl</code> |
| **Right hand side** | |

| **Description** | PR Checks |
| :---- | :---- |
| **Left hand side** | <code> ghnh</code> |
| **Right hand side** | |

| **Description** | Check PR Commits |
| :---- | :---- |
| **Left hand side** | <code> ghnc</code> |
| **Right hand side** | |

| **Description** | Search PR |
| :---- | :---- |
| **Left hand side** | <code> ghns</code> |
| **Right hand side** | |

| **Description** | Close PR |
| :---- | :---- |
| **Left hand side** | <code> ghnt</code> |
| **Right hand side** | |

| **Description** | List PR |
| :---- | :---- |
| **Left hand side** | <code> ghnq</code> |
| **Right hand side** | |

| **Description** | PR Diff |
| :---- | :---- |
| **Left hand side** | <code> ghnd</code> |
| **Right hand side** | |

| **Description** | PR Changes |
| :---- | :---- |
| **Left hand side** | <code> ghnz</code> |
| **Right hand side** | |

| **Description** | Ready PR |
| :---- | :---- |
| **Left hand side** | <code> ghnp</code> |
| **Right hand side** | |

| **Description** | Search Github |
| :---- | :---- |
| **Left hand side** | <code> ghs</code> |
| **Right hand side** | |

| **Description** | Add Assignee |
| :---- | :---- |
| **Left hand side** | <code> ghoa</code> |
| **Right hand side** | |

| **Description** | Remove Assignee |
| :---- | :---- |
| **Left hand side** | <code> ghor</code> |
| **Right hand side** | |

| **Description** | Add Code Reviewer |
| :---- | :---- |
| **Left hand side** | <code> ghk</code> |
| **Right hand side** | |

| **Description** | Issue Browser |
| :---- | :---- |
| **Left hand side** | <code> ghib</code> |
| **Right hand side** | |

| **Description** | Reopen Issue |
| :---- | :---- |
| **Left hand side** | <code> ghir</code> |
| **Right hand side** | |

| **Description** | Create Issue |
| :---- | :---- |
| **Left hand side** | <code> ghic</code> |
| **Right hand side** | |

| **Description** | Search Issue |
| :---- | :---- |
| **Left hand side** | <code> ghis</code> |
| **Right hand side** | |

| **Description** | Url of Issue |
| :---- | :---- |
| **Left hand side** | <code> ghiu</code> |
| **Right hand side** | |

| **Description** | List Issue |
| :---- | :---- |
| **Left hand side** | <code> ghil</code> |
| **Right hand side** | |

| **Description** | Edit Issue |
| :---- | :---- |
| **Left hand side** | <code> ghie</code> |
| **Right hand side** | |

| **Description** | Close Issue |
| :---- | :---- |
| **Left hand side** | <code> ghix</code> |
| **Right hand side** | |

| **Description** | Reload Issue |
| :---- | :---- |
| **Left hand side** | <code> ghid</code> |
| **Right hand side** | |

| **Description** | Create Label |
| :---- | :---- |
| **Left hand side** | <code> ghlc</code> |
| **Right hand side** | |

| **Description** | Add Label |
| :---- | :---- |
| **Left hand side** | <code> ghla</code> |
| **Right hand side** | |

| **Description** | Remove Label |
| :---- | :---- |
| **Left hand side** | <code> ghlr</code> |
| **Right hand side** | |

| **Description** | Reopen PR  |
| :---- | :---- |
| **Left hand side** | <code> ghnr</code> |
| **Right hand side** | |

| **Description** | Edit PR |
| :---- | :---- |
| **Left hand side** | <code> ghne</code> |
| **Right hand side** | |

| **Description** | PR Url |
| :---- | :---- |
| **Left hand side** | <code> ghnu</code> |
| **Right hand side** | |

| **Description** | Unresolve Thread |
| :---- | :---- |
| **Left hand side** | <code> ght</code> |
| **Right hand side** | |

| **Description** | comments Review |
| :---- | :---- |
| **Left hand side** | <code> ghra</code> |
| **Right hand side** | |

| **Description** | Resume Review |
| :---- | :---- |
| **Left hand side** | <code> ghrr</code> |
| **Right hand side** | |

| **Description** | Discard Review |
| :---- | :---- |
| **Left hand side** | <code> ghrd</code> |
| **Right hand side** | |

| **Description** | Submit Review |
| :---- | :---- |
| **Left hand side** | <code> ghrs</code> |
| **Right hand side** | |

| **Description** | Commit Review |
| :---- | :---- |
| **Left hand side** | <code> ghrc</code> |
| **Right hand side** | |

| **Description** | Add Card |
| :---- | :---- |
| **Left hand side** | <code> ghca</code> |
| **Right hand side** | |

| **Description** | Remove Card |
| :---- | :---- |
| **Left hand side** | <code> ghcr</code> |
| **Right hand side** | |

| **Description** | Move Card |
| :---- | :---- |
| **Left hand side** | <code> ghcm</code> |
| **Right hand side** | |

| **Description** | Delete Comment |
| :---- | :---- |
| **Left hand side** | <code> ghjd</code> |
| **Right hand side** | |

| **Description** | Add Comment |
| :---- | :---- |
| **Left hand side** | <code> ghja</code> |
| **Right hand side** | |

| **Description** | React with thumbs_up |
| :---- | :---- |
| **Left hand side** | <code> ghuu</code> |
| **Right hand side** | |

| **Description** | React with thumbs_down |
| :---- | :---- |
| **Left hand side** | <code> ghud</code> |
| **Right hand side** | |

| **Description** | Upvote |
| :---- | :---- |
| **Left hand side** | <code> ghum</code> |
| **Right hand side** | |

| **Description** | React with eyes |
| :---- | :---- |
| **Left hand side** | <code> ghue</code> |
| **Right hand side** | |

| **Description** | React with laugh |
| :---- | :---- |
| **Left hand side** | <code> ghul</code> |
| **Right hand side** | |

| **Description** | React with confused |
| :---- | :---- |
| **Left hand side** | <code> ghuc</code> |
| **Right hand side** | |

| **Description** | React with hooray |
| :---- | :---- |
| **Left hand side** | <code> ghuo</code> |
| **Right hand side** | |

| **Description** | Downvote |
| :---- | :---- |
| **Left hand side** | <code> ghup</code> |
| **Right hand side** | |

| **Description** | React with tada |
| :---- | :---- |
| **Left hand side** | <code> ghut</code> |
| **Right hand side** | |

| **Description** | React with rocket |
| :---- | :---- |
| **Left hand side** | <code> ghur</code> |
| **Right hand side** | |

| **Description** | React with heart |
| :---- | :---- |
| **Left hand side** | <code> ghuh</code> |
| **Right hand side** | |

| **Description** | Open Crate Documentation in a PopUp |
| :---- | :---- |
| **Left hand side** | <code> cxK</code> |
| **Right hand side** | |

| **Description** | Open Crate on crates.io |
| :---- | :---- |
| **Left hand side** | <code> cxC</code> |
| **Right hand side** | |

| **Description** | Open Crate Documentation |
| :---- | :---- |
| **Left hand side** | <code> cxD</code> |
| **Right hand side** | |

| **Description** | Open Crate Repository |
| :---- | :---- |
| **Left hand side** | <code> cxR</code> |
| **Right hand side** | |

| **Description** | Open Crate Home Page |
| :---- | :---- |
| **Left hand side** | <code> cxH</code> |
| **Right hand side** | |

| **Description** | Extract Crate to table |
| :---- | :---- |
| **Left hand side** | <code> cxE</code> |
| **Right hand side** | |

| **Description** | Inline Crate to Table |
| :---- | :---- |
| **Left hand side** | <code> cxe</code> |
| **Right hand side** | |

| **Description** | Upgrade All Crates |
| :---- | :---- |
| **Left hand side** | <code> cxA</code> |
| **Right hand side** | |

| **Description** | Upgrade Crate |
| :---- | :---- |
| **Left hand side** | <code> cxU</code> |
| **Right hand side** | |

| **Description** | Update All Crates |
| :---- | :---- |
| **Left hand side** | <code> cxa</code> |
| **Right hand side** | |

| **Description** | Update Crate |
| :---- | :---- |
| **Left hand side** | <code> cxu</code> |
| **Right hand side** | |

| **Description** | Show Dependencies |
| :---- | :---- |
| **Left hand side** | <code> cxd</code> |
| **Right hand side** | |

| **Description** | Show Feature |
| :---- | :---- |
| **Left hand side** | <code> cxf</code> |
| **Right hand side** | |

| **Description** | Show Version |
| :---- | :---- |
| **Left hand side** | <code> cxv</code> |
| **Right hand side** | |

| **Description** | Reload |
| :---- | :---- |
| **Left hand side** | <code> cxr</code> |
| **Right hand side** | |

| **Description** | Toggle UI elements |
| :---- | :---- |
| **Left hand side** | <code> cxt</code> |
| **Right hand side** | |

| **Description** | Load Example |
| :---- | :---- |
| **Left hand side** | <code> ne</code> |
| **Right hand side** | |

| **Description** | Add Library |
| :---- | :---- |
| **Left hand side** | <code> na</code> |
| **Right hand side** | |

| **Description** | Format |
| :---- | :---- |
| **Left hand side** | <code> nf</code> |
| **Right hand side** | |

| **Description** | Compile Live |
| :---- | :---- |
| **Left hand side** | <code> nl</code> |
| **Right hand side** | |

| **Description** | Compile |
| :---- | :---- |
| **Left hand side** | <code> nc</code> |
| **Right hand side** | |

| **Description** | Goto Label |
| :---- | :---- |
| **Left hand side** | <code> ng</code> |
| **Right hand side** | |

| **Description** | Show Tooltip |
| :---- | :---- |
| **Left hand side** | <code> ns</code> |
| **Right hand side** | |

| **Description** | Delete Cache |
| :---- | :---- |
| **Left hand side** | <code> nd</code> |
| **Right hand side** | |

| **Description** | Open Website |
| :---- | :---- |
| **Left hand side** | <code> nw</code> |
| **Right hand side** | |

| **Description** | Confirm AI work |
| :---- | :---- |
| **Left hand side** | <code> aa</code> |
| **Right hand side** | |

| **Description** | Let AI Write Code |
| :---- | :---- |
| **Left hand side** | <code> ac</code> |
| **Right hand side** | |

| **Description** | Generate Document with AI |
| :---- | :---- |
| **Left hand side** | <code> ad</code> |
| **Right hand side** | |

| **Description** | AI Assistant |
| :---- | :---- |
| **Left hand side** | <code> ai</code> |
| **Right hand side** | |

| **Description** | AI Search |
| :---- | :---- |
| **Left hand side** | <code> as</code> |
| **Right hand side** | |

| **Description** | Lushify Colorscheme |
| :---- | :---- |
| **Left hand side** | <code> mll</code> |
| **Right hand side** | |

| **Description** | Lush Paste |
| :---- | :---- |
| **Left hand side** | <code> mlp</code> |
| **Right hand side** | |

| **Description** | Lush Tutorial |
| :---- | :---- |
| **Left hand side** | <code> mlt</code> |
| **Right hand side** | |

| **Description** | Lush Import |
| :---- | :---- |
| **Left hand side** | <code> mli</code> |
| **Right hand side** | |

| **Description** | Toggle All Buffers Annotations |
| :---- | :---- |
| **Left hand side** | <code> pt</code> |
| **Right hand side** | |

| **Description** | Annotate Function |
| :---- | :---- |
| **Left hand side** | <code> pf</code> |
| **Right hand side** | |

| **Description** | Annotate All Buffers |
| :---- | :---- |
| **Left hand side** | <code> pa</code> |
| **Right hand side** | |

| **Description** | Cycle Count Mode |
| :---- | :---- |
| **Left hand side** | <code> pi</code> |
| **Right hand side** | |

| **Description** | Cycle Profile Mode |
| :---- | :---- |
| **Left hand side** | <code> pe</code> |
| **Right hand side** | |

| **Description** | Load perf.log |
| :---- | :---- |
| **Left hand side** | <code> plo</code> |
| **Right hand side** | |

| **Description** | Load Full Call Graph |
| :---- | :---- |
| **Left hand side** | <code> plg</code> |
| **Right hand side** | |

| **Description** | Load perf.data |
| :---- | :---- |
| **Left hand side** | <code> plf</code> |
| **Right hand side** | |

| **Description** | Stop Profiling Lua |
| :---- | :---- |
| **Left hand side** | <code> pk</code> |
| **Right hand side** | |

| **Description** | Start Profiling Lua |
| :---- | :---- |
| **Left hand side** | <code> pn</code> |
| **Right hand side** | |

| **Description** | Hottest Symbols from Selection |
| :---- | :---- |
| **Left hand side** | <code> pc</code> |
| **Right hand side** | |

| **Description** | Hottest Symbols |
| :---- | :---- |
| **Left hand side** | <code> ps</code> |
| **Right hand side** | |

| **Description** | Hottest Lines |
| :---- | :---- |
| **Left hand side** | <code> ph</code> |
| **Right hand side** | |

| **Description** | Toggle Twilight |
| :---- | :---- |
| **Left hand side** | <code> mt</code> |
| **Right hand side** | |

| **Description** | Enable Cursor Mod Line |
| :---- | :---- |
| **Left hand side** | <code> md</code> |
| **Right hand side** | |

| **Description** | Search Cpp Manual |
| :---- | :---- |
| **Left hand side** | <code> fx</code> |
| **Right hand side** | |

| **Description** | Open Cpp Manual |
| :---- | :---- |
| **Left hand side** | <code> fd</code> |
| **Right hand side** | |

| **Description** | Toggle Harpoon Menu |
| :---- | :---- |
| **Left hand side** | <code> hm</code> |
| **Right hand side** | |

| **Description** | Telescope Harpoon |
| :---- | :---- |
| **Left hand side** | <code> hs</code> |
| **Right hand side** | |

| **Description** | Jump to previous file |
| :---- | :---- |
| **Left hand side** | <code> hp</code> |
| **Right hand side** | |

| **Description** | Jump to next file |
| :---- | :---- |
| **Left hand side** | <code> hn</code> |
| **Right hand side** | |

| **Description** | Add File |
| :---- | :---- |
| **Left hand side** | <code> ha</code> |
| **Right hand side** | |

| **Description** | Telescope Macros |
| :---- | :---- |
| **Left hand side** | <code> ym</code> |
| **Right hand side** | |

| **Description** | Telescope Yanks |
| :---- | :---- |
| **Left hand side** | <code> yp</code> |
| **Right hand side** | |

| **Description** | Switch To Pair File |
| :---- | :---- |
| **Left hand side** | <code> sw</code> |
| **Right hand side** | |

| **Description** | Enable Smooth Scrolling |
| :---- | :---- |
| **Left hand side** | <code> ms</code> |
| **Right hand side** | |

| **Description** | QuickFix TODOs |
| :---- | :---- |
| **Left hand side** | <code> ltq</code> |
| **Right hand side** | |

| **Description** | Prev TODO |
| :---- | :---- |
| **Left hand side** | <code> ltp</code> |
| **Right hand side** | |

| **Description** | Next TODO |
| :---- | :---- |
| **Left hand side** | <code> ltn</code> |
| **Right hand side** | |

| **Description** | LocList TODOs |
| :---- | :---- |
| **Left hand side** | <code> ltl</code> |
| **Right hand side** | |

| **Description** | Telescope TODOs |
| :---- | :---- |
| **Left hand side** | <code> ltt</code> |
| **Right hand side** | |

| **Description** | Find Symbols |
| :---- | :---- |
| **Left hand side** | <code> fs</code> |
| **Right hand side** | |

| **Description** | Open Repl |
| :---- | :---- |
| **Left hand side** | <code> czc</code> |
| **Right hand side** | |

| **Description** | Reset |
| :---- | :---- |
| **Left hand side** | <code> cze</code> |
| **Right hand side** | |

| **Description** | Info |
| :---- | :---- |
| **Left hand side** | <code> czi</code> |
| **Right hand side** | |

| **Description** | Run Snippet |
| :---- | :---- |
| **Left hand side** | <code> czr</code> |
| **Right hand side** | |

| **Description** | Toggle Live Mode |
| :---- | :---- |
| **Left hand side** | <code> czl</code> |
| **Right hand side** | |

| **Description** | Close All |
| :---- | :---- |
| **Left hand side** | <code> czx</code> |
| **Right hand side** | |

| **Description** | Play Sudoku |
| :---- | :---- |
| **Left hand side** | <code> vs</code> |
| **Right hand side** | |

| **Description** | Play Tetris |
| :---- | :---- |
| **Left hand side** | <code> vt</code> |
| **Right hand side** | |

| **Description** | Open Undo History |
| :---- | :---- |
| **Left hand side** | <code> tu</code> |
| **Right hand side** | |

| **Description** | Play Killer Sheep |
| :---- | :---- |
| **Left hand side** | <code> vk</code> |
| **Right hand side** | |

| **Description** | Game of Life |
| :---- | :---- |
| **Left hand side** | <code> vl</code> |
| **Right hand side** | |

| **Description** | Rain |
| :---- | :---- |
| **Left hand side** | <code> vr</code> |
| **Right hand side** | |

| **Description** | Scrable |
| :---- | :---- |
| **Left hand side** | <code> vx</code> |
| **Right hand side** | |

| **Description** | Play MineSweeper |
| :---- | :---- |
| **Left hand side** | <code> vw</code> |
| **Right hand side** | |

| **Description** | Zen Mode |
| :---- | :---- |
| **Left hand side** | <code> mz</code> |
| **Right hand side** | |

| **Description** | Window Shift Mode |
| :---- | :---- |
| **Left hand side** | <code> mw</code> |
| **Right hand side** | |

| **Description** | Atarix Mode |
| :---- | :---- |
| **Left hand side** | <code> mx</code> |
| **Right hand side** | |

| **Description** | Minimalist Mode |
| :---- | :---- |
| **Left hand side** | <code> mi</code> |
| **Right hand side** | |

| **Description** | Focus Mode |
| :---- | :---- |
| **Left hand side** | <code> mf</code> |
| **Right hand side** | |

| **Description** | Narrow Mode |
| :---- | :---- |
| **Left hand side** | <code> mn</code> |
| **Right hand side** | |

| **Description** | Next Link |
| :---- | :---- |
| **Left hand side** | <code> zl</code> |
| **Right hand side** | |

| **Description** | Previous Heading |
| :---- | :---- |
| **Left hand side** | <code> zp</code> |
| **Right hand side** | |

| **Description** | Previous Link |
| :---- | :---- |
| **Left hand side** | <code> zn</code> |
| **Right hand side** | |

| **Description** | Toggle Markdown |
| :---- | :---- |
| **Left hand side** | <code> zm</code> |
| **Right hand side** | |

| **Description** | Neorg Code Buffer |
| :---- | :---- |
| **Left hand side** | <code> zc</code> |
| **Right hand side** | |

| **Description** | Play VimBeGood |
| :---- | :---- |
| **Left hand side** | <code> vg</code> |
| **Right hand side** | |

| **Description** | Toggle Highlight Args |
| :---- | :---- |
| **Left hand side** | <code> mh</code> |
| **Right hand side** | |

| **Description** | Diagnostic SetLocList |
| :---- | :---- |
| **Left hand side** | <code> li</code> |
| **Right hand side** | |

| **Description** | QuickFix Window |
| :---- | :---- |
| **Left hand side** | <code> lq</code> |
| **Right hand side** | |

| **Description** | File Manager |
| :---- | :---- |
| **Left hand side** | <code> .</code> |
| **Right hand side** | |

| **Description** | Send Buffer to Pastebin Client |
| :---- | :---- |
| **Left hand side** | <code>  p</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code> op</code> |
| **Right hand side** | |

| **Description** | Open Neogit |
| :---- | :---- |
| **Left hand side** | <code> gg</code> |
| **Right hand side** | |

| **Description** | Color Picker |
| :---- | :---- |
| **Left hand side** | <code> kp</code> |
| **Right hand side** | |

| **Description** | Toggle Minimap |
| :---- | :---- |
| **Left hand side** | <code> mo</code> |
| **Right hand side** | |

| **Description** | Focus Minimap |
| :---- | :---- |
| **Left hand side** | <code> mm</code> |
| **Right hand side** | |

| **Description** | RegExplain |
| :---- | :---- |
| **Left hand side** | <code> re</code> |
| **Right hand side** | |

| **Description** | Find Cheat |
| :---- | :---- |
| **Left hand side** | <code> fi</code> |
| **Right hand side** | |

| **Description** | Glyph Picker |
| :---- | :---- |
| **Left hand side** | <code> fe</code> |
| **Right hand side** | |

| **Description** | Treesitter Code Action |
| :---- | :---- |
| **Left hand side** | <code> cs</code> |
| **Right hand side** | |

| **Description** | Treesitter Join Line |
| :---- | :---- |
| **Left hand side** | <code> jl</code> |
| **Right hand side** | |

| **Description** | Treesitter Split |
| :---- | :---- |
| **Left hand side** | <code> js</code> |
| **Right hand side** | |

| **Description** | Toggle Treesitter Unjoin |
| :---- | :---- |
| **Left hand side** | <code> jj</code> |
| **Right hand side** | |

| **Description** | Custom Toggle |
| :---- | :---- |
| **Left hand side** | <code> ii</code> |
| **Right hand side** | |

| **Description** | Generate Base Documentation |
| :---- | :---- |
| **Left hand side** | <code> cd</code> |
| **Right hand side** | |

| **Description** | Daily Calendar |
| :---- | :---- |
| **Left hand side** | <code> vc</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>"</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&</code> |
| **Right hand side** | <code>:&&&lt;CR&gt;</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>'</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>/</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>?</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>Y</code> |
| **Right hand side** | <code>y$</code> |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>`</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>c</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>cs</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ds</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>g</code> |
| **Right hand side** | |

| **Description** | Comment toggle current block |
| :---- | :---- |
| **Left hand side** | <code>gbc</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | Comment toggle current line |
| :---- | :---- |
| **Left hand side** | <code>gcc</code> |
| **Right hand side** | |

| **Description** | Easy Align |
| :---- | :---- |
| **Left hand side** | <code>ga</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>v</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>ys</code> |
| **Right hand side** | |

| **Description** | |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-R&gt;</code> |
| **Right hand side** | |

| **Description** | Toggle Case |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-S&gt;</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>&lt;C-L&gt;</code> |
| **Right hand side** | <code>&lt;Cmd&gt;nohlsearch&#124;diffupdate|normal! &lt;C-L&gt;&lt;CR&gt;</code> |


### Visual mode keymaps

| **Description** | Chat Selected Code |
| :---- | :---- |
| **Left hand side** | <code> ai</code> |
| **Right hand side** | |

| **Description** | Request Idiomatic Rewrite |
| :---- | :---- |
| **Left hand side** | <code> at</code> |
| **Right hand side** | |

| **Description** | Request Potential Vulnerabilities |
| :---- | :---- |
| **Left hand side** | <code> af</code> |
| **Right hand side** | |

| **Description** | Request Explanation |
| :---- | :---- |
| **Left hand side** | <code> ae</code> |
| **Right hand side** | |

| **Description** | Request Refactoring |
| :---- | :---- |
| **Left hand side** | <code> ar</code> |
| **Right hand side** | |

| **Description** | Replace text with Translation |
| :---- | :---- |
| **Left hand side** | <code> tr</code> |
| **Right hand side** | |

| **Description** | Translate selected test |
| :---- | :---- |
| **Left hand side** | <code> tt</code> |
| **Right hand side** | |

| **Description** | Translate & Copy selected text |
| :---- | :---- |
| **Left hand side** | <code> tc</code> |
| **Right hand side** | |

| **Description** | Upgrade Selected Crates |
| :---- | :---- |
| **Left hand side** | <code> cxU</code> |
| **Right hand side** | |

| **Description** | Update Selected Crates |
| :---- | :---- |
| **Left hand side** | <code> cxu</code> |
| **Right hand side** | |

| **Description** | Extract To Function |
| :---- | :---- |
| **Left hand side** | <code> ce</code> |
| **Right hand side** | |

| **Description** | Refactor names |
| :---- | :---- |
| **Left hand side** | <code> cn</code> |
| **Right hand side** | |

| **Description** | Extract Block To File |
| :---- | :---- |
| **Left hand side** | <code> cg</code> |
| **Right hand side** | |

| **Description** | Extract To Block |
| :---- | :---- |
| **Left hand side** | <code> cb</code> |
| **Right hand side** | |

| **Description** | List Refactorings |
| :---- | :---- |
| **Left hand side** | <code> cr</code> |
| **Right hand side** | |

| **Description** | Extract To Variable |
| :---- | :---- |
| **Left hand side** | <code> cv</code> |
| **Right hand side** | |

| **Description** | Extract to file |
| :---- | :---- |
| **Left hand side** | <code> cf</code> |
| **Right hand side** | |

| **Description** | Inline Variable |
| :---- | :---- |
| **Left hand side** | <code> ci</code> |
| **Right hand side** | |

| **Description** | Run Snippet |
| :---- | :---- |
| **Left hand side** | <code> czr</code> |
| **Right hand side** | |

| **Description** | Narrow Mode |
| :---- | :---- |
| **Left hand side** | <code> mn</code> |
| **Right hand side** | |

| **Description** | Custom Toggle |
| :---- | :---- |
| **Left hand side** | <code> ii</code> |
| **Right hand side** | |

| **Description** | Define Class function |
| :---- | :---- |
| **Left hand side** | <code> cpl</code> |
| **Right hand side** | |

| **Description** | Rule of 5 |
| :---- | :---- |
| **Left hand side** | <code> cpp</code> |
| **Right hand side** | |

| **Description** | Rule of 3 |
| :---- | :---- |
| **Left hand side** | <code> cpo</code> |
| **Right hand side** | |

| **Description** | Make Concrete Class |
| :---- | :---- |
| **Left hand side** | <code> cpm</code> |
| **Right hand side** | |

| **Description** | Hottest Lines from Selection |
| :---- | :---- |
| **Left hand side** | <code> pc</code> |
| **Right hand side** | |

| **Description** | Anotate Selection |
| :---- | :---- |
| **Left hand side** | <code> pa</code> |
| **Right hand side** | |

| **Description** | Send Seleceted Code to Pastebin Client |
| :---- | :---- |
| **Left hand side** | <code>  p</code> |
| **Right hand side** | |

| **Description** | RegExplain |
| :---- | :---- |
| **Left hand side** | <code> re</code> |
| **Right hand side** | |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>#</code> |
| **Right hand side** | <code>y?\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | Nvim builtin |
| :---- | :---- |
| **Left hand side** | <code>*</code> |
| **Right hand side** | <code>y/\V&lt;C-R&gt;"&lt;CR&gt;</code> |

| **Description** | Treesitter Search |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | Easy Align |
| :---- | :---- |
| **Left hand side** | <code>ga</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise (visual) |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

| **Description** | Toggle Case |
| :---- | :---- |
| **Left hand side** | <code>&lt;M-S&gt;</code> |
| **Right hand side** | |


### Operator mode keymaps

| **Description** | Treesitter Search |
| :---- | :---- |
| **Left hand side** | <code>R</code> |
| **Right hand side** | |

| **Description** | Flash Treesitter |
| :---- | :---- |
| **Left hand side** | <code>S</code> |
| **Right hand side** | |

| **Description** | Comment toggle blockwise |
| :---- | :---- |
| **Left hand side** | <code>gb</code> |
| **Right hand side** | |

| **Description** | Comment toggle linewise |
| :---- | :---- |
| **Left hand side** | <code>gc</code> |
| **Right hand side** | |

| **Description** | Remote Flash |
| :---- | :---- |
| **Left hand side** | <code>r</code> |
| **Right hand side** | |

| **Description** | Flash |
| :---- | :---- |
| **Left hand side** | <code>s</code> |
| **Right hand side** | |

