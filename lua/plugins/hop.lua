return {

  { "ziontee113/syntax-tree-surfer" },

  {
    "mfussenegger/nvim-treehopper",
    lazy = false,
    config = function()
      local tree_hopper = require("tsht")
      vim.keymap.set("n", "<leader>hm", function()
        tree_hopper.nodes()
      end, { desc = "Treehopper nodes" })
      vim.keymap.set("n", "<leader>h[", function()
        tree_hopper.move({ side = "start" })
      end, { desc = "Move to start of Treehopper node" })
      vim.keymap.set("n", "<leader>h]", function()
        tree_hopper.move({ side = "end" })
      end, { desc = "Move to end of Treehopper node" })
    end,
  },

  {
    "phaazon/hop.nvim",
    branch = "v2",
    cmd = {
      "HopAnywhere",
      "HopChar1",
      "HopChar2",
      "HopLine",
      "HopLineStart",
      "HopVertical",
      "HopPattern",
      "HopWord",
    },
    lazy = false,
    config = function()
      require("config.hop")
    end,
  },

}
