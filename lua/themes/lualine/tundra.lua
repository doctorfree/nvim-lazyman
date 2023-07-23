local tundra = {}

-- Fetch the correct stylesheet using the defined global variable.
local cp = require("nvim-tundra.palette." .. vim.g.tundra_biome)

tundra.normal = {
  a = { fg = cp.gray._400, bg = cp.gray._800, gui = "bold" },
  b = { fg = cp.gray._500, bg = cp.transparent, gui = "bold" },
  c = { fg = cp.gray._300, bg = cp.transparent },
}

tundra.insert = {
  a = { fg = cp.gray._900, bg = cp.green._600, gui = "bold" },
  b = { fg = cp.green._600, bg = cp.transparent, gui = "bold" },
}

tundra.command = {
  a = { fg = cp.gray._900, bg = cp.opal._500, gui = "bold" },
  b = { fg = cp.opal._500, bg = cp.transparent, gui = "bold" },
}

tundra.visual = {
  a = { fg = cp.gray._900, bg = cp.orange._500, gui = "bold" },
  b = { fg = cp.orange._500, bg = cp.transparent, gui = "bold" },
}

tundra.replace = {
  a = { fg = cp.gray._900, bg = cp.sand._500, gui = "bold" },
  b = { fg = cp.sand._500, bg = cp.transparent, gui = "bold" },
}

return tundra
