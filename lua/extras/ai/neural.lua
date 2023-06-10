return {
  {
    "dense-analysis/neural",
    enabled = false,
    dependencies = {
      "elpiloto/significant.nvim",
    },
    cmd = { "Neural" },
    opts = {
      source = {
        openai = {
          api_key = vim.env.OPENAI_API_KEY,
        },
      },
    },
  },
}
