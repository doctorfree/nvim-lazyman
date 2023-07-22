local Util = require("onno.util")
local Icons = require("onno.core.icons")

local config = {
  close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
  popup_border_style = Util.generate_borderchars("thick", "tl-t-tr-r-bl-b-br-l"),
  sources = {
    "filesystem",
    "buffers",
    "git_status",
    "diagnostics",
    -- "document_symbols",
  },
  source_selector = {
    winbar = true, -- toggle to show selector on winbar
    content_layout = "center",
    tabs_layout = "equal",
    show_separator_on_edge = true,
    sources = {
      { source = "filesystem", display_name = "󰉓" },
      { source = "buffers", display_name = "󰈙" },
      { source = "git_status", display_name = "" },
      -- { source = "document_symbols", display_name = "o" },
      { source = "diagnostics", display_name = "󰒡" },
    },
  },
  default_component_configs = {
    indent = {
      indent_size = 2,
      padding = 1, -- extra padding on left hand side
      -- indent guides
      with_markers = true,
      indent_marker = "│",
      last_indent_marker = "└",
      -- expander config, needed for nesting files
      with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      folder_empty_open = "",
      -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
      -- then these will never be used.
      default = " ",
    },
    modified = { symbol = "" },
    git_status = { symbols = Icons.git },
    diagnostics = { symbols = Icons.diagnostics },
  },
  window = {
    width = 40,
    mappings = {
      ["<1-LeftMouse>"] = "open",
      ["l"] = "open",
    },
  },
  filesystem = {
    window = {
      mappings = {
        ["H"] = "navigate_up",
        ["<bs>"] = "toggle_hidden",
        ["."] = "set_root",
        ["/"] = "fuzzy_finder",
        ["f"] = "filter_on_submit",
        ["<c-x>"] = "clear_filter",
        ["a"] = { "add", config = { show_path = "relative" } }, -- "none", "relative", "absolute"
      },
    },
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    },
    follow_current_file = true, -- This will find and focus the file in the active buffer every
    -- time the current file is changed while the tree is open.
    group_empty_dirs = true, -- when true, empty folders will be grouped together
  },
  async_directory_scan = "always",
}

config.filesystem.components = require("onno.config.neo-tree.sources.filesystem.components")
local function hideCursor()
  vim.cmd([[
    setlocal guicursor=n:block-Cursor
    hi Cursor blend=100
  ]])
end
local function showCursor()
  vim.cmd([[
    setlocal guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
    hi Cursor blend=0
  ]])
end

local neotree_group = Util.augroup("neo-tree_hide_cursor")
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = "neo-tree",
  callback = function()
    vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter", "InsertEnter" }, {
      group = neotree_group,
      callback = function()
        local fire = vim.bo.filetype == "neo-tree" and hideCursor or showCursor
        fire()
      end,
    })
    vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave", "InsertEnter" }, {
      group = neotree_group,
      callback = function()
        showCursor()
      end,
    })
  end,
})

return config
