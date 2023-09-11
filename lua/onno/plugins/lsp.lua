local settings = require("configuration")
local formatters_linters = settings.formatters_linters
local lsp_servers = settings.lsp_servers

if settings.enable_coding then
  return {
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

    "mfussenegger/nvim-jdtls",
  }
else
  return {
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
  }
end
