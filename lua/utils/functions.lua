local cmd = vim.cmd
local fn = vim.fn

local cfg = {}

--- get os type
---@return string the os type "osx|linux|other|unknown"
function cfg.get_os_type()
  local homedir = os.getenv("HOME")
  local user = os.getenv("USER")
  local start_i = 0
  local end_i = 0

  if homedir == nil or user == nil then
    return "unknown"
  end

  start_i, end_i = string.find(homedir, "/home/" .. user)

  if start_i ~= nil and end_i ~= nil then
    return "linux"
  else
    start_i, end_i = string.find(homedir, "/Users/" .. user)
    if start_i ~= nil and end_i ~= nil then
      return "osx"
    else
      return "other"
    end
  end
end

--- Check if a file or directory exists in this path
cfg.file_or_dir_exists = function(file)
  local ok, err, code = os.rename(file, file)
  if not ok then
    if code == 13 then
      -- Permission denied, but it exists
      return true
    end
  end
  return ok, err
end

--- Check if a directory exists in this path
cfg.isdir = function(path)
  -- "/" works on both Unix and Windows
  return cfg.file_or_dir_exists(path .. "/")
end

cfg.notify = function(message, level, title)
  local notify_options = {
    title = title,
    timeout = 3000,
  }
  vim.api.nvim_notify(message, level, notify_options)
end

-- check if a variable is not empty nor nil
cfg.isNotEmpty = function(s)
  return s ~= nil and s ~= ""
end

-- check if a variable is empty or nil
cfg.isEmpty = function(s)
  return s == nil or s == ""
end

--- Check if path exists
cfg.path_exists = function(path)
  return vim.loop.fs_stat(path)
end

-- Return telescope files command
cfg.project_files = function()
  local path = vim.loop.cwd() .. "/.git"
  if cfg.path_exists(path) then
    return "Telescope git_files"
  else
    return "Telescope find_files"
  end
end

-- this will return a function that calls telescope.
-- cwd will default to lazyvim.util.get_root
-- for `files`, git_files or find_files will be chosen depending on .git
function cfg.telescope(builtin, opts)
  local params = { builtin = builtin, opts = opts }
  return function()
    builtin = params.builtin
    opts = params.opts
    opts = vim.tbl_deep_extend("force", { cwd = cfg.get_root() }, opts or {})
    if builtin == "files" then
      if vim.loop.fs_stat((opts.cwd or vim.loop.cwd()) .. "/.git") then
        opts.show_untracked = true
        builtin = "git_files"
      else
        builtin = "find_files"
      end
    end
    require("telescope.builtin")[builtin](opts)
  end
end

-- toggle quickfixlist
cfg.toggle_qf = function()
  local windows = fn.getwininfo()
  local qf_exists = false
  for _, win in pairs(windows) do
    if win["quickfix"] == 1 then
      qf_exists = true
    end
  end
  if qf_exists == true then
    cmd("cclose")
    return
  end
  if cfg.isNotEmpty(fn.getqflist()) then
    cmd("copen")
  end
end

-- toggle colorcolumn
cfg.toggle_colorcolumn = function()
  local value = vim.api.nvim_get_option_value("colorcolumn", {})
  if value == "" then
    cfg.notify("Enable colocolumn", 1, "functions.lua")
    vim.api.nvim_set_option_value("colorcolumn", { "80", "100" }, {})
  else
    cfg.notify("Disable colocolumn", 1, "functions.lua")
    vim.api.nvim_set_option_value("colorcolumn", "", {})
  end
end

-- move over a closing element in insert mode
cfg.escapePair = function()
  local closers = { ")", "]", "}", ">", "'", '"', "`", "," }
  local line = vim.api.nvim_get_current_line()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local after = line:sub(col + 1, -1)
  local closer_col = #after + 1
  local closer_i = nil
  for i, closer in ipairs(closers) do
    local cur_index, _ = after:find(closer)
    if cur_index and (cur_index < closer_col) then
      closer_col = cur_index
      closer_i = i
    end
  end
  if closer_i then
    vim.api.nvim_win_set_cursor(0, { row, col + closer_col })
  else
    vim.api.nvim_win_set_cursor(0, { row, col + 1 })
  end
end

-- @author kikito
-- @see https://codereview.stackexchange.com/questions/268130/get-list-of-buffers-from-current-neovim-instance
-- currently not used
function cfg.get_listed_buffers()
  local buffers = {}
  local len = 0
  for buffer = 1, vim.fn.bufnr("$") do
    if vim.fn.buflisted(buffer) == 1 then
      len = len + 1
      buffers[len] = buffer
    end
  end

  return buffers
end

function cfg.map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

function cfg.table_contains(tbl, x)
  local found = false
  for _, v in pairs(tbl) do
    if v == x then
      found = true
    end
  end
  return found
end

-- returns the require for use in `config` parameter of packer's `use`
-- expects the name of the config file
-- prefixes with `config.`
cfg.get_config = function(name)
  return string.format('require("config.%s")', name)
end

return cfg
