local settings = require("configuration")
local Icon = require("icons")
local Util = require("util")

local barbecue = {}
if settings.enable_winbar == "barbecue" then
  barbecue = {
    "utilyre/barbecue.nvim",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("config.barbecue")
    end,
  }
end

local dressing = {}
if settings.enable_dressing then
  dressing = {
    "stevearc/dressing.nvim",
    lazy = false,
    opts = {
      input = {
        border = Util.generate_borderchars("thick", "tl-t-tr-r-bl-b-br-l"),
        win_options = { winblend = 0 },
      },
      select = { telescope = Util.telescope_theme("cursor") },
    },
    init = function()
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.ui.select = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.select(...)
      end
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.ui.input = function(...)
        require("lazy").load({ plugins = { "dressing.nvim" } })
        return vim.ui.input(...)
      end
    end,
  }
end

local lualine_lsp_progress = {}
if settings.enable_lualine_lsp_progress then
  if settings.enable_winbar == "standard" then
    lualine_lsp_progress = { "arkav/lualine-lsp-progress" }
  end
end

local lualine_cfg = {}
if settings.enable_statusline then
  if settings.enable_fancy then
    lualine_cfg = {
      "nvim-lualine/lualine.nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
        "meuter/lualine-so-fancy.nvim",
      },
      event = "VeryLazy",
      opts = {
        float = true,
        separator = "bubble", -- bubble | triangle
        ---@type any
        colorful = true,
      },
      config = function(_, opts)
        local lualine_config = require("onno.config.lualine")
        lualine_config.setup(opts)
        lualine_config.load()
      end,
    }
  else
    lualine_cfg = {
      "nvim-lualine/lualine.nvim",
      event = "VeryLazy",
      opts = {
        float = true,
        separator = "bubble", -- bubble | triangle
        ---@type any
        colorful = true,
      },
      config = function(_, opts)
        local lualine_config = require("onno.config.lualine")
        lualine_config.setup(opts)
        lualine_config.load()
      end,
    }
  end
end

local tabline_cfg = {}
if settings.enable_tabline then
  tabline_cfg = {
    "kdheepak/tabline.nvim",
    event = "VeryLazy",
    config = function()
      require("config.tabline")
    end,
  }
end

local indentline_cfg = {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("config.indent-blankline")
  end,
}

local indentline_cfg = {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    char = "▏",
    context_char = "▏",
    show_end_of_line = false,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    filetype_exclude = {
      "help",
      "startify",
      "dashboard",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "alpha",
      "neo-tree",
    },
    buftype_exclude = {
      "terminal",
      "nofile",
    },
  },
}
if settings.indentline_style == "none" then
  indentline_cfg = {}
elseif settings.indentline_style == "mini" then
  indentline_cfg = {
    "echasnovski/mini.indentscope",
    lazy = true,
    enabled = true,
    -- lazy = true,
    version = false, -- wait till new 0.7.0 release to put it back on semver
    -- event = "BufReadPre",
    opts = {
      symbol = "▏",
      -- symbol = "│",
      options = { try_as_border = false },
    },
    config = function(_, opts)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "lazy",
          "mason",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
      require("mini.indentscope").setup(opts)
    end,
  }
end

local neoscroll = {}
if settings.enable_smooth_scrolling then
  neoscroll = {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require("config.neoscroll")
    end,
  }
end

local toggleterm = {}
if settings.enable_toggleterm then
  toggleterm = {
    "akinsho/toggleterm.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      open_mapping = [[<C-\>]],
      start_in_insert = true,
      direction = "float",
      autochdir = false,
      float_opts = {
        border = Util.generate_borderchars("thick", "tl-t-tr-r-bl-b-br-l"),
        winblend = 0,
      },
      highlights = {
        FloatBorder = { link = "ToggleTermBorder" },
        Normal = { link = "ToggleTerm" },
        NormalFloat = { link = "ToggleTerm" },
      },
      winbar = {
        enabled = true,
        name_formatter = function(term)
          return string.format("%d:%s", term.id, term:_display_name())
        end,
      },
    },
  }
end

local noice_cfg = {}
if settings.enable_noice then
  noice_cfg = {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      cmdline = {
        view = "cmdline",
        format = {
          cmdline = { icon = "  " },
          search_down = { icon = "  󰄼" },
          search_up = { icon = "  " },
          lua = { icon = "  " },
        },
      },
      lsp = {
        progress = { enabled = true },
        hover = { enabled = false },
        signature = { enabled = false },
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            find = "%d+L, %d+B",
          },
        },
      },
    },
  }
end

local smart_column = {}
local virt_column = {}
if settings.enable_smartcolumn then
  smart_column = {
    "m4xshen/smartcolumn.nvim",
    event = { "BufEnter", "TextChanged", "TextChangedI" },
    opts = {
      colorcolumn = { "80", "100" },
      disabled_filetypes = {
        "alpha",
        "dashboard",
        "dap-repl",
        "dapui_scopes",
        "dapui_breakpoints",
        "dapui_stacks",
        "dapui_watches",
        "dap-terminal",
        "dapui_console",
        "help",
        "lazy",
        "markdown",
        "mason",
        "neogitstatus",
        "neo-tree",
        "NvimTree",
        "Outline",
        "lir",
        "oil",
        "packer",
        "spectre_panel",
        "startify",
        "startup",
        "toggleterm",
        "Trouble",
      },
      scope = "line",
    },
  }
  virt_column = {
    "lukas-reineke/virt-column.nvim",
    event = { "BufEnter" },
    config = function()
      require("virt-column").setup()
      vim.api.nvim_set_hl(0, "VirtColumn", { fg = "#999999", bg = "none" })
      vim.api.nvim_create_autocmd({
        "BufEnter",
        "CursorMoved",
        "CursorMovedI",
        "WinScrolled",
      }, {
        callback = function()
          vim.cmd([[VirtColumnRefresh]])
        end,
      })
    end,
  }
end

local terminal_nvim = {}
if settings.enable_terminal then
  terminal_nvim = {
    "rebelot/terminal.nvim",
    cmd = {
      "Asciiville",
      "TermOpen",
      "TermToggle",
      "TermRun",
      "Lazygit",
      "IPython",
      "Lazyman",
      "Lazyconf",
      "Htop",
    },
    lazy = false,
    config = function()
      require("config.terminal_nvim")
    end,
  }
end

local wilder_type = {}
if settings.enable_wilder then
  wilder_type = {
    { "romgrk/fzy-lua-native", lazy = true },
    {
      "gelguy/wilder.nvim",
      dependencies = {
        { "romgrk/fzy-lua-native" },
      },
      lazy = true,
      build = function()
        vim.cmd([[silent UpdateRemotePlugins]])
      end,
      event = { "CmdwinEnter", "CmdlineEnter" },
      config = function()
        require("config.wilder")
      end,
    },
  }
end

-- Some colorschemes do not yet support the NotifyBackground highlight group
local notify_bg = "NotifyBackground"
local ok, _ = pcall(vim.api.nvim_get_hl_id_by_name, notify_bg, true)
if not ok then
  notify_bg = "NotifyERRORBody"
  ok, _ = pcall(vim.api.nvim_get_hl_id_by_name, notify_bg, true)
  if not ok then
    notify_bg = "#000000"
  end
end

return {
  -- Better `vim.notify()`
  {
    "rcarriga/nvim-notify",
    keys = {
      {
        "<leader>un",
        function()
          require("notify").dismiss({ silent = true, pending = true })
        end,
        desc = "Delete all Notifications",
      },
    },
    opts = {
      background_colour = notify_bg,
      icons = {
        ERROR = Icon.diagnostics.error .. " ",
        INFO = Icon.diagnostics.info .. " ",
        WARN = Icon.diagnostics.warn .. " ",
      },
      timeout = 3000,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
    },
    init = function()
      if not Util.has("noice.nvim") then
        Util.on_very_lazy(function()
          vim.notify = require("notify")
        end)
      end
    end,
  },

  {
    "akinsho/bufferline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      options = {
        diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
        -- separator_style = "", -- | "thick" | "thin" | "slope" | { 'any', 'any' },
        -- separator_style = { "", "" }, -- | "thick" | "thin" | { 'any', 'any' },
        separator_style = "slant", -- | "thick" | "thin" | { 'any', 'any' },
        indicator = {
          -- icon = " ",
          -- style = 'icon',
          style = "underline",
        },
        close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        diagnostics_indicator = function(count, _, _, _)
          if count > 9 then
            return "9+"
          end
          return tostring(count)
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = "EXPLORER",
            text_align = "center",
            separator = true, -- set to `true` if clear background of neo-tree
          },
          {
            filetype = "NvimTree",
            text = "EXPLORER",
            text_align = "center",
            separator = true,
          },
        },
        hover = {
          enabled = true,
          delay = 0,
          reveal = { "close" },
        },
      },
    },
  },

  -- VSCode-like winbar
  barbecue,

  -- better vim.ui
  dressing,

  -- statusline
  lualine_cfg,

  -- LSP progress in lualine
  lualine_lsp_progress,

  -- tabline
  tabline_cfg,

  -- indent guides for Neovim
  indentline_cfg,

  toggleterm,

  -- noicer ui
  noice_cfg,

  -- lsp symbol navigation for lualine
  {
    "SmiteshP/nvim-navic",
    lazy = true,
    init = function()
      vim.g.navic_silence = true
      require("util").on_attach(function(client, buffer)
        if client.server_capabilities.documentSymbolProvider then
          require("nvim-navic").attach(client, buffer)
        end
      end)
    end,
    opts = function()
      return {
        separator = " ",
        highlight = true,
        depth_limit = 0,
        depth_limit_indicator = "..",
        icons = require("icons").kinds,
      }
    end,
  },

  {
    "doctorfree/SetColorSchemes.vim",
    lazy = false,
  },

  neoscroll,

  -- icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- ui components
  { "MunifTanjim/nui.nvim", lazy = true },

  smart_column,
  virt_column,
  terminal_nvim,
  wilder_type,

  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    keys = { { "<leader>0", "<cmd>Dashboard<CR>", desc = "Dashboard" } },
    config = function()
      require("onno.config.dashboard")
    end,
  },

  {
    "petertriho/nvim-scrollbar",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      set_highlights = false,
      excluded_filetypes = {
        "prompt",
        "TelescopePrompt",
        "noice",
        "neo-tree",
        "dashboard",
        "alpha",
        "lazy",
        "mason",
        "DressingInput",
        "",
      },
      handlers = {
        gitsigns = true,
      },
    },
  },

  {
    "anuvyklack/windows.nvim",
    event = "WinNew",
    dependencies = {
      { "anuvyklack/middleclass" },
      { "anuvyklack/animation.nvim", enabled = true },
    },
    opts = {
      animation = { enable = true, duration = 150, fps = 60 },
      autowidth = { enable = true },
    },
    keys = { { "<leader>m", "<cmd>WindowsMaximize<CR>", desc = "Zoom window" } },
    init = function()
      vim.o.winwidth = 30
      vim.o.winminwidth = 30
      vim.o.equalalways = true
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      filetypes = { "*", "!lazy", "!neo-tree" },
      buftype = { "*", "!prompt", "!nofile" },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = false, -- "Name" codes like Blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = false, -- 0xAARRGGBB hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes: foreground, background
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        virtualtext = "■",
      },
    },
  },

  {
    "kosayoda/nvim-lightbulb",
    opts = {
      sign = {
        enabled = true,
        -- Priority of the gutter sign
        priority = 20,
      },
      status_text = {
        enabled = true,
        -- Text to provide when code actions are available
        text = "status_text",
        -- Text to provide when no actions are available
        text_unavailable = "",
      },
      autocmd = {
        enabled = true,
        -- see :help autocmd-pattern
        pattern = { "*" },
        -- see :help autocmd-events
        events = { "CursorHold", "CursorHoldI", "LspAttach" },
      },
    },
  },
}
