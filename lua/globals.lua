local utils = require("utils.functions")

vim.g.pymode = 1
vim.g.pymode_warnings = 1
vim.g.loaded_perl_provider = 0

vim.g.mycolorschemes = {
  "kanagawa",
  "tokyonight",
  "nightfox",
  "onedark",
  "tundra",
  "catppuccin",
  "everforest",
}
-- Set this to 1 if using Airline, 0 with Lualine
vim.g.setairlinetheme = 0
-- Set this to 1 to echo the name of the new colorscheme
vim.g.echosetcolor = 0

vim.g.is_posix = 1 -- Vim's default is Bourne shell, bring it up to the 90s
vim.g.netrw_banner = 0 -- Do not show Netrw help banner
vim.g.signify_sign_add = "│"
vim.g.signify_sign_delete = "│"
vim.g.signify_sign_change = "│"
vim.g.updatetime = 200
vim.g.context_nvim_no_redraw = 1

-- The Homebrew installation location
local brew_prefix = os.getenv("HOMEBREW_PREFIX")

if brew_prefix ~= nil then
  if utils.isdir("/home/linuxbrew/.linuxbrew") then
    vim.g.homebrew_install_dir = "/home/linuxbrew/.linuxbrew"
  else
    if utils.isdir("/opt/homebrew") then
      vim.g.homebrew_install_dir = "/opt/homebrew"
    else
      if utils.isdir("/usr/local") then
        vim.g.homebrew_install_dir = "/usr/local"
      else
        vim.g.homebrew_install_dir = ""
      end
    end
  end
else
  vim.g.homebrew_install_dir = brew_prefix
end

local python_path = vim.g.homebrew_install_dir .. "/bin/python3"
local doq_path = vim.g.homebrew_install_dir .. "/bin/doq"
if utils.file_or_dir_exists(python_path) then
  vim.g.python3_host_prog = python_path
else
  vim.g.python3_host_prog = "/usr/bin/python3"
end
if utils.file_or_dir_exists(doq_path) then
  vim.g.pydocstring_doq_path = doq_path
else
  vim.g.pydocstring_doq_path = "/usr/bin/doq"
end

vim.g.asciiville_style = "deep ocean"

-- Set contrast.
-- This configuration option should be placed before `colorscheme everforest`.
-- Available values: 'hard', 'medium'(default), 'soft'
vim.g.everforest_background = "hard"
vim.g.everforest_better_performance = 1
-- For a transparent background, set to 2 for status line transparency as well
vim.g.everforest_transparent_background = 1
vim.g.everforest_dim_inactive_windows = 1
vim.g.tokyonight_style = "deep ocean"

vim.g.syntastic_html_checkers = {}
