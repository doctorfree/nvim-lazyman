local M = {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    -- event = { "BufReadPost", "BufNewFile" },
    event = "BufReadPost",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "RRethy/nvim-treesitter-endwise",
      "mfussenegger/nvim-ts-hint-textobject",
      "windwp/nvim-ts-autotag",
      -- "nvim-treesitter/playground",
    },
    config = function()
      require("free.config.treesitter")
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = { "InsertEnter" },
    ft = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "rescript",
      "xml",
      "php",
      "markdown",
      "glimmer",
      "handlebars",
      "hbs",
    },
    opts = {
      enable = true,
      filetypes = {
        "html",
        "javascript",
        "typescript",
        "javascriptreact",
        "typescriptreact",
        "svelte",
        "vue",
        "tsx",
        "jsx",
        "rescript",
        "xml",
        "php",
        "markdown",
        "glimmer",
        "handlebars",
        "hbs",
      },
    },
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
