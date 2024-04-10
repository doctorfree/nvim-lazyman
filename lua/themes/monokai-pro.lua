local settings = require("configuration")
local theme = settings.theme
local style = settings.theme_style
local filter = "pro"
if theme == "monokai-pro" then
  if style == "classic" or style == "octagon" or style == "machine" or style == "ristretto" or style == "spectrum" then
    filter = style
  end
end

require("monokai-pro").setup({
  transparent_background = settings.enable_transparent,
  terminal_colors = true,
  devicons = true, -- highlight the icons of `nvim-web-devicons`
  filter = filter, -- classic | octagon | pro | machine | ristretto | spectrum
  styles = {
    comment = { italic = true },
    keyword = { italic = true }, -- any other keyword
    type = { italic = true }, -- (preferred) int, long, char, etc
    storageclass = { italic = true }, -- static, register, volatile, etc
    structure = { italic = true }, -- struct, union, enum, etc
    parameter = { italic = true }, -- parameter pass in function
    annotation = { italic = true },
    tag_attribute = { italic = true }, -- attribute of tag in reactjs
  },
  -- Enable this will disable filter option
  day_night = {
    enable = false, -- turn off by default
    day_filter = filter, -- classic | octagon | pro | machine | ristretto | spectrum
    night_filter = "octagon", -- classic | octagon | pro | machine | ristretto | spectrum
  },
  inc_search = "background", -- underline | background
  background_clear = {
    "neo-tree",
    "nvim-tree",
    "toggleterm",
    "telescope",
    "which-key",
    "renamer",
    "bufferline",
  },
  plugins = {
    bufferline = {
      underline_selected = true,
      underline_visible = false,
      underline_fill = true,
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
      ColorColumn = { bg = c.editor.background },
      -- Mine
      DashboardRecent = { fg = c.base.magenta },
      DashboardProject = { fg = c.base.blue },
      DashboardConfiguration = { fg = c.base.white },
      DashboardSession = { fg = c.base.green },
      DashboardLazy = { fg = c.base.cyan },
      DashboardServer = { fg = c.base.yellow },
      DashboardQuit = { fg = c.base.red },
      IndentBlanklineChar = { fg = c.base.dimmed4 },
      -- mini.hipatterns
      MiniHipatternsFixme = { fg = c.base.black, bg = c.base.red, bold = true }, -- FIXME
      MiniHipatternsTodo = { fg = c.base.black, bg = c.base.blue, bold = true }, -- TODO
      MiniHipatternsHack = { fg = c.base.black, bg = c.base.yellow, bold = true }, -- HACK
      MiniHipatternsNote = { fg = c.base.black, bg = c.base.green, bold = true }, -- NOTE
    }
  end,
})

if theme == "monokai-pro" then
  require("monokai-pro").load()
  local have_current = false
  if settings.enable_telescope_themes then
    local theme_ok, _ = pcall(require, "current-theme")
    if theme_ok then
      have_current = true
    end
  end
  if have_current then
    require("current-theme")
  else
    vim.cmd([[colorscheme monokai-pro]])
  end
  if settings.dashboard == "alpha" then
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DashboardShortcut" })
  end
  local mnk_config = require("monokai-pro.config")
  local plugin = require("utils.plugin")
  local mopts = plugin.opts("monokai-pro.nvim")
  vim.g.monokaipro_transparent = mopts.transparent_background
  require("util").map("n", "<leader>ut", function()
    vim.g.monokaipro_transparent = not vim.g.monokaipro_transparent
    mopts.transparent_background = vim.g.monokaipro_transparent
    require("monokai-pro").setup(mopts)
    require("monokai-pro").load()
    vim.cmd([[colorscheme monokai-pro]])
  end, { desc = "Toggle Transparency" })

  local create_command = vim.api.nvim_create_user_command
  --- Toggle monochrome mode
  create_command("MonochromeModeToggle", function()
    local monochrome_element = "neo-tree"
    local mnk_config = require("monokai-pro.config")
    local mnk_opts = plugin.opts("monokai-pro.nvim")
    local bg_clear_list = mnk_opts.background_clear or {}
    local is_monochrome_mode = vim.tbl_contains(bg_clear_list, monochrome_element)
    if is_monochrome_mode then
      -- stylua: ignore
      bg_clear_list = vim.tbl_filter(function(value) return value ~= monochrome_element end, bg_clear_list)
    else
      vim.list_extend(bg_clear_list, { monochrome_element })
    end
    mnk_config.extend({ background_clear = bg_clear_list })
    vim.cmd([[colorscheme monokai-pro]])
  end, { nargs = 0 })

  if settings.namespace == "ecovim" then
    require("ecovim.plugins.highlights")
  end
end
