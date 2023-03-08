local settings = require("configuration")

require('nvim-tundra').setup({
  transparent_background = settings.enable_transparent,
  dim_inactive_windows = {
    enabled = false,
    color = nil,
  },
  sidebars = {
    enabled = true,
    color = nil,
  },
  editor = {
    search = {},
    substitute = {},
  },
  syntax = {
    booleans = { bold = true, italic = true },
    comments = { bold = true, italic = true },
    conditionals = {},
    constants = { bold = true },
    fields = {},
    functions = {},
    keywords = {},
    loops = {},
    numbers = { bold = true },
    operators = { bold = true },
    punctuation = {},
    strings = {},
    types = { italic = true },
  },
  diagnostics = {
    errors = {},
    warnings = {},
    information = {},
    hints = {},
  },
  plugins = {
    lsp = true,
    treesitter = true,
    telescope = true,
    nvimtree = true,
    cmp = true,
    context = true,
    dbui = true,
    gitsigns = true,
    neogit = true,
  },
  overwrite = {
    colors = {},
    highlights = {},
  },
})

if settings.theme == "tundra" then
  vim.opt.background = 'dark'
  vim.cmd('colorscheme tundra')
end
