local settings = require("configuration")

-- Default options
require("everforest").setup({
  -- Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
  -- Default is "medium".
  background = "medium",
  -- How much of the background should be transparent. Options are 0, 1 or 2.
  -- Default is 0.
  --
  -- 2 will have more UI components be transparent (e.g. status line
  -- background).
  transparent_background_level = 1,
  -- Whether italics should be used for keywords, builtin types and more.
  italics = false,
  -- Disable italic fonts for comments. Comments are in italics by default, set
  -- this to `true` to make them _not_ italic!
  disable_italic_comments = false,
})

-- setup must be called before loading
if settings.theme == "everforest" then
  vim.cmd([[colorscheme everforest]])
  if settings.enable_alpha then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "DashboardCenter" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DashboardShortcut" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "DashboardFooter" })
  end
end
