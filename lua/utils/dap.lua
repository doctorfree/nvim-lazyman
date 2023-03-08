local dap = require('dap')
local jdtls_dap = require('jdtls.dap')

local M = {}

M.breakpoint = false
M.debug = false

function M.toggle_breakpoint()
    if not M.breakpoint then
        if vim.bo.filetype == 'java' then
            jdtls_dap.setup_dap_main_class_configs()
        end

        M.breakpoint = true
    end

    dap.toggle_breakpoint()
end

function M.toggle_debug()
    if not M.debug then
        M.debug = true
        dap.continue()
    else
        M.debug = false
        dap.disconnect()

        require('nvim-dap-virtual-text').refresh()
    end
end

return M
