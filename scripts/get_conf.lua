-- Invoke with 'nvim -l get_conf.lua conf_name'
-- Where 'conf_name' is one of the entryies in configuration.lua
--
-- For example, from a Bash script:
--
-- #!/bin/bash
-- export NVIM_APPNAME="nvim-Lazyman"
-- nvim -l ~/.config/nvim-Lazyman/scripts/get_conf.lua enable_winbar

local settings = require("configuration")
local config = vim.inspect(_G.arg[1])
local entry = string.gsub(config, '"', "")
print(settings[entry])
