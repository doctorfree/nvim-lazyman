local utils = require("utils.functions")

vim.g.pymode = 1
vim.g.pymode_warnings = 1
vim.g.loaded_perl_provider = 0

vim.g.mycolorschemes = {
  "dracula",
  "monokai-pro",
  "kanagawa",
  "tokyonight",
  "nightfox",
  "onedark",
  "catppuccin",
  "everforest",
}
-- Set this to 1 if using Airline, 0 with Lualine
vim.g.setairlinetheme = 0
-- Set this to 1 to echo the name of the new colorscheme
vim.g.echosetcolor = 1

vim.g.is_posix = 1     -- Vim's default is Bourne shell, bring it up to the 90s
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

-- Check for python3 and doq in asdf then Homebrew then pyenv then /usr/bin
local python_path = ""
if vim.fn.executable("asdf") == 1 then
  python_path = vim.fn.system({ "asdf", "which", "python3", "2>/dev/null" })
end
if python_path == nil or python_path == "" then
  python_path = vim.g.homebrew_install_dir .. "/bin/python3"
  if utils.file_or_dir_exists(python_path) then
    vim.g.python3_host_prog = python_path:gsub("[%c]", "")
  else
    python_path = vim.fn.system({ "pyenv", "which", "python3", "2>/dev/null" })
    if python_path == nil or python_path == "" then
      if utils.file_or_dir_exists("/usr/bin/python3") then
        vim.g.python3_host_prog = "/usr/bin/python3"
      else
        vim.g.loaded_python3_provider = 0
      end
    else
      vim.g.python3_host_prog = python_path:gsub("[%c]", "")
    end
  end
else
  vim.g.python3_host_prog = python_path:gsub("[%c]", "")
end

local doq_path = ""
if vim.fn.executable("asdf") == 1 then
  doq_path = vim.fn.system({ "asdf", "which", "doq", "2>/dev/null" })
end
if doq_path == nil or doq_path == "" then
  doq_path = vim.g.homebrew_install_dir .. "/bin/doq"
  if utils.file_or_dir_exists(doq_path) then
    vim.g.pydocstring_doq_path = doq_path
  else
    vim.g.pydocstring_doq_path = "/usr/bin/doq"
  end
else
  vim.g.pydocstring_doq_path = doq_path:gsub("[%c]", "")
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
