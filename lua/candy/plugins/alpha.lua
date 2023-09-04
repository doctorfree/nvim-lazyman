local present, alpha = pcall(require, "alpha")
if not present then
  return
end

local settings = require("configuration")
local configuration_lua = vim.fn.stdpath("config") .. "/lua/configuration.lua"
local dashboard = require("alpha.themes.dashboard")
local icons = require("candy.utils.icons")
local if_nil = vim.F.if_nil
local fn = vim.fn
local config_dir = fn.stdpath("config")
HatchDuck = true

-- ╭──────────────────────────────────────────────────────────╮
-- │ Header                                                   │
-- ╰──────────────────────────────────────────────────────────╯

local header = {
  " _______  _______  _        ______                    _________ _______ ",
  "(  ____ \\(  ___  )( (    /|(  __  \\ |\\     /||\\     /|\\__   __/(       )",
  "| (    \\/| (   ) ||  \\  ( || (  \\  )( \\   / )| )   ( |   ) (   | () () |",
  "| |      | (___) ||   \\ | || |   ) | \\ (_) / | |   | |   | |   | || || |",
  "| |      |  ___  || (\\ \\) || |   | |  \\   /  ( (   ) )   | |   | |(_)| |",
  "| |      | (   ) || | \\   || |   ) |   ) (    \\ \\_/ /    | |   | |   | |",
  "| (____/\\| )   ( || )  \\  || (__/  )   | |     \\   /  ___) (___| )   ( |",
  "(_______/|/     \\||/    )_)(______/    \\_/      \\_/   \\_______/|/     \\|",
}

dashboard.section.header.type = "text"
dashboard.section.header.val = header
dashboard.section.header.opts = {
  position = "center",
  hl = "CandyvimHeader",
}

-- ╭──────────────────────────────────────────────────────────╮
-- │ Heading Info                                             │
-- ╰──────────────────────────────────────────────────────────╯

local thingy = io.popen('echo "$(LANG=en_us_88591; date +%a) $(date +%d) $(LANG=en_us_88591; date +%b)" | tr -d "\n"')
if thingy == nil then
  return
end
local date = thingy:read("*a")
thingy:close()

local datetime = os.date(" %H:%M")

local hi_top_section = {
  type = "text",
  val = "┌────────────   Today is " .. date .. " ────────────┐",
  opts = {
    position = "center",
    hl = "CandyvimHeaderInfo",
  },
}

local hi_middle_section = {
  type = "text",
  val = "│                                                │",
  opts = {
    position = "center",
    hl = "CandyvimHeaderInfo",
  },
}

local hi_bottom_section = {
  type = "text",
  val = "└───══───══───══───  "
    .. datetime
    .. "  ───══───══───══────┘",
  opts = {
    position = "center",
    hl = "CandyvimHeaderInfo",
  },
}

-- ╭──────────────────────────────────────────────────────────╮
-- │ Buttons                                                  │
-- ╰──────────────────────────────────────────────────────────╯
-- Copied from Alpha.nvim source code

local leader = "COMMA"

--- @param sc string
--- @param txt string
--- @param keybind string optional
--- @param keybind_opts table optional
local function button(sc, txt, keybind, keybind_opts)
  local sc_ = sc:gsub("%s", ""):gsub(leader, "<leader>")

  local opts = {
    position = "center",
    shortcut = sc,
    cursor = 5,
    width = 50,
    align_shortcut = "right",
    hl_shortcut = "CandyvimPrimary",
  }
  if keybind then
    keybind_opts = if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
    opts.keymap = { "n", sc_, keybind, keybind_opts }
  end

  local function on_press()
    -- local key = vim.api.nvim_replace_termcodes(keybind .. "<Ignore>", true, false, true)
    local key = vim.api.nvim_replace_termcodes(sc_ .. "<Ignore>", true, false, true)
    vim.api.nvim_feedkeys(key, "t", false)
  end

  return {
    type = "button",
    val = txt,
    on_press = on_press,
    opts = opts,
  }
end

-- Neovim Configuration
local settings_btn = button("c", "   Lazyman Configuration", ":e " .. configuration_lua .. "<CR>", {})
local lazyman_btn = button("l", "   Lazyman Help", ":h Lazyman<CR>", {})
if settings.enable_terminal then
  settings_btn = button("c", "   Lazyman Configuration", ":Lazyconf<CR>", {})
  lazyman_btn = button("l", "   Lazyman Main Menu", ":Lazyman<CR>", {})
end


dashboard.section.buttons.val = {
  -- ╭──────────────────────────────────────────────────────────╮
  -- │ Hatch a pretty fast duck and a mellow cat                │
  -- ╰──────────────────────────────────────────────────────────╯
  button("d", icons.squirrel .. " " .. "Toggle Duck and Cat", "<cmd>lua if HatchDuck then require('duck').hatch('🦆', 7) require('duck').hatch('🐈', 2) HatchDuck = false else require('duck').cook() require('duck').cook() HatchDuck = true end<CR>", {}),
  button("h", icons.hook .. " " .. "Hack", "<cmd>Hack<CR>", {}),
  button("f", icons.fileNoBg .. " " .. "Find File", "<cmd>lua require('candy.plugins.telescope').project_files()<CR>", {}),
  button("w", icons.word .. " " .. "Find Word", "<cmd>lua require('candy.plugins.telescope.pickers.multi-rg')()<CR>", {}),
  button("r", icons.fileRecent .. " " .. "Recents", "<cmd>Telescope oldfiles hidden=true<CR>", {}),
  button("s", icons.timer .. " " .. "Load Current Dir Session", "<cmd>SessionManager load_current_dir_session<CR>", {}),
  button("p", icons.package .. " " .. "Manage Plugins (Lazy)", "<cmd>Lazy<CR>", {}),
  button("m", icons.package .. " " .. "Manage Packages (Mason)", "<cmd>Mason<CR>", {}),
  settings_btn,
  lazyman_btn,
  button("q", icons.exit .. " " .. "Exit", "<cmd>exit<CR>", {}),
}

-- ╭──────────────────────────────────────────────────────────╮
-- │ Footer                                                   │
-- ╰──────────────────────────────────────────────────────────╯

local function file_exists(file)
  local f = io.open(file, "rb")
  if f then
    f:close()
  end
  return f ~= nil
end

local function line_from(file)
  if not file_exists(file) then
    return {}
  end
  local lines = {}
  for line in io.lines(file) do
    lines[#lines + 1] = line
  end
  return lines
end

local function footer()
  local plugins = require("lazy").stats().count
  local v = vim.version()
  local candyvim_version = line_from(config_dir .. "/.candyvim.version")
  return string.format(" v%d.%d.%d  󰂖 %d   %s ", v.major, v.minor, v.patch, plugins, candyvim_version[1])
end

dashboard.section.footer.val = {
  footer(),
}
dashboard.section.footer.opts = {
  position = "center",
  hl = "CandyvimFooter",
}

local section = {
  header = dashboard.section.header,
  hi_top_section = hi_top_section,
  hi_middle_section = hi_middle_section,
  hi_bottom_section = hi_bottom_section,
  buttons = dashboard.section.buttons,
  footer = dashboard.section.footer,
}

-- ╭──────────────────────────────────────────────────────────╮
-- │ Setup                                                    │
-- ╰──────────────────────────────────────────────────────────╯

local opts = {
  layout = {
    { type = "padding", val = 3 },
    section.header,
    { type = "padding", val = 1 },
    section.hi_top_section,
    section.hi_middle_section,
    section.hi_bottom_section,
    { type = "padding", val = 2 },
    section.buttons,
    { type = "padding", val = 3 },
    section.footer,
  },
  opts = {
    margin = 5,
  },
}

alpha.setup(opts)

-- ╭──────────────────────────────────────────────────────────╮
-- │ Hide tabline and statusline on startup screen            │
-- ╰──────────────────────────────────────────────────────────╯
vim.api.nvim_create_augroup("alpha_tabline", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "alpha_tabline",
  pattern = "alpha",
  command = "set showtabline=0 laststatus=0 noruler",
})

vim.api.nvim_create_autocmd("FileType", {
  group = "alpha_tabline",
  pattern = "alpha",
  callback = function()
    vim.api.nvim_create_autocmd("BufUnload", {
      group = "alpha_tabline",
      buffer = 0,
      command = "set showtabline=2 ruler laststatus=3",
    })
  end,
})
