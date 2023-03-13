local settings = require("configuration")
local rainbow_plugin = "mrjones2014/nvim-ts-rainbow"
local rainbow_cfg = {
  enable = true,
  extended_mode = false,
  colors = {
    "#ff6188",
    "#fc9867",
    "#ffd866",
    "#a9dc76",
    "#78dce8",
    "#ab9df2",
  },
  disable = { "html" },
}
if settings.enable_rainbow2 then
  rainbow_plugin = "HiPhish/nvim-ts-rainbow2"
  rainbow_cfg = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = { "html" },
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
  }
end

local M = {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "RRethy/nvim-treesitter-endwise",
      "mfussenegger/nvim-ts-hint-textobject",
      "windwp/nvim-ts-autotag",
      "nvim-treesitter/playground",
    },
    config = function()
      require("config.treesitter")
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = { "InsertEnter" },
    opts = { enable = true },
  },

  { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },

  {
    rainbow_plugin,
    event = { "BufReadPost" },
  },
}

return M
