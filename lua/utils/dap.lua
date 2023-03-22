local dap = require("dap")
local jdtls_dap = require("jdtls.dap")

local cfg = {}

cfg.breakpoint = false
cfg.debug = false

function cfg.toggle_breakpoint()
  if not cfg.breakpoint then
    if vim.bo.filetype == "java" then
      jdtls_dap.setup_dap_main_class_configs()
    end

    cfg.breakpoint = true
  end

  dap.toggle_breakpoint()
end

function cfg.toggle_debug()
  if not cfg.debug then
    cfg.debug = true
    dap.continue()
  else
    cfg.debug = false
    dap.disconnect()

    require("nvim-dap-virtual-text").refresh()
  end
end

return cfg
