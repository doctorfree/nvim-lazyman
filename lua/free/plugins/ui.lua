local settings = require("configuration")
local util = require("util")

local barbecue = {}
if settings.enable_winbar == "barbecue" then
  barbecue = {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
    config = function()
      require("config.barbecue")
    end,
  }
end

local dressing = {}
if settings.enable_dressing then
  dressing = {
    "stevearc/dressing.nvim",
    lazy = true,
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
local separator_type = settings.lualine_separator
if util.isEmpty(separator_type) then
  separator_type = "bubble"
end
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
        separator = separator_type, -- bubble | arrow
        ---@type any
        colorful = true,
      },
      config = function(_, opts)
        if settings.lualine_style == "onno" then
          local lualine_config = require("config.lualine")
          lualine_config.setup(opts)
          lualine_config.load()
        else
          require("config.lualine")
        end
      end,
    }
  else
    lualine_cfg = {
      "nvim-lualine/lualine.nvim",
      event = "VeryLazy",
      opts = {
        float = true,
        separator = separator_type, -- bubble | arrow
        ---@type any
        colorful = true,
      },
      config = function(_, opts)
        if settings.lualine_style == "onno" then
          local lualine_config = require("config.lualine")
          lualine_config.setup(opts)
          lualine_config.load()
        else
          require("config.lualine")
        end
      end,
    }
  end
end

local indentline_cfg = {
  "lukas-reineke/indent-blankline.nvim",
  version = "2.20.8",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("config.indent-blankline")
  end,
}
if settings.indentline_style == "none" then
  indentline_cfg = {}
elseif settings.indentline_style == "mini" then
  indentline_cfg = {
    "echasnovski/mini.indentscope",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "help", "alpha", "dashboard", "NvimTree", "Trouble", "lazy", "mason" },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
    config = function(_, opts)
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

local telescope_themes = {}
if settings.enable_telescope_themes then
  telescope_themes = {
    "andrew-george/telescope-themes",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("themes")
    end
  }
end

local toggleterm = {}
if settings.enable_toggleterm then
  toggleterm = {
    "akinsho/toggleterm.nvim",
    opts = {
      open_mapping = [[<C-\>]],
      start_in_insert = true,
      direction = "float",
      autochdir = false,
      float_opts = {
        -- [ top top top - right - bottom bottom bottom - left ]
        border = { "▄", "▄", "▄", "█", "▀", "▀", "▀", "█" },
        winblend = 0,
      },
      highlights = {
        FloatBorder = { link = "ToggleTermBorder" },
        Normal = { link = "ToggleTerm" },
        NormalFloat = { link = "ToggleTerm" },
      },
      winbar = {
        enabled = settings.enable_winbar == "standard",
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
    config = function()
      require("config.noice")
    end,
    -- stylua: ignore
    keys = {
      {
        "<S-Enter>",
        function() require("noice").redirect(vim.fn.getcmdline()) end,
        mode = "c",
        desc =
        "Redirect Cmdline"
      },
      { "<leader>snl", function() require("noice").cmd("last") end,    desc = "Noice Last Message" },
      { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },
      { "<leader>sna", function() require("noice").cmd("all") end,     desc = "Noice All" },
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
    end,
  }
end

local terminal_nvim = {}
if settings.enable_terminal then
  terminal_nvim = {
    "rebelot/terminal.nvim",
    cmd = {
      "Asciiville",
      "MusicPlayerPlus",
      "MusicPlayerMenu",
      "TermOpen",
      "TermToggle",
      "TermRun",
      "Lazygit",
      "IPython",
      "Lazyman",
      "Lazyconf",
      "Lazyplug",
      "Htop",
    },
    event = "VimEnter",
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
      timeout = 3000,
      max_height = function()
        return math.floor(vim.o.lines * 0.75)
      end,
      max_width = function()
        return math.floor(vim.o.columns * 0.75)
      end,
    },
    init = function()
      -- when noice is not enabled, install notify on VeryLazy
      local Util = require("util")
      if not Util.has("noice.nvim") then
        Util.on_very_lazy(function()
          vim.notify = require("notify")
        end)
      end
    end,
  },

  terminal_nvim,

  -- VSCode-like winbar
  barbecue,

  -- better vim.ui
  dressing,

  -- statusline
  lualine_cfg,

  -- LSP progress in lualine
  lualine_lsp_progress,

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

  telescope_themes,

  -- icons
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- ui components
  { "MunifTanjim/nui.nvim",        lazy = true },

  smart_column,
  virt_column,
  wilder_type,
}
