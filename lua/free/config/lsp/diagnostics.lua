local settings = require("configuration")
local showdiag = settings.show_diagnostics

if showdiag == "none" then
  vim.g.diagnostics_enabled = false
else
  vim.g.diagnostics_enabled = true
end

local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = "",
  })
end

sign({ name = "DiagnosticSignError", text = "✘" })
sign({ name = "DiagnosticSignWarn", text = "⚠" })
sign({ name = "DiagnosticSignHint", text = "•" })
sign({ name = "DiagnosticSignInfo", text = "ⓘ" })

local diagnostics = {
  off = {
    underline = true,
    virtual_text = false,
    signs = false,
    update_in_insert = false,
  },
  on = {
    virtual_text = false, -- disable virtual text
    virtual_lines = false,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    signs = true,
    float = {
      focusable = false,
      style = "minimal",
      header = "",
      prefix = "",
      border = "rounded",
      format = function(diagnostic)
        return string.format("%s (%s)", diagnostic.message, diagnostic.source)
      end,
    },
  },
}

vim.api.nvim_create_user_command("ToggleDiagnostic", function()
  if vim.g.diagnostics_enabled then
    vim.diagnostic.config(diagnostics["off"])
    vim.g.diagnostics_enabled = false
  else
    vim.diagnostic.config(diagnostics["on"])
    vim.g.diagnostics_enabled = true
  end
end, { nargs = 0 })

return diagnostics
