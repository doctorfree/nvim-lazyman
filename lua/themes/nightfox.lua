local settings = require("configuration")

-- Default options
require("nightfox").setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = settings.enable_transparent,
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false, -- Non focused panes set to alternative background
    styles = { -- Style to be applied to different syntax groups
      comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = { -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
  },
})

-- setup must be called before loading
if settings.theme == "nightfox" then
  local style = settings.theme_style
  if style == "carbonfox" then
    vim.cmd("colorscheme carbonfox")
  elseif style == "dayfox" then
    vim.cmd("colorscheme dayfox")
  elseif style == "dawnfox" then
    vim.cmd("colorscheme dawnfox")
  elseif style == "duskfox" then
    vim.cmd("colorscheme duskfox")
  elseif style == "nordfox" then
    vim.cmd("colorscheme nordfox")
  elseif style == "terafox" then
    vim.cmd("colorscheme terafox")
  else
    vim.cmd("colorscheme nightfox")
  end
  if settings.enable_alpha then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "DashboardCenter" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DashboardShortcut" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "DashboardFooter" })
  end
end
