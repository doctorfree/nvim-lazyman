local map = vim.keymap.set
local api = vim.api

require("terminal").setup()

local term_map = require("terminal.mappings")
map({ "n", "x" }, "<leader>ts", term_map.operator_send, { expr = true, desc = "Terminal Send" })
map("n", "<leader>to", term_map.toggle, { desc = "Terminal Toggle" })
map("n", "<leader>tO", term_map.toggle({ open_cmd = "enew" }), { desc = "New Terminal Toggle" })
map("n", "<leader>tr", term_map.run, { desc = "Terminal Run" })
map("n", "<leader>tR", term_map.run(nil, { layout = { open_cmd = "enew" } }), { desc = "New Terminal Run" })
map("n", "<leader>tk", term_map.kill, { desc = "Terminal Kill" })
map("n", "<leader>t]", term_map.cycle_next, { desc = "Terminal Next" })
map("n", "<leader>t[", term_map.cycle_prev, { desc = "Terminal Prev" })
map("n", "<leader>tl", term_map.move({ open_cmd = "belowright vnew" }), { desc = "Move Below Right" })
map("n", "<leader>tL", term_map.move({ open_cmd = "botright vnew" }), { desc = "Move Bottom Right" })
map("n", "<leader>th", term_map.move({ open_cmd = "belowright new" }), { desc = "Move Below Right New" })
map("n", "<leader>tH", term_map.move({ open_cmd = "botright new" }), { desc = "Move Bottom Right New" })
map("n", "<leader>tf", term_map.move({ open_cmd = "float" }), { desc = "Move Float" })

if vim.fn.executable("ipython") == 1 then
  local ipython = require("terminal").terminal:new({
    layout = { open_cmd = "botright vertical new", border = "rounded" },
    cmd = { "ipython" },
    autoclose = true,
  })
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
end

if vim.fn.executable("lazygit") == 1 then
  local lazygit = require("terminal").terminal:new({
    layout = { open_cmd = "float", border = "rounded", height = 0.9, width = 0.9 },
    cmd = { "lazygit" },
    autoclose = true,
  })
  api.nvim_create_user_command("Lazygit", function(args)
    lazygit.cwd = args.args and vim.fn.expand(args.args)
    lazygit:toggle(nil, true)
  end, { nargs = "?" })
end

if vim.fn.executable("htop") == 1 then
  local htop = require("terminal").terminal:new({
    layout = { open_cmd = "float", border = "rounded" },
    cmd = { "htop" },
    autoclose = true,
  })
  api.nvim_create_user_command("Htop", function()
    htop:toggle(nil, true)
  end, { nargs = "?" })
end

if vim.fn.executable("lazyman") == 1 then
  local lazyman = require("terminal").terminal:new({
    layout = { open_cmd = "float", border = "rounded", height = 0.95, width = 0.95 },
    cmd = { "lazyman" },
    autoclose = true,
  })
  api.nvim_create_user_command("Lazyman", function()
    lazyman:toggle(nil, true)
  end, { nargs = "?" })

  local lazyconf = require("terminal").terminal:new({
    layout = { open_cmd = "float", border = "rounded", height = 0.95, width = 0.95 },
    cmd = { "lazyman", "-F" },
    autoclose = true,
  })
  api.nvim_create_user_command("Lazyconf", function()
    lazyconf:toggle(nil, true)
  end, { nargs = "?" })

  local lazyplug = require("terminal").terminal:new({
    layout = { open_cmd = "float", border = "rounded", height = 0.95, width = 0.95 },
    cmd = { "lazyman", "-F", "plugins" },
    autoclose = true,
  })
  api.nvim_create_user_command("Lazyplug", function()
    lazyplug:toggle(nil, true)
  end, { nargs = "?" })
end

if vim.fn.executable("asciiville") == 1 then
  local asciiville = require("terminal").terminal:new({
    layout = { open_cmd = "float", border = "rounded", height = 0.99, width = 0.99 },
    cmd = { "asciiville", "-i", "-G" },
    autoclose = true,
  })
  api.nvim_create_user_command("Asciiville", function()
    asciiville:toggle(nil, true)
  end, { nargs = "?" })
end

if vim.fn.executable("mpplus") == 1 then
  local mpplus = require("terminal").terminal:new({
    layout = { open_cmd = "float", border = "rounded", height = 0.99, width = 0.99 },
    cmd = { "mpplus", "-i" },
    autoclose = true,
  })
  api.nvim_create_user_command("MusicPlayerMenu", function()
    mpplus:toggle(nil, true)
  end, { nargs = "?" })

  local mpcplus = require("terminal").terminal:new({
    layout = { open_cmd = "float", border = "rounded", height = 0.99, width = 0.99 },
    cmd = { "mpplus" },
    autoclose = true,
  })
  api.nvim_create_user_command("MusicPlayerPlus", function()
    mpcplus:toggle(nil, true)
  end, { nargs = "?" })
end

if vim.fn.executable("nvr") == 1 then
  vim.env["GIT_EDITOR"] = "nvr --remote-tab-wait-silent +'set bufhidden=wipe'"
end
