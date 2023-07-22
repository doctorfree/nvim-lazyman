return {
  { "itchyny/calendar.vim", cmd = { "Calendar" } },
  { "folke/twilight.nvim", config = true, cmd = { "Twilight", "TwilightEnable", "TwilightDisable" } },
  { "folke/zen-mode.nvim", config = true, cmd = { "ZenMode" } },
  { "dhruvasagar/vim-table-mode", ft = { "markdown", "org", "norg" } },
  { "lukas-reineke/headlines.nvim", config = true, ft = { "markdown", "org", "norg" } },
  {
    "jbyuki/nabla.nvim",
    --stylua: ignore
    keys = {
      { "<leader>nn", function() require("nabla").popup() end, desc = "Notation", },
    },
    config = function()
      require("nabla").enable_virt()
    end,
  },
  {
    "vim-pandoc/vim-pandoc",
    event = "VeryLazy",
    enabled = false,
    dependencies = { "vim-pandoc/vim-pandoc-syntax" },
  },
  {
    "frabjous/knap",
    init = function()
      -- Configure vim.g.knap_settings
    end,
    --stylua: ignore
    keys = {
      { "<leader>np", function() require("knap").process_once() end, desc = "Preview", },
      { "<leader>nc", function() require("knap").close_viewer() end, desc = "Close Preview", },
      { "<leader>nt", function() require("knap").close_viewer() end, desc = "Toggle Preview", },
      { "<leader>nj", function() require("knap").forward_jump() end, desc = "Forward jump", },
    },
    ft = { "markdown", "tex" },
  },
}
