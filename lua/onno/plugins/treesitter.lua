local settings = require("configuration")

return {
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
    opts = {
      ensure_installed = settings.treesitter_ensure_installed,
      sync_install = true,
      auto_install = true,
      ignore_install = {},
      highlight = { enable = true, disable = { "c", "rust" } },
      indent = { enable = true, disable = { "yaml", "python", "html" } },
      context_commentstring = { enable = true },
    },
  },
}
