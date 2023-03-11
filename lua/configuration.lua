local M = {}

-- theme: monokai-pro, nightfox, tokyonight, kanagawa, catppuccin, tundra
-- refer to the relevant themes settings file in:
--   ~/.config/nvim-lazyman/lua/*/plugins/themes/
-- for different styles and settings for your selected theme.
-- M.theme = "monokai-pro"
-- M.theme = "nightfox"
-- M.theme = "kanagawa"
-- M.theme = "catppuccin"
M.theme = "tokyonight"
-- M.theme = "tundra"

M.mapleader = ","
M.maplocalleader = ","

-- enable transparency if the theme supports it
M.enable_transparent = false
-- Toggle global status line
M.global_statusline = true
-- use rg instead of grep
M.grepprg = "rg --hidden --vimgrep --smart-case --"
-- set numbered lines
M.number = false
-- enable mouse see :h mouse
M.mouse = "nv"
-- set relative numbered lines
M.relative_number = false
-- always show tabs; 0 never, 1 only if at least two tab pages, 2 always
M.showtabline = 1
-- enable or disable listchars
M.list = true
-- which list chars to schow
M.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<"
-- neo-tree or nvim-tree, false will enable nvim-tree
M.enable_neotree = true
-- Noice heavily changes the Neovim UI ...
M.enable_noice = true
-- Enable the newer rainbow treesitter delimiter highlighting
M.enable_rainbow2 = true
-- Enable the wilder plugin
M.enable_wilder = false
-- Enable/disable tabline or winbar or both
M.enable_tabline = true
-- Disable winbar with nvim-navic location
M.enable_winbar = false
-- Enable the Alpha dashboard
M.enable_alpha = true
-- Number of recent files shown in dashboard
-- 0 disables showing recent files
M.dashboard_recent_files = 5
-- disable the header of the dashboard
M.disable_dashboard_header = false
-- disable quick links of the dashboard
M.disable_dashboard_quick_links = false
-- treesitter parsers to be installed
-- one of "all", "maintained" (parsers with maintainers), or a list of languages
M.treesitter_ensure_installed = {
  "bash",
  "c",
  "cpp",
  "cmake",
  "comment",
  "css",
  "go",
  "help",
  "html",
  "java",
  "javascript",
  "typescript",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "query",
  "python",
  "regex",
  "rust",
  "toml",
  "tsx",
  "vim",
  "yaml",
  "vue",
}

-- enable greping in hidden files
M.telescope_grep_hidden = true

-- which patterns to ignore in file switcher
M.telescope_file_ignore_patterns = {
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
}

-- Enable diagnostics on workspace
M.workspace_diagnostic = false

return M
