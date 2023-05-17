-- Invoke with 'nvim -l get_conf.lua conf_name'
-- Where 'conf_name' is one of the entries in configuration.lua
--
-- For example, from a Bash script:
--
-- #!/bin/bash
-- export NVIM_APPNAME="nvim-Lazyman"
-- nvim -l ~/.config/nvim-Lazyman/scripts/get_conf.lua enable_winbar

local settings = require("configuration")
local config = vim.inspect(_G.arg[1])
local arg = string.gsub(config, '"', "")
local entry = settings[arg]
if type (entry) == 'string' then
  print(entry)
elseif type (entry) == 'table' then
  table.sort(entry)
  for _,val in ipairs(entry) do
    print(val)
  end
  print("\n")
else
  print(tostring(entry))
end
