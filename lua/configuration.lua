local conf = {}

-- Version info, do not modify
conf.config_version = 211

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
-- see enable_tabline below to disable or enable the tabline plugin
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
-- Enable display of ascii art
conf.enable_asciiart = false
-- Delete buffers and close files without closing your windows
conf.enable_bbye = true
-- Enable display of custom cheatsheets
conf.enable_cheatsheet = true
-- Enable coding plugins for diagnostics, debugging, and language sservers
conf.enable_coding = true
-- Enable compile plugin to compile and run current file
conf.enable_compile = false
-- Enable dressing plugin for improved default vim.ui interfaces
conf.enable_dressing = true
-- Enable hop plugin for easy motions
conf.enable_hop = true
-- Enable renamer plugin for VS Code-like renaming UI
conf.enable_renamer = true
-- Enable ranger in a floating window
conf.enable_ranger_float = true
-- Enable multiple cursors
conf.enable_multi_cursor = true
-- neovim session manager to use: persistence, possession, or none
conf.session_manager = "possession"
-- File explorer tree plugin: neo-tree, nvim-tree, or none
conf.file_tree = "neo-tree"
-- Replace the UI for messages, cmdline and the popupmenu
conf.enable_noice = true
-- Enable ChatGPT (set OPENAI_API_KEY environment variable)
conf.enable_chatgpt = true
-- Enable the newer rainbow treesitter delimiter highlighting
conf.enable_rainbow2 = true
-- Enable 'StartupTime' command
conf.enable_startuptime = true
-- Add/change/delete surrounding delimiter pairs with ease
conf.enable_surround = true
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
-- Enable toggleterm plugin
conf.enable_toggleterm = true
-- Enable playing games inside Neovim!
conf.enable_games = true
-- Enable the WakaTime metrics dashboard (requires API key)
conf.enable_wakatime = true
-- Enable a dashboard, can be one of "alpha", "dash", "mini", or "none"
conf.dashboard = "alpha"
-- Number of recent files, dashboard header and quick links settings
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
-- Enable clangd or ccls for C/C++ diagnostics
-- Note: if enabled then the tool must be installed and in the execution path
conf.enable_ccls = true
conf.enable_clangd = false
-- LSPs that should be installed by Mason-lspconfig
-- Leave the 'LSP_SERVERS' trailing comment, it is used by lazyman
conf.lsp_servers = {
  "bashls", -- LSP_SERVERS
  "cssmodules_ls", -- LSP_SERVERS
  "denols", -- LSP_SERVERS
  "dockerls", -- LSP_SERVERS
  -- "eslint", -- LSP_SERVERS
  "gopls", -- LSP_SERVERS
  "graphql", -- LSP_SERVERS
  "html", -- LSP_SERVERS
  "jdtls", -- LSP_SERVERS
  "jsonls", -- LSP_SERVERS
  "julials", -- LSP_SERVERS
  "ltex", -- LSP_SERVERS
  "lua_ls", -- LSP_SERVERS
  "marksman", -- LSP_SERVERS
  "pylsp", -- LSP_SERVERS
  "pyright", -- LSP_SERVERS
  "sqlls", -- LSP_SERVERS
  "tailwindcss", -- LSP_SERVERS
  "texlab", -- LSP_SERVERS
  "tsserver", -- LSP_SERVERS
  "vimls", -- LSP_SERVERS
  "yamlls", -- LSP_SERVERS
}
-- Formatters and linters installed by Mason
conf.formatters_linters = {
  "actionlint", -- FORMATTERS_LINTERS
  "goimports", -- FORMATTERS_LINTERS
  "gofumpt", -- FORMATTERS_LINTERS
  "golangci-lint", -- FORMATTERS_LINTERS
  "google-java-format", -- FORMATTERS_LINTERS
  "latexindent", -- FORMATTERS_LINTERS
  "markdownlint", -- FORMATTERS_LINTERS
  "prettier", -- FORMATTERS_LINTERS
  "sql-formatter", -- FORMATTERS_LINTERS
  -- "shellcheck", -- FORMATTERS_LINTERS
  -- "shfmt", -- FORMATTERS_LINTERS
  "stylua", -- FORMATTERS_LINTERS
  "tflint", -- FORMATTERS_LINTERS
  "yamllint", -- FORMATTERS_LINTERS
}
-- Formatters and linters installed externally
conf.external_formatters = {
  "beautysh", -- FORMATTERS_LINTERS
  "black", -- FORMATTERS_LINTERS
  "ruff", -- FORMATTERS_LINTERS
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
