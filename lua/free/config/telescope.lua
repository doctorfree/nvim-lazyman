local settings = require("configuration")
local telescope = require("telescope")
local telescopeConfig = require("telescope.config")
local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")
local fb_actions = require("telescope").extensions.file_browser.actions
local icons = require("icons")

local tmpdir = os.getenv("TMPDIR") or "/tmp"

local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
if settings.telescope_grep_hidden then
  table.insert(vimgrep_arguments, "--hidden")
end
-- trim the indentation at the beginning of presented line
table.insert(vimgrep_arguments, "--trim")

telescope.setup({
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({}),
    },
    file_browser = {
      theme = "ivy",
      hijack_netrw = false,
      hidden = true,
      mappings = {
        i = {
          ["<c-n>"] = fb_actions.create,
          ["<c-r>"] = fb_actions.rename,
          -- ["<c-h>"] = actions.which_key,
          ["<c-h>"] = fb_actions.toggle_hidden,
          ["<c-x>"] = fb_actions.remove,
          ["<c-p>"] = fb_actions.move,
          ["<c-y>"] = fb_actions.copy,
          ["<c-a>"] = fb_actions.select_all,
        },
      },
    },
    media = {
      -- backend = "ueberzug", -- "ueberzug"|"viu"|"chafa"|"jp2a"|catimg
      backend = settings.media_backend,
      -- move = true, -- experimental GIF preview
      cache_path = tmpdir .. "/tele.media.cache",
      hidden = false,
    },
  },
  pickers = {
    find_files = {
      hidden = false,
    },
    buffers = {
      ignore_current_buffer = true,
      sort_lastused = true,
    },
    -- find_command = { "fd", "--hidden", "--type", "file", "--follow", "--strip-cwd-prefix" },
    -- find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
    find_command = {
      "rg",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
  },
  defaults = {
    -- which patterns to ignore in file switcher
    file_ignore_patterns = {
      "%.7z",
      "%.MOV",
      "%.RAF",
      "%.burp",
      "%.bz2",
      "%.cache",
      "%.class",
      "%.dll",
      "%.docx",
      "%.dylib",
      "%.epub",
      "%.exe",
      "%.flac",
      "%.ico",
      "%.ipynb",
      "%.jar",
      "%.lock",
      "%.mkv",
      "%.mov",
      "%.mp4",
      "%.otf",
      "%.pdb",
      "%.rar",
      "%.sqlite3",
      "%.svg",
      "%.tar",
      "%.tar.gz",
      "%.zip",
      ".git/",
      ".gradle/",
      ".idea/",
      ".settings/",
      ".vale/",
      ".vscode/",
      "__pycache__/*",
      "build/",
      "env/",
      "gradle/",
      "node_modules/",
      "smalljre_*/*",
      "target/",
      "vendor/*",
    },
    -- used for grep_string and live_grep
    vimgrep_arguments = vimgrep_arguments,
    -- vimgrep_arguments = {
    --   "rg",
    --   "--follow",
    --   "--color=never",
    --   "--no-heading",
    --   "--with-filename",
    --   "--line-number",
    --   "--column",
    --   "--smart-case",
    --   "--no-ignore",
    --   "--trim",
    -- },
    mappings = {
      i = {
        -- Close on first esc instead of going to normal mode
        -- https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua
        ["<esc>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        -- ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.send_selected_to_qflist,
        ["<C-l>"] = actions.send_to_qflist,
        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<cr>"] = actions.select_default,
        ["<c-v>"] = actions.select_vertical,
        ["<c-s>"] = actions.select_horizontal,
        ["<c-t>"] = actions.select_tab,
        ["<c-p>"] = action_layout.toggle_preview,
        ["<c-o>"] = action_layout.toggle_mirror,
        ["<c-h>"] = actions.which_key,
        ["<c-x>"] = actions.delete_buffer,
      },
    },
    prompt_prefix = table.concat({ icons.arrows.ChevronRight, " " }),
    selection_caret = icons.arrows.CurvedArrowRight,
    entry_prefix = "  ",
    multi_icon = icons.arrows.Diamond,
    initial_mode = "insert",
    scroll_strategy = "cycle",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "vertical",
    layout_config = {
      width = 0.99,
      height = 0.85,
      -- preview_cutoff = 120,
      prompt_position = "top",
      horizontal = {
        preview_width = function(_, cols, _)
          if cols > 200 then
            return math.floor(cols * 0.4)
          else
            return math.floor(cols * 0.6)
          end
        end,
      },
      vertical = { width = 0.99, height = 0.95, preview_height = 0.5 },
      flex = { horizontal = { preview_width = 0.99 } },
    },
    winblend = 0,
    border = {},
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    color_devicons = true,
    use_less = true,
    set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
    file_previewer = require("telescope.previewers").vim_buffer_cat.new,
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
    qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
  },
})

telescope.load_extension("zoxide")
telescope.load_extension("heading")
telescope.load_extension("ui-select")
if settings.enable_toggleterm then
  telescope.load_extension("make")
end
telescope.load_extension("media")
if settings.enable_noice then
  telescope.load_extension("noice")
end
telescope.load_extension("fzf")
