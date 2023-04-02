local dracula = require("dracula")
local settings = require("configuration")

dracula.setup({
  -- customize dracula color palette
  colors = {
    bg = "#282A36",
    fg = "#F8F8F2",
    selection = "#44475A",
    comment = "#6272A4",
    red = "#FF5555",
    orange = "#FFB86C",
    yellow = "#F1FA8C",
    green = "#50fa7b",
    purple = "#BD93F9",
    cyan = "#8BE9FD",
    pink = "#FF79C6",
    bright_red = "#FF6E6E",
    bright_green = "#69FF94",
    bright_yellow = "#FFFFA5",
    bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF",
    bright_cyan = "#A4FFFF",
    bright_white = "#FFFFFF",
    menu = "#21222C",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
  },
  -- show the '~' characters after the end of buffers
  show_end_of_buffer = false,
  -- use transparent background
  transparent_bg = settings.enable_transparent,
  -- set custom lualine background color
  lualine_bg_color = "#44475a",
  -- set italic comment
  italic_comment = false,
  -- overrides the default highlights see `:h synIDattr`
  overrides = {
    -- Examples
    -- NonText = { fg = dracula.colors().white }, -- set NonText fg to white
    -- NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
    -- Nothing = {} -- clear highlight of Nothing
  },
})

if settings.theme == "dracula" then
  vim.cmd([[colorscheme dracula]])
  if settings.enable_alpha then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "Type" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "Type" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "Keyword" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "String" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "Comment" })
  end
end
