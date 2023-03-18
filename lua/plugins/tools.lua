return {
  {
    "kevinhwang91/rnvimr",
    init = function()
      -- Make Ranger to be hidden after picking a file
      vim.g.rnvimr_enable_picker = 1

      -- Change the border's color
      -- vim.g.rnvimr_border_attr = { fg = 31, bg = -1 }
      vim.g.rnvimr_border_attr = { fg = 3, bg = -1 }

      -- Draw border with both
      -- vim.g.rnvimr_ranger_cmd = { "ranger", "--cmd=set draw_borders both" }

      -- Add a shadow window, value is equal to 100 will disable shadow
      vim.g.rnvimr_shadow_winblend = 90
    end,
  },

  {
    "mg979/vim-visual-multi",
    event = "BufAdd",
  },

  {
    "loctvl842/compile-nvim",
    lazy = true,
    config = function()
      require("config.compile")
    end,
  },

  {
    "filipdutescu/renamer.nvim",
    lazy = true,
    branch = "master",
    config = function()
      require("config.renamer")
    end,
  },

  {
    "moll/vim-bbye",
    keys = { { "<leader>D", "<cmd>Bdelete!<cr>", desc = "Close Buffer" } },
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {
      -- directory where session files are saved
      dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"),
      options = { "buffers", "curdir", "tabpages", "winsize", "help", "blank", "terminal", "folds", "tabpages" },
      -- a function to call before saving the session
      pre_save = nil,
    },
    keys = {
      {
        "<leader>us",
        function()
          require("persistence").load()
        end,
        desc = "Restore Session",
      },
      {
        "<leader>ul",
        function()
          require("persistence").load({ last = true })
        end,
        desc = "Restore Last Session",
      },
      {
        "<leader>ud",
        function()
          require("persistence").stop()
        end,
        desc = "Don't Save Current Session",
      },
    },
  },

  -- measure startuptime
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
    config = function()
      vim.g.startuptime_tries = 10
    end,
  },

  -- library used by other plugins
  { "nvim-lua/plenary.nvim", lazy = true },

  -- makes some plugins dot-repeatable
  { "tpope/vim-repeat", event = "VeryLazy" },
}
