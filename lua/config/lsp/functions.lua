local utils = require("utils.functions")
local M = {}

-- must be global or the initial state is not working
VIRTUAL_TEXT_ACTIVE = false
-- toggle displaying virtual text
M.toggle_virtual_text = function()
  VIRTUAL_TEXT_ACTIVE = not VIRTUAL_TEXT_ACTIVE
  utils.notify(string.format("Virtualtext %s", VIRTUAL_TEXT_ACTIVE and "on" or "off"), 1, "config/lsp/functions.lua")
  vim.diagnostic.show(nil, 0, nil, { virtual_text = VIRTUAL_TEXT_ACTIVE })
end

-- must be global or the initial state is not working
AUTOFORMAT_ACTIVE = false
-- toggle null-ls's autoformatting
M.toggle_autoformat = function()
  AUTOFORMAT_ACTIVE = not AUTOFORMAT_ACTIVE
  utils.notify(string.format("Autoformatting %s", AUTOFORMAT_ACTIVE and "on" or "off"), 1, "config/lsp/functions.lua")
end

function M.enable_format_on_save()
  local group = vim.api.nvim_create_augroup("format_on_save", { clear = false })
  vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
      vim.lsp.buf.format()
    end,
    group = group,
  })
  require("notify")("Enabled format on save", "info", { title = "LSP", timeout = 2000 })
end

function M.disable_format_on_save()
  vim.api.nvim_del_augroup_by_name("format_on_save")
  require("notify")("Disabled format on save", "info", { title = "LSP", timeout = 2000 })
end

function M.toggle_format_on_save()
  if vim.fn.exists("#format_on_save#BufWritePre") == 0 then
    M.enable_format_on_save()
  else
    M.disable_format_on_save()
  end
end

vim.api.nvim_create_user_command(
  "LspToggleAutoFormat",
  'lua require("config.lsp.functions").toggle_format_on_save()',
  {}
)

-- Custom textDocument/hover LSP handler to colorize colors inside hover results - WIP
function M.custom_hover_handler(_, result)
  local handler = function(_, result)
    if result then
      local colorizer = require("colorizer")

      local lines = vim.split(result.contents.value, "\n")
      local bufnr = vim.lsp.util.open_floating_preview(lines, "markdown", { border = "rounded" })
      colorizer.highlight_buffer(bufnr, nil, vim.list_slice(lines, 2, #lines), 0, colorizer.get_buffer_options(0))
    end
  end

  return handler
end

return M
