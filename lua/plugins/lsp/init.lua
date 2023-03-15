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
      require("config.lspconfig")
      local mason_lspconfig = require("mason-lspconfig")
      local servers = require("config.lsp.servers")
      local available = mason_lspconfig.get_available_servers()
      local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

      local function setup(server)
        local server_opts = vim.tbl_deep_extend("force", {
          capabilities = vim.deepcopy(capabilities),
        }, servers[server] or {})
        require("lspconfig")[server].setup(server_opts)
      end

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
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    version = false,
    dependencies = {
      "nvim-lspconfig",
      "mason.nvim",
    },
    config = function()
      require("mason-lspconfig").setup({
        -- automatic_installation = false,
        automatic_installation = {
          exclude = {
            "awk-language-server",
            "bash-language-server",
            "black",
            "clangd",
            "cmake-language-server",
            "cssmodules-language-server",
            "docker-langserver",
            "jdtls",
            "lua-language-server",
            "marksman",
            "prettier",
            "pyright",
            "rust_analyzer",
            "stylua",
            "taplo",
            "texlab",
            "typescript-language-server",
            "vim-language-server",
            "yaml-language-server",
          },
        },
      })
      -- require("mason-lspconfig").setup_handlers({ setup })
    end,
  },

  -- formatters
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    config = function()
      require("config.null-ls")
    end,
  },

  {
    "mfussenegger/nvim-jdtls",
  },
}
