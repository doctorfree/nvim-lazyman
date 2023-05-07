local settings = require("configuration")
local transparent = settings.enable_transparent

local level = 0
if transparent then
  level = 1
end

require("everforest").setup({
  -- Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
  -- Default is "medium".
  background = "medium",
  -- How much of the background should be transparent. Options are 0, 1 or 2.
  -- Default is 0.
  --
  -- 2 will have more UI components be transparent (e.g. status line
  -- background).
  transparent_background_level = level,
  -- Whether italics should be used for keywords, builtin types and more.
  italics = false,
  -- Disable italic fonts for comments. Comments are in italics by default, set
  -- this to `true` to make them _not_ italic!
  disable_italic_comments = false,
})

-- setup must be called before loading
if settings.theme == "everforest" then
  vim.cmd([[colorscheme everforest]])
  if settings.dashboard == "alpha" then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "DashboardCenter" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DashboardShortcut" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "DashboardFooter" })
  end
  local opts = require("everforest").config
  vim.g.everforest_transparent = opts.transparent_background_level
  local utils = require("utils.functions")
  utils.map("n", "<leader>ut", function()
    if vim.g.everforest_transparent == 1 then
      vim.g.everforest_transparent = 0
    else
      vim.g.everforest_transparent = 1
    end
    opts.transparent_background_level = vim.g.everforest_transparent
    require("everforest").setup( opts )
    vim.cmd([[colorscheme everforest]])
  end, { desc = "Toggle Transparency" })
end
