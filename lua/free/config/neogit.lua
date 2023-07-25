local neogit = require("neogit")

neogit.setup {
  disable_signs = false,
  disable_hint = false,
  disable_context_highlighting = false,
  disable_commit_confirmation = false,
  auto_refresh = true,
  sort_branches = "-committerdate",
  disable_builtin_notifications = false,
  use_telescope = true,
  telescope_sorter = function()
    return require("telescope").extensions.fzf.native_fzf_sorter()
  end,
  use_magit_keybindings = false,
  kind = "tab",
  console_timeout = 2000,
  auto_show_console = true,
  remember_settings = true,
  use_per_project_settings = true,
  ignored_settings = {},
  commit_popup = {
    kind = "split",
  },
  preview_buffer = {
    kind = "split",
  },
  popup = {
    kind = "split",
  },
  signs = {
    -- { CLOSED, OPENED }
    section = { ">", "v" },
    item = { ">", "v" },
    hunk = { "", "" },
  },
  integrations = {
    diffview = true,
  },
  sections = {
    untracked = {
      folded = false
    },
    unstaged = {
      folded = false
    },
    staged = {
      folded = false
    },
    stashes = {
      folded = true
    },
    unpulled = {
      folded = true
    },
    unmerged = {
      folded = false
    },
    recent = {
      folded = true
    },
  },
  mappings = {
    status = {
      ["B"] = "BranchPopup",
      ["s"] = "",
    },
    finder = {
      ["<cr>"] = "select",
    }
  }
}
