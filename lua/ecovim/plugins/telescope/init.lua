local settings = require("configuration")
local actions = require("telescope.actions")
local previewers = require("telescope.previewers")
local builtin = require("telescope.builtin")
local icons = Ecovim.icons
local telescope = require("telescope")
local telescopeConfig = require("telescope.config")

local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
if settings.telescope_grep_hidden then
  table.insert(vimgrep_arguments, "--hidden")
end
-- trim the indentation at the beginning of presented line
table.insert(vimgrep_arguments, "--trim")

telescope.load_extension("repo")
telescope.load_extension("git_worktree")
-- Not yet supported, see namespace 'free' configuration
-- telescope.load_extension("zoxide")
-- telescope.load_extension("heading")
-- telescope.load_extension("ui-select")
-- if settings.enable_toggleterm then
--   telescope.load_extension("make")
-- end
--
if settings.enable_noice then
  telescope.load_extension("noice")
end

telescope.load_extension("fzf")

local git_icons = {
  added = icons.gitAdd,
  changed = icons.gitChange,
  copied = ">",
  deleted = icons.gitRemove,
  renamed = "➡",
  unmerged = "‡",
  untracked = "?",
}

require("telescope").setup({
  defaults = {
    border = true,
    hl_result_eol = true,
    multi_icon = "",
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    layout_config = {
      horizontal = {
        preview_cutoff = 120,
      },
      prompt_position = "top",
    },
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    prompt_prefix = "  ",
    color_devicons = true,
    git_icons = git_icons,
    sorting_strategy = "ascending",
    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
    mappings = {
      i = {
        ["<C-x>"] = false,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<C-s>"] = actions.cycle_previewers_next,
        ["<C-a>"] = actions.cycle_previewers_prev,
        -- ["<C-h>"] = "which_key",
        ["<ESC>"] = actions.close,
      },
      n = {
        ["<C-s>"] = actions.cycle_previewers_next,
        ["<C-a>"] = actions.cycle_previewers_prev,
      },
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
  },
})

-- Implement delta as previewer for diffs

local M = {}

local delta_bcommits = previewers.new_termopen_previewer({
  get_command = function(entry)
    return {
      "git",
      "-c",
      "core.pager=delta",
      "-c",
      "delta.side-by-side=false",
      "diff",
      entry.value .. "^!",
      "--",
      entry.current_file,
    }
  end,
})

local delta = previewers.new_termopen_previewer({
  get_command = function(entry)
    return { "git", "-c", "core.pager=delta", "-c", "delta.side-by-side=false", "diff", entry.value .. "^!" }
  end,
})

M.my_git_commits = function(opts)
  opts = opts or {}
  opts.previewer = {
    delta,
    previewers.git_commit_message.new(opts),
    previewers.git_commit_diff_as_was.new(opts),
  }

  builtin.git_commits(opts)
end

M.my_git_bcommits = function(opts)
  opts = opts or {}
  opts.previewer = {
    delta_bcommits,
    previewers.git_commit_message.new(opts),
    previewers.git_commit_diff_as_was.new(opts),
  }

  builtin.git_bcommits(opts)
end

-- Custom pickers

M.edit_neovim = function()
  builtin.git_files(require("telescope.themes").get_dropdown({
    color_devicons = true,
    cwd = "~/.config/nvim-Lazyman",
    previewer = false,
    prompt_title = "Lazyman Dotfiles",
    sorting_strategy = "ascending",
    winblend = 4,
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
      prompt_position = "top",
    },
  }))
end

M.project_files = function(opts)
  opts = opts or {} -- define here if you want to define something
  local ok = pcall(require("telescope.builtin").git_files, opts)
  if not ok then
    require("telescope.builtin").find_files(opts)
  end
end

M.command_history = function()
  builtin.command_history(require("telescope.themes").get_dropdown({
    color_devicons = true,
    winblend = 4,
    layout_config = {
      width = function(_, max_columns, _)
        return math.min(max_columns, 150)
      end,
      height = function(_, _, max_lines)
        return math.min(max_lines, 15)
      end,
    },
  }))
end

return M
