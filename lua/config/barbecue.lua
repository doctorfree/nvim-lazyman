local icons = require("icons")

require("barbecue").setup({
  create_autocmd = false, -- prevent barbecue from updating itself automatically
  attach_navic = true,
  include_buftypes = { "" },
  exclude_filetypes = { "alpha", "gitcommit", "netrw", "toggleterm", "Trouble" },
  modifiers = {
    dirname = ":~:.",
    basename = "",
  },
  show_dirname = true,
  show_basename = false,
  show_modified = false,
  modified = function(bufnr) return vim.bo[bufnr].modified end,
  show_navic = true,
  lead_custom_section = function() return {
    { icons.misc.vim, "CandyvimPrimaryBold" },
    { " " },
  }
  end,
  custom_section = function() return " " end,
  theme = {
    normal = { fg = "#c0caf5" },
    ellipsis = { fg = "#737aa2" },
    separator = { fg = "#737aa2" },
    modified = { fg = "#737aa2" },
    dirname = { fg = "#737aa2" },
    basename = { bold = true },
    context = {},
    context_file = { fg = "#ac8fe4" },
    context_module = { fg = "#ac8fe4" },
    context_namespace = { fg = "#ac8fe4" },
    context_package = { fg = "#ac8fe4" },
    context_class = { fg = "#ac8fe4" },
    context_method = { fg = "#ac8fe4" },
    context_property = { fg = "#ac8fe4" },
    context_field = { fg = "#ac8fe4" },
    context_constructor = { fg = "#ac8fe4" },
    context_enum = { fg = "#ac8fe4" },
    context_interface = { fg = "#ac8fe4" },
    context_function = { fg = "#ac8fe4" },
    context_variable = { fg = "#ac8fe4" },
    context_constant = { fg = "#ac8fe4" },
    context_string = { fg = "#ac8fe4" },
    context_number = { fg = "#ac8fe4" },
    context_boolean = { fg = "#ac8fe4" },
    context_array = { fg = "#ac8fe4" },
    context_object = { fg = "#ac8fe4" },
    context_key = { fg = "#ac8fe4" },
    context_null = { fg = "#ac8fe4" },
    context_enum_member = { fg = "#ac8fe4" },
    context_struct = { fg = "#ac8fe4" },
    context_event = { fg = "#ac8fe4" },
    context_operator = { fg = "#ac8fe4" },
    context_type_parameter = { fg = "#ac8fe4" },
  },
  context_follow_icon_color = false,
  symbols = {
    modified = "●",
    ellipsis = "…",
    separator = "❯",
  },
  kinds = icons.kinds
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
