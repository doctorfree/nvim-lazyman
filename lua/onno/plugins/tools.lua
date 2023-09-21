local settings = require("configuration")

local session = {}
if settings.session_manager == "possession" then
  session = {
    "jedrzejboczar/possession.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    keys = {
      {
        "<leader>ss",
        function()
          vim.cmd("PossessionSave")
        end,
        desc = "Save Session",
      },
      {
        "<leader>sl",
        function()
          vim.cmd("PossessionLoad")
        end,
        desc = "Load Session",
      },
      {
        "<leader>sr",
        function()
          vim.cmd("PossessionRename")
        end,
        desc = "Rename Session",
      },
      {
        "<leader>sc",
        function()
          vim.cmd("PossessionClose")
        end,
        desc = "Close Session",
      },
      {
        "<leader>sd",
        function()
          vim.cmd("PossessionDelete")
        end,
        desc = "Delete Session",
      },
      {
        "<leader>sS",
        function()
          vim.cmd("PossessionShow")
        end,
        desc = "Show Session",
      },
      {
        "<leader>sL",
        function()
          vim.cmd("PossessionList")
        end,
        desc = "List Session",
      },
    },
    config = function()
      require("config.possession")
    end,
  }
elseif settings.session_manager == "persistence" then
  session = {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {
      -- directory where session files are saved
      dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"),
      options = { "buffers", "curdir", "tabpages", "winsize", "help", "blank", "terminal", "folds", "tabpages" },
      -- a function to call before saving the session
      pre_save = nil,
    },
    keys = {
      {
        "<leader>ss",
        function()
          require("persistence").load()
        end,
        desc = "Restore Session",
      },
      {
        "<leader>sl",
        function()
          require("persistence").load({ last = true })
        end,
        desc = "Restore Last Session",
      },
      {
        "<leader>sd",
        function()
          require("persistence").stop()
        end,
        desc = "Don't Save Current Session",
      },
    },
  }
end

local database = {}
if settings.enable_database then
  database = {
    { "kristijanhusak/vim-dadbod-ui" },
    { "kristijanhusak/vim-dadbod-completion" },
    {
      "tpope/vim-dadbod",
      dependencies = {
        "kristijanhusak/vim-dadbod-ui",
        "kristijanhusak/vim-dadbod-completion",
      },
      opts = {
        db_competion = function()
          require("cmp").setup.buffer { sources = { { name = "vim-dadbod-completion" } } }
        end,
      },
      config = function(_, opts)
        vim.g.db_ui_save_location = vim.fn.stdpath "config" .. require("plenary.path").path.sep .. "db_ui"

        vim.api.nvim_create_autocmd("FileType", {
          pattern = {
            "sql",
          },
          command = [[setlocal omnifunc=vim_dadbod_completion#omni]],
        })

        vim.api.nvim_create_autocmd("FileType", {
          pattern = {
            "sql",
            "mysql",
            "plsql",
          },
          callback = function()
            vim.schedule(opts.db_completion)
          end,
        })
      end,
      keys = {
        { "<leader>Dt", "<cmd>DBUIToggle<cr>", desc = "Toggle UI" },
        { "<leader>Df", "<cmd>DBUIFindBuffer<cr>", desc = "Find Buffer" },
        { "<leader>Dr", "<cmd>DBUIRenameBuffer<cr>", desc = "Rename Buffer" },
        { "<leader>Dq", "<cmd>DBUILastQueryInfo<cr>", desc = "Last Query Info" },
      },
    },
  }
end

local ranger_float = {}
if settings.enable_ranger_float then
  ranger_float = {
    "kevinhwang91/rnvimr",
    event = { "BufReadPost", "BufNewFile" },
    keys = { { "<leader>R", "<cmd>RnvimrToggle<cr>", desc = "Ranger file manager" } },
    init = function()
      vim.g.rnvimr_enable_picker = 1
      vim.g.rnvimr_border_attr = { fg = 3, bg = -1 }
      vim.g.rnvimr_shadow_winblend = 90
    end,
  }
end

local compile = {}
if settings.enable_compile then
  compile = {
    "loctvl842/compile-nvim",
    lazy = true,
    config = function()
      require("config.compile")
    end,
  }
end

local renamer = {}
if settings.enable_renamer then
  renamer = {
    "filipdutescu/renamer.nvim",
    lazy = true,
    branch = "master",
    config = function()
      require("config.renamer")
    end,
  }
end

local bbye = {}
if settings.enable_bbye then
  bbye = {
    "moll/vim-bbye",
    event = { "BufRead" },
    keys = { { "<leader>D", "<cmd>Bdelete!<cr>", desc = "Close Buffer" } },
  }
end

local startuptime = {}
if settings.enable_startuptime then
  -- measure startuptime
  startuptime = {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
    config = function()
      vim.g.startuptime_tries = 10
    end,
  }
end

return {
  ranger_float,

  compile,

  database,

  session,

  renamer,

  bbye,

  startuptime,

  -- library used by other plugins
  { "nvim-lua/plenary.nvim", lazy = true },

  -- makes some plugins dot-repeatable
  { "tpope/vim-repeat", event = "VeryLazy" },

  {
    "toppair/peek.nvim",
    priority = 10,
    build = "deno task --quiet build:fast",
    keys = {
      {
        "<leader>p",
        function()
          local peek = require("peek")
          if peek.is_open() then
            peek.close()
          else
            peek.open()
          end
        end,
        desc = "Peek (Markdown Preview)",
      },
    },
    opts = { theme = "dark" },
  },
  -- Easily switch virtual environment in python
  {
    "AckslD/swenv.nvim",
    config = function()
      require("swenv").setup({
        post_set_venv = function()
          vim.cmd([[LspRestart]])
        end,
      })
    end,
  },
}
