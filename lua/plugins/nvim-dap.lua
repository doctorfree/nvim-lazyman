return {
  {
    'mfussenegger/nvim-dap',
    dependencies ={
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'jayp0521/mason-nvim-dap.nvim',
    },

    config = function ()
      vim.cmd([[
      nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
      nnoremap <silent> <F6> :lua require'dapui'.toggle()<CR>
      nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
      nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
      nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
      nnoremap <silent> <leader>B :lua require'dap'.toggle_breakpoint()<CR>
      nnoremap <silent> <M-k> <Cmd>lua require("dapui").eval()<CR>
      ]])

      require("mason-nvim-dap").setup({
        ensure_installed = {
          "bash",
          "chrome",
          "delve",
          "python",
          "node2",
        },
        automatic_setup = true,
      })

      require("dapui").setup({
        icons = {
          expanded = "⯆",
          collapsed = "⯈",
          circular = "↺"
        },
        mappings = {
          -- Use a table to apply multiple mappings
          expand = {"<CR>", "<2-LeftMouse>"},
          open = "o",
          remove = "d",
          edit = "e",
        },
        layouts = {
          {
            elements = {
              -- You can change the order of elements in the sidebar
              "scopes",
              --"watches"
            },
            size = 50,
            position = "left" -- Can be "left" or "right"
          },
          {
            elements = {
              "repl"
            },
            size = 10,
            position = "bottom" -- Can be "bottom" or "top"
          },
        },
      })

      require("nvim-dap-virtual-text").setup()

      local dap = require('dap')
      dap.adapters.netcoredbg = {
        type = 'executable',
        command = '/usr/bin/netcoredbg',
        args = {'--interpreter=vscode'}
      }

      dap.configurations.cs = {
        {
          type = "netcoredbg",
          name = "launch - netcoredbg",
          request = "launch",
          program = function()
            local cwd = vim.fn.getcwd()
            local d = vim.fn.fnamemodify(cwd, ":t")
            return vim.fn.input('Path to dll: ', cwd .. '/bin/Debug/netcoreapp3.1/' .. d .. '.dll', 'file')
          end,
        },
        {
          type = "netcoredbg",
          name = "attach - netcoredbg",
          request = "attach",
          processId = function()
            local pgrep = vim.fn.system("pgrep -f 'dotnet run'")
            vim.fn.setenv('NETCOREDBG_ATTACH_PID', pid)
            return tonumber(pgrep)
          end,
        },
      }

      for _, language in ipairs({ "typescript", "javascript" }) do
        require("dap").configurations[language] = {
          {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            rootPath = '${workspaceFolder}',
            cwd = '${workspaceFolder}',
            sourceMaps = true,
            skipFiles = { '<node_internals>/**' },
            protocol = 'inspector',
            console = 'integratedTerminal',
          },
          {
            type = "pwa-node",
            request = "attach",
            name = "Attach",
            processId = require'dap.utils'.pick_process,
            rootPath = '${workspaceFolder}',
            cwd = "${workspaceFolder}",
            sourceMaps = true,
            skipFiles = { '<node_internals>/**' },
            protocol = 'inspector',
            console = 'integratedTerminal',
          },
          {
            type = "pwa-node",
            request = "launch",
            name = "Debug Jest Tests",
            -- trace = true, -- include debugger info
            runtimeExecutable = "node",
            runtimeArgs = {
              "./node_modules/jest/bin/jest.js",
              "--runInBand",
            },
            rootPath = "${workspaceFolder}",
            cwd = "${workspaceFolder}",
            console = "integratedTerminal",
            internalConsoleOptions = "neverOpen",
          }
        }
      end
      require("config.dap.dap")
    end
  }
}
