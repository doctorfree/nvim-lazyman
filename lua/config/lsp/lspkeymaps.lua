local M = {}

M.attach = function(client, buffer)
  local map = vim.api.nvim_buf_set_keymap
  map(buffer, "n",
    "K",
    "<cmd>lua vim.lsp.buf.hover()<CR>",
    { noremap = true, silent = true, desc = "Symbol info in float" }
  )
  map(buffer, "n",
    "<leader>ls",
    "<cmd>lua vim.lsp.buf.signature_help()<CR>",
    { noremap = true, silent = true, desc = "Signature help" }
  )
end

return M
