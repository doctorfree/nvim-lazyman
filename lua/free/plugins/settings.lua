---@param name "autocmds" | "globals" | "options" | "keymaps"
local function load(name)
  local Util = require("lazy.core.util")
  Util.try(function()
    require(name)
  end, {
    msg = "Failed loading " .. name,
    on_error = function(msg)
      local modpath = require("lazy.core.cache").find(name)
      if modpath then
        Util.error(msg)
      end
    end,
  })
end

require("free.utils.utils").lazy_notify()

-- load options here, before lazy init while sourcing plugin modules
-- this is needed to make sure options will be correctly applied
-- after installing missing plugins

load("free.options")
load("free.globals")
load("free.autocmds")

-- keymaps can wait to load
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    load("free.keymaps")
  end,
})

return {}
