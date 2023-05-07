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
    night_filter = "octagon", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background", -- underline | background
  background_clear = {
    "neo-tree",
    "toggleterm",
    "telescope",
    "which-key",
    "renamer",
  },
  plugins = {
    bufferline = {
      underline_selected = true,
      underline_visible = false,
      bold = false,
    },
    indent_blankline = {
      context_highlight = "pro", -- default | pro
      context_start_underline = true,
    },
    "alpha",
    "cmp",
    "dashboard",
    "gitsign",
    "illuminate",
    "lazy",
    "lsp",
    "lualine",
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
    "wilder",
  },
  override = function(c)
    return {
      ColorColumn = { bg = c.base.dimmed3 },
      -- Mine
      DashboardRecent = { fg = c.base.magenta },
      DashboardProject = { fg = c.base.blue },
      DashboardConfiguration = { fg = c.base.white },
      DashboardSession = { fg = c.base.green },
      DashboardLazy = { fg = c.base.cyan },
      DashboardServer = { fg = c.base.yellow },
      DashboardQuit = { fg = c.base.red },
    }
  end,
})

if settings.theme == "monokai-pro" then
  vim.cmd([[colorscheme monokai-pro]])
  if settings.dashboard == "alpha" then
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DashboardShortcut" })
  end
  local mopts = require("monokai-pro.config").options
  vim.g.monokaipro_transparent = mopts.transparent_background
  local utils = require("utils.functions")
  utils.map("n", "<leader>ut", function()
    vim.g.monokaipro_transparent = not vim.g.monokaipro_transparent
    mopts.transparent_background = vim.g.monokaipro_transparent
    require("monokai-pro").setup( mopts )
    vim.cmd([[colorscheme monokai-pro]])
  end, { desc = "Toggle Transparency" })
end
