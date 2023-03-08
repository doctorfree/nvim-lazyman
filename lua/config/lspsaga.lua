local lspsaga = require("lspsaga")
local keymap = vim.keymap.set

lspsaga.setup({
  outline = {
    win_position = "botright",
    win_with = "",
    win_width = 30,
    show_detail = true,
    auto_preview = true,
    auto_refresh = true,
    auto_close = true,
    custom_sort = nil,
    keys = {
      jump = "o",
      expand_collapse = "u",
      quit = "q",
    },
  },
  symbol_in_winbar = {
    enable = false,
    separator = " ",
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = false,
    color_mode = true,
  },
  code_action = {
    num_shortcut = true,
    show_server_name = true,
    keys = {
      -- string | table type
      quit = "q",
      exec = "<CR>",
    },
  },
  rename = {
    quit = "<ESC>",
    exec = "<CR>",
    mark = "x",
    confirm = "<CR>",
    in_select = true,
  },
})
-- Go to definition
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")

-- Rename all occurrences of the hovered word for the selected files
keymap("n", "<leader>rn", "<cmd>Lspsaga rename ++project<CR>")

-- Hover Doc
-- If there is no hover doc,
-- there will be a notification stating that
-- there is no information available.
-- To disable it just use ":Lspsaga hover_doc ++quiet"
-- Pressing the key twice will enter the hover window
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
