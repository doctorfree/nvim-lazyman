-- https://github.com/lukas-reineke/indent-blankline.nvim
local settings = require("configuration")
local indent_style = settings.indentline_style
local char = "▏"
local char_highlight_list = {}
local space_char_highlight_list = {}
local show_current_context = false
local show_current_context_start = false
local show_end_of_line = false
local show_trailing_blankline_indent = true
-- 'background' colored' 'context' 'listchars' 'simple' 'none'
if indent_style == "colored" then
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
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
  }
elseif indent_style == "background" then
  vim.opt.termguicolors = true
  vim.cmd([[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]])
  vim.cmd([[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]])
  char = ""
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
  }
  space_char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
  }
  show_trailing_blankline_indent = false
elseif indent_style == "context" then
  vim.opt.list = true
  vim.opt.listchars:append("space:⋅")
  vim.opt.listchars:append("eol:↴")
  show_current_context = true
  show_current_context_start = true
elseif indent_style == "listchars" then
  vim.opt.list = true
  vim.opt.listchars:append("space:⋅")
  vim.opt.listchars:append("eol:↴")
  show_end_of_line = true
elseif indent_style == "simple" then
  vim.opt.list = true
  vim.opt.listchars:append("eol:↴")
  show_end_of_line = true
end

require("indent_blankline").setup({
  char = char,
  context_char = "▏",
  show_end_of_line = show_end_of_line,
  show_trailing_blankline_indent = show_trailing_blankline_indent,
  space_char_blankline = " ",
  char_highlight_list = char_highlight_list,
  space_char_highlight_list = space_char_highlight_list,
  show_current_context = show_current_context,
  show_current_context_start = show_current_context_start,
  filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "startup",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "alpha",
    "neo-tree",
    "TelescopePrompt",
    "Float",
  },
  buftype_exclude = {
    "terminal",
    "telescope",
    "nofile",
  },
})
