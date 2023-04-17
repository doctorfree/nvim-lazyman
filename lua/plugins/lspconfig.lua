local settings = require("configuration")

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "jose-elias-alvarez/nvim-lsp-ts-utils",
      "jose-elias-alvarez/null-ls.nvim",
      "nvim-lua/plenary.nvim",
      "b0o/schemastore.nvim",
      "folke/neodev.nvim",
    },
    config = function()
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
      require("config.lspconfig")
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
      ensure_installed = settings.formatters_linters,
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
      vim.filetype.add {
        extension = {
          zsh = "zsh",
        },
      }
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
            filetypes = { "sh", "zsh", "bash" },
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
            local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
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
