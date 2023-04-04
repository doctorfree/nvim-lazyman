local colors = require("oh-my-monokai.colorscheme").colors

local mmo = {}

mmo.normal = {
  a = { bg = colors.base.yellow, fg = colors.base.black, gui = "bold" },
  b = { bg = colors.base.dimmed5, fg = colors.base.yellow },
  c = {
    bg = colors.statusBar.background,
    fg = colors.statusBar.activeForeground,
  },
  x = {
    bg = colors.statusBar.background,
    fg = colors.statusBar.activeForeground,
  },
}

mmo.insert = {
  a = { bg = colors.base.green, fg = colors.base.black },
  b = { bg = colors.base.dimmed5, fg = colors.base.green },
}

mmo.command = {
  a = { bg = colors.base.yellow, fg = colors.base.black },
  b = { bg = colors.base.dimmed5, fg = colors.base.yellow },
}

mmo.visual = {
  a = { bg = colors.base.magenta, fg = colors.base.black },
  b = { bg = colors.base.dimmed5, fg = colors.base.magenta },
}

mmo.replace = {
  a = { bg = colors.base.red, fg = colors.base.black },
  b = { bg = colors.base.dimmed5, fg = colors.base.red },
}

mmo.inactive = {
  a = { bg = colors.base.black, fg = colors.base.yellow },
  b = { bg = colors.base.black, fg = colors.base.black },
  -- c = { bg = colors.base.black, fg = colors.base.black },
}

return mmo
