local settings = require("configuration")

local ensure_installed_cfg = {}
if settings.treesitter_ensure_installed == nil then
  ensure_installed_cfg = {
    "bash", "help", "html", "javascript", "json", "lua", "vim", "yaml", "php",
    "markdown", "markdown_inline", "python", "query", "regex", "tsx", "typescript"
  }
else
  ensure_installed_cfg = settings.treesitter_ensure_installed
end

local rainbow_plugin = "mrjones2014/nvim-ts-rainbow"
local rainbow_cfg = {
  enable = true,
  extended_mode = false,
  colors = {
    "#ff6188",
    "#fc9867",
    "#ffd866",
    "#a9dc76",
    "#78dce8",
    "#ab9df2",
  },
  disable = { "html" },
}
if settings.enable_rainbow2 then
  rainbow_plugin = "HiPhish/nvim-ts-rainbow2"
  rainbow_cfg = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = { "html" },
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
  }
end

return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = ensure_installed_cfg,
      highlight = { enable = true },
      indent = { enable = true, disable = { "yaml", "python", "html" } },
      autopairs = { enable = true },
      context_commentstring = { enable = true },
      rainbow = rainbow_cfg,
      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
          toggle_query_editor = "o",
          toggle_hl_groups = "i",
          toggle_injected_languages = "t",
          toggle_anonymous_nodes = "a",
          toggle_language_display = "I",
          focus_language = "f",
          unfocus_language = "F",
          update = "R",
          goto_node = "<cr>",
          show_help = "?",
        },
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    event = { "InsertEnter" },
    opts = { enable = true },
  },

  { "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },

  {
    rainbow_plugin,
    event = { "BufReadPost" },
  },
}
