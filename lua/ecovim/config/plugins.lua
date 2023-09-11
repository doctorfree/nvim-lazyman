local settings = require("configuration")
local formatters_linters = settings.formatters_linters
local lsp_servers = settings.lsp_servers

local diagnostics_active = true
local toggle_diagnostics = function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end

local dashboard_depend = { "nvim-tree/nvim-web-devicons" }
if settings.enable_terminal then
  dashboard_depend = { "rebelot/terminal.nvim", "nvim-tree/nvim-web-devicons" }
end

local barbecue = {}
local cheatsheet = {}
local vimbegood = {}
local hacker = {}
local sudoku = {}
local blackjack = {}
local cellular = {}
local coding = {}
local motion = {}
local hydra_plugin = {}
local multi_cursor = {}
local neoscroll = {}
local terminal_nvim = {}
local wakatime_type = {}

local actionmenu = {}
local minicomment = {}
local tscomment = {}
local inlayhints = {}
local signature = {}
local lspsaga = {}
local snippet = {}

-- Some colorschemes do not yet support the NotifyBackground highlight group
local notify_bg = "NotifyBackground"
local ok, _ = pcall(vim.api.nvim_get_hl_id_by_name, notify_bg, true)
if not ok then
  notify_bg = "NotifyERRORBody"
  ok, _ = pcall(vim.api.nvim_get_hl_id_by_name, notify_bg, true)
  if not ok then
    notify_bg = "#000000"
  end
end

if settings.enable_coding then
  snippet = {
    "L3MON4D3/LuaSnip",
    build = (not jit.os:find("Windows"))
        and "echo -e 'NOTE: jsregexp is optional, so not a big deal if it fails to build\n'; make install_jsregexp"
      or nil,
    dependencies = {
      "rafamadriz/friendly-snippets",
      "saadparwaiz1/cmp_luasnip",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        local snippet_path = vim.fn.stdpath("config") .. "/snippets"
        require("luasnip.loaders.from_snipmate").load({ path = { snippet_path } })
      end,
    },
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
    -- stylua: ignore
    keys = {
      {
        "<tab>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
      { "<tab>",   function() require("luasnip").jump(1) end,  mode = "s" },
      { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
    },
  }
  -- comments
  tscomment = { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true }
  minicomment = {
    "echasnovski/mini.comment",
    version = false,
    event = "VeryLazy",
    opts = {
      mappings = {
        comment = "mc",
        comment_line = "ml",
        textobject = "mt",
      },
      hooks = {
        pre = function()
          require("ts_context_commentstring.internal").update_commentstring({})
        end,
      },
    },
    config = function(_, opts)
      require("mini.comment").setup(opts)
    end,
  }
  inlayhints = {
    "lvimuser/lsp-inlayhints.nvim",
    lazy = true,
  }
  signature = {
    "ray-x/lsp_signature.nvim",
    lazy = true,
    config = function()
      require("config.lsp.signature")
    end,
  }
  lspsaga = {
    "glepnir/lspsaga.nvim",
    lazy = true,
    config = function()
      require("config.lspsaga")
    end,
  }
  actionmenu = {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
    lazy = true,
  }
end

-- Motion plugin, use hop, flash, leap, or none
if settings.enable_motion == "hop" then
  motion = {
    { "ziontee113/syntax-tree-surfer" },
    {
      "mfussenegger/nvim-treehopper",
      lazy = false,
      config = function()
        local tree_hopper = require("tsht")
        vim.keymap.set("n", "<Leader>hm", function()
          tree_hopper.nodes()
        end, { desc = "Treehopper nodes" })
        vim.keymap.set("n", "<Leader>h[", function()
          tree_hopper.move({ side = "start" })
        end, { desc = "Move to start of Treehopper node" })
        vim.keymap.set("n", "<Leader>h]", function()
          tree_hopper.move({ side = "end" })
        end, { desc = "Move to end of Treehopper node" })
      end,
    },
    {
      "phaazon/hop.nvim",
      branch = "v2",
      cmd = {
        "HopAnywhere",
        "HopChar1",
        "HopChar2",
        "HopLine",
        "HopLineStart",
        "HopVertical",
        "HopPattern",
        "HopWord",
      },
      lazy = false,
      config = function()
        require("config.hop")
      end,
    },
  }
elseif settings.enable_motion == "flash" then
  motion = {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          -- default options: exact mode, multi window, all directions, with a backdrop
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "<leader>sf",
        mode = { "n", "o", "x" },
        function()
          require("flash").toggle(false)
        end,
        desc = "Disable Flash",
      },
    },
  }
elseif settings.enable_motion == "leap" then
  motion = {
    {
      "ggandor/flit.nvim",
      keys = function()
        local ret = {}
        for _, key in ipairs({ "f", "F", "t", "T" }) do
          ret[#ret + 1] = { key, mode = { "n", "x", "o" }, desc = key }
        end
        return ret
      end,
      opts = { labeled_modes = "nx" },
    },
    {
      "ggandor/leap.nvim",
      keys = {
        { "s", mode = { "n", "x", "o" }, desc = "Leap forward to" },
        { "S", mode = { "n", "x", "o" }, desc = "Leap backward to" },
        { "gs", mode = { "n", "x", "o" }, desc = "Leap from windows" },
      },
      config = function(_, opts)
        local leap = require("leap")
        for k, v in pairs(opts) do
          leap.opts[k] = v
        end
        leap.add_default_mappings(true)
        vim.keymap.del({ "x", "o" }, "x")
        vim.keymap.del({ "x", "o" }, "X")
      end,
    },
  }
end

if settings.enable_coding then
  coding = {
    {
      "folke/neodev.nvim",
      version = false,
      event = "VeryLazy",
      dependencies = {
        "hrsh7th/nvim-cmp",
      },
      opts = {},
    },
    {
      "neovim/nvim-lspconfig",
      branch = "master",
      event = { "BufReadPre", "BufNewFile" },
      dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
      },
      keys = {
        { "<leader>de", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Open float" }},
        { "[d", vim.diagnostic.goto_prev, { noremap = true, silent = true }},
        { "]d", vim.diagnostic.goto_next, { noremap = true, silent = true }},
        { "<leader>dq", vim.diagnostic.setloclist, { noremap = true, silent = true, desc = "Set diagnostics location list" }},
        { "<leader>dt", toggle_diagnostics, { desc = "Toggle diagnostics" }},
        { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
        { "<leader>ld", "<cmd>Telescope lsp_document_diagnostics<cr>", desc = "Document Diagnostics" },
        { "<leader>lw", "<cmd>Telescope lsp_workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
        { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
        { "<leader>lI", "<cmd>LspInstallInfo<cr>", desc = "Installer Info" },
        { "<leader>lj", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", desc = "Next Diagnostic" },
        { "<leader>lk", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic" },
        { "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
        { "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", desc = "Quickfix" },
        { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
        { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
        { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
        {
          "<leader>W",
          function()
            vim.lsp.buf.format({
              filter = function(client)
                -- do not use default `lua_ls` to format
                local exclude_servers = { "lua_ls" }
                return not vim.tbl_contains(exclude_servers, client.name)
              end,
            })
            vim.cmd([[w!]])
          end,
          desc = "Format and Save",
        },
      },
      config = function()
        -- special attach lsp
        require("util").on_attach(function(client, buffer)
          require("config.lsp.navic").attach(client, buffer)
          require("config.lsp.lspkeymaps").attach(client, buffer)
          require("config.lsp.inlayhints").attach(client, buffer)
          require("config.lsp.gitsigns").attach(client, buffer)
          require("config.lsp.python").attach(client, buffer)
        end)

        local showdiag = settings.show_diagnostics

        local open_float = "<cmd>lua vim.diagnostic.open_float()<cr>"
        if not showdiag == "popup" then
          open_float = ""
        end

        -- Style floating windows
        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
        vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

        -- Borders for LspInfo winodw
        require("lspconfig.ui.windows").default_options.border = "rounded"

        -- diagnostics
        for name, icon in pairs(require("icons").diagnostics) do
          local function firstUpper(s)
            return s:sub(1, 1):upper() .. s:sub(2)
          end
          name = "DiagnosticSign" .. firstUpper(name)
          vim.fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
        end
        if showdiag == "none" then
          vim.diagnostic.config(require("config.lsp.diagnostics")["off"])
        else
          vim.diagnostic.config(require("config.lsp.diagnostics")["on"])
        end

        -- Show line diagnostics automatically in hover window
        if showdiag == "popup" then
          vim.cmd([[
            autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false })
          ]])
        end

        local servers = require("config.lsp.lspservers")
        local ext_capabilities = vim.lsp.protocol.make_client_capabilities()
        local capabilities = require("util").capabilities(ext_capabilities)

        local function setup(server)
          if servers[server] and servers[server].disabled then
            return
          end
          local server_opts = vim.tbl_deep_extend("force", {
            capabilities = vim.deepcopy(capabilities),
          }, servers[server] or {})
          require("lspconfig")[server].setup(server_opts)
        end

        local available = vim.tbl_keys(require("mason-lspconfig.mappings.server").lspconfig_to_package)

        for server, server_opts in pairs(servers) do
          if server_opts then
            if not vim.tbl_contains(available, server) then
              setup(server)
            end
          end
        end

        require("mason-lspconfig").setup({
          ensure_installed = lsp_servers,
          automatic_installation = true,
        })
        require("mason-lspconfig").setup_handlers({ setup })
      end,
    },

    {
      "williamboman/mason.nvim",
      cmd = { "Mason", "MasonUpdate", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
      config = function()
        local opts = {
          ui = {
            border = "rounded",
            icons = {
              package_pending = " ",
              package_installed = " ",
              package_uninstalled = " ﮊ",
            },
          },
        }
        require("mason").setup(opts)
      end,
    },

    -- formatters
    {
      "jose-elias-alvarez/null-ls.nvim",
      event = { "BufReadPre", "BufNewFile" },
      dependencies = {
        "neovim/nvim-lspconfig",
        "mason.nvim",
      },
      config = function()
        require("config.null-ls")
      end,
    },
    {
      "jay-babu/mason-null-ls.nvim",
      event = { "BufReadPre", "BufNewFile" },
      opts = {
        ensure_installed = formatters_linters,
        automatic_setup = true,
      },
    },

    {
      "williamboman/mason-lspconfig.nvim",
      dependencies = {
        "williamboman/mason.nvim",
      },
    },

    { "mfussenegger/nvim-jdtls" }, -- java lsp - https://github.com/mfussenegger/nvim-jdtls

    {
      "folke/trouble.nvim",
      cmd = { "TroubleToggle", "Trouble" },
      config = function()
        require("ecovim.plugins.trouble")
      end,
    },

    -- AI
    {
      "jcdickinson/codeium.nvim",
      cond = Ecovim.plugins.ai.codeium.enabled,
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
      cond = Ecovim.plugins.ai.copilot.enabled,
      event = "InsertEnter",
      config = function()
        require("ecovim.plugins.copilot")
      end,
    },
    {
      "Bryley/neoai.nvim",
      cond = Ecovim.plugins.ai.chatgpt.enabled,
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
      config = function()
        require("neoai").setup({
          ui = {
            output_popup_text = "NeoAI",
            input_popup_text = "Prompt",
            width = 30, -- As percentage eg. 30%
            output_popup_height = 80, -- As percentage eg. 80%
            submit = "<Enter>", -- Key binding to submit the prompt
          },
          models = {
            {
              name = "openai",
              model = "gpt-3.5-turbo",
              params = nil,
            },
          },
          register_output = {
            ["g"] = function(output)
              return output
            end,
            ["c"] = require("neoai.utils").extract_code_snippets,
          },
          inject = {
            cutoff_width = 75,
          },
          prompts = {
            context_prompt = function(context)
              return "Hey, I'd like to provide some context for future "
                .. "messages. Here is the code/text that I want to refer "
                .. "to in our upcoming conversations:\n\n"
                .. context
            end,
          },
          mappings = {
            ["select_up"] = "<C-k>",
            ["select_down"] = "<C-j>",
          },
          open_api_key_env = "OPENAI_API_KEY",
          shortcuts = {
            {
              name = "textify",
              key = "<leader>as",
              desc = "fix text with AI",
              use_context = true,
              prompt = [[
                Please rewrite the text to make it more readable, clear,
                concise, and fix any grammatical, punctuation, or spelling
                errors
              ]],
              modes = { "v" },
              strip_function = nil,
            },
            {
              name = "gitcommit",
              key = "<leader>ag",
              desc = "generate git commit message",
              use_context = false,
              prompt = function()
                return [[
                  Using the following git diff generate a consise and
                  clear git commit message, with a short title summary
                  that is 75 characters or less:
                ]] .. vim.fn.system("git diff --cached")
              end,
              modes = { "n" },
              strip_function = nil,
            },
          },
        })
      end,
    },
    -- DAP
    {
      "mfussenegger/nvim-dap",
      config = function()
        require("ecovim.plugins.dap")
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
        "<Leader>dT",
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
  }
else
  coding = {
    {
      "williamboman/mason.nvim",
      build = ":MasonUpdate",
      cmd = { "Mason", "MasonUpdate", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
      lazy = false,
      keys = {
        { "<leader>M", "<cmd>Mason<cr>", desc = "Mason Menu" },
        { "<Leader>cm", "<cmd>Mason<cr>", desc = "Mason" },
      },
    },
    {
      "RubixDev/mason-update-all",
      cmd = "MasonUpdateAll",
      config = function()
        require("mason-update-all").setup()
        vim.api.nvim_create_autocmd("User", {
          pattern = "MasonUpdateAllComplete",
          callback = function()
            print("mason-update-all has finished")
          end,
        })
      end,
    },
  }
end

if settings.enable_wakatime then
  wakatime_type = {
    "wakatime/vim-wakatime",
    lazy = false,
  }
end

if settings.enable_winbar == "barbecue" then
  barbecue = {
    "utilyre/barbecue.nvim",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("config.barbecue")
    end,
  }
end

if settings.enable_cheatsheet then
  cheatsheet = {
    "doctorfree/cheatsheet.nvim",
    event = "VeryLazy",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
    config = function()
      local ctactions = require("cheatsheet.telescope.actions")
      require("cheatsheet").setup({
        bundled_cheetsheets = {
          enabled = { "default", "lua", "markdown", "regex", "netrw", "unicode" },
          disabled = { "nerd-fonts" },
        },
        bundled_plugin_cheatsheets = {
          enabled = {
            "auto-session",
            "goto-preview",
            "octo.nvim",
            "telescope.nvim",
            "vim-easy-align",
            "vim-sandwich",
          },
          disabled = { "gitsigns" },
        },
        include_only_installed_plugins = true,
        telescope_mappings = {
          ["<CR>"] = ctactions.select_or_fill_commandline,
          ["<A-CR>"] = ctactions.select_or_execute,
          ["<C-Y>"] = ctactions.copy_cheat_value,
          ["<C-E>"] = ctactions.edit_user_cheatsheet,
        },
      })
    end,
  }
end

if settings.enable_smooth_scrolling then
  neoscroll = {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require("config.neoscroll")
    end,
  }
end

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
      "Lazyplug",
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

local indentline_cfg = {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("config.indent-blankline")
  end,
}
if settings.indentline_style == "none" then
  indentline_cfg = {}
elseif settings.indentline_style == "mini" then
  indentline_cfg = {
    "echasnovski/mini.indentscope",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "help", "alpha", "dashboard", "NvimTree", "Trouble", "lazy", "mason" },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
    config = function(_, opts)
      require("mini.indentscope").setup(opts)
    end,
  }
end

if settings.enable_multi_cursor then
  local function gitsigns_menu()
    local gitsigns = require("gitsigns")

    local hint = [[
 _J_: Next hunk   _s_: Stage Hunk        _d_: Show Deleted   _b_: Blame Line
 _K_: Prev hunk   _u_: Undo Last Stage   _p_: Preview Hunk   _B_: Blame Show Full
 ^ ^              _S_: Stage Buffer      ^ ^                 _/_: Show Base File
 ^
 ^ ^              _<Enter>_: Neogit              _q_: Exit
]]
    return {
      name = "Git",
      hint = hint,
      config = {
        color = "pink",
        invoke_on_body = true,
        hint = {
          border = "rounded",
          position = "bottom",
        },
        on_enter = function()
          vim.cmd("mkview")
          vim.cmd("silent! %foldopen!")
          vim.bo.modifiable = false
          gitsigns.toggle_signs(true)
          gitsigns.toggle_linehl(true)
        end,
        on_exit = function()
          local cursor_pos = vim.api.nvim_win_get_cursor(0)
          vim.cmd("loadview")
          vim.api.nvim_win_set_cursor(0, cursor_pos)
          vim.cmd("normal zv")
          gitsigns.toggle_signs(false)
          gitsigns.toggle_linehl(false)
          gitsigns.toggle_deleted(false)
        end,
      },
      body = "<A-g>",
      heads = {
        {
          "J",
          function()
            if vim.wo.diff then
              return "]c"
            end
            vim.schedule(function()
              gitsigns.next_hunk()
            end)
            return "<Ignore>"
          end,
          { expr = true, desc = "Next Hunk" },
        },
        {
          "K",
          function()
            if vim.wo.diff then
              return "[c"
            end
            vim.schedule(function()
              gitsigns.prev_hunk()
            end)
            return "<Ignore>"
          end,
          { expr = true, desc = "Prev Hunk" },
        },
        { "s", ":Gitsigns stage_hunk<CR>", { silent = true, desc = "Stage Hunk" } },
        { "u", gitsigns.undo_stage_hunk, { desc = "Undo Last Stage" } },
        { "S", gitsigns.stage_buffer, { desc = "Stage Buffer" } },
        { "p", gitsigns.preview_hunk, { desc = "Preview Hunk" } },
        { "d", gitsigns.toggle_deleted, { nowait = true, desc = "Toggle Deleted" } },
        { "b", gitsigns.blame_line, { desc = "Blame" } },
        {
          "B",
          function()
            gitsigns.blame_line({ full = true })
          end,
          { desc = "Blame Show Full" },
        },
        { "/", gitsigns.show, { exit = true, desc = "Show Base File" } }, -- show the base of the file
        { "<Enter>", "<Cmd>Neogit<CR>", { exit = true, desc = "Neogit" } },
        { "q", nil, { exit = true, nowait = true, desc = "Exit" } },
      },
    }
  end

  local function dap_menu()
    local dap = require("dap")
    local dapui = require("dapui")
    local dap_widgets = require("dap.ui.widgets")

    local hint = [[
 _t_: Toggle Breakpoint             _R_: Run to Cursor
 _s_: Start                         _E_: Evaluate Input
 _c_: Continue                      _C_: Conditional Breakpoint
 _b_: Step Back                     _U_: Toggle UI
 _d_: Disconnect                    _S_: Scopes
 _e_: Evaluate                      _X_: Close
 _g_: Get Session                   _i_: Step Into
 _h_: Hover Variables               _o_: Step Over
 _r_: Toggle REPL                   _u_: Step Out
 _x_: Terminate                     _p_: Pause
 ^ ^               _q_: Quit
]]
    return {
      name = "Debug",
      hint = hint,
      config = {
        color = "pink",
        invoke_on_body = true,
        hint = {
          border = "rounded",
          position = "middle-right",
        },
      },
      mode = "n",
      body = "<A-d>",
      -- stylua: ignore
      heads = {
        { "C", function() dap.set_breakpoint(vim.fn.input "[Condition] > ") end, desc = "Conditional Breakpoint", },
        { "E", function() dapui.eval(vim.fn.input "[Expression] > ") end,        desc = "Evaluate Input", },
        { "R", function() dap.run_to_cursor() end,                               desc = "Run to Cursor", },
        { "S", function() dap_widgets.scopes() end,                              desc = "Scopes", },
        { "U", function() dapui.toggle() end,                                    desc = "Toggle UI", },
        { "X", function() dap.close() end,                                       desc = "Quit", },
        { "b", function() dap.step_back() end,                                   desc = "Step Back", },
        { "c", function() dap.continue() end,                                    desc = "Continue", },
        { "d", function() dap.disconnect() end,                                  desc = "Disconnect", },
        {
          "e",
          function() dapui.eval() end,
          mode = { "n", "v" },
          desc =
          "Evaluate",
        },
        { "g", function() dap.session() end,           desc = "Get Session", },
        { "h", function() dap_widgets.hover() end,     desc = "Hover Variables", },
        { "i", function() dap.step_into() end,         desc = "Step Into", },
        { "o", function() dap.step_over() end,         desc = "Step Over", },
        { "p", function() dap.pause.toggle() end,      desc = "Pause", },
        { "r", function() dap.repl.toggle() end,       desc = "Toggle REPL", },
        { "s", function() dap.continue() end,          desc = "Start", },
        { "t", function() dap.toggle_breakpoint() end, desc = "Toggle Breakpoint", },
        { "u", function() dap.step_out() end,          desc = "Step Out", },
        { "x", function() dap.terminate() end,         desc = "Terminate", },
        { "q", nil, {
          exit = true,
          nowait = true,
          desc = "Exit"
        } },
      },
    }
  end

  local function lsp_menu()
    local cmd = require("hydra.keymap-util").cmd
    return {
      name = "LSP Mode",
      mode = { "n" },
      config = {
        color = "pink",
        invoke_on_body = true,
        hint = {
          type = "window",
          position = "bottom-right",
          border = "rounded",
          show_name = true,
        },
      },
      hint = [[
    LSP
^
Common Actions
- _h_: Show Hover Doc
- _f_: Format Buffer
- _a_: Code Actions
- _s_: Jump to Definition
- _d_: Show Diagnostics
- _w_: Show Workspace Diagnostics
^
Help
- _e_: Show Declarations
- _D_: Show Type Definition
- _j_: Show Sig Help
- _o_: Show Implementation
- _r_: Show References
^
_;_/_q_/_<Esc>_: Exit Hydra
]],
      body = "<A-z>",
      heads = {
        { "s", cmd("TroubleToggle lsp_definitions"), { desc = "Jump to Definition", silent = true } },
        { "h", cmd("Lspsaga hover_doc"), { desc = "Show Hover Doc", silent = true } },
        { "o", cmd("TroubleToggle lsp_implementations"), { desc = "Show Implementations", silent = true } },
        { "j", vim.lsp.buf.signature_help, { desc = "Show Sig Help", silent = true } },
        { "r", cmd("TroubleToggle lsp_references"), { desc = "Show References", silent = true } },
        {
          "f",
          function()
            vim.lsp.buf.format({ async = true })
          end,
          { desc = "Format Buffer", silent = true },
        },
        { "a", vim.lsp.buf.code_action, { desc = "Show Code Actions", silent = true } },
        { "d", cmd("TroubleToggle document_diagnostics"), { desc = "Show Diagnostics", silent = true } },
        { "w", cmd("TroubleToggle workspace_diagnostics"), { desc = "Show Workspace Diagnostics", silent = true } },
        { "D", cmd("TroubleToggle lsp_definitions"), { desc = "Show Type Definition", silent = true } },
        { "e", vim.lsp.buf.declaration, { desc = "Show Declaration", silent = true } },
        { ";", nil, { desc = "quit", exit = true, nowait = true } },
        { "q", nil, { desc = "quit", exit = true, nowait = true } },
        { "<Esc>", nil, { desc = "quit", exit = true, nowait = true } },
      },
    }
  end

  local function quick_menu()
    local cmd = require("hydra.keymap-util").cmd
    return {
      name = "Quick Menu",
      mode = { "n" },
      hint = [[
        Quick Menu
^
_f_: Show Terminal (float)
_v_: Open Terminal (vertical)
_h_: Open Terminal (horizontal)

_x_: Open Quickfix
_l_: Open Location List

_s_: Buffer Fuzzy Search
_o_: Open Symbols Outline

_t_: Show Help Tags
_k_: Show Keymaps
_c_: Show Vim Commands
_m_: Show Man Pages
^
^ ^  _q_/_<Esc>_: Exit Hydra
    ]],
      config = {
        color = "teal",
        invoke_on_body = true,
        hint = {
          type = "window",
          position = "bottom",
          border = "rounded",
          show_name = true,
        },
      },
      body = "<A-q>",
      heads = {
        {
          "t",
          cmd("Telescope help_tags"),
          { desc = "Open Help Tags", silent = true },
        },
        {
          "k",
          ":lua require('telescope.builtin').keymaps()<CR>",
          { desc = "Open Neovim Keymaps", silent = true },
        },
        {
          "c",
          cmd("Telescope commands"),
          { desc = "Open Available Telescope Commands", silent = true },
        },
        {
          "m",
          cmd("Telescope man_pages"),
          { desc = "Opens Man Pages", silent = true },
        },
        {
          "s",
          cmd("Telescope current_buffer_fuzzy_find skip_empty_lines=true"),
          { desc = "Fuzzy find in current buffer", silent = true },
        },
        {
          "o",
          cmd("Telescope aerial"),
          { desc = "Opens Symbols Outline", exit = true, silent = true },
        },
        {
          "x",
          cmd("TroubleToggle quickfix"),
          { desc = "Opens Quickfix", silent = true },
        },
        {
          "l",
          cmd("TroubleToggle loclist"),
          { desc = "Opens Location List", silent = true },
        },

        {
          "f",
          cmd("ToggleTerm direction=float"),
          { desc = "Floating Terminal", silent = true },
        },
        {
          "v",
          cmd("ToggleTerm direction=vertical"),
          { desc = "Vertical Terminal", silent = true },
        },
        {
          "h",
          cmd("ToggleTerm direction=horizontal"),
          { desc = "Horizontal Terminal", silent = true },
        },

        {
          "q",
          nil,
          { desc = "quit", exit = true, nowait = true },
        },
        {
          "<Esc>",
          nil,
          { desc = "quit", exit = true, nowait = true },
        },
      },
    }
  end

  hydra_plugin = {
    "smoka7/hydra.nvim",
    event = { "BufReadPre" },
    config = function(_, _)
      local hydra = require("hydra")
      hydra(gitsigns_menu())
      hydra(dap_menu())
      hydra(lsp_menu())
      hydra(quick_menu())
    end,
  }
  multi_cursor = {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "smoka7/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>ms",
        "<cmd>MCstart<cr>",
        desc = "Create a selection for selected text or word under the cursor",
      },
      {
        "<Leader>mM",
        "<CMD>MCvisual<CR>",
        mode = "v",
        desc = "multicursor",
      },
      {
        "<Leader>m<C-Down>",
        "<CMD>MCunderCursor<CR>",
        desc = "multicursor down",
      },
    },
  }
end

return {
  -- Supported themes
  -- nightfox, tundra, tokyonight, catppuccin, dracula, kanagawa, onedarkpro
  --
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.nightfox")
    end,
  },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    branch = "master",
    priority = 1000,
    keys = { { "<Leader>up", "<cmd>MonokaiProSelect<cr>", desc = "Select Moonokai pro filter" } },
    config = function()
      require("themes.monokai-pro")
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.onedarkpro")
    end,
  },
  {
    "sam4llis/nvim-tundra",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.tundra")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    branch = "main",
    config = function()
      require("themes.tokyonight")
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.dracula")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.kanagawa")
    end,
  },
  {
    "neanias/everforest-nvim",
    name = "everforest",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.everforest")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.catppuccin")
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
    dependencies = dashboard_depend,
    enabled = true,
    event = "VimEnter",
    keys = { { "<leader>A", "<cmd>Alpha<CR>", "Alpha Dashboard" } },
    config = function()
      require("ecovim.plugins.alpha")
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
  -- vim.keymap.set('n', '<Leader>dd', function() require("duck").hatch("🦆", 10) end, {})
  -- Quite a mellow cat
  -- vim.keymap.set('n', '<Leader>dc', function() require("duck").hatch("🐈", 0.75) end, {})
  {
    "tamton-aquib/duck.nvim",
    -- <Leader>d is already taken for debug keymaps
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
      require("ecovim.plugins.flirt")
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPre",
    config = function()
      require("ecovim.plugins.treesitter")
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
      require("ecovim.plugins.telescope")
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
      require("ecovim.plugins.tree")
    end,
  },
  {
    "gbprod/stay-in-place.nvim",
    lazy = false,
    config = true, -- run require("stay-in-place").setup()
  },

  coding,

  -- LSP Cmp
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      require("ecovim.plugins.cmp")
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
        cond = Ecovim.plugins.ai.tabnine.enabled,
        "tzachar/cmp-tabnine",
        build = "./install.sh",
      },
      {
        "David-Kunz/cmp-npm",
        config = function()
          require("ecovim.plugins.cmp-npm")
        end,
      },
      {
        "zbirenbaum/copilot-cmp",
        cond = Ecovim.plugins.ai.copilot.enabled,
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
      require("ecovim.plugins.dressing")
    end,
    cond = Ecovim.plugins.dressing.enabled,
  },
  { "onsails/lspkind-nvim" },
  { "nvim-lua/popup.nvim" },
  {
    "SmiteshP/nvim-navic",
    dependencies = "neovim/nvim-lspconfig",
    init = function()
      vim.g.navic_silence = true
      vim.api.nvim_set_hl(0, "NavicText", { link = "Comment" })
      vim.api.nvim_set_hl(0, "NavicSeparator", { link = "Comment" })
      require("utils.utils").on_attach(function(client, buffer)
        if client.server_capabilities.documentSymbolProvider then
          require("nvim-navic").attach(client, buffer)
        end
      end)
    end,
    opts = function()
      return {
        separator = " ",
        highlight = true,
        depth_limit = 0,
        depth_limit_indicator = "..",
        icons = require("icons").kinds,
        lsp = {
          auto_attach = true,
          preference = nil,
        },
        safe_output = true,
      }
    end,
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
      require("ecovim.plugins.typescript-tools")
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
      require("ecovim.plugins.glance")
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
      require("ecovim.plugins.comment")
    end,
  },
  {
    "LudoPinelli/comment-box.nvim",
    lazy = false,
    keys = {
      { "<Leader>ac", "<cmd>lua require('comment-box').lbox()<CR>", desc = "comment box" },
      { "<Leader>ac", "<cmd>lua require('comment-box').lbox()<CR>", mode = "v", desc = "comment box" },
    },
  },
  {
    "akinsho/nvim-toggleterm.lua",
    cond = Ecovim.plugins.toggleterm.enabled,
    lazy = false,
    branch = "main",
    config = function()
      require("ecovim.plugins.toggleterm")
    end,
    keys = {
      { "<Leader>at", "<cmd>ToggleTerm direction=float<CR>", desc = "terminal float" },
    },
  },
  { "tpope/vim-repeat", lazy = false },
  { "tpope/vim-speeddating", lazy = false },
  { "dhruvasagar/vim-table-mode", ft = { "markdown" } },
  {
    "nacro90/numb.nvim",
    lazy = false,
    config = function()
      require("ecovim.plugins.numb")
    end,
  },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    event = "BufEnter",
    config = function()
      require("ecovim.plugins.todo-comments")
    end,
  },
  {
    "folke/zen-mode.nvim",
    cmd = { "ZenMode" },
    config = function()
      require("ecovim.plugins.zen")
    end,
    cond = Ecovim.plugins.zen.enabled,
  },
  {
    "folke/twilight.nvim",
    config = true,
    cond = Ecovim.plugins.zen.enabled,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("ecovim.plugins.which-key")
    end,
  },
  {
    "nvimdev/galaxyline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = "BufReadPost",
    config = function()
      require("ecovim.plugins.galaxyline")
    end,
  },
  {
    "folke/noice.nvim",
    cond = Ecovim.plugins.experimental_noice.enabled,
    event = "VeryLazy",
    -- stylua: ignore
    keys = {
      {
        "<S-Enter>",
        function() require("noice").redirect(vim.fn.getcmdline()) end,
        mode = "c",
        desc = "Redirect Cmdline"
      },
      { "<leader>snl", function() require("noice").cmd("last") end,    desc = "Noice Last Message" },
      { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },
      { "<leader>sna", function() require("noice").cmd("all") end,     desc = "Noice All" },
    },
    config = function()
      require("config.noice")
    end,
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
      require("ecovim.plugins.bufferline")
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
  -- Better `vim.notify()`
  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>un",
        function()
          require("notify").dismiss({ silent = true, pending = true })
        end,
        desc = "Delete all Notifications",
      },
    },
    opts = {
      background_colour = notify_bg,
      timeout = 3000,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
    },
    init = function()
      -- when noice is not enabled, install notify on VeryLazy
      local Util = require("util")
      if not Util.has("noice.nvim") then
        Util.on_very_lazy(function()
          vim.notify = require("notify")
        end)
      end
    end,
  },
  {
    "vuki656/package-info.nvim",
    event = "BufEnter package.json",
    config = function()
      require("ecovim.plugins.package-info")
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install && git reset --hard",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
    event = "VeryLazy",
    config = function()
      require("ecovim.plugins.markdown-preview")
      local wk = require("which-key")
      wk.register({
        m = {
          name = "Markdown",
          p = { ":MarkdownPreview<CR>", "Start Preview" },
          s = { ":MarkdownPreviewStop<CR>", "Stop Preview" },
          t = { ":MarkdownPreviewToggle<CR>", "Toggle Preview" },
        },
      }, {
        prefix = "<Leader>",
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
      vim.g.rooter_patterns = Ecovim.plugins.rooter.patterns
      vim.g.rooter_silent_chdir = 1
      vim.g.rooter_resolve_links = 1
    end,
  },
  {
    "Shatur/neovim-session-manager",
    lazy = false,
    config = function()
      require("ecovim.plugins.session-manager")
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
      vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
      vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds, { desc = "Open folds except kinds" })
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
      require("ecovim.plugins.printer")
    end,
  },
  {
    "chrisgrieser/nvim-spider",
    cond = Ecovim.plugins.jump_by_subwords.enabled,
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
      require("ecovim.plugins.autopairs")
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("ecovim.plugins.colorizer")
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

  -- Git
  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("ecovim.plugins.git.signs")
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
      require("ecovim.plugins.git.diffview")
    end,
    keys = {
      { "<Leader>gd", "<cmd>lua require('ecovim.plugins.git.diffview').toggle_file_history()<CR>", desc = "diff file" },
      { "<Leader>gs", "<cmd>lua require('ecovim.plugins.git.diffview').toggle_status()<CR>", desc = "status" },
    },
  },
  {
    "akinsho/git-conflict.nvim",
    lazy = false,
    config = function()
      require("ecovim.plugins.git.conflict")
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
      require("ecovim.plugins.git.worktree")
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
      require("ecovim.plugins.neotest")
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

  -- Barbecue winbar
  barbecue,

  -- Lazyman cheatsheet
  cheatsheet,

  -- Neovim indent guides
  indentline_cfg,

  -- Snippets
  snippet,

  tscomment,
  minicomment,
  inlayhints,
  signature,
  lspsaga,
  actionmenu,

  -- Motion: hop, flash, leap, or none
  motion,

  -- Multi cursor
  hydra_plugin,
  multi_cursor,

  -- Games
  vimbegood,
  hacker,
  sudoku,
  blackjack,
  cellular,

  -- Smooth scrolling
  neoscroll,

  -- If terminal is enabled in configuration.lua
  terminal_nvim,

  -- WakaTime Neovim dashboard
  wakatime_type,
}
