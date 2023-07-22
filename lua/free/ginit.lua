--                          config for nvim-qt
-- To check if neovim-qt is running, use `exists('g:GuiLoaded')`,
-- see https://github.com/equalsraf/neovim-qt/issues/219
if vim.g.GuiLoaded then
  -- call GuiWindowMaximized(1)
  vim.g.GuiTabline = 0
  vim.g.GuiPopupmenu = 0
  vim.g.GuiLinespace = 2
end

--                           config for fvim
if vim.g.fvim_loaded then
  -- Cursor tweaks
  vim.g.FVimCursorSmoothMove = true
  vim.g.FVimCursorSmoothBlink = true

  -- Background composition, can be 'none', 'blur' or 'acrylic'
  vim.g.FVimBackgroundComposition = "none"
  vim.g.FVimBackgroundOpacity = 1.0
  vim.g.FVimBackgroundAltOpacity = 1.0

  -- Title bar tweaks (themed with colorscheme)
  vim.g.FVimCustomTitleBar = true

  -- Debug UI overlay
  vim.g.FVimDrawFPS = false
  -- Font debugging -- draw bounds around each glyph
  vim.g.FVimFontDrawBounds = false

  -- Font tweaks
  vim.g.FVimFontAntialias = true
  vim.g.FVimFontAutohint = true
  vim.g.FVimFontHintLevel = "full"
  vim.g.FVimFontSubpixel = true
  vim.g.FVimFontLigature = true
  -- can be 'default', '14.0', '-1.0' etc.
  vim.g.FVimFontLineHeight = "+1"

  -- Try to snap the fonts to the pixels, reduces blur
  -- in some situations (e.g. 100% DPI).
  vim.g.FVimFontAutoSnap = true

  -- Font weight tuning, possible values are 100..900
  vim.g.FVimFontNormalWeight = 100
  vim.g.FVimFontBoldWeight = 700

  vim.g.FVimUIPopupMenu = false
end

--                             config for neovide
if vim.g.neovide then
  vim.g.neovide_transparency = 1.0
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_trail_size = 0.3
  vim.g.neovide_cursor_vfx_mode = ""
  vim.g.neovide_cursor_vfx_particle_density = 10.0
  vim.g.neovide_cursor_vfx_opacity = 150.0
  vim.g.neovide_hide_mouse_when_typing = true
  -- vim.g.neovide_underline_automatic_scaling = true -- Noticeable for font sizes above 15
end

local font_size = 22
-- vim.o.guifont = 'JetBrains Mono Nerd Font Mono' .. ':h' .. font_size
vim.o.guifont = "JetBrains Mono" .. ":h" .. font_size
-- Fix key mapping issues for GUI
vim.api.nvim_set_keymap("i", "<S-Insert>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("c", "<S-Insert>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-6>", "<C-^>", { noremap = true, silent = true })
