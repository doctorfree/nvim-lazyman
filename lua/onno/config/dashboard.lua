local settings = require("configuration")
local dashboard = require("dashboard")
local Logo = require("onno.core.logo")
local header = Logo.time_of_day.generate()

if settings.enable_dashboard_header then
  header = Logo.headers.generate("neovim")
end

local config_entry =  {
  icon = "   ",
  icon_hl = "DashboardConfiguration",
  desc = "Configuration                                   ",
  desc_hl = "String",
  key = "c",
  key_hl = "DashboardConfiguration",
  action = "edit " .. vim.fn.stdpath("config") .. "/lua/configuration.lua",
}
local lazyman_entry = {}

if settings.enable_terminal then
  config_entry = {
    icon = "   ",
    icon_hl = "DashboardConfiguration",
    desc = "Configuration                                   ",
    desc_hl = "String",
    key = "c",
    key_hl = "DashboardConfiguration",
    action = "Lazyconf",
  }
  lazyman_entry = {
    icon = "   ",
    icon_hl = "DashboardLazy",
    desc = "Lazyman                                         ",
    desc_hl = "String",
    key = "L",
    key_hl = "DashboardLazy",
    action = "Lazyman",
  }
end

if vim.o.filetype == "lazy" then
  vim.cmd.close()
end

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimStarted",
  callback = function()
    local stats = require("lazy").stats()
    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
    dashboard.setup({
      theme = "doom",
      hide = {
        statusline = 0,
        tabline = 0,
        winbar = 0,
      },
      shortcut = {
        { desc = "󰚰 Update", group = "@property", action = "Lazy update", key = "u" },
      },
      config = {
        header = header,
        center = {
          {
            icon = "   ",
            icon_hl = "DashboardRecent",
            desc = "Recent Files                                    ",
            desc_hl = "String",
            key = "r",
            key_hl = "DashboardRecent",
            action = "Telescope oldfiles",
          },
          {
            icon = "   ",
            icon_hl = "DashboardRecent",
            desc = "File Browser                                    ",
            desc_hl = "String",
            key = "e",
            key_hl = "DashboardRecent",
            action = "Neotree",
          },
          {
            icon = "   ",
            icon_hl = "DashboardSession",
            desc = "Last Session                                    ",
            desc_hl = "String",
            key = "s",
            key_hl = "DashboardSession",
            action = "lua require('persistence').load({last = true})",
          },
          lazyman_entry,
          config_entry,
          {
            icon = "   ",
            icon_hl = "DashboardSession",
            desc = "Health                                          ",
            desc_hl = "String",
            key = "h",
            key_hl = "DashboardSession",
            action = "checkhealth",
          },
          {
            icon = "󰤄   ",
            icon_hl = "DashboardLazy",
            desc = "Lazy                                            ",
            desc_hl = "String",
            key = "l",
            key_hl = "DashboardLazy",
            action = "Lazy",
          },
          {
            icon = "   ",
            icon_hl = "DashboardServer",
            desc = "Mason                                           ",
            desc_hl = "String",
            key = "m",
            key_hl = "DashboardServer",
            action = "Mason",
          },
          {
            icon = "   ",
            icon_hl = "DashboardSession",
            desc = "Cheatsheet                                      ",
            desc_hl = "String",
            key = "C",
            key_hl = "DashboardSession",
            action = "Cheatsheet",
          },
          {
            icon = "   ",
            icon_hl = "DashboardQuit",
            desc = "Quit Neovim                                     ",
            desc_hl = "String",
            key = "q",
            key_hl = "DashboardQuit",
            action = "qa",
          },
        },
        footer = {
          "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms",
        }, --your footer
      },
    })
  end,
})
