local M = {}
local util = require("onno.util")

local function draw(groups)
  if groups == nil then
    return
  end
  for group, value in pairs(groups) do
    vim.api.nvim_set_hl(0, group, value)
  end
end

local function generate(config, palette)
  local float = config.float
  local colorful = config.colorful
  if colorful then
    palette.yellow = util.get_highlight_value("String").foreground or "#ffff00"
    palette.white = util.get_highlight_value("Normal").foreground or "#ffffff"
    palette.red = util.get_highlight_value("DiagnosticError").foreground or "#ff0000"
    palette.orange = util.get_highlight_value("DiagnosticWarn").foreground or "#ff7700"
    palette.blue = util.get_highlight_value("DiagnosticHint").foreground or "#00ffff"
    palette.magenta = util.get_highlight_value("Statement").foreground or "#ff00ff"
    palette.green = util.get_highlight_value("healthSuccess").foreground or "#00ff00"
  end
  return {
    SLGitIcon = {
      bg = float and palette.float_background or palette.statusbar_bg,
      fg = colorful and palette.white or palette.statusbar_fg,
    },
    SLBranchName = {
      bg = float and palette.float_background or palette.statusbar_bg,
      fg = colorful and palette.green or palette.statusbar_fg,
    },
    SLError = {
      bg = float and palette.editor_bg or palette.statusbar_bg,
      fg = colorful and palette.red or palette.statusbar_fg,
    },
    SLWarning = {
      bg = float and palette.editor_bg or palette.statusbar_bg,
      fg = colorful and palette.orange or palette.statusbar_fg,
    },
    SLInfo = {
      bg = float and palette.editor_bg or palette.statusbar_bg,
      fg = colorful and palette.blue or palette.statusbar_fg,
    },
    SLDiffAdd = {
      bg = float and palette.editor_bg or palette.statusbar_bg,
      fg = colorful and palette.green or palette.statusbar_fg,
    },
    SLDiffChange = {
      bg = float and palette.editor_bg or palette.statusbar_bg,
      fg = colorful and palette.yellow or palette.statusbar_fg,
    },
    SLDiffDelete = {
      bg = float and palette.editor_bg or palette.statusbar_bg,
      fg = colorful and palette.red or palette.statusbar_fg,
    },
    SLPosition = {
      bg = float and palette.float_background or palette.statusbar_bg,
      fg = colorful and palette.magenta or palette.statusbar_fg,
    },
    SLFiletype = {
      bg = float and palette.float_background or palette.statusbar_bg,
      fg = colorful and palette.blue or palette.statusbar_fg,
    },
    SLShiftWidth = {
      bg = float and palette.float_background or palette.statusbar_bg,
      fg = colorful and palette.yellow or palette.statusbar_fg,
    },
    SLEncoding = {
      bg = float and palette.float_background or palette.statusbar_bg,
      fg = colorful and palette.green or palette.statusbar_fg,
    },
    SLMode = {
      bg = float and palette.float_background or palette.statusbar_bg,
      fg = colorful and palette.green or palette.statusbar_fg,
      bold = true,
    },
    SLSeparatorUnused = {
      bg = float and palette.float_background or palette.statusbar_bg,
      fg = colorful and palette.editor_bg or palette.statusbar_fg,
    },
    SLSeparator = {
      bg = float and palette.editor_bg or palette.statusbar_bg,
      fg = float and palette.float_background or palette.statusbar_bg,
    },
    SLPadding = {
      bg = float and palette.editor_bg or palette.statusbar_bg,
      fg = palette.editor_bg,
    },
  }
end

---@param config LualineConfig
M.custom = function(config)
  local statusline_hl = util.get_highlight_value("StatusLine")
  local palette = {
    float_background = util.get_highlight_value("Pmenu").background,
    editor_bg = util.get_highlight_value("Normal").background or "NONE",
    statusbar_bg = statusline_hl.background or "#000000",
    statusbar_fg = statusline_hl.foreground or "#505050",
  }
  local groups = generate(config, palette)

  draw(groups)
  -- clear theme if float ortherwhise, make it auto
  local theme = config.float and { normal = { c = { bg = palette.editor_bg } } } or "auto"
  return theme
end

return M
