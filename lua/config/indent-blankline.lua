local settings = require("configuration")
local char_highlight_list = {}
if settings.enable_color_indentline then
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  }
end

require("indent_blankline").setup({
  char = "▏",
  context_char = "▏",
  show_end_of_line = false,
  space_char_blankline = " ",
  char_highlight_list = char_highlight_list,
  show_current_context = true,
  show_current_context_start = true,
  filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "alpha",
    "neo-tree",
  },
  buftype_exclude = {
    "terminal",
    "nofile",
  },
})

if settings.enable_color_indentline then
  vim.opt.termguicolors = true
  vim.cmd([[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]])
  vim.cmd([[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]])
  vim.cmd([[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]])
  vim.cmd([[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]])
  vim.cmd([[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]])
  vim.cmd([[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]])
  vim.opt.list = true
  vim.opt.listchars:append("space:⋅")
  vim.opt.listchars:append("eol:↴")
end
