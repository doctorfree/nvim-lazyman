local settings = require("configuration")
local theme = settings.theme
local style = settings.theme_style
local filter = "pro"
if settings.theme == "monokai-pro" then
  if style == "classic" or style == "octagon" or style == "machine" or style == "ristretto" or style == "spectrum" then
    filter = style
  end
end

require("monokai-pro").setup({
  transparent_background = settings.enable_transparent,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  italic_comments = true,
  filter = filter, -- classic | octagon | pro | machine | ristretto | spectrum
  -- Enable this will disable filter option
  day_night = {
    enable = false, -- turn off by default
    day_filter = filter, -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background", -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    "which-key",
    "renamer"
  },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    -- indent_blankline = {
    --   context_highlight = "default", -- default | pro
    --   context_start_underline = false,
    -- },
    "alpha",
    "cmp",
    "dashboard",
    "gitsign",
    "illuminate",
    "lazy",
    "lsp",
    "mason",
    "neo-tree",
    "noice",
    "notify",
    "nvim-navic",
    "nvim-tree",
    "nvim-treesitter",
    "renamer",
    "scrollbar",
    "telescope",
    "toggleterm",
    "which-key",
    "wilder"
  },
  override = function(c) end,
})

if settings.theme == "monokai-pro" then
  vim.cmd("colorscheme monokai-pro")
  if settings.enable_alpha then
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "AlphaHeader" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "AlphaButton" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DashboardShortcut" })
  end
end
