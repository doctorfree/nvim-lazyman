local settings = require("configuration")

-- Default options:
require('kanagawa').setup({
    compile = true,              -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = settings.enable_transparent,
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})

if settings.theme == "kanagawa" then
  local style = settings.theme_style
  if style == "wave" then
    vim.cmd("colorscheme kanagawa-wave")
  elseif style == "dragon" then
    vim.cmd("colorscheme kanagawa-dragon")
  elseif style == "lotus" then
    vim.cmd("colorscheme kanagawa-lotus")
  else
    vim.cmd("colorscheme kanagawa")
  end
  if settings.enable_neotree then
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { link = "DashboardIcon" })
    vim.api.nvim_set_hl(0, "NeoTreeRootName", { link = "NvimTreeRootFolder" })
    vim.api.nvim_set_hl(0, "NeoTreeFileName", { link = "NvimTreeExecFile" })
    vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { link = "DashboardIcon" })
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
  if settings.enable_alpha then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "NvimTreeGitStaged" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "NvimTreeGitStaged" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "NvimTreeImageFile" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "NvimTreeSymlink" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "NvimTreeSpecialFile" })
  end
end
