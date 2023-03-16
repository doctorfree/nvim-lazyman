local settings = require("configuration")
local rainbow_plugin = "mrjones2014/nvim-ts-rainbow"
if settings.enable_rainbow2 then
  rainbow_plugin = "HiPhish/nvim-ts-rainbow2"
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
