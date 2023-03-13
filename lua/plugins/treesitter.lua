local M = {
  "nvim-treesitter/nvim-treesitter",
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
  end
}

return M
