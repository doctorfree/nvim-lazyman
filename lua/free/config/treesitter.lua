local settings = require("configuration")

require("nvim-treesitter.configs").setup({
  ensure_installed = settings.treesitter_ensure_installed,
  sync_install = true,
  auto_install = true,
  ignore_install = {},

  highlight = {
    enable = true,
    disable = { "c", "rust" },
    -- disable = function()
    --   return vim.b.large_buf
    -- end,
    additional_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = "<nop>",
      node_decremental = "<bs>",
    },
  },
  endwise = {
    enable = true,
  },
  indent = { enable = true },
  autopairs = { enable = true },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
        ["ib"] = "@block.inner",
        ["ab"] = "@block.outer",
        ["ir"] = "@parameter.inner",
        ["ar"] = "@parameter.outer",
      },
    },
  },
  context_commentstring = { enable = true },
})
