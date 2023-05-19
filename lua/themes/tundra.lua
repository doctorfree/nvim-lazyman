local settings = require("configuration")

require('nvim-tundra').setup({
  transparent_background = settings.enable_transparent,
  dim_inactive_windows = {
    enabled = false,
    color = nil,
  },
  sidebars = {
    enabled = true,
    color = nil,
  },
  editor = {
    search = {},
    substitute = {},
  },
  syntax = {
    booleans = { bold = true, italic = true },
    comments = { bold = true, italic = true },
    conditionals = {},
    constants = { bold = true },
    fields = {},
    functions = {},
    keywords = {},
    loops = {},
    numbers = { bold = true },
    operators = { bold = true },
    punctuation = {},
    strings = {},
    types = { italic = true },
  },
  diagnostics = {
    errors = {},
    warnings = {},
    information = {},
    hints = {},
  },
  plugins = {
    lsp = true,
    treesitter = true,
    telescope = true,
    nvimtree = true,
    cmp = true,
    context = true,
    dbui = true,
    gitsigns = true,
    neogit = true,
  },
  overwrite = {
    colors = {},
    highlights = {},
  },
})

if settings.theme == "tundra" then
  vim.opt.background = 'dark'
  vim.cmd([[colorscheme tundra]])
  if settings.file_tree == "neo-tree" then
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { link = "NvimTreeNormal" })
    vim.api.nvim_set_hl(0, "NeoTreeRootName", { link = "NvimTreeRootFolder" })
    vim.api.nvim_set_hl(0, "NeoTreeFileName", { link = "NvimTreeExecFile" })
    vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { link = "NvimTreeVertSplit" })
    vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { link = "NvimTreeOpenedFile" })
    vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { link = "NvimTreeIndentMarker" })
    vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { link = "NvimTreeGitNew" })
    vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { link = "NvimTreeGitDirty" })
    vim.api.nvim_set_hl(0, "NeoTreeGitModified", { link = "NvimTreeGitStaged" })
    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { link = "NvimTreeGitDeleted" })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { link = "NvimTreeNormal" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { link = "NvimTreeNormalNC" })
    vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { link = "NvimTreeSymlink" })
  end
  if settings.dashboard == "alpha" then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "DiagnosticError" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "DiagnosticError" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "DiagnosticWarn" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "DiagnosticInfo" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "DiagnosticHint" })
  end
  local utils = require("utils.functions")
  utils.map("n", "<leader>ut", ":Tundra toggle_transparency<CR>",
    { desc = "Toggle Transparency" })
end
