local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

return {
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
            extra_args = { "--single-quote", "false" },
          }),
          formatting.stylua.with({ extra_args = { "--indent-type", "Spaces", "--indent-width", "2" } }),
          formatting.terraform_fmt,
          formatting.goimports,
          formatting.gofumpt,
          formatting.latexindent.with({
            extra_args = { "-g", "/dev/null" }, -- https://github.com/cmhughes/latexindent.pl/releases/tag/V3.9.3
          }),
          actions.shellcheck,
          actions.gitsigns,
          formatting.shfmt,
          diagnostics.ruff,
          formatting.shellharden,
          formatting.google_java_format,
          formatting.black.with({ extra_args = { "--fast" } }),
          formatting.sql_formatter.with({ extra_args = { "--config" } }),
          formatting.markdownlint,
          formatting.beautysh.with({ extra_args = { "--indent-size", "2" } }),
          diagnostics.zsh.with({
            filetypes = { "zsh" },
          }),
        },
        on_attach = function(client, bufnr)
          vim.keymap.set(
            "n",
            "<leader>tF",
            "<cmd>lua require('core.plugins.lsp.utils').toggle_autoformat()<cr>",
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
}
