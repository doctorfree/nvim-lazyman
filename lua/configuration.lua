local conf = {}

-- THEME CONFIGURATION
-- Available themes:
--   nightfox, tokyonight, dracula, kanagawa, catppuccin,
--   tundra, onedarkpro, everforest, monokai-pro
-- A configuration file for each theme is in lua/themes/
-- Use <F8> to step through themes
conf.theme = "tokyonight"
-- Available styles are:
--   kanagawa:    wave, dragon, lotus
--   tokyonight:  night, storm, day, moon
--   onedarkpro:  onedark, onelight, onedark_vivid, onedark_dark
--   catppuccin:  latte, frappe, macchiato, mocha, custom
--   dracula:     blood, magic, soft, default
--   nightfox:    carbonfox, dawnfox, dayfox, duskfox, nightfox, nordfox, terafox
--   monokai-pro: classic, octagon, pro, machine, ristretto, spectrum
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
conf.listchars = {
  eol = "⤶",
  tab = ">.",
  trail = "~",
  extends = "◀",
  precedes = "▶",
}
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
conf.enable_chatgpt = false
-- Enable the newer rainbow treesitter delimiter highlighting
conf.enable_rainbow2 = true
-- Enable fancy lualine components
conf.enable_fancy = true
-- Enable the wilder plugin
conf.enable_wilder = false
-- The statusline (lualine), tabline, and winbar can each be enabled or disabled
-- Enable statusline (lualine)
conf.enable_statusline = true
-- Enable tabline
conf.enable_tabline = true
-- Enable winbar with navic location via lspconfig
conf.enable_winbar = true
-- Enable rebelot/terminal.nvim
conf.enable_terminal = true
-- Enable playing games inside Neovim!
conf.enable_games = true
--
-- Enable preferred dashboard, disable all for no dashboard
--
-- Enable the Alpha dashboard
conf.enable_alpha = true
-- Enable the dashboard-nvim dashboard
conf.enable_dashboard = false
-- Enable the Mini Starter dashboard
conf.enable_mini_starter = false
-- Enable the Startup dashboard
conf.enable_startup = false
-- Startup dashboard theme ("dashboard", "lazyman", or "startify")
conf.startup_theme = "lazyman"
-- number of recent files, dashboard header and quick links settings
-- only apply to the Alpha dashboard
-- Number of recent files shown in dashboard
-- 0 disables showing recent files
conf.dashboard_recent_files = 3
-- Enable the header of the dashboard
conf.enable_dashboard_header = false
-- Enable quick links of the dashboard
conf.enable_dashboard_quick_links = true
--
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
-- Enable smooth scrolling with neoscroll plugin
conf.enable_smooth_scrolling = true

-- PLUGINS CONFIGURATION
-- media backend, one of "ueberzug"|"viu"|"chafa"|"jp2a"|catimg
conf.media_backend = "jp2a"
-- Enable colored indentation lines if theme supports it
conf.enable_color_indentline = true
-- treesitter parsers to be installed
conf.treesitter_ensure_installed = {
  "bash",
  "go",
  "html",
  "java",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "query",
  "python",
  "regex",
  "toml",
  "vim",
  "vimdoc",
  "yaml",
}
-- Enable clangd or ccls will be used for C/C++ diagnostics
conf.enable_clangd = false
-- LSPs that should be installed by Mason-lspconfig
conf.lsp_servers = {
  "bashls",
  "cssmodules_ls",
  "denols",
  "dockerls",
  "eslint",
  "gopls",
  "graphql",
  "html",
  "jdtls",
  "jsonls",
  "julials",
  "ltex",
  "lua_ls",
  "marksman",
  "pylsp",
  "pyright",
  "sqlls",
  "tailwindcss",
  "terraformls",
  "texlab",
  "tsserver",
  "vimls",
  "yamlls",
}
-- Formatters and linters installed by Mason
conf.formatters_linters = {
  "actionlint",
  "goimports",
  "gofumpt",
  "golangci-lint",
  "google-java-format",
  "latexindent",
  "markdownlint",
  "prettier",
  "sql-formatter",
  "shellcheck",
  "shfmt",
  "stylua",
  "tflint",
  "yamllint",
}
-- enable greping in hidden files
conf.telescope_grep_hidden = true
-- Show diagnostics, can be one of "none", "icons", "popup". Default is "popup"
--   "none":  diagnostics are disabled but still underlined
--   "icons": only an icon will show, use ',de' to see the diagnostic
--   "popup": an icon will show and a popup with the diagnostic will appear
conf.show_diagnostics = "icons"
-- Enable semantic highlighting
conf.enable_semantic_highlighting = true
-- Convert semantic highlights to treesitter highlights
conf.convert_semantic_highlighting = true

return conf
