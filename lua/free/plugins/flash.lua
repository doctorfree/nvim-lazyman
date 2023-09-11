local settings = require("configuration")

if settings.enable_motion == "flash" then
  return {
    {
      "folke/flash.nvim",
      event = "VeryLazy",
      opts = {},
      keys = {
        {
          "s",
          mode = { "n", "x", "o" },
          function()
            -- default options: exact mode, multi window, all directions, with a backdrop
            require("flash").jump()
          end,
          desc = "Flash",
        },
        {
          "S",
          mode = { "n", "o", "x" },
          function()
            require("flash").treesitter()
          end,
          desc = "Flash Treesitter",
        },
        {
          "r",
          mode = "o",
          function()
            require("flash").remote()
          end,
          desc = "Remote Flash",
        },
        {
          "<leader>sF",
          mode = { "n", "o", "x" },
          function()
            require("flash").toggle(true)
          end,
          desc = "Enable Flash",
        },
        {
          "<leader>sf",
          mode = { "n", "o", "x" },
          function()
            require("flash").toggle(false)
          end,
          desc = "Disable Flash",
        },
      },
    }
  }
else
  return {}
end
