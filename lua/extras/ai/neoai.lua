return {
  "Bryley/neoai.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  cmd = {
    "NeoAI",
    "NeoAIOpen",
    "NeoAIClose",
    "NeoAIToggle",
    "NeoAIContext",
    "NeoAIContextOpen",
    "NeoAIContextClose",
    "NeoAIInject",
    "NeoAIInjectCode",
    "NeoAIInjectContext",
    "NeoAIInjectContextCode",
    "NeoAIShortcut",
  },
  keys = {
    { "<leader>as", desc = "Summarize Text" },
    { "<leader>ag", desc = "Generate Git Message" },
  },
  config = function()
    require("neoai").setup {
      -- Options go here
    }
  end,
}
