local settings = require("configuration")
local twilight = {}
local zenmode = {}
local kitty = false
if settings.enable_kitty then
  kitty = true
end
local alacritty = false
if settings.enable_alacritty then
  alacritty = true
end
local wezterm = false
if settings.enable_wezterm then
  wezterm = true
end
if settings.enable_zenmode then
  twilight = {
    "folke/twilight.nvim",
    cmd = { "Twilight", "TwilightEnable", "TwilightDisable" }
  }
  zenmode = {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      window = {
        backdrop = 1,
        width = function() return math.min(120, vim.o.columns * 0.75) end,
        height = 0.9,
        options = {
          number = false,
          relativenumber = false,
          foldcolumn = "0",
          list = false,
          showbreak = "NONE",
          signcolumn = "no",
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
          cmdheight = 1,
          laststatus = 0,
        },
        twilight = { enabled = true },
        gitsigns = { enabled = false },
        tmux = { enabled = false },
        kitty = {
          enabled = kitty,
          font = "+4",
        },
        alacritty = {
          enabled = alacritty,
          font = "14",
        },
        wezterm = {
          enabled = wezterm,
          font = "+4",
        },
      },
      on_open = function()
        vim.diagnostic.config(require("config.lsp.diagnostics")["off"])
        vim.g.indent_blankline_enabled = false
      end,
      on_close = function()
        vim.diagnostic.config(require("config.lsp.diagnostics")["off"])
        vim.g.indent_blankline_enabled = true
      end,
    }
  }

  vim.keymap.set("n", "<leader>z", function()
    require("zen-mode").toggle({})
  end, { desc = "Toggle zen mode" })
end

return {
  twilight,
  zenmode
}
