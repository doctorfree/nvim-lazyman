local conf = {}

-- THEME CONFIGURATION
-- Available themes:
--   monokai-pro, nightfox, tokyonight, kanagawa, catppuccin, tundra, onedarkpro, everforest
-- A configuration file for each theme is in lua/themes/
-- Use <F8> to step through themes
conf.theme = "tokyonight"
-- Available styles are:
--   kanagawa:    wave, dragon, lotus
--   tokyonight:  night, storm, day, moon
--   onedarkpro:  onedark, onelight, onedark_vivid, onedark_dark
--   monokai-pro: classic, octagon, pro, machine, ristretto, spectrum
--   catppuccin:  latte, frappe, macchiato, mocha
--   nightfox:    carbonfox, dawnfox, dayfox, duskfox, nightfox, nordfox, terafox
conf.theme_style = "moon"
-- enable transparency if the theme supports it
conf.enable_transparent = true

-- GLOBAL OPTIONS CONFIGURATION
-- Some prefer space as the map leader, but why
conf.mapleader = ","
conf.maplocalleader = ","
-- Toggle global status line
conf.global_statusline = true
-- set numbered lines
conf.number = false
-- enable mouse see :h mouse
conf.mouse = "nv"
-- set relative numbered lines
conf.relative_number = false
-- always show tabs; 0 never, 1 only if at least two tab pages, 2 always
-- see enable_tabline below to disable or enable the tabline
conf.showtabline = 2
-- enable or disable listchars
conf.list = true
-- which list chars to show
conf.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<"
-- use rg instead of grep
conf.grepprg = "rg --hidden --vimgrep --smart-case --"

-- ENABLE/DISABLE/SELECT PLUGINS
-- neovim session manager to use, either persistence or possession
conf.session_manager = "possession"
-- neo-tree or nvim-tree, false will enable nvim-tree
conf.enable_neotree = true
-- Replace the UI for messages, cmdline and the popupmenu
conf.enable_noice = true
-- Enable ChatGPT (set OPENAI_API_KEY environment variable)
conf.enable_chatgpt = true
-- Enable the newer rainbow treesitter delimiter highlighting
conf.enable_rainbow2 = true
-- Enable fancy lualine components
conf.enable_fancy = true
-- Enable the wilder plugin
conf.enable_wilder = false
-- The statusline (lualine) and tabline can each be enabled or disabled
-- Disable statusline (lualine)
conf.disable_statusline = false
-- Enable tabline
conf.enable_tabline = true
-- Disable winbar with location
conf.enable_winbar = false
-- Enable playing games inside Neovim!
conf.enable_games = true
-- Enable the Alpha dashboard
conf.enable_alpha = true
-- enable the Neovim bookmarks plugin (https://github.com/ldelossa/nvim-ide)
conf.enable_bookmarks = false
-- enable the Neovim IDE plugin (https://github.com/ldelossa/nvim-ide)
conf.enable_ide = false
-- Enable Navigator
conf.enable_navigator = true
-- Enable Project manager
conf.enable_project = true
-- Enable window picker
conf.enable_picker = true

-- PLUGINS CONFIGURATION
-- media backend, one of "ueberzug"|"viu"|"chafa"|"jp2a"|catimg
conf.media_backend = "jp2a"
-- Number of recent files shown in dashboard
-- 0 disables showing recent files
conf.dashboard_recent_files = 5
-- disable the header of the dashboard
conf.disable_dashboard_header = true
-- disable quick links of the dashboard
conf.disable_dashboard_quick_links = false
-- treesitter parsers to be installed
-- one of "all", "maintained" (parsers with maintainers), or a list of languages
conf.treesitter_ensure_installed = "maintained"
-- Enable clangd or ccls will be used for C/C++ diagnostics
conf.enable_clangd = false
-- Tools that should be installed by Mason(-tool-install)
-- Some of these are installed with Homebrew, which should Mason install?
conf.mason_tool_installer_ensure_installed = {
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
conf.telescope_grep_hidden = true

-- which patterns to ignore in file switcher
conf.telescope_file_ignore_patterns = {
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

-- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
--   "none":  diagnostics are disabled but still underlined
--   "icons": only an icon will show, use ',de' to see the diagnostic
--   "popup": an icon will show and a popup with the diagnostic will appear
conf.show_diagnostics = "icons"

return conf
