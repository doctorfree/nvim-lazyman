local dashboard = require("dashboard")
local settings = require("configuration")

local session_restore = 'lua require("persistence").load()'
if settings.session_manager == "possession" then
  session_restore = 'lua require("possession").list()'
end

local config_path = vim.fn.stdpath("config") .. "/lua/configuration.lua"

local config_entry = {
  icon = "   ",
  icon_hl = "DashboardHeader",
  desc = "Configuration",
  desc_hl = "DashboardCenter",
  key = "c",
  key_hl = "DashboardShortcut",
  action = "edit " .. config_path,
}

if settings.enable_terminal then
  config_entry = {
    icon = "   ",
    icon_hl = "DashboardHeader",
    desc = "Configuration",
    desc_hl = "DashboardCenter",
    key = "c",
    key_hl = "DashboardShortcut",
    action = "Lazyconf",
  }
end

local current_day = os.date("%A")
local days_of_week = {
  Monday = [[
███╗   ███╗ ██████╗ ███╗   ██╗██████╗  █████╗ ██╗   ██╗
████╗ ████║██╔═══██╗████╗  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝
██╔████╔██║██║   ██║██╔██╗ ██║██║  ██║███████║ ╚████╔╝⠀
██║╚██╔╝██║██║   ██║██║╚██╗██║██║  ██║██╔══██║  ╚██╔╝⠀⠀
██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██████╔╝██║  ██║   ██║⠀⠀⠀
╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝   ╚═╝⠀⠀⠀
  ]],
  Tuesday = [[
████████╗██╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗
╚══██╔══╝██║   ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝
   ██║   ██║   ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝⠀
   ██║   ██║   ██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝⠀⠀
   ██║   ╚██████╔╝███████╗███████║██████╔╝██║  ██║   ██║⠀⠀⠀
   ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝⠀⠀⠀
  ]],
  Wednesday = [[
██╗    ██╗███████╗██████╗ ███╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗
██║    ██║██╔════╝██╔══██╗████╗  ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝
██║ █╗ ██║█████╗  ██║  ██║██╔██╗ ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝⠀
██║███╗██║██╔══╝  ██║  ██║██║╚██╗██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝⠀⠀
╚███╔███╔╝███████╗██████╔╝██║ ╚████║███████╗███████║██████╔╝██║  ██║   ██║⠀⠀⠀
 ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═══╝╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝⠀⠀⠀
  ]],
  Thursday = [[
████████╗██╗  ██╗██╗   ██╗██████╗ ███████╗██████╗  █████╗ ██╗   ██╗
╚══██╔══╝██║  ██║██║   ██║██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝
   ██║   ███████║██║   ██║██████╔╝███████╗██║  ██║███████║ ╚████╔╝⠀
   ██║   ██╔══██║██║   ██║██╔══██╗╚════██║██║  ██║██╔══██║  ╚██╔╝⠀⠀
   ██║   ██║  ██║╚██████╔╝██║  ██║███████║██████╔╝██║  ██║   ██║⠀⠀⠀
   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝⠀⠀⠀
  ]],
  Friday = [[
███████╗██████╗ ██╗██████╗  █████╗ ██╗   ██╗
██╔════╝██╔══██╗██║██╔══██╗██╔══██╗╚██╗ ██╔╝
█████╗  ██████╔╝██║██║  ██║███████║ ╚████╔╝⠀
██╔══╝  ██╔══██╗██║██║  ██║██╔══██║  ╚██╔╝⠀⠀
██║     ██║  ██║██║██████╔╝██║  ██║   ██║⠀⠀⠀
╚═╝     ╚═╝  ╚═╝╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝⠀⠀⠀
  ]],
  Saturday = [[
███████╗ █████╗ ████████╗██╗   ██╗██████╗ ██████╗  █████╗ ██╗   ██╗
██╔════╝██╔══██╗╚══██╔══╝██║   ██║██╔══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝
███████╗███████║   ██║   ██║   ██║██████╔╝██║  ██║███████║ ╚████╔╝⠀
╚════██║██╔══██║   ██║   ██║   ██║██╔══██╗██║  ██║██╔══██║  ╚██╔╝⠀⠀
███████║██║  ██║   ██║   ╚██████╔╝██║  ██║██████╔╝██║  ██║   ██║⠀⠀⠀
╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝⠀⠀⠀
  ]],
  Sunday = [[
███████╗██╗   ██╗███╗   ██╗██████╗  █████╗ ██╗   ██╗
██╔════╝██║   ██║████╗  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝
███████╗██║   ██║██╔██╗ ██║██║  ██║███████║ ╚████╔╝⠀
╚════██║██║   ██║██║╚██╗██║██║  ██║██╔══██║  ╚██╔╝⠀⠀
███████║╚██████╔╝██║ ╚████║██████╔╝██║  ██║   ██║⠀⠀⠀
╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝   ╚═╝⠀⠀⠀
  ]],
}

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
      shortcut = {
        { desc = " Update", group = "@property", action = "Lazy update", key = "u" },
      },
      config = {
        --header = vim.split("\n" .. days_of_week[current_day] .. "\n" .. os.date("%Y-%m-%d %H:%M:%S" .. "\n"), "\n"),
        header = vim.split(days_of_week[current_day] .. "\n" .. os.date("%Y-%m-%d %H:%M:%S" .. "\n"), "\n"),
        center = {
          {
            icon = "   ",
            icon_hl = "DashboardHeader",
            desc = "Recent Files                                    ",
            desc_hl = "DashboardCenter",
            key = "r",
            key_hl = "DashboardShortcut",
            action = "Telescope oldfiles",
          },
          {
            icon = "   ",
            icon_hl = "DashboardHeader",
            desc = "Restore Session",
            desc_hl = "DashboardCenter",
            key = "s",
            key_hl = "DashboardShortcut",
            action = session_restore,
          },
          config_entry,
          {
            icon = "   ",
            icon_hl = "DashboardHeader",
            desc = "Cheatsheet",
            desc_hl = "DashboardCenter",
            key = "h",
            key_hl = "DashboardShortcut",
            action = "Cheatsheet",
          },
          {
            icon = "   ",
            icon_hl = "DashboardHeader",
            desc = "Lazy",
            desc_hl = "DashboardCenter",
            key = "l",
            key_hl = "DashboardShortcut",
            action = "Lazy",
          },
          {
            icon = "   ",
            icon_hl = "DashboardHeader",
            desc = "Mason",
            desc_hl = "DashboardCenter",
            key = "m",
            key_hl = "DashboardShortcut",
            action = "Mason",
          },
          {
            icon = "   ",
            icon_hl = "DashboardHeader",
            desc = "Quit Neovim",
            desc_hl = "DashboardCenter",
            key = "q",
            key_hl = "DashboardShortcut",
            action = "qa",
          },
        },
        footer = {
          "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms",
        },
      },
      hide = {
        statusline = true,
        tabline = true,
      },
    })
  end,
})

vim.api.nvim_create_autocmd("Filetype", {
  pattern = "dashboard",
  group = vim.api.nvim_create_augroup("Dashboard_au", { clear = true }),
  callback = function()
    vim.cmd([[
      setlocal buftype=nofile
      setlocal nonumber norelativenumber nocursorline noruler
      nnoremap <buffer> <F2> :h news.txt<CR>
    ]])
  end,
})

local db_group = vim.api.nvim_create_augroup("Dashboard_au", { clear = true })
vim.api.nvim_create_autocmd("Filetype", {
  pattern = "dashboard",
  group = db_group,
  callback = function()
    require("lualine").hide({
      place = { "statusline", "tabline", "winbar" },
      unhide = false,
    })
  end,
})

vim.api.nvim_create_autocmd("BufUnload", {
  desc = "enable status and tabline after dashboard",
  group = db_group,
  callback = function()
    require("lualine").hide({
      place = { "statusline", "tabline", "winbar" },
      unhide = true,
    })
  end,
})
