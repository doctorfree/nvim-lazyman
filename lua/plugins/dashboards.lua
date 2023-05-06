local settings = require("configuration")
local dashboard_type = {}
local alpha_disabled = { "goolord/alpha-nvim", enabled = false }
local mini_disabled = { "echasnovski/mini.starter", enabled = false }
local startup_disabled = { "startup-nvim/startup.nvim", enabled = false }
local dashboard_disabled = { "glepnir/dashboard-nvim", enabled = false }

if settings.enable_alpha then
  alpha_disabled = {}
  dashboard_type = {
    "goolord/alpha-nvim",
    event = "VimEnter",
    keys = { { "<leader>ad", "<cmd>Alpha<CR>", "Alpha Dashboard" } },
    config = function()
      require("config.alpha.alpha")
    end
  }
elseif settings.enable_dashboard then
  dashboard_disabled = {}
  dashboard_type = {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    keys = { { "<leader>0", "<cmd>Dashboard<CR>", desc = "Dashboard" } },
    config = function()
      require("config.dashboard")
    end,
  }
elseif settings.enable_startup then
  startup_disabled = {}
  dashboard_type = {
    "startup-nvim/startup.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    event = "VimEnter",
    keys = { { "<leader>S", "<cmd>Startup display<CR>", "Startup Dashboard" } },
    config = function()
      vim.g.startup_disable_on_startup = false
      local startup_config = "config.startup." .. settings.startup_theme
      require("startup").setup(require(startup_config))
    end
  }
elseif settings.enable_mini_starter then
  mini_disabled = {}
  dashboard_type = {
    "echasnovski/mini.starter",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = "VimEnter",
    opts = function()
      local logo = table.concat({
        " _                                            ",
        "| |                                           ",
        "| |  __,   __         _  _  _    __,   _  _   ",
        "|/  /  |  / / _|   | / |/ |/ |  /  |  / |/ |  ",
        "|__/\\_/|_/ /_/  \\_/|/  |  |  |_/\\_/|_/  |  |_/",
        "            /|    /|                          ",
        "            \\|    \\|                          ",
      }, "\n")
      local pad = string.rep(" ", 22)
      local new_section = function(name, action, section)
        return { name = name, action = action, section = pad .. section }
      end

      local starter = require("mini.starter")
      --stylua: ignore
      local config = {
        evaluate_single = true,
        header = logo,
        items = {
          new_section("Find file",    "Telescope find_files", "Telescope"),
          new_section("Recent files", "Telescope oldfiles",   "Telescope"),
          new_section("Grep text",    "Telescope live_grep",  "Telescope"),
          new_section("init.lua",     "e $MYVIMRC",           "Config"),
          new_section("Lazy",         "Lazy",                 "Config"),
          new_section("New file",     "ene | startinsert",    "Built-in"),
          new_section("Quit",         "qa",                   "Built-in"),
          new_section("Session restore", [[lua require("persistence").load()]], "Session"),
        },
        content_hooks = {
          starter.gen_hook.adding_bullet(pad .. "░ ", false),
          starter.gen_hook.aligning("center", "center"),
        },
      }
      return config
    end,
    config = function(_, config)
      -- close Lazy and re-open when starter is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "MiniStarterOpened",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      local starter = require("mini.starter")
      starter.setup(config)

      vim.api.nvim_create_autocmd("User", {
        pattern = "LazymanStarted",
        callback = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          local pad_footer = string.rep(" ", 8)
          starter.config.footer = pad_footer .. "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
          pcall(starter.refresh)
        end,
      })
    end,
  }
end

return {
  dashboard_type,
  alpha_disabled,
  dashboard_disabled,
  mini_disabled,
  startup_disabled
}
