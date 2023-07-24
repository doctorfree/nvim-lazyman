-------------------------------------------------------------------------------
-- Status line at the bottom, tabline and winbar at the top
-- nvim-lualine/lualine.nvim
-------------------------------------------------------------------------------
local settings = require("configuration")

if settings.lualine_style == "test" then
  local config = require("free.config.lualine.config")
  local lualine = require("lualine")
  local utils = require("util")

  local status_in_tab = false
  if settings.enable_statusline then
    if not settings.enable_tabline then
      status_in_tab = true
    end
  end
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
  if settings.enable_winbar == "none" then
    lsp_servers = ""
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

  local navic_tabline = {}
  local navic_winbar = {}
  local navic_loc = {}
  if settings.enable_winbar == "barbecue" then
    navic_loc = {}
  else
    navic_loc = {
      { "require'nvim-navic'.get_location()" },
    }
  end
  navic_tabline = navic_loc
  navic_winbar = {}
  if settings.enable_winbar == "standard" then
    navic_tabline = {}
    navic_winbar = navic_loc
  end
  local tabline_cfg = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
  if settings.enable_tabline then
    tabline_cfg = {
      lualine_a = { require("tabline").tabline_buffers },
      lualine_b = {},
      lualine_c = navic_tabline,
      lualine_x = { lsp_servers },
      lualine_y = {},
      lualine_z = {},
    }
  end

  local winbar_cfg = {}
  local inactive_winbar_cfg = {}
  if settings.enable_winbar == "standard" then
    local lsp_progress = {
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
    }
    if settings.enable_lualine_lsp_progress then
      -- Color for highlights
      local colors = {
        yellow = "#ECBE7B",
        cyan = "#008080",
        darkblue = "#081633",
        green = "#98be65",
        orange = "#FF8800",
        violet = "#a9a1e1",
        magenta = "#c678dd",
        blue = "#51afef",
        red = "#ec5f67",
      }
      lsp_progress = {
        {
          "lsp_progress",
          display_components = { "lsp_client_name", "spinner", { "title", "percentage", "message" } },
          colors = {
            percentage = colors.magenta,
            title = colors.green,
            message = colors.violet,
            spinner = colors.magenta,
            lsp_client_name = colors.darkblue,
            use = true,
          },
          separators = {
            component = " ",
            progress = " | ",
            message = { pre = "(", post = ")" },
            percentage = { pre = "", post = "%% " },
            title = { pre = "", post = ": " },
            lsp_client_name = { pre = "[", post = "]" },
            spinner = { pre = "", post = "" },
            -- message = { commenced = 'In Progress', completed = 'Completed' },
          },
          timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
          spinner_symbols = { "🌑 ", "🌒 ", "🌓 ", "🌔 ", "🌕 ", "🌖 ", "🌗 ", "🌘 " },
        },
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
      }
    end
    winbar_cfg = {
      lualine_a = {},
      lualine_b = lsp_progress,
      lualine_c = navic_winbar,
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

  local line_c = {
    { "filename", path = 1 }
  }
  if settings.enable_tabline then
    line_c = {
      {
        -- show session name
        session_name,
        icon = { "", align = "left" },
        padding = { left = 0, right = 1 },
        separator = "|",
      }
    }
  end

  local sections = {
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
    lualine_c = line_c,
    lualine_x = { fmt_stat, "encoding", "fileformat", filetype },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  }
  local inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
  if status_in_tab then
    tabline_cfg = sections
    sections = {}
    inactive_sections = {}
  end

  if not settings.enable_statusline then
    require("lualine").hide({
      place = { "statusline" },
      unhide = vim.o.statusline == "",
    })
  end
  -- Hide tabline if showtabline = 0
  if settings.enable_tabline then
    if vim.o.showtabline == 0 then
      require("lualine").hide({
        place = { "tabline" },
        unhide = false,
      })
    end
  end

  local M = {}

  local function setup()
    local cpn = require("free.config.lualine.components")
    local theme = require("free.config.lualine.highlights").custom(config.options)

    require("lualine").setup({
      options = {
        theme = theme,
        icons_enabled = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          "alpha", "dashboard", "startup", "neo-tree", "NvimTree", "Outline",
          "toggleterm", "dap-repl", "packer", "Trouble", "dapui_scopes",
          "dapui_breakpoints", "dapui_stacks", "dapui_watches", "dap-terminal",
          "dapui_console", "help", "lazy", "lir", "neogitstatus", "oil",
          "spectre_panel", "startify",
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          -- winbar = 100,
        },
      },
      sections = {
        lualine_a = { cpn.branch },
        lualine_b = { cpn.diagnostics },
        lualine_c = {},
        lualine_x = { cpn.diff },
        lualine_y = { cpn.position, cpn.filetype },
        lualine_z = { cpn.spaces, cpn.mode },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
  --  sections = sections,
  --  inactive_sections = inactive_sections,
      tabline = tabline_cfg,
      winbar = winbar_cfg,
      inactive_winbar = inactive_winbar_cfg,
      extensions = { "neo-tree", "fzf", "toggleterm", "nvim-dap-ui", "quickfix" },
    })
  end

  M.setup = config.setup

  M.load = function()
    setup()
    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = function()
        setup()
      end,
    })
  end

  return M
else
  require("config.lualine")
  return
end
