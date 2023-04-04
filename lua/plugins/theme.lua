-- Currently supported themes:
--   nightfox, tundra, tokyonight, catppuccin, dracula, kanagawa, onedarkpro
--

return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.nightfox")
    end,
  },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    branch = "master",
    priority = 1000,
    config = function()
      require("themes.monokai-pro")
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.onedarkpro")
    end,
  },
  {
    "sam4llis/nvim-tundra",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.tundra")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    branch = "main",
    config = function()
      require("themes.tokyonight")
    end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.dracula")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.kanagawa")
    end,
  },
  {
    "neanias/everforest-nvim",
    name = "everforest",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.everforest")
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.catppuccin")
    end,
  },
}
