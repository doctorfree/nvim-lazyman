local settings = require("configuration")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "jose-elias-alvarez/nvim-lsp-ts-utils",
      "jose-elias-alvarez/null-ls.nvim",
      --'jayp0521/mason-null-ls.nvim',
      "nvim-lua/plenary.nvim",
      "b0o/schemastore.nvim",
      "folke/neodev.nvim",
      --'ThePrimeagen/refactoring.nvim',
    },
    config = function()
      --cSpell: disable
      require("mason").setup()
      require("mason-lspconfig").setup({
        -- A list of servers to automatically install if they're not already installed.
        -- This setting has no relation with the `automatic_installation` setting.
        ensure_installed = settings.lsp_servers,

        -- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
        -- This setting has no relation with the `ensure_installed` setting.
        -- Can either be:
        --   - false: Servers are not automatically installed.
        --   - true: All servers set up via lspconfig are automatically installed.
        --   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
        --       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
        automatic_installation = true,
      })
      -- require("neodev").setup({})

      vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
      vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
      vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
      vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        -- Use a sharp border with `FloatBorder` highlights
        border = "single",
      })
      vim.diagnostic.config({
        update_in_insert = false,
      })

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      capabilities.textDocument.completion.completionItem.resolveSupport = {
        properties = {
          "documentation",
          "detail",
          "additionalTextEdits",
        },
      }

      -- for nvim-ufo
      vim.wo.foldlevel = 99 -- feel free to decrease the value
      vim.wo.foldenable = true
      capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true,
      }

      local cspell_extra_args = function(params)
        local project_root = params.root or vim.fn.system("git rev-parse --show-toplevel") or vim.fn.getcwd()
        return {
          "--config",
          project_root .. "/cspell.json",
        }
      end
      local null_ls = require("null-ls")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
      null_ls.setup({
        should_attach = function(bufnr)
          local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
          if ft == "dbui" or ft == "dbout" or ft:match("sql") then
            return false
          end
          return true
        end,
        sources = {
          null_ls.builtins.code_actions.cspell.with({
            extra_args = cspell_extra_args,
          }),
          --null_ls.builtins.code_actions.proselint,
          --null_ls.builtins.code_actions.refactoring,
          null_ls.builtins.diagnostics.cspell.with({
            extra_args = cspell_extra_args,
          }),
          --null_ls.builtins.diagnostics.proselint,
          null_ls.builtins.formatting.prettierd,
          null_ls.builtins.formatting.stylua, -- prettier, eslint, eslint_d, or prettierd
          null_ls.builtins.formatting.trim_newlines,
          null_ls.builtins.formatting.trim_whitespace,
          null_ls.builtins.diagnostics.actionlint,
        },
        -- on_attach = function(client, bufnr)
        --   -- Format on save
        --   -- This causes bugs, sometimes I lose data because of this...
        --   if client.supports_method("textDocument/formatting") then
        --     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        --     vim.api.nvim_create_autocmd("BufWritePre", {
        --       group = augroup,
        --       buffer = bufnr,
        --       callback = function()
        --         local success, msg = pcall(vim.lsp.buf.format, { bufnr = bufnr })
        --         if not success then
        --           vim.notify("Unable to auto format buffer.", vim.log.levels.WARN)
        --         end
        --       end,
        --     })
        --   end
        -- end,
      })
      --require("mason-null-ls").setup({
      --  automatic_installation = true,
      --})

      local lspconfig = require("lspconfig")
      local navic = require("nvim-navic")

      lspconfig.jsonls.setup({
        settings = {
          json = {
            schemas = require("schemastore").json.schemas(),
          },
        },
      })

      -- make sure to only run this once!
      local tsserver_on_attach = function(client, bufnr)
        -- disable tsserver formatting if you plan on formatting via null-ls
        client.server_capabilities.document_formatting = false
        client.server_capabilities.document_range_formatting = false

        local ts_utils = require("nvim-lsp-ts-utils")

        -- defaults
        ts_utils.setup({
          enable_import_on_completion = true,
          -- eslint
          eslint_enable_code_actions = true,
          eslint_enable_disable_comments = true,
          eslint_bin = "eslint_d",
          eslint_enable_diagnostics = false,
          eslint_opts = {},

          -- formatting
          enable_formatting = true,
          formatter = "prettier",
          formatter_opts = {},

          -- update imports on file move
          update_imports_on_move = true,
          require_confirmation_on_move = false,
          watch_dir = nil,

          -- filter diagnostics
          filter_out_diagnostics_by_severity = {},
          filter_out_diagnostics_by_code = {},
        })

        -- required to fix code action ranges and filter diagnostics
        ts_utils.setup_client(client)

        -- no default maps, so you may want to define some here
        local opts = { silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, "n", ",go", ":TSLspOrganize<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", ",gR", ":TSLspRenameFile<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", ",gi", ":TSLspImportAll<CR>", opts)

        navic.attach(client, bufnr)
      end

      --lspconfig.setup ({
      --  capabilities = capabilities,
      --})

      lspconfig.tsserver.setup({
        capabilities = capabilities,
        on_attach = tsserver_on_attach,
      })

      -- cspell: disable
      local other_servers_with_navic = {
        --"omnisharp",
        "gopls",
        --"graphql",
        "yamlls",
        "html",
        "pylsp",
        "terraformls",
        "vimls",
        "bashls",
        --"angularls"
      }
      -- cspell: enable
      for _, server in ipairs(other_servers_with_navic) do
        if lspconfig[server] then
          lspconfig[server].setup({
            capabilities = capabilities,
            on_attach = function(client, bufnr)
              navic.attach(client, bufnr)
            end,
          })
        end
      end

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = navic.attach,
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
            diagnostics = {
              globals = {
                "vim",
                "describe",
                "it",
                "before_each",
                "after_each",
                "pending",
              },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = {
              enable = false,
            },
          },
        },
      })

      vim.cmd([[ do User LspAttachBuffers ]])
    end,
  },

  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    opts = {
      ensure_installed = settings.tools,
    },
    ---@param opts MasonSettings | {ensure_installed: string[]}
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      local function ensure_installed()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end
      if mr.refresh then
        mr.refresh(ensure_installed)
      else
        ensure_installed()
      end
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = settings.formatters,
        automatic_setup = true,
        automatic_installation = true,
      })
    end,
  },

  {
    "RubixDev/mason-update-all",
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

  {
    "folke/neodev.nvim",
    version = false, -- last release is way too old
    event = "VeryLazy",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("config.neodev")
    end,
  },

  { "mfussenegger/nvim-jdtls" }, -- java lsp - https://github.com/mfussenegger/nvim-jdtls

  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "mason.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      local formatting = null_ls.builtins.formatting
      local diagnostics = null_ls.builtins.diagnostics
      local actions = null_ls.builtins.code_actions
      null_ls.setup({
        debug = false,
        sources = {
          formatting.prettier.with({
            -- milliseconds
            timeout = 10000,
            extra_args = { "--single-quote", "false" },
          }),
          formatting.stylua.with({
            timeout = 10000,
            extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
          }),
          formatting.terraform_fmt,
          formatting.goimports,
          formatting.gofumpt,
          formatting.latexindent.with({
            timeout = 10000,
            extra_args = { "-g", "/dev/null" }, -- https://github.com/cmhughes/latexindent.pl/releases/tag/V3.9.3
          }),
          actions.shellcheck,
          actions.gitsigns,
          formatting.shfmt.with({
            extra_args = { "-i", "2", "-ci", "-bn" },
          }),
          diagnostics.ruff,
          formatting.google_java_format,
          formatting.black.with({
            timeout = 10000,
            extra_args = { "--fast" },
          }),
          formatting.sql_formatter.with({
            timeout = 10000,
            extra_args = { "--config" },
          }),
          formatting.markdownlint,
          formatting.beautysh.with({
            timeout = 10000,
            extra_args = { "--indent-size", "2" },
          }),
          diagnostics.zsh.with({
            filetypes = { "zsh" },
          }),
        },
        on_attach = function(client, bufnr)
          vim.keymap.set(
            "n",
            "<leader>tF",
            "<cmd>lua require('utils.utils').toggle_autoformat()<cr>",
            { desc = "Toggle format on save" }
          )
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                if AUTOFORMAT_ACTIVE then -- global var defined in functions.lua
                  vim.lsp.buf.format({ bufnr = bufnr })
                end
              end,
            })
          end
        end,
      })
    end,
  },

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" }, -- Required
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" }, -- Optional
      -- Autocompletion
      { "hrsh7th/nvim-cmp" }, -- Required
      { "hrsh7th/cmp-nvim-lsp" }, -- Required
      { "L3MON4D3/LuaSnip" }, -- Required
    },
    config = function()
      local lsp = require("lsp-zero").preset({})
      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({ buffer = bufnr })
      end)
      lsp.setup()
    end,
  },
}
