-- Currently supported themes:
--   nightfox, tundra, tokyonight, catppuccin, kanagawa, monokai-pro
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
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.kanagawa")
    end,
  },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.monokai-pro")
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
  }
}
