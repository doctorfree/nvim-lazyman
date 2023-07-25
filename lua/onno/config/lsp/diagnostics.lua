local Util = require("util")
vim.g.diagnostics_enabled = true

local diagnostics = {
  off = {
    underline = true,
    virtual_text = false,
    signs = false,
    update_in_insert = false,
  },
  on = {
    virtual_text = {
      spacing = 4,
      source = "if_many",
      prefix = "●",
    }, -- disable virtual text
    virtual_lines = false,
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      -- border = "rounded",
      border = Util.generate_borderchars("thick", "tl-t-tr-r-bl-b-br-l"),
      source = "always",
      header = "",
      prefix = "",
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
