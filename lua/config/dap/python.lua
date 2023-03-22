local cfg = {}

function cfg.setup(_)
  require("dap-python").setup("python3", {})
end

return cfg
