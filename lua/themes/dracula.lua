local dracula = require("dracula")
local settings = require("configuration")
local style = settings.theme_style

if style == "magic" then
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
    overrides = {},
  })
elseif style == "blood" then
  dracula.setup({
    -- customize dracula color palette
    colors = {
      bg = "#282A36",
      fg = "#F8F8F2",
      selection = "#44475A",
      comment = "#6272A4",
      white = "#EEE8EE",
      gray = "#a1abe0",
      dark = "#1D1825",
      darker = "#191321",
      black = "#100511",
      red = "#A71906",
      salmon = "#F7856E",
      green = "#8FE067",
      teal = "#4DB380",
      yellow = "#FFC66B",
      paleblue = "#8677c0",
      cyan = "#299999",
      blue = "#5594EC",
      purple = "#A781BB",
      orange = "#DA632B",
      magenta = "#D184C7",
      pink = "#fe69c7",
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
    show_end_of_buffer = true, -- default false
    -- use transparent background
    transparent_bg = settings.enable_transparent,
    -- set custom lualine background color
    lualine_bg_color = "#44475a", -- default nil
    -- set italic comment
    italic_comment = true, -- default false
    -- overrides the default highlights see `:h synIDattr`
    overrides = {},
  })
elseif style == "soft" then
  dracula.setup({
    -- customize dracula color palette
    colors = {
      fg = "#f8f8f2",
      bg = "#282a36",
      float_bg = "#262626",
      currentline = "#44475a",
      selection = "#44475a",
      comment = "#7b7f8b",
      dark = "#1D1825",
      darker = "#191321",
      black = "#100511",
      salmon = "#F7856E",
      green = "#62e884",
      orange = "#ffb86c",
      pink = "#f286c4",
      purple = "#bf9eee",
      red = "#ee6666",
      yellow = "#e7ee98",
      teal = "#4DB380",
      paleblue = "#8677c0",
      cyan = "#adf6f6",
      blue = "#5594EC",
      magenta = "#D184C7",
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
      cursor_fg = "#282a36",
      cursor_bg = "#f8f8f2",
      sign_add = "#62e884",
      sign_change = "#ffb866",
      sign_delete = "#ee6666",
      error = "#ee6666",
      warning = "#ffb866",
      info = "#97e1f1",
      hint = "#97e1f1",
      other = "#bf9eee",
      blended_orange = "#483F3E",
      blended_red = "#46333D",
      blended_cyan = "#394552",
      blended_green = "#314742",
      blended_purple = "#3F3B52",
      blended_pink = "#5B415A",
      blended_add = "#314742",
      blended_change = "#483F3E",
      blended_warning = "#483F3E",
      blended_error = "#46333D",
      blended_info = "#394552",
      blended_hint = "#394552",
      blended_other = "#3F3B52",
    },
    -- show the '~' characters after the end of buffers
    show_end_of_buffer = true, -- default false
    -- use transparent background
    transparent_bg = settings.enable_transparent,
    -- set custom lualine background color
    lualine_bg_color = "#44475a", -- default nil
    -- set italic comment
    italic_comment = true, -- default false
    -- overrides the default highlights see `:h synIDattr`
    overrides = {},
  })
else
  dracula.setup({
    -- use transparent background
    transparent_bg = settings.enable_transparent,
  })
end

if settings.theme == "dracula" then
  vim.cmd([[colorscheme dracula]])
  if settings.dashboard == "alpha" then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "Type" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "Type" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "Keyword" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "String" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "Comment" })
  end
  if settings.file_tree == "neo-tree" then
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { link = "NvimTreeNormal" })
    vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { link = "NvimTreeVertSplit" })
  end
  local dopts = dracula.configs()
  vim.g.dracula_transparent = dopts.transparent_bg
  local utils = require("utils.functions")
  utils.map("n", "<leader>ut", function()
    vim.g.dracula_transparent = not vim.g.dracula_transparent
    dopts.transparent_bg = vim.g.dracula_transparent
    require("dracula").setup( dopts )
    vim.cmd([[colorscheme dracula]])
  end, { desc = "Toggle Transparency" })
end
