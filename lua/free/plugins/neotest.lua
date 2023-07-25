local settings = require("configuration")
local neotest = {}

if settings.enable_neotest
then
  neotest = {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
      "marilari88/neotest-vitest",
      "nvim-neotest/neotest-go",
    },
    keys = {
      {
        "<leader>tut",
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        desc = "Run Test File"
      },
      {
        "<leader>tuT",
        function()
          require("neotest").run.run(vim.loop.cwd())
        end,
        desc = "Run All Test Files"
      },
      { "<leader>tul",
        function()
          require("neotest").run.run_last({ enter = true })
          require("neotest").output.open({ last_run = true, enter = true })
        end,
        desc = "Run Last Test"
      },
      {
        "<leader>tur",
        function(
          ) require("neotest").run.run()
        end,
        desc = "Run Nearest Test"
      },
      {
        "<leader>tus",
        function()
          require("neotest").summary.toggle()
        end,
        desc = "Toggle Test Summary"
      },
      {
        "<leader>tuo",
        function()
          require("neotest").output.open({ enter = true, auto_close = true })
        end,
        desc = "Show Test Output"
      },
      {
        "<leader>tuO",
        function()
          require("neotest").output_panel.toggle()
        end,
        desc = "Toggle Test Output Panel"
      },
      {
        "<leader>tuS",
        function()
          require("neotest").run.stop()
        end,
        desc = "Stop Tests"
      },
      {
        "<leader>tuL",
        function()
          require("neotest").run.run_last({ strategy = "dap" })
        end,
        desc = "Debug Last Test",
      },
      {
        "<leader>tuw",
        "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>",
        desc = "Run Watch Test",
      },
    },
    config = function()
      local neotest = require("neotest")
      local map_opts = { noremap = true, silent = true, nowait = true }
      local colors = require("free.utils.colors")

      -- get neotest namespace (api call creates or returns namespace)
      local neotest_ns = vim.api.nvim_create_namespace("neotest")
      vim.diagnostic.config({
        virtual_text = {
          format = function(diagnostic)
            local message =
                diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
          end,
        },
      }, neotest_ns)

      require("neotest").setup({
        quickfix = {
          open = false,
          enabled = false,
        },
        status = {
          enabled = true,
          signs = true, -- Sign after function signature
          virtual_text = false
        },
        icons = {
          child_indent = "│",
          child_prefix = "├",
          collapsed = "─",
          expanded = "╮",
          failed = "✘",
          final_child_indent = " ",
          final_child_prefix = "╰",
          non_collapsible = "─",
          passed = "✓",
          running = "",
          running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
          skipped = "↓",
          unknown = ""
        },
        floating = {
          border = "rounded",
          max_height = 0.9,
          max_width = 0.9,
          options = {}
        },
        summary = {
          open = "botright vsplit | vertical resize 60"
        },
        highlights = {
          adapter_name = "NeotestAdapterName",
          border = "NeotestBorder",
          dir = "NeotestDir",
          expand_marker = "NeotestExpandMarker",
          failed = "NeotestFailed",
          file = "NeotestFile",
          focused = "NeotestFocused",
          indent = "NeotestIndent",
          marked = "NeotestMarked",
          namespace = "NeotestNamespace",
          passed = "NeotestPassed",
          running = "NeotestRunning",
          select_win = "NeotestWinSelect",
          skipped = "NeotestSkipped",
          target = "NeotestTarget",
          test = "NeotestTest",
          unknown = "NeotestUnknown"
        },
        adapters = {
          require('neotest-vitest'),
          require('neotest-go'),
          require("neotest-jest")({
            jestCommand = "npm test --",
            jestConfigFile = "custom.jest.config.ts",
            env = { CI = true },
            cwd = function()
              return vim.fn.getcwd()
            end,
          })
        }
      })

      vim.api.nvim_set_hl(0, 'NeotestBorder', { fg = colors.fujiGray })
      vim.api.nvim_set_hl(0, 'NeotestIndent', { fg = colors.fujiGray })
      vim.api.nvim_set_hl(0, 'NeotestExpandMarker', { fg = colors.fujiGray })
      vim.api.nvim_set_hl(0, 'NeotestDir', { fg = colors.fujiGray })
      vim.api.nvim_set_hl(0, 'NeotestFile', { fg = colors.fujiGray })
      vim.api.nvim_set_hl(0, 'NeotestFailed', { fg = colors.samuraiRed })
      vim.api.nvim_set_hl(0, 'NeotestPassed', { fg = colors.springGreen })
      vim.api.nvim_set_hl(0, 'NeotestSkipped', { fg = colors.fujiGray })
      vim.api.nvim_set_hl(0, 'NeotestRunning', { fg = colors.carpYellow })
      vim.api.nvim_set_hl(0, 'NeotestNamespace', { fg = colors.crystalBlue })
      vim.api.nvim_set_hl(0, 'NeotestAdapterName', { fg = colors.oniViolet })
    end
  }
end

return {
  neotest
}
