return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "google_java_format",
        "black",
        "sql_formatter",
      },
      automatic_setup = true,
    },
  },

  {
    'RubixDev/mason-update-all',
    config = function()
      require('mason-update-all').setup()
      vim.api.nvim_create_autocmd('User', {
        pattern = 'MasonUpdateAllComplete',
        callback = function()
          print('mason-update-all has finished')
        end
      })
    end,
  },
}
