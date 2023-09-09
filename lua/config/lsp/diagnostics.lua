local settings = require("configuration")
local showdiag = settings.show_diagnostics

if showdiag == "none" then
  vim.g.diagnostics_enabled = false
else
  vim.g.diagnostics_enabled = true
end

local codes = {
  -- Lua
  no_matching_function = {
    message = " Can't find a matching function",
    "redundant-parameter",
    "ovl_no_viable_function_in_call",
  },
  empty_block = {
    message = " That shouldn't be empty here",
    "empty-block",
  },
  missing_symbol = {
    message = " Here should be a symbol",
    "miss-symbol",
  },
  expected_semi_colon = {
    message = " Please put the `;` or `,`",
    "expected_semi_declaration",
    "miss-sep-in-table",
    "invalid_token_after_toplevel_declarator",
  },
  redefinition = {
    message = " That variable was defined before",
    icon = " ",
    "redefinition",
    "redefined-local",
    "no-duplicate-imports",
    "@typescript-eslint/no-redeclare",
    "import/no-duplicates"
  },
  no_matching_variable = {
    message = " Can't find that variable",
    "undefined-global",
    "reportUndefinedVariable",
  },
  trailing_whitespace = {
    message = "  Whitespaces are useless",
    "trailing-whitespace",
    "trailing-space",
  },
  unused_variable = {
    message = "󰂭  Don't define variables you don't use",
    icon = "󰂭  ",
    "unused-local",
    "@typescript-eslint/no-unused-vars",
    "no-unused-vars"
  },
  unused_function = {
    message = "  Don't define functions you don't use",
    "unused-function",
  },
  useless_symbols = {
    message = " Remove that useless symbols",
    "unknown-symbol",
  },
  wrong_type = {
    message = " Try to use the correct types",
    "init_conversion_failed",
  },
  undeclared_variable = {
    message = " Have you delcared that variable somewhere?",
    "undeclared_var_use",
  },
  lowercase_global = {
    message = " Should that be a global? (if so make it uppercase)",
    "lowercase-global",
  },
  -- Typescript
  no_console = {
    icon = "  ",
    "no-console",
  },
  -- Prettier
  prettier = {
    icon = "  ",
    "prettier/prettier"
  }
}

-- UI

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local lspui_ok, lspui = pcall(require, 'lspconfig.ui.windows')
if not lspui_ok then
  return
end

lspui.default_options.border = Ecovim.ui.float.border or 'rounded'

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
        local code = diagnostic and diagnostic.user_data and diagnostic.user_data.lsp.code

        if not diagnostic.source or not code then
          return string.format('%s', diagnostic.message)
        end

        if diagnostic.source == 'eslint' then
          for _, table in pairs(codes) do
            if vim.tbl_contains(table, code) then
              return string.format('%s [%s]', table.icon .. diagnostic.message, code)
            end
          end

          return string.format('%s [%s]', diagnostic.message, code)
        end

        for _, table in pairs(codes) do
          if vim.tbl_contains(table, code) then
            return table.message
          end
        end

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
