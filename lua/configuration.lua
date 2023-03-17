local M = {}
-- Available themes:
--   monokai-pro, nightfox, tokyonight, kanagawa, catppuccin, tundra, onedarkpro
M.theme = "tokyonight"
-- Available styles are:
--   kanagawa:    wave, dragon, lotus
--   tokyonight:  night, storm, day, moon
--   onedarkpro:  onedark, onelight, onedark_vivid, onedark_dark
--   monokai-pro: classic, octagon, pro, machine, ristretto, spectrum
--   catppuccin:  latte, frappe, macchiato, mocha
--   nightfox:    carbonfox, dawnfox, dayfox, duskfox, nightfox, nordfox, terafox
M.theme_style = "moon"
-- Some prefer space as the map leader, but why
M.mapleader = ","
M.maplocalleader = ","
-- enable transparency if the theme supports it
M.enable_transparent = true
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
-- see enable_tabline below to disable or enable the tabline
M.showtabline = 2
-- enable or disable listchars
M.list = true
-- which list chars to show
M.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<"
-- neo-tree or nvim-tree, false will enable nvim-tree
M.enable_neotree = true
-- Noice heavily changes the Neovim UI ...
M.enable_noice = true
-- Enable the newer rainbow treesitter delimiter highlighting
M.enable_rainbow2 = true
-- Enable the wilder plugin
M.enable_wilder = false
-- The statusline (lualine) and tabline can each be enabled or disabled
-- Disable statusline (lualine)
M.disable_statusline = false
-- Enable tabline
M.enable_tabline = true
-- Disable winbar with location
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
-- enable the Neovim bookmarks plugin (https://github.com/ldelossa/nvim-ide)
M.enable_bookmarks = false
-- enable the Neovim IDE plugin (https://github.com/ldelossa/nvim-ide)
M.enable_ide = false
-- treesitter parsers to be installed
-- one of "all", "maintained" (parsers with maintainers), or a list of languages
M.treesitter_ensure_installed = {
  "c",
  "lua",
  "vim",
  "help",
  "query",
  "bash",
  "html",
  "json",
  "markdown",
  "markdown_inline",
  "python",
  "regex",
  "yaml",
}
-- Enable either clangd or ccls for C/C++ diagnostics
M.enable_clangd = true
-- Tools that should be installed by Mason(-tool-install)
-- Some of these are installed with Homebrew, which should Mason install?
M.mason_tool_installer_ensure_installed = {
  -- DAP
  "debugpy",
  -- LSP
  "bash-language-server",
  "dockerfile-language-server",
  "json-lsp",
  "marksman",
  "typescript-language-server",
  "texlab",
  "ltex-ls",
  "lua-language-server",
  "pyright",
  "terraform-ls",
  "yaml-language-server",
  -- Formatter
  "black",
  "prettier",
  "stylua",
  "shfmt",
  -- Linter
  "eslint_d",
  "shellcheck",
  "tflint",
  "yamllint",
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

-- Enable diagnostics on workspace (not yet working)
M.workspace_diagnostic = false

return M
