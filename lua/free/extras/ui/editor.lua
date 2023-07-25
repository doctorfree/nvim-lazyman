return {
  {
    "xiyaowong/nvim-transparent",
    cmd = { "TransparentEnable", "TransparentDisable", "TransparentToggle" },
    opts = {
      extra_groups = { -- table/string: additional groups that should be cleared
        -- In particular, when you set it to 'all', that means all available groups

        -- example of akinsho/nvim-bufferline.lua
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
      },
      exclude_groups = {}, -- table: groups you don't want to clear
    },
    config = function(_, opts)
      require("transparent").setup(opts)
    end,
  },
  {
    "gen740/SmoothCursor.nvim",
    enabled = false,
    event = { "BufReadPre" },
    config = function()
      require("smoothcursor").setup { fancy = { enable = true } }
    end,
  },
  {
    "declancm/cinnamon.nvim",
    enabled = false,
    event = { "BufReadPre" },
    config = function()
      require("cinnamon").setup()
    end,
  },
}
