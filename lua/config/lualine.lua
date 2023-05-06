-------------------------------------------------------------------------------
-- Status line at the bottom, tabline and winbar at the top
-- nvim-lualine/lualine.nvim
-------------------------------------------------------------------------------

local lualine = require("lualine")
local settings = require("configuration")
local utils = require("utils.functions")

local fancy = settings.enable_fancy
local mode = { "mode" }
local branch = "branch"
local diff = "diff"
local diagnostics = "diagnostics"
local filetype = "filetype"
local lsp_servers = "lsp_servers"
if fancy then
  mode = { "fancy_mode", width = 7 }
  branch = "fancy_branch"
  diff = "fancy_diff"
  diagnostics = "fancy_diagnostics"
  filetype = "fancy_filetype"
  lsp_servers = "fancy_lsp_servers"
end

local theme = settings.theme
local style = settings.theme_style
local config_root = vim.fn.stdpath("config") .. "/lua/themes/lualine/"
local theme_path = config_root .. style .. ".lua"

if utils.file_or_dir_exists(theme_path) then
  theme = require("themes.lualine." .. style)
else
  theme_path = config_root .. theme .. ".lua"
  if utils.file_or_dir_exists(theme_path) then
    theme = require("themes.lualine." .. theme)
  else
    theme = "auto"
  end
end

local function session_name()
  return require("possession.session").session_name or ""
end

local tabline_cfg = {}
if settings.enable_tabline then
  tabline_cfg = {
    lualine_a = { require("tabline").tabline_buffers },
    lualine_b = {},
    lualine_c = {
      { "require'nvim-navic'.get_location()" },
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = { lsp_servers },
  }
end

local winbar_cfg = {}
local inactive_winbar_cfg = {}
if settings.enable_winbar then
  winbar_cfg = {
    lualine_a = {},
    lualine_b = {
      {
        "filename",
        path = 3,
        filetype_names = {
          TelescopePrompt = "Telescope",
          dashboard = "Dashboard",
          startup = "Startup",
          packer = "Packer",
          fzf = "FZF",
          alpha = "Alpha",
        },
      },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }

  inactive_winbar_cfg = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      { "filename", path = 1, color = { bg = "NONE" } },
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
end

local fmt_stat = function()
  local stat = ""
  stat = stat .. "spaces=" .. vim.opt_local.tabstop._value
  return stat
end

lualine.setup({
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = theme,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      "alpha",
      "dashboard",
      "startup",
      "neo-tree",
      "NvimTree",
      "Outline",
      "toggleterm",
      "dap-repl",
      "packer",
      "Trouble",
      "dapui_scopes",
      "dapui_breakpoints",
      "dapui_stacks",
      "dapui_watches",
      "dap-terminal",
      "dapui_console",
      "help",
      "lazy",
      "lir",
      "neogitstatus",
      "oil",
      "spectre_panel",
      "startify",
    },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { mode },
    lualine_b = {
      branch,
      diff,
      diagnostics,
      {
        require("lazy.status").updates,
        cond = require("lazy.status").has_updates,
      },
    },
    lualine_c = {
      {
        -- show session name
        session_name,
        icon = { "", align = "left" },
        padding = { left = 0, right = 1 },
        separator = "|",
      },
    },
    lualine_x = { fmt_stat, "encoding", "fileformat", filetype },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },

  tabline = tabline_cfg,
  winbar = winbar_cfg,
  inactive_winbar = inactive_winbar_cfg,

  extensions = { "neo-tree", "fzf", "toggleterm", "nvim-dap-ui", "quickfix" },
})

if not settings.enable_statusline then
  require("lualine").hide({
    place = { "statusline" },
    unhide = vim.o.statusline == "",
  })
end
