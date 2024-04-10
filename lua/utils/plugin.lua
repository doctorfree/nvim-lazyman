---@class beastvim.utils.plugin
local M = {}

---Check if a plugin is installed
---@param plugin string The name of the plugin. Example `noice.nvim`
function M.has(plugin)
  return require("lazy.core.config").plugins[plugin] ~= nil
end

---Get options of a plugin
---@param name string The name of the plugin. Example `noice.nvim`
function M.opts(name)
  local plugin = require("lazy.core.config").plugins[name]
  if not plugin then
    return {}
  end
  local Plugin = require("lazy.core.plugin")
  return Plugin.values(plugin, "opts", false)
end

return M
