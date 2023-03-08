local catppuccin = require("catppuccin")
local settings = require("configuration")

catppuccin.setup({
  dim_inactive = {
    enabled = true,
    shade = "dark",
    percentage = 0.15,
  },
  transparent_background = settings.enable_transparent,
  term_colors = true,
  compile = {
    enabled = true,
    path = vim.fn.stdpath("cache") .. "/catppuccin",
    suffix = "_compiled",
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
    coc_nvim = false,
    lsp_trouble = true,
    cmp = true,
    lsp_saga = true,
    gitgutter = true,
    gitsigns = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = true,
      transparent_panel = settings.enable_transparent,
    },
    dap = {
      enabled = true,
      enable_ui = true, -- enable nvim-dap-ui
    },
    neotree = {
      enabled = true,
      show_root = true,
      transparent_panel = settings.enable_transparent,
    },
    which_key = true,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = false,
    },
    dashboard = true,
    neogit = true,
    vim_sneak = false,
    fern = false,
    barbar = false,
    bufferline = false,
    markdown = true,
    lightspeed = false,
    ts_rainbow = true,
    hop = false,
    notify = true,
    telekasten = false,
    symbols_outline = true,
    mini = true,
    fidget = false,
  },
})
if settings.theme == "catppuccin" then
  vim.cmd([[colorscheme catppuccin-frappe]])
  if settings.enable_alpha then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "DashboardCenter" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DashboardShortcut" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "DashboardFooter" })
  end
end
