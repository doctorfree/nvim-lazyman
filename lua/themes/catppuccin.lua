local catppuccin = require("catppuccin")
local settings = require("configuration")
local style = settings.theme_style

-- Adjust these to create a custom flavor
local custom_highlights = {}
local color_overrides = {}
local background = {}
local styles = {}

if style == "custom" then
  background = {
    light = "latte",
    dark = "mocha",
  }
  color_overrides = {
    mocha = {
      rosewater = "#EA6962",
      flamingo = "#EA6962",
      pink = "#D3869B",
      mauve = "#D3869B",
      red = "#EA6962",
      maroon = "#EA6962",
      peach = "#BD6F3E",
      yellow = "#D8A657",
      green = "#A9B665",
      teal = "#89B482",
      sky = "#89B482",
      sapphire = "#89B482",
      blue = "#7DAEA3",
      lavender = "#7DAEA3",
      text = "#D4BE98",
      subtext1 = "#BDAE8B",
      subtext0 = "#A69372",
      overlay2 = "#8C7A58",
      overlay1 = "#735F3F",
      overlay0 = "#5A4525",
      surface2 = "#4B4F51",
      surface1 = "#2A2D2E",
      surface0 = "#232728",
      base = "#1D2021",
      mantle = "#191C1D",
      crust = "#151819",
    },
    latte = {
      rosewater = "#c14a4a",
      flamingo = "#c14a4a",
      pink = "#945e80",
      mauve = "#945e80",
      red = "#c14a4a",
      maroon = "#c14a4a",
      peach = "#c35e0a",
      yellow = "#a96b2c",
      green = "#6c782e",
      teal = "#4c7a5d",
      sky = "#4c7a5d",
      sapphire = "#4c7a5d",
      blue = "#45707a",
      lavender = "#45707a",
      text = "#654735",
      subtext1 = "#7b5d44",
      subtext0 = "#8f6f56",
      overlay2 = "#a28368",
      overlay1 = "#b6977a",
      overlay0 = "#c9aa8c",
      surface2 = "#A79C86",
      surface1 = "#C9C19F",
      surface0 = "#DFD6B1",
      base = "#fbf1c7",
      mantle = "#F3EAC1",
      crust = "#E7DEB7",
    },
  }
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = { "bold" },
    functions = { "bold" },
    keywords = { "bold" },
    strings = {},
    variables = {},
    numbers = { "bold" },
    booleans = { "bold" },
    properties = {},
    types = { "bold" },
    operators = {},
  }
  custom_highlights = function(colors)
    return {
      NormalFloat = { bg = colors.crust },
      FloatBorder = { bg = colors.crust, fg = colors.crust },
      VertSplit = { bg = colors.base, fg = colors.surface0 },
      CursorLineNr = { fg = colors.mauve, style = { "bold" } },
      Pmenu = { bg = colors.crust, fg = "" },
      PmenuSel = { bg = colors.surface0, fg = "" },
      TelescopeSelection = { bg = colors.surface0 },
      TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },
      TelescopePromptPrefix = { bg = colors.surface0 },
      TelescopePromptNormal = { bg = colors.surface0 },
      TelescopeResultsNormal = { bg = colors.mantle },
      TelescopePreviewNormal = { bg = colors.crust },
      TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
      TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
      TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
      TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
      TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
      TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
      IndentBlanklineChar = { fg = colors.surface0 },
      IndentBlanklineContextChar = { fg = colors.surface2 },
      GitSignsChange = { fg = colors.peach },
      NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
      NvimTreeExecFile = { fg = colors.text },
    }
  end
end

local function set_colorscheme(sty)
  if sty == "latte" then
    vim.cmd([[colorscheme catppuccin-latte]])
  elseif sty == "frappe" then
    vim.cmd([[colorscheme catppuccin-frappe]])
  elseif sty == "macchiato" then
    vim.cmd([[colorscheme catppuccin-macchiato]])
  elseif sty == "mocha" then
    vim.cmd([[colorscheme catppuccin-mocha]])
  else
    vim.cmd([[colorscheme catppuccin]])
  end
end

catppuccin.setup({
  background,
  dim_inactive = {
    enabled = true,
    shade = "dark",
    percentage = 0.15,
  },
  color_overrides,
  styles,
  custom_highlights,
  transparent_background = settings.enable_transparent,
  show_end_of_buffer = false,
  term_colors = true,
  compile = {
    enabled = true,
    path = vim.fn.stdpath("cache") .. "/catppuccin",
    suffix = "_compiled",
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
  },
  integrations = {
    treesitter = true,
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
    },
    navic = {
      enabled = true,
      custom_bg = "NONE",
    },
    coc_nvim = false,
    lsp_trouble = true,
    cmp = true,
    lsp_saga = true,
    gitgutter = true,
    gitsigns = true,
    telescope = true,
    nvimtree = {
      enabled = true,
      show_root = true,
      transparent_panel = settings.enable_transparent,
    },
    dap = {
      enabled = true,
      enable_ui = true, -- enable nvim-dap-ui
    },
    mason = true,
    neotree = {
      enabled = true,
      show_root = true,
      transparent_panel = settings.enable_transparent,
    },
    which_key = true,
    indent_blankline = {
      enabled = true,
      colored_indent_levels = true,
    },
    dashboard = true,
    neogit = true,
    noice = true,
    vim_sneak = false,
    fern = false,
    barbar = false,
    bufferline = false,
    markdown = true,
    lightspeed = false,
    ts_rainbow = true,
    ts_rainbow2 = false,
    hop = false,
    notify = true,
    telekasten = false,
    symbols_outline = true,
    mini = true,
    fidget = false,
    illuminate = true,
  },
})
if settings.theme == "catppuccin" then
  set_colorscheme(style)
  if settings.dashboard == "alpha" then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "DashboardHeader" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "DashboardCenter" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DashboardShortcut" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "DashboardFooter" })
  end
  -- Not yet working, may need to clear and/or update cache
  -- local mopts = require("catppuccin").options
  -- vim.g.catppuccin_transparent = mopts.transparent_background
  -- local utils = require("utils.functions")
  -- utils.map("n", "<leader>ut", function()
  --  local catp = require("catppuccin")
  --  local opts = catp.options
  --  local sett = require("configuration")
  --  local styl = sett.theme_style
  --  vim.g.catppuccin_transparent = not vim.g.catppuccin_transparent
  --  opts.transparent_background = vim.g.catppuccin_transparent
  --  catp.setup( opts )
  --  set_colorscheme(styl)
  -- end, { desc = "Toggle Transparency" })
end
