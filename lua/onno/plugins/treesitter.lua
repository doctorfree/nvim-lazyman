local settings = require("configuration")
local treesitter_context = {}

if settings.enable_treesitter_context then
  treesitter_context = {
    "nvim-treesitter/nvim-treesitter-context",
    cmd = { "TSContextEnable", "TSContextDisable", "TSContextToggle" },
    event = "BufReadPre",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesitter-context").setup({
        enable = true,
        max_lines = 0,
        min_window_height = 0,
        line_numbers = true,
        multiline_threshold = 20,
        trim_scope = 'outer',
        mode = 'cursor',
        separator = nil,
        zindex = 20,
        on_attach = nil,
      })
    end
  }
end

return {
  {
    "nvim-treesitter/nvim-treesitter",
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
    opts = {
      ensure_installed = settings.treesitter_ensure_installed,
      sync_install = true,
      auto_install = true,
      ignore_install = {},
      highlight = { enable = true },
      indent = { enable = true, disable = { "yaml", "python", "html" } },
      context_commentstring = { enable = false },
    },
  },
  treesitter_context,
}
