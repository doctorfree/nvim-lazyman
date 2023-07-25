local settings = require("configuration")

local treetype = {}
if settings.file_tree == "nvim-tree" then
  treetype = {
    "nvim-tree/nvim-tree.lua",
    cmd = {
      "NvimTreeOpen",
      "NvimTreeClose",
      "NvimTreeToggle",
      "NvimTreeFindFile",
      "NvimTreeFindFileToggle",
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {
        "<C-e>",
        "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>",
        desc = "NvimTree Toggle",
      },
    },
    config = function()
      require("config.nvim-tree")
    end,
  }
elseif settings.file_tree == "neo-tree" then
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
  treetype = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    keys = {
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = require("util").get_root() })
        end,
        desc = "Explorer (root dir)",
        remap = true,
      },
      { "<leader>E", "<cmd>Neotree toggle position=float<cr>", desc = "Explorer Float" },
    },
    config = function()
      require("free.config.neo-tree")
    end,
  }
end

return {
  -- file explorer
  treetype,
}
