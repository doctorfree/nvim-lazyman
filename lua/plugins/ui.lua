local settings = require("configuration")

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

local lualine_cfg = {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    require("config.lualine")
  end,
}

if settings.enable_fancy then
  lualine_cfg = {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "meuter/lualine-so-fancy.nvim",
    },
    event = "VeryLazy",
    config = function()
      require("config.lualine")
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
      -- { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll forward", mode = {"i", "n", "s"} },
      -- { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll backward", mode = {"i", "n", "s"}},
    },
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
    event = "TermOpen",
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
local ok, hl = pcall(vim.api.nvim_get_hl_id_by_name, notify_bg, true)
if not ok then
  notify_bg = "NotifyERRORBody"
  ok, hl = pcall(vim.api.nvim_get_hl_id_by_name, notify_bg, true)
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
      local Util = require("utils.utils")
      if not Util.has("noice.nvim") then
        Util.on_very_lazy(function()
          vim.notify = require("notify")
        end)
      end
    end,
  },

  -- better vim.ui
  dressing,

  -- statusline
  lualine_cfg,

  {
    "kdheepak/tabline.nvim",
    event = "VeryLazy",
    config = function()
      require("config.tabline")
    end,
  },

  -- indent guides for Neovim
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("config.indent-blankline")
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    opts = {
      open_mapping = [[<C-\>]],
      start_in_insert = true,
      direction = "float",
      autochdir = false,
      float_opts = {
        border = { "▄", "▄", "▄", "█", "▀", "▀", "▀", "█" }, -- [ top top top - right - bottom bottom bottom - left ]
        winblend = 0,
      },
      highlights = {
        FloatBorder = { link = "ToggleTermBorder" },
        Normal = { link = "ToggleTerm" },
        NormalFloat = { link = "ToggleTerm" },
      },
      winbar = {
        enabled = settings.enable_winbar,
        name_formatter = function(term)
          return string.format("%d:%s", term.id, term:_display_name())
        end,
      },
    },
  },

  -- noicer ui
  noice_cfg,

  -- lsp symbol navigation for lualine
  {
    "SmiteshP/nvim-navic",
    lazy = true,
    init = function()
      vim.g.navic_silence = true
      require("utils.utils").on_attach(function(client, buffer)
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
        icons = require("config").icons.kinds,
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
  { "MunifTanjim/nui.nvim",        lazy = true },

  terminal_nvim,
  wilder_type,
}
