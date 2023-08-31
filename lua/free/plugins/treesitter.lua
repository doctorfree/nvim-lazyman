local M = {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
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
      --    local init_path = vim.fn.stdpath("config") .. "/.treesitter"
      --    if not require("util").file_or_dir_exists(init_path) then
      --      vim.cmd([[TSInstall! bash]])
      --      vim.cmd([[TSInstall! c]])
      --      vim.cmd([[TSInstall! cpp]])
      --      vim.cmd([[TSInstall! java]])
      --      vim.cmd([[TSInstall! python]])
      --      local init_file = io.open(init_path, "w")
      --      if init_file ~= nil then
      --        init_file:write("")
      --        init_file:close()
      --      end
      --    end
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
