------------------------------------------------
--                                            --
--    This is a main configuration file for    --
--                    Ecovim                  --
--      Change variables which you need to    --
--                                            --
------------------------------------------------

local settings = require("configuration")
local icons = require("icons").misc

Ecovim = {
  colorscheme = settings.theme,
  ui = {
    float = {
      border = "rounded",
    },
  },
  plugins = {
    ai = {
      chatgpt = {
        enabled = settings.enable_chatgpt,
      },
      codeium = {
        enabled = settings.enable_codeium,
      },
      copilot = {
        enabled = settings.enable_copilot,
      },
      tabnine = {
        enabled = settings.enable_tabnine,
      },
    },
    completion = {
      select_first_on_enter = false,
    },
    dressing = {
      enabled = settings.enable_dressing, -- sync after change
    },
    -- Completely replaces the UI for messages, cmdline and the popupmenu
    experimental_noice = {
      enabled = settings.enable_noice,
    },
    -- Enables moving by subwords and skips significant punctuation with w, e, b motions
    jump_by_subwords = {
      enabled = false,
    },
    rooter = {
      -- Removing package.json from list in Monorepo Frontend Project can be helpful
      -- By that your live_grep will work related to whole project, not specific package
      patterns = { ".git", "package.json", "_darcs", ".bzr", ".svn", "Makefile" }, -- Default
    },
    toggleterm = {
      enabled = settings.enable_toggleterm,
    },
    -- <leader>z
    zen = {
      alacritty_enabled = settings.enable_alacritty,
      kitty_enabled = settings.enable_kitty,
      wezterm_enabled = settings.enable_wezterm,
      enabled = settings.enable_zenmode, -- sync after change
    },
  },
  -- Please keep it
  icons = icons,
  -- Statusline configuration
  statusline = {
    path_enabled = false,
    path = "relative", -- absolute/relative
  },
  lsp = {
    virtual_text = true, -- show virtual text (errors, warnings, info) inline messages
  },
}
