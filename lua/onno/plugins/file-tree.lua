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
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "mrbjarksen/neo-tree-diagnostics.nvim",
    },
    keys = {
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ toggle = true, position = "left", dir = Util.get_root() })
        end,
        desc = "Explorer (root dir)",
        remap = true,
      },
      {
        "<leader>E",
        function()
          require("neo-tree.command").execute({
            toggle = true,
            position = "float",
            dir = Util.get_root(),
          })
        end,
        desc = "Explorer Float (root dir)",
      },
    },
    opts = require("onno.config.neo-tree"),
    init = function()
      vim.g.neo_tree_remove_legacy_commands = 1
      if vim.fn.argc() == 1 then
        local stat = vim.loop.fs_stat(vim.fn.argv(0))
        if stat and stat.type == "directory" then
          require("neo-tree")
          vim.cmd([[set showtabline=0]])
        end
      end
    end
  }
end

return {
  -- file explorer
  treetype,
}
