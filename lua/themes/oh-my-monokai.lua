local settings = require("configuration")
local styles = { "default", "justinsgithub" }
local style = "default"

function table.contains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

if table.contains(styles, settings.theme_style) then
  style = settings.theme_style
end

-- Default options
require("oh-my-monokai").setup({
  transparent_background = settings.enable_transparent,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  palette = style, -- or create your own ^^ e.g. justinsgithub
  inc_search = "background", -- underline | background
  background_clear = {
    -- "float_win",
    "toggleterm",
    "telescope",
    "which-key",
    "renamer",
    "neo-tree",
  }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
  plugins = {
    bufferline = {
      underline_selected = false,
      underline_visible = false,
    },
    indent_blankline = {
      context_highlight = "default",
      context_start_underline = false,
    },
  },
  override = function(c) end,
})

-- setup must be called before loading
if settings.theme == "oh-my-monokai" then
  vim.cmd("colorscheme oh-my-monokai")
  if settings.enable_alpha then
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "AlphaHeader" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "AlphaButton" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DashboardShortcut" })
  end
end
