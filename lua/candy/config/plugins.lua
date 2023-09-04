local settings = require("configuration")
local vimbegood = {}
local hacker = {}
local sudoku = {}
local blackjack = {}
local cellular = {}
local terminal_nvim = {}
if settings.enable_terminal then
  terminal_nvim = {
    "rebelot/terminal.nvim",
    cmd = {
      "Asciiville",
      "TermOpen",
      "TermToggle",
      "TermRun",
      "Lazygit",
      "IPython",
      "Lazyman",
      "Lazyconf",
      "Htop",
    },
    event = "VimEnter",
    config = function()
      require("config.terminal_nvim")
    end,
  }
end

if settings.enable_games then
  vimbegood = {
    "ThePrimeagen/vim-be-good",
    event = "VeryLazy",
  }
  hacker = {
    "letieu/hacker.nvim",
    event = "VeryLazy",
    config = function()
      require("hacker").setup({
        is_popup = true, -- show random float window when typing
        popup_after = 5,
      })
    end,
  }
  sudoku = {
    "jim-fx/sudoku.nvim",
    cmd = "Sudoku",
    event = "VeryLazy",
    config = function()
      require("sudoku").setup({
        -- save the settings under vim.fn.stdpath("data"), usually ~/.local/share/nvim,
        persist_settings = true,
        persist_games = true, -- persist a history of all played games
        default_mappings = true,
        -- if set to false you need to set your own, like the following:
        mappings = {
          { key = "x", action = "clear_cell" },
          { key = "r1", action = "insert=1" },
          { key = "r2", action = "insert=2" },
          { key = "r3", action = "insert=3" },
          { key = "r4", action = "insert=4" },
          { key = "r5", action = "insert=5" },
          { key = "r6", action = "insert=6" },
          { key = "r7", action = "insert=7" },
          { key = "r8", action = "insert=8" },
          { key = "r9", action = "insert=9" },
          { key = "gn", action = "new_game" },
          { key = "gr", action = "reset_game" },
          { key = "gs", action = "view=settings" },
          { key = "gt", action = "view=tip" },
          { key = "gz", action = "view=zen" },
          { key = "gh", action = "view=help" },
          { key = "u", action = "undo" },
          { key = "<C-r>", action = "redo" },
          { key = "+", action = "increment" },
          { key = "-", action = "decrement" },
        },
      })
    end,
  }
  blackjack = {
    "alanfortlink/blackjack.nvim",
    cmd = "BlackJackNewGame",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = function()
      require("blackjack").setup({
        card_style = "large", -- Can be "mini" or "large".
        suit_style = "black", -- Can be "black" or "white".
        -- Default location to store the scores.json file.
        scores_path = vim.fn.expand(vim.fn.stdpath("state") .. "/blackjack_scores.json"),
      })
    end,
  }
  cellular = {
    "eandrju/cellular-automaton.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  }
end

return {
  -- Themes
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
      require("candy.config.colorscheme")
    end,
  },
  { "nvim-lua/plenary.nvim" },
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({ default = true })
    end,
  },
  {
    "goolord/alpha-nvim",
    lazy = false,
    config = function()
      require("candy.plugins.alpha")
    end,
  },

  -- Candy
  {
    "echasnovski/mini.animate",
    version = "*",
    config = true,
  },
  -- Alternate Duck configurations:
  -- popular candidates: 🦆 ඞ  🦀 🐈 🐎 🦖 🐤
  --
  -- You can also specify how fast a duck moves (measured in steps per second):
  --
  -- A pretty fast duck
  -- vim.keymap.set('n', '<leader>dd', function() require("duck").hatch("🦆", 10) end, {})
  -- Quite a mellow cat
  -- vim.keymap.set('n', '<leader>dc', function() require("duck").hatch("🐈", 0.75) end, {})
  {
    "tamton-aquib/duck.nvim",
    -- <leader>d is already taken for debug keymaps
    keys = {
      "<Leader>DA",
      "<Leader>Da",
      "<Leader>Di",
      "<Leader>Dc",
      "<Leader>Dd",
      "<Leader>Ds",
      "<Leader>Dg",
      "<Leader>Dh",
      "<Leader>Dt",
      "<Leader>Dk",
      "<Leader>DK",
    },
    -- Moved keymaps to plugins/which-key.lua
  },
  {
    "tamton-aquib/flirt.nvim",
    config = function()
      require("candy.plugins.flirt")
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPre",
    config = function()
      require("candy.plugins.treesitter")
    end,
    dependencies = {
      "hiphish/rainbow-delimiters.nvim",
      "JoosepAlviste/nvim-ts-context-commentstring",
      "nvim-treesitter/nvim-treesitter-textobjects",
      "RRethy/nvim-treesitter-textsubjects",
    },
  },

  -- Navigating (Telescope/Tree/Refactor)
  {
    "nvim-pack/nvim-spectre",
    lazy = true,
    keys = {
      {
        "<Leader>pr",
        "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
        desc = "refactor",
      },
      {
        "<Leader>pr",
        "<cmd>lua require('spectre').open_visual()<CR>",
        mode = "v",
        desc = "refactor",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    config = function()
      require("candy.plugins.telescope")
    end,
    dependencies = {
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "cljoly/telescope-repo.nvim" },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = {
      "NvimTreeOpen",
      "NvimTreeClose",
      "NvimTreeToggle",
      "NvimTreeFindFile",
      "NvimTreeFindFileToggle",
    },
    keys = {
      { "<C-e>", "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>", desc = "NvimTree" },
    },
    config = function()
      require("candy.plugins.tree")
    end,
  },
  {
    "gbprod/stay-in-place.nvim",
    lazy = false,
    config = true, -- run require("stay-in-place").setup()
  },

  -- LSP Base
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    servers = nil,
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = {
      { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" },
    },
  },

  -- LSP Cmp
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      require("candy.plugins.cmp")
    end,
    dependencies = {
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-calc",
      "saadparwaiz1/cmp_luasnip",
      { "L3MON4D3/LuaSnip", dependencies = "rafamadriz/friendly-snippets" },
      {
        cond = CandyVim.plugins.ai.tabnine.enabled,
        "tzachar/cmp-tabnine",
        build = "./install.sh",
      },
      {
        "David-Kunz/cmp-npm",
        config = function()
          require("candy.plugins.cmp-npm")
        end,
      },
      {
        "zbirenbaum/copilot-cmp",
        cond = CandyVim.plugins.ai.copilot.enabled,
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
  },

  -- LSP Addons
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("candy.plugins.dressing")
    end,
  },
  { "onsails/lspkind-nvim" },
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle", "Trouble" },
    config = function()
      require("candy.plugins.trouble")
    end,
  },
  { "nvim-lua/popup.nvim" },
  {
    "SmiteshP/nvim-navic",
    config = function()
      require("candy.plugins.navic")
    end,
    dependencies = "neovim/nvim-lspconfig",
  },
  {
    "pmizio/typescript-tools.nvim",
    event = { "BufReadPre", "BufNewFile" },
    ft = { "typescript", "typescriptreact" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("candy.plugins.typescript-tools")
    end,
  },
  {
    "axelvc/template-string.nvim",
    event = "InsertEnter",
    ft = {
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
    },
    config = true, -- run require("template-string").setup()
  },
  {
    "dmmulroy/tsc.nvim",
    cmd = { "TSC" },
    config = true,
  },
  {
    "dnlhc/glance.nvim",
    config = function()
      require("candy.plugins.glance")
    end,
    cmd = { "Glance" },
    keys = {
      { "gd", "<cmd>Glance definitions<CR>", desc = "LSP Definition" },
      { "gr", "<cmd>Glance references<CR>", desc = "LSP References" },
      { "gm", "<cmd>Glance implementations<CR>", desc = "LSP Implementations" },
      { "gy", "<cmd>Glance type_definitions<CR>", desc = "LSP Type Definitions" },
    },
  },
  {
    "antosha417/nvim-lsp-file-operations",
    event = "LspAttach",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-tree/nvim-tree.lua" },
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },

  -- General
  { "AndrewRadev/switch.vim", lazy = false },
  {
    "Wansmer/treesj",
    lazy = true,
    cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
    keys = {
      { "gJ", "<cmd>TSJToggle<CR>", desc = "Toggle Split/Join" },
    },
    config = function()
      require("treesj").setup({
        use_default_keymaps = false,
      })
    end,
  },
  {
    "numToStr/Comment.nvim",
    lazy = false,
    dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require("candy.plugins.comment")
    end,
  },
  {
    "LudoPinelli/comment-box.nvim",
    lazy = false,
    keys = {
      { "<leader>ac", "<cmd>lua require('comment-box').lbox()<CR>", desc = "comment box" },
      { "<leader>ac", "<cmd>lua require('comment-box').lbox()<CR>", mode = "v", desc = "comment box" },
    },
  },
  {
    "akinsho/nvim-toggleterm.lua",
    lazy = false,
    branch = "main",
    config = function()
      require("candy.plugins.toggleterm")
    end,
    keys = {
      { "<Leader>at", "<cmd>ToggleTerm direction=float<CR>", desc = "terminal float" },
    },
  },
  { "tpope/vim-repeat", lazy = false },
  { "tpope/vim-speeddating", lazy = false },
  { "dhruvasagar/vim-table-mode", ft = { "markdown" } },
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "smoka7/hydra.nvim",
    },
    config = true,
    keys = {
      {
        "<LEADER>m",
        "<CMD>MCstart<CR>",
        desc = "multicursor",
      },
      {
        "<LEADER>m",
        "<CMD>MCvisual<CR>",
        mode = "v",
        desc = "multicursor",
      },
      {
        "<C-Down>",
        "<CMD>MCunderCursor<CR>",
        desc = "multicursor down",
      },
    },
  },
  {
    "nacro90/numb.nvim",
    lazy = false,
    config = function()
      require("candy.plugins.numb")
    end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    event = "BufEnter",
    config = function()
      require("candy.plugins.todo-comments")
    end,
  },
  {
    "folke/zen-mode.nvim",
    cmd = { "ZenMode" },
    config = function()
      require("candy.plugins.zen")
    end,
    cond = CandyVim.plugins.zen.enabled,
  },
  {
    "folke/twilight.nvim",
    config = true,
    cond = CandyVim.plugins.zen.enabled,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
      },
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("candy.plugins.which-key")
    end,
  },
  {
    "ecosse3/galaxyline.nvim",
    config = function()
      require("candy.plugins.galaxyline")
    end,
    event = "VeryLazy",
  },
  {
    "echasnovski/mini.bufremove",
    version = "*",
    config = function()
      require("mini.bufremove").setup({
        silent = true,
      })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "echasnovski/mini.bufremove",
    },
    version = "*",
    config = function()
      require("candy.plugins.bufferline")
    end,
    keys = {
      { ",1", "<cmd>BufferLineGoToBuffer 1<CR>", desc = "Go to buffer 1" },
      { ",2", "<cmd>BufferLineGoToBuffer 2<CR>", desc = "Go to buffer 2" },
      { ",3", "<cmd>BufferLineGoToBuffer 3<CR>", desc = "Go to buffer 3" },
      { ",4", "<cmd>BufferLineGoToBuffer 4<CR>", desc = "Go to buffer 4" },
      { ",5", "<cmd>BufferLineGoToBuffer 5<CR>", desc = "Go to buffer 5" },
      { ",6", "<cmd>BufferLineGoToBuffer 6<CR>", desc = "Go to buffer 6" },
      { ",7", "<cmd>BufferLineGoToBuffer 7<CR>", desc = "Go to buffer 7" },
      { ",8", "<cmd>BufferLineGoToBuffer 8<CR>", desc = "Go to buffer 8" },
      { ",9", "<cmd>BufferLineGoToBuffer 9<CR>", desc = "Go to buffer 9" },
      { "<A-1>", "<cmd>BufferLineGoToBuffer 1<CR>", desc = "Go to buffer 1" },
      { "<A-2>", "<cmd>BufferLineGoToBuffer 2<CR>", desc = "Go to buffer 2" },
      { "<A-3>", "<cmd>BufferLineGoToBuffer 3<CR>", desc = "Go to buffer 3" },
      { "<A-4>", "<cmd>BufferLineGoToBuffer 4<CR>", desc = "Go to buffer 4" },
      { "<A-5>", "<cmd>BufferLineGoToBuffer 5<CR>", desc = "Go to buffer 5" },
      { "<A-6>", "<cmd>BufferLineGoToBuffer 6<CR>", desc = "Go to buffer 6" },
      { "<A-7>", "<cmd>BufferLineGoToBuffer 7<CR>", desc = "Go to buffer 7" },
      { "<A-8>", "<cmd>BufferLineGoToBuffer 8<CR>", desc = "Go to buffer 8" },
      { "<A-9>", "<cmd>BufferLineGoToBuffer 9<CR>", desc = "Go to buffer 9" },
      { "<Leader>bb", "<cmd>BufferLineMovePrev<CR>", desc = "Move back" },
      { "<Leader>bl", "<cmd>BufferLineCloseLeft<CR>", desc = "Close Left" },
      { "<Leader>br", "<cmd>BufferLineCloseRight<CR>", desc = "Close Right" },
      { "<Leader>bn", "<cmd>BufferLineMoveNext<CR>", desc = "Move next" },
      { "<Leader>bp", "<cmd>BufferLinePick<CR>", desc = "Pick Buffer" },
      { "<Leader>bP", "<cmd>BufferLineTogglePin<CR>", desc = "Pin/Unpin Buffer" },
      { "<Leader>bsd", "<cmd>BufferLineSortByDirectory<CR>", desc = "Sort by directory" },
      { "<Leader>bse", "<cmd>BufferLineSortByExtension<CR>", desc = "Sort by extension" },
      { "<Leader>bsr", "<cmd>BufferLineSortByRelativeDirectory<CR>", desc = "Sort by relative dir" },
    },
  },
  { "antoinemadec/FixCursorHold.nvim" }, -- Needed while issue https://github.com/neovim/neovim/issues/12587 is still open
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        background_colour = "#000000",
      })
    end,
    init = function()
      local banned_messages = {
        "No information available",
        "LSP[tsserver] Inlay Hints request failed. Requires TypeScript 4.4+.",
        "LSP[tsserver] Inlay Hints request failed. File not opened in the editor.",
      }
      vim.notify = function(msg, ...)
        for _, banned in ipairs(banned_messages) do
          if msg == banned then
            return
          end
        end
        return require("notify")(msg, ...)
      end
    end,
  },
  {
    "vuki656/package-info.nvim",
    event = "BufEnter package.json",
    config = function()
      require("candy.plugins.package-info")
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install && git reset --hard",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
    event = "VeryLazy",
    config = function()
      require("candy.plugins.markdown-preview")
      local wk = require("which-key")
      wk.register({
        m = {
          name = "Markdown",
          p = { ":MarkdownPreview<CR>", "Start Preview" },
          s = { ":MarkdownPreviewStop<CR>", "Stop Preview" },
          t = { ":MarkdownPreviewToggle<CR>", "Toggle Preview" },
        },
      }, {
        prefix = "<leader>",
        mode = "n",
        { silent = true },
      })
    end,
    ft = { "markdown" },
  },
  {
    "airblade/vim-rooter",
    event = "VeryLazy",
    config = function()
      vim.g.rooter_patterns = CandyVim.plugins.rooter.patterns
      vim.g.rooter_silent_chdir = 1
      vim.g.rooter_resolve_links = 1
    end,
  },
  {
    "Shatur/neovim-session-manager",
    lazy = false,
    config = function()
      require("candy.plugins.session-manager")
    end,
    keys = {
      { "<Leader>/sc", "<cmd>SessionManager load_session<CR>", desc = "choose session" },
      { "<Leader>/sr", "<cmd>SessionManager delete_session<CR>", desc = "remove session" },
      { "<Leader>/sd", "<cmd>SessionManager load_current_dir_session<CR>", desc = "load current dir session" },
      { "<Leader>/sl", "<cmd>SessionManager load_last_session<CR>", desc = "load last session" },
      { "<Leader>/ss", "<cmd>SessionManager save_current_session<CR>", desc = "save session" },
    },
  },
  {
    "kylechui/nvim-surround",
    lazy = false,
    config = true,
  },
  {
    "sunjon/shade.nvim",
    config = function()
      require("shade").setup()
      require("shade").toggle()
    end,
  },
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    config = function()
      vim.keymap.set("n", "zR", require("ufo").openAllFolds)
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
      vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds)
    end,
  },
  {
    "echasnovski/mini.align",
    lazy = false,
    version = "*",
    config = function()
      require("mini.align").setup()
    end,
  },
  {
    "echasnovski/mini.ai",
    lazy = false,
    version = "*",
    config = function()
      require("mini.ai").setup()
    end,
  },
  {
    "rareitems/printer.nvim",
    event = "BufEnter",
    ft = {
      "lua",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
    },
    config = function()
      require("candy.plugins.printer")
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    config = function()
      require("candy.plugins.indent")
    end,
  },
  {
    "folke/noice.nvim",
    cond = CandyVim.plugins.experimental_noice.enabled,
    lazy = false,
    config = function()
      require("candy.plugins.noice")
    end,
  },
  {
    "chrisgrieser/nvim-spider",
    cond = CandyVim.plugins.jump_by_subwords.enabled,
    lazy = true,
    keys = { "w", "e", "b", "ge" },
    config = function()
      vim.keymap.set({ "n", "o", "x" }, "W", "w", { desc = "Normal w" })
      vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
      vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
      vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
      vim.keymap.set({ "n", "o", "x" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })
    end,
  },

  -- Snippets & Language & Syntax
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("candy.plugins.autopairs")
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("candy.plugins.colorizer")
    end,
  },
  {
    "js-everts/cmp-tailwind-colors",
    config = true,
  },
  {
    "razak17/tailwind-fold.nvim",
    opts = {
      min_chars = 50,
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "html", "svelte", "astro", "vue", "typescriptreact" },
  },

  -- AI
  {
    "jcdickinson/codeium.nvim",
    cond = CandyVim.plugins.ai.codeium.enabled,
    event = "InsertEnter",
    cmd = "Codeium",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = true,
  },
  {
    "zbirenbaum/copilot.lua",
    cond = CandyVim.plugins.ai.copilot.enabled,
    event = "InsertEnter",
    config = function()
      require("candy.plugins.copilot")
    end,
  },
  {
    "Bryley/neoai.nvim",
    cond = CandyVim.plugins.ai.chatgpt.enabled,
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    cmd = {
      "NeoAI",
      "NeoAIOpen",
      "NeoAIClose",
      "NeoAIToggle",
      "NeoAIContext",
      "NeoAIContextOpen",
      "NeoAIContextClose",
      "NeoAIInject",
      "NeoAIInjectCode",
      "NeoAIInjectContext",
      "NeoAIInjectContextCode",
    },
    keys = {
      { "<leader>as", desc = "summarize text" },
      { "<leader>ag", desc = "generate git message" },
    },
    config = true,
  },

  -- Git
  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("candy.plugins.git.signs")
    end,
    keys = {
      { "<Leader>ghd", desc = "diff hunk" },
      { "<Leader>ghp", desc = "preview" },
      { "<Leader>ghR", desc = "reset buffer" },
      { "<Leader>ghr", desc = "reset hunk" },
      { "<Leader>ghs", desc = "stage hunk" },
      { "<Leader>ghS", desc = "stage buffer" },
      { "<Leader>ght", desc = "toggle deleted" },
      { "<Leader>ghu", desc = "undo stage" },
    },
  },
  {
    "sindrets/diffview.nvim",
    lazy = true,
    enabled = true,
    event = "BufRead",
    config = function()
      require("candy.plugins.git.diffview")
    end,
    keys = {
      { "<Leader>gd", "<cmd>lua require('candy.plugins.git.diffview').toggle_file_history()<CR>", desc = "diff file" },
      { "<Leader>gs", "<cmd>lua require('candy.plugins.git.diffview').toggle_status()<CR>", desc = "status" },
    },
  },
  {
    "akinsho/git-conflict.nvim",
    lazy = false,
    config = function()
      require("candy.plugins.git.conflict")
    end,
    keys = {
      { "<Leader>gcb", "<cmd>GitConflictChooseBoth<CR>", desc = "choose both" },
      { "<Leader>gcn", "<cmd>GitConflictNextConflict<CR>", desc = "move to next conflict" },
      { "<Leader>gco", "<cmd>GitConflictChooseOurs<CR>", desc = "choose ours" },
      { "<Leader>gcp", "<cmd>GitConflictPrevConflict<CR>", desc = "move to prev conflict" },
      { "<Leader>gct", "<cmd>GitConflictChooseTheirs<CR>", desc = "choose theirs" },
    },
  },
  {
    "ThePrimeagen/git-worktree.nvim",
    lazy = false,
    config = function()
      require("candy.plugins.git.worktree")
    end,
    keys = {
      { "<Leader>gww", desc = "worktrees" },
      { "<Leader>gwc", desc = "create worktree" },
    },
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitCurrentFile",
      "LazyGitFilterCurrentFile",
      "LazyGitFilter",
    },
    keys = {
      { "<Leader>gg", "<cmd>LazyGit<CR>", desc = "lazygit" },
    },
    config = function()
      vim.g.lazygit_floating_window_scaling_factor = 1
    end,
  },

  -- Testing
  {
    "rcarriga/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    },
    config = function()
      require("candy.plugins.neotest")
    end,
  },
  {
    "andythigpen/nvim-coverage",
    dependencies = "nvim-lua/plenary.nvim",
    cmd = {
      "Coverage",
      "CoverageSummary",
      "CoverageLoad",
      "CoverageShow",
      "CoverageHide",
      "CoverageToggle",
      "CoverageClear",
    },
    config = function()
      require("coverage").setup()
    end,
  },

  -- DAP
  {
    "mfussenegger/nvim-dap",
    config = function()
      require("candy.plugins.dap")
    end,
    keys = {
      "<Leader>da",
      "<Leader>db",
      "<Leader>dc",
      "<Leader>dd",
      "<Leader>dh",
      "<Leader>di",
      "<Leader>do",
      "<Leader>dO",
      "<Leader>dt",
    },
    dependencies = {
      "theHamsta/nvim-dap-virtual-text",
      "rcarriga/nvim-dap-ui",
      "mxsdev/nvim-dap-vscode-js",
    },
  },
  {
    "LiadOz/nvim-dap-repl-highlights",
    config = true,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-treesitter/nvim-treesitter",
    },
    build = function()
      if not require("nvim-treesitter.parsers").has_parser("dap_repl") then
        vim.cmd(":TSInstall dap_repl")
      end
    end,
  },
  -- Games
  vimbegood,
  hacker,
  sudoku,
  blackjack,
  cellular,
  -- If terminal is enabled in configuration.lua
  terminal_nvim
}
