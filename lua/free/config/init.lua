---@type LazyManConfig
local cfg = {}

cfg.lazy_version = ">=9.1.0"

---@class LazyManConfig
local defaults = {
  -- colorscheme can be a string like `catppuccin` or a function that will load the colorscheme
  ---@type string|fun()
  colorscheme = function()
    require("tokyonight").load()
  end,
  -- load the default settings
  defaults = {
    autocmds = true,
    globals = true,
    keymaps = true,
    options = true,
  },
  -- icons used by other plugins
  icons = require("icons")
}

---@type LazyManConfig
local options

---@param opts? LazyManConfig
function cfg.setup(opts)
  options = vim.tbl_deep_extend("force", defaults, opts or {})
  if not cfg.has() then
    require("lazy.core.util").error(
      "**Lazyman** needs **lazy.nvim** version "
        .. cfg.lazy_version
        .. " to work properly.\n"
        .. "Please upgrade **lazy.nvim**",
      { title = "LazyMan" }
    )
    error("Exiting")
  end

  if vim.fn.argc(-1) == 0 then
    -- keymaps can wait to load
    vim.api.nvim_create_autocmd("User", {
      group = vim.api.nvim_create_augroup("LazyMan", { clear = true }),
      pattern = "VeryLazy",
      callback = function()
        cfg.load("free.keymaps")
      end,
    })
  else
    -- load them now so they affect the opened buffers
    cfg.load("free.keymaps")
  end

  require("lazy.core.util").try(function()
    if type(cfg.colorscheme) == "function" then
      cfg.colorscheme()
    else
      vim.cmd.colorscheme(cfg.colorscheme)
    end
  end, {
    msg = "Could not load your colorscheme",
    on_error = function(msg)
      require("lazy.core.util").error(msg)
      vim.cmd.colorscheme("habamax")
    end,
  })
end

---@param range? string
function cfg.has(range)
  local Semver = require("lazy.manage.semver")
  return Semver.range(range or cfg.lazy_version):matches(require("lazy.core.config").version or "0.0.0")
end

---@param name "autocmds" | "options" | "keymaps" | "globals"
function cfg.load(name)
  local Util = require("lazy.core.util")
  local function _load(mod)
    Util.try(function()
      require(mod)
    end, {
      msg = "Failed loading " .. mod,
      on_error = function(msg)
        local modpath = require("lazy.core.cache").find(mod)
        if modpath then
          Util.error(msg)
        end
      end,
    })
  end
--  if cfg.defaults[name] then
--    _load(name)
--  end
  _load(name)
  if vim.bo.filetype == "lazy" then
    -- HACK: LazyMan may have overwritten options of the Lazy ui, so reset this here
    vim.cmd([[do VimResized]])
  end
end

cfg.did_init = false
function cfg.init()
  if not cfg.did_init then
    cfg.did_init = true
    -- delay notifications till vim.notify was replaced or after 500ms
    require("utils.utils").lazy_notify()

    -- load options here, before lazy init while sourcing plugin modules
    -- this is needed to make sure options will be correctly applied
    -- after installing missing plugins
    cfg.load("free.options")
    cfg.load("free.globals")
    cfg.load("free.autocmds")
  end
end

setmetatable(cfg, {
  __index = function(_, key)
    if options == nil then
      return vim.deepcopy(defaults)[key]
    end
    ---@cast options LazyManConfig
    return options[key]
  end,
})

return cfg
