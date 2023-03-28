local settings = require("configuration")

return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    config = function()
      require("mason").setup()
      -- ensure tools (except LSPs) are installed
      local mr = require("mason-registry")
      for _, tool in ipairs(settings.tools) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
      -- install LSPs
      require("mason-lspconfig").setup({ ensure_installed = settings.lsp_servers })
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      ensure_installed = {
        "google_java_format",
        "jq",
        "sql_formatter",
      },
      automatic_setup = true,
    },
  },

  {
    "RubixDev/mason-update-all",
    config = function()
      require("mason-update-all").setup()
      vim.api.nvim_create_autocmd("User", {
        pattern = "MasonUpdateAllComplete",
        callback = function()
          print("mason-update-all has finished")
        end,
      })
    end,
  },
}
