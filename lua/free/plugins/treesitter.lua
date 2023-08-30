local M = {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    cmd = {
      "TSInstall",
      "TSInstallSync",
      "TSInstallInfo",
      "TSUpdate",
      "TSUpdateSync",
      "TSUninstall",
      "TSBufEnable",
      "TSBufDisable",
      "TSBufToggle",
      "TSEnable",
      "TSDisable",
      "TSToggle",
      "TSModuleInfo",
      "TSEditQuery",
      "TSEditQueryUserAfter",
    },
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "RRethy/nvim-treesitter-endwise",
      "mfussenegger/nvim-ts-hint-textobject",
    },
    config = function()
      require("free.config.treesitter")
    end,
  },
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    keys = {
      {
        "<leader>tt",
        "<CMD>TSJToggle<CR>",
        desc = "Toggle Treesitter Join",
      },
      {
        "<leader>tj",
        "<CMD>TSJJoin<CR>",
        desc = "Treesitter Join",
      },
      {
        "<leader>ts",
        "<CMD>TSJSplit<CR>",
        desc = "Treesitter Split",
      },
    },
    cmd = { "TSJToggle", "TSJJoin", "TSJSplit" },
    config = function()
      require("treesj").setup({
        use_default_keymaps = false,
      })
    end,
  },
}

return M
