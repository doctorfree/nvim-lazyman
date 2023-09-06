local settings = require("configuration")

-- Watch the lua/configuration.lua for changes and
-- re-initialize when changes to that file are detected
if File_watchers == nil then
    File_watchers = {}
end
local watch_file_augroup = 'watch_file_augroup'
vim.api.nvim_create_augroup(watch_file_augroup, {clear=true})
vim.api.nvim_create_autocmd('VimLeave', {
    group = watch_file_augroup,
    callback = function()
        for _, watcher in pairs(File_watchers) do
            watcher:stop()
        end
    end
})
local function watch_file(fname, cb, time)
    if File_watchers[fname] then
        File_watchers[fname]:stop()
        File_watchers[fname] = nil
    end

    File_watchers[fname] = vim.loop.new_fs_poll()
    File_watchers[fname]:start(fname, time, vim.schedule_wrap(cb))
end

local init_lua = vim.fn.stdpath('config')..'/init.lua'
local conf_lua = vim.fn.stdpath('config')..'/lua/configuration.lua'

watch_file(conf_lua, function()
    dofile(init_lua)
    vim.notify('Reloaded init.lua', vim.diagnostic.severity.INFO)
end, 500)

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = settings.mapleader
vim.g.maplocalleader = settings.maplocalleader

if settings.namespace == "onno" then
  require("onno.lazy")
else
  if settings.namespace == "ecovim" then
    require("ecovim")
  else
    require("free.config.lazy")
  end
end
