local settings = require("configuration")
local table_contains = require("utils.functions").table_contains

local screensaver = {}
local use_drop = true
local save_theme = settings.enable_screensaver
local timeout = settings.screensaver_timeout
local drop_styles = { "xmas", "stars", "leaves", "snow", "spring", "summer" }
local zone_styles = { "treadmill", "matrix", "epilepsy", "vanish" }
local saver = "Drop"
local savers = { "Drop", "Zone" }
if save_theme ~= "none" then
  math.randomseed(os.time())
  math.random()
  if save_theme == "drop" then
    save_theme = (drop_styles)[math.random(1, 6)]
  elseif save_theme == "zone" then
    save_theme = (zone_styles)[math.random(1, 5)]
    use_drop = false
  elseif save_theme == "random" then
    saver = (savers)[math.random(1, 2)]
    if saver == "Drop" then
      save_theme = (drop_styles)[math.random(1, 6)]
    else
      save_theme = (zone_styles)[math.random(1, 5)]
      use_drop = false
    end
  elseif table_contains(zone_styles, save_theme) then
    use_drop = false
  end
  if use_drop then
    screensaver = {
      "folke/drop.nvim",
      event = "VimEnter",
      config = function()
        require("drop").setup({
          theme = save_theme,
          screensaver = 1000 * 60 * timeout,
          filetypes = {},
        })
      end,
    }
  else
    screensaver = {
      "tamton-aquib/zone.nvim",
      event = "VimEnter",
      config = function()
        require("zone").setup({
          style = save_theme,
          after = 60 * timeout,
          offset = 3, -- The column offset for the fake float to open.

          exclude_filetypes = {
            "TelescopePrompt",
            "NvimTree",
            "lir",
            "neo-tree",
            "help",
          },
          exclude_buftypes = { "terminal" },

          treadmill = {
            direction = "left", -- a lil buggy for `right`
            tick_time = 30,
            headache = false,
          },

          matrix = {
            tick_time = 120,
            headache = false,
          },

          epilepsy = {
            stage = "aura",
            tick_time = 100,
            headache = false,
          },

          vanish = {
            tick_time = 50,
            headache = false,
          },
        })
      end,
    }
  end
end

return { screensaver }
