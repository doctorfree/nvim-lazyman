local settings = require("configuration")
local formatters_linters = settings.formatters_linters
local lsp_servers = settings.lsp_servers

local formatters = {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "neovim/nvim-lspconfig",
    "mason.nvim",
  },
  config = function()
    require("config.null-ls")
  end,
}
local format_depend = "jose-elias-alvarez/null-ls.nvim"
if settings.enable_conform then
  formatters = {
    "stevearc/conform.nvim",
    config = function()
      require("config.conform")
    end,
  }
  format_depend = "stevearc/conform.nvim"
end

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
      dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "jose-elias-alvarez/nvim-lsp-ts-utils",
        format_depend,
        "nvim-lua/plenary.nvim",
        "b0o/schemastore.nvim",
        "folke/neodev.nvim",
      },
      config = function()
        local opts = {
          ensure_installed = formatters_linters,
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
        local mr = require("mason-registry")
        local function install_ensured()
          for _, tool in ipairs(opts.ensure_installed) do
            local p = mr.get_package(tool)
            if not p:is_installed() then
              p:install()
            end
          end
        end
        if mr.refresh then
          mr.refresh(install_ensured)
        else
          install_ensured()
        end
        require("mason-lspconfig").setup({
          ensure_installed = lsp_servers,
          automatic_installation = true,
        })
        require("config.lspconfig")
      end,
    },

    { "mfussenegger/nvim-jdtls" }, -- java lsp - https://github.com/mfussenegger/nvim-jdtls

    formatters,
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
        lsp.on_attach(function(_, bufnr)
          lsp.default_keymaps({ buffer = bufnr })
        end)
        lsp.setup()
      end,
    },
  }
else
  return {}
end
