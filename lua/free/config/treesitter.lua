local settings = require("configuration")

require("nvim-treesitter.configs").setup({
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
  },
  ensure_installed = settings.treesitter_ensure_installed,
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      javascript = {
        __default = "// %s",
        jsx_element = "{/* %s */}",
        jsx_fragment = "{/* %s */}",
        jsx_attribute = "// %s",
        comment = "// %s",
      },
    },
  },
  highlight = {
    enable = true,
    disable = { "help" },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ip"] = "@parameter.inner",
        ["ap"] = "@parameter.outer",
        ["ib"] = "@block.inner",
        ["ab"] = "@block.outer",
        ["im"] = "@class.inner", -- m as in "(M)odule"
        ["am"] = "@class.outer",
        ["aa"] = "@call.outer", -- a as in "function (A)pplication"
        ["ia"] = "@call.inner",
        ["a/"] = "@comment.outer",
        ["i/"] = "@comment.outer",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]f"] = "@function.outer",
        ["]m"] = "@class.outer",
        ["]p"] = "@parameter.outer",
        ["]]"] = "@block.outer",
        ["]b"] = "@block.outer",
        ["]a"] = "@call.outer",
        ["]/"] = "@comment.outer",
      },
      goto_next_end = {
        ["]F"] = "@function.outer",
        ["]M"] = "@class.outer",
        ["]P"] = "@parameter.outer",
        ["]["] = "@block.outer",
        ["]B"] = "@block.outer",
        ["]A"] = "@call.outer",
        ["]\\"] = "@comment.outer",
      },
      goto_previous_start = {
        ["[f"] = "@function.outer",
        ["[m"] = "@class.outer",
        ["[p"] = "@parameter.outer",
        ["[["] = "@block.outer",
        ["[b"] = "@block.outer",
        ["[a"] = "@call.outer",
        ["[/"] = "@comment.outer",
      },
      goto_previous_end = {
        ["[F"] = "@function.outer",
        ["[M"] = "@class.outer",
        ["[P"] = "@parameter.outer",
        ["[]"] = "@block.outer",
        ["[B"] = "@block.outer",
        ["[A"] = "@call.outer",
        ["[\\"] = "@comment.outer",
      },
    },
  },
  -- playground = {
  --   enable = true,
  --   disable = {},
  --   updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
  --   persist_queries = false, -- Whether the query persists across vim sessions
  --   keybindings = {
  --     toggle_query_editor = "o",
  --     toggle_hl_groups = "i",
  --     toggle_injected_languages = "t",
  --     toggle_anonymous_nodes = "a",
  --     toggle_language_display = "I",
  --     focus_language = "f",
  --     unfocus_language = "F",
  --     update = "R",
  --     goto_node = "<cr>",
  --     show_help = "?",
  --   },
  -- },
  matchup = {
    enable = true,
  },
})
