require("barbecue").setup({
  create_autocmd = false, -- prevent barbecue from updating itself automatically
  attach_navic = false,
  include_buftypes = { "" },
  exclude_filetypes = { "gitcommit", "netrw", "toggleterm" },
  modifiers = {
    dirname = ":~:.",
    basename = "",
  },
  show_dirname = true,
  show_basename = true,
  show_modified = false,
  modified = function(bufnr) return vim.bo[bufnr].modified end,
  show_navic = true,
  lead_custom_section = function() return " " end,
  custom_section = function() return " " end,
  theme = "auto",
  context_follow_icon_color = false,
  symbols = {
    modified = "●",
    ellipsis = "…",
    separator = "❯",
  },
  kinds = require("utils.icons").kinds
})

vim.api.nvim_create_autocmd({
  "WinResized",
  "BufWinEnter",
  "CursorHold",
  "InsertLeave",
  "BufWritePost",
  "TextChanged",
  "TextChangedI",
}, {
  group = vim.api.nvim_create_augroup("barbecue.updater", {}),
  callback = function()
    require("barbecue.ui").update()
  end,
})
