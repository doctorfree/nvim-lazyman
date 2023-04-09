local term_map = require("terminal.mappings")
local map = vim.keymap.set
local api = vim.api

require("terminal").setup()

map({ "n", "x" }, "<leader>ts", term_map.operator_send, { expr = true })
map("n", "<leader>to", term_map.toggle)
map("n", "<leader>tO", term_map.toggle({ open_cmd = "enew" }))
map("n", "<leader>tr", term_map.run)
map("n", "<leader>tR", term_map.run(nil, { layout = { open_cmd = "enew" } }))
map("n", "<leader>tk", term_map.kill)
map("n", "<leader>t]", term_map.cycle_next)
map("n", "<leader>t[", term_map.cycle_prev)
local ipython = require("terminal").terminal:new({
  layout = { open_cmd = "botright vertical new", border = "rounded" },
  cmd = { "ipython" },
  autoclose = true,
})
local htop = require("terminal").terminal:new({
  layout = { open_cmd = "float", border = "rounded" },
  cmd = { "htop" },
  autoclose = true,
})
local lazygit = require("terminal").terminal:new({
  layout = { open_cmd = "float", border = "rounded", height = 0.9, width = 0.9 },
  cmd = { "lazygit" },
  autoclose = true,
})
local lazyman = require("terminal").terminal:new({
  layout = { open_cmd = "float", border = "rounded", height = 0.9, width = 0.9 },
  cmd = { "lazyman" },
  autoclose = true,
})
local asciiville = require("terminal").terminal:new({
  layout = { open_cmd = "float", border = "rounded", height = 0.9, width = 0.9 },
  cmd = { "asciiville" },
  autoclose = true,
})
vim.env["GIT_EDITOR"] = "nvr --remote-tab-wait-silent +'set bufhidden=wipe'"

api.nvim_create_user_command("IPython", function()
  local bufnr = api.nvim_get_current_buf()
  if vim.bo[bufnr].filetype == "python" then
    map("x", "<leader>ts", function()
      api.nvim_feedkeys('"+y', "n", false)
      ipython:send("%paste")
    end, { buffer = bufnr })
    map("n", "<leader>t?", function()
      require("terminal").send(vim.v.count, vim.fn.expand("<cexpr>") .. "?")
    end, { buffer = bufnr })
  end
  ipython:toggle(nil, true)
end, {})

api.nvim_create_user_command("Lazygit", function(args)
  lazygit.cwd = args.args and vim.fn.expand(args.args)
  lazygit:toggle(nil, true)
end, { nargs = "?" })

api.nvim_create_user_command("Htop", function()
  htop:toggle(nil, true)
end, { nargs = "?" })

api.nvim_create_user_command("Lazyman", function()
  lazyman:toggle(nil, true)
end, { nargs = "?" })

api.nvim_create_user_command("Asciiville", function()
  asciiville:toggle(nil, true)
end, { nargs = "?" })
