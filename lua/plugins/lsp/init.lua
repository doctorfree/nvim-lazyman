return {
  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    branch = "master",
    lazy = true,
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    keys = {
      { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
      { "<leader>ld", "<cmd>Telescope lsp_document_diagnostics<cr>", desc = "Document Diagnostics" },
      { "<leader>lw", "<cmd>Telescope lsp_workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
      { "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", desc = "Format" },
      { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
      { "<leader>lI", "<cmd>LspInstallInfo<cr>", desc = "Installer Info" },
      { "<leader>lj", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", desc = "Next Diagnostic" },
      { "<leader>lk", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic" },
      { "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
      { "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", desc = "Quickfix" },
      { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
      { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
      { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
      { "W", "<cmd>lua vim.lsp.buf.format()<CR><cmd>w!<CR>", desc = "Format and Save" },
    },
    config = function()
      -- special attach lsp
      require("utils.utils").on_attach(function(client, buffer)
        require("config.lsp.keymaps").on_attach(client, buffer)
        require("config.lsp.inlayhints").on_attach(client, buffer)
        require("config.lsp.gitsigns").on_attach(client, buffer)
      end)

      -- diagnostics
      for name, icon in pairs(require("utils.icons").diagnostics) do
        name = "DiagnosticSign" .. name
        vim.fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
      end
      vim.diagnostic.config(require("config.lsp.diagnostics")["on"])

      -- Show line diagnostics automatically in hover window
      vim.cmd([[
        autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false })
      ]])

      -- Mappings.
      -- See `:help vim.diagnostic.*` for documentation
      local diagnostics_active = true
      local toggle_diagnostics = function()
        diagnostics_active = not diagnostics_active
        if diagnostics_active then
          vim.diagnostic.show()
        else
          vim.diagnostic.hide()
        end
      end

      local opts = { noremap=true, silent=true }
      vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, opts)
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
      vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, opts)
      vim.keymap.set('n', '<leader>dt', toggle_diagnostics)

      local servers = require("config.lsp.servers")
      local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
      capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true,
      }

      local function setup(server)
        local server_opts = vim.tbl_deep_extend("force", {
          capabilities = vim.deepcopy(capabilities),
        }, servers[server] or {})
        require("lspconfig")[server].setup(server_opts)
      end

      local mason_lspconfig = require("mason-lspconfig")
      local available = mason_lspconfig.get_available_servers()

      local ensure_installed = {}
      for server, server_opts in pairs(servers) do
        if server_opts then
          if not vim.tbl_contains(available, server) then
            setup(server)
          else
            ensure_installed[#ensure_installed + 1] = server
          end
        end
      end

      require("mason-lspconfig").setup({ ensure_installed = ensure_installed })
      require("mason-lspconfig").setup_handlers({ setup })
    end,
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   event = { "BufReadPre", "BufNewFile" },
  --   dependencies = {
  --     { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
  --     { "folke/neodev.nvim", opts = { experimental = { pathStrict = true } } },
  --     "mason.nvim",
  --     "williamboman/mason-lspconfig.nvim",
  --     {
  --       "hrsh7th/cmp-nvim-lsp",
  --       cond = function()
  --         return require("util").has("nvim-cmp")
  --       end,
  --     },
  --   },
    ---@class PluginLspOpts
  --   opts = {
      -- options for vim.diagnostic.config()
  --     diagnostics = {
  --       underline = true,
  --       update_in_insert = false,
  --       virtual_text = { spacing = 4, prefix = "●" },
  --       severity_sort = true,
  --     },
      -- Automatically format on save
  --     autoformat = true,
      -- options for vim.lsp.buf.format
      -- `bufnr` and `filter` is handled by the LazyMan formatter,
      -- but can be also overridden when specified
 --      format = {
 --        formatting_options = nil,
 --        timeout_ms = nil,
 --      },
      -- LSP Server Settings
      ---@type lspconfig.options
 --      servers = {
 --        jsonls = {},
 --        lua_ls = {
 --          -- mason = false, -- set to false if you don't want this server to be installed with mason
 --          settings = {
 --            Lua = {
 --              workspace = {
 --                checkThirdParty = false,
 --              },
 --              completion = {
 --                callSnippet = "Replace",
 --              },
 --            },
 --          },
 --        },
 --      },
      -- you can do any additional lsp server setup here
      -- return true if you don't want this server to be setup with lspconfig
      ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
 --      setup = {
        -- example to setup with typescript.nvim
        -- tsserver = function(_, opts)
        --   require("typescript").setup({ server = opts })
        --   return true
        -- end,
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts) end,
 --      },
 --    },
    ---@param opts PluginLspOpts
 --    config = function(_, opts)
      -- setup autoformat
 --      require("plugins.lsp.format").autoformat = opts.autoformat
      -- setup formatting and keymaps
 --      require("util").on_attach(function(client, buffer)
 --        require("plugins.lsp.format").on_attach(client, buffer)
 --        require("plugins.lsp.keymaps").on_attach(client, buffer)
 --      end)

      -- diagnostics
--       for name, icon in pairs(require("config").icons.diagnostics) do
--         name = "DiagnosticSign" .. name
--         vim.fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
--       end
--       vim.diagnostic.config(opts.diagnostics)

--       local servers = opts.servers
--       local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

--       local function setup(server)
--         local server_opts = vim.tbl_deep_extend("force", {
--           capabilities = vim.deepcopy(capabilities),
--         }, servers[server] or {})

--         if opts.setup[server] then
--           if opts.setup[server](server, server_opts) then
--             return
--           end
--         elseif opts.setup["*"] then
--           if opts.setup["*"](server, server_opts) then
--             return
--           end
--         end
--         require("lspconfig")[server].setup(server_opts)
--       end

      -- temp fix for lspconfig rename
      -- https://github.com/neovim/nvim-lspconfig/pull/2439
--       local mappings = require("mason-lspconfig.mappings.server")
--       if not mappings.lspconfig_to_package.lua_ls then
--         mappings.lspconfig_to_package.lua_ls = "lua-language-server"
--         mappings.package_to_lspconfig["lua-language-server"] = "lua_ls"
--       end

--       local mlsp = require("mason-lspconfig")
--      local available = mlsp.get_available_servers()

--      local ensure_installed = {} ---@type string[]
--      for server, server_opts in pairs(servers) do
--        if server_opts then
--          server_opts = server_opts == true and {} or server_opts
          -- run manual setup if mason=false or if this is a server that cannot be installed with mason-lspconfig
--          if server_opts.mason == false or not vim.tbl_contains(available, server) then
--            setup(server)
--          else
--            ensure_installed[#ensure_installed + 1] = server
--          end
--        end
--      end

--      require("mason-lspconfig").setup({ ensure_installed = ensure_installed })
--      require("mason-lspconfig").setup_handlers({ setup })
--    end,
--  },

  -- formatters
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    config = function()
      local null_ls = require("null-ls")
      local formatting = null_ls.builtins.formatting
      -- print(vim.inspect(formatting.sql_formatter))
      -- print(vim.inspect(formatting.black))
      null_ls.setup({
        debug = false,
        sources = {
          formatting.prettier,
          formatting.stylua,
          formatting.google_java_format,
          formatting.black.with({ extra_args = { "--fast" } }),
          formatting.sql_formatter.with({ extra_args = { "--config" } }),
        },
      })
    end,
  },
  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   event = { "BufReadPre", "BufNewFile" },
  --   dependencies = { "mason.nvim" },
  --   opts = function()
  --     local nls = require("null-ls")
  --     return {
  --       sources = {
  --         nls.builtins.formatting.fish_indent,
  --         nls.builtins.diagnostics.fish,
  --         nls.builtins.formatting.stylua,
  --         nls.builtins.formatting.shfmt,
  --         nls.builtins.diagnostics.flake8,
  --       },
  --     }
  --   end,
  -- },

  {
    "mfussenegger/nvim-jdtls",
  },

}
