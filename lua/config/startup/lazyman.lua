local datetime = os.date("  %Y-%b-%d   %H:%M:%S", os.time())
local version = vim.version()
local version_info = ""
if version ~= nil then
  version_info = "v" .. version.major .. "." .. version.minor .. "." .. version.patch
end

local stats = require("lazy").stats()
local vinfo = "Neovim " .. version_info
local lazystats = "  loaded " .. stats.count .. " plugins "
local settings = {
  -- every line should be same width without escaped \
  header = {
    type = "text",
    oldfiles_directory = false,
    align = "center",
    fold_section = false,
    title = "Header",
    margin = 5,
    content = {
      "  _                                            ",
      " | |                                           ",
      " | |  __,   __         _  _  _    __,   _  _   ",
      " |/  /  |  / / _|   | / |/ |/ |  /  |  / |/ |  ",
      " |__/\\_/|_/ /_/  \\_/|/  |  |  |_/\\_/|_/  |  |_/",
      "             /|    /|                          ",
      "             \\|    \\|                          ",
    },
    highlight = "Statement",
    default_color = "",
    oldfiles_amount = 0,
  },
  -- name which will be displayed and command
  body = {
    type = "mapping",
    oldfiles_directory = false,
    align = "center",
    fold_section = false,
    title = "Lazyman Commands",
    margin = 5,
    content = {
      { " New File",          "lua require'startup'.new_file()",        "n" },
      { " Find File",         "Telescope find_files",                   "f" },
      { " Find Word",         "Telescope live_grep",                    "w" },
      { " Recent Files",      "Telescope oldfiles prompt_title=Recent", "r" },
      { " File Browser",      "Telescope file_browser",                 "b" },
      { " Search Zoxide",     "Telescope zoxide list",                  "z" },
      { " Colorschemes",      "Telescope colorscheme",                  "s" },
      { " Cheatsheet",        "Cheatsheet",                             "c" },
      { " Neovim Health",     "checkhealth",                            "h" },
      { " Lazyman Main Menu", "Lazyman",                                "l" },
      { " Lazyman Conf Menu", "Lazyconf",                               "C" },
      { " Lazy Menu",         "Lazy",                                   "L" },
      { " Mason Menu",        "Mason",                                  "M" },
      { " Quit",              "quitall",                                "q" },
    },
    highlight = "String",
    default_color = "",
    oldfiles_amount = 0,
  },
  footer = {
    type = "text",
    oldfiles_directory = false,
    align = "center",
    fold_section = false,
    title = "Footer",
    margin = 5,
    content = { datetime .. "  " .. vinfo .. lazystats },
    highlight = "Number",
    default_color = "",
    oldfiles_amount = 0,
  },

  options = {
    mapping_keys = true,
    cursor_column = 0.5,
    empty_lines_between_mappings = false,
    disable_statuslines = true,
    paddings = { 0, 1, 1, 0 },
  },
  mappings = {
    execute_command = "<CR>",
    open_file = "o",
    open_file_split = "<c-o>",
    open_section = "<TAB>",
    open_help = "?",
  },
  colors = {
    background = "#1f2227",
    folded_section = "#56b6c2",
  },
  parts = { "header", "body", "footer" },
}
return settings
