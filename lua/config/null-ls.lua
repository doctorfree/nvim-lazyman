-- NULL LS is for hooking up non-LSP tools to the LSP UX
-- Be sure to :checkhealth to see if any underlying tools are missing
local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- TODO: figure out how to wire up ember-template-lint
local lsp_formatting = function(buffer)
  vim.lsp.buf.format({
    filter = function(client)
      -- By default, ignore any formatters provider by other LSPs
      -- (such as those managed via lspconfig or mason)
      -- Also "eslint as a formatter" doesn't work :(
      return client.name == "null-ls"
    end,
    bufnr = buffer,
  })
end

-- Format on save
-- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Avoiding-LSP-formatting-conflicts#neovim-08
local on_attach = function(client, buffer)
  -- the Buffer will be null in buffers like nvim-tree or new unsaved files
  if not buffer then
    return
  end

  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = buffer })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = buffer,
      callback = function()
        lsp_formatting(buffer)
      end,
    })
  end
end

null_ls.setup({
  debug = false,
  sources = {
    formatting.prettier,
    formatting.stylua,
    formatting.google_java_format,
    formatting.black.with({ extra_args = { "--fast" } }),
    formatting.sql_formatter.with({ extra_args = { "--config" } }),

    -- sources = {
    -- Prettier, but faster (daemonized)
    --   null_ls.builtins.formatting.prettierd.with({
    --     filetypes = {
    --       "css", "json", "jsonc","javascript", "typescript",
    --       "javascript.glimmer", "typescript.glimmer",
    --       "handlebars"
    --     }
    --   }),

    -- Code actions for staging hunks, blame, etc
    --- null_ls.builtins.code_actions.gitsigns,
    --- null_ls.builtins.completion.luasnip,

    -- Spell check that has better tooling
    -- all stored locally
    -- https://github.com/streetsidesoftware/cspell
    -- null_ls.builtins.diagnostics.cspell.with({
    -- This file is symlinked from my dotfiles repo
    --   extra_args = { "--config", "~/.cspell.json" }
    -- }),
    -- null_ls.builtins.code_actions.cspell.with({
    -- This file is symlinked from my dotfiles repo
    --   extra_args = { "--config", "~/.cspell.json" }
    -- })
    -- null_ls.builtins.completion.spell,
  },
  on_attach = on_attach,
})
