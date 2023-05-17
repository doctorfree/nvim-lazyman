local lvim_shell = require("lvim-shell")

-- Ranger
_G.Ranger = function(dir)
    dir = dir or "."
    lvim_shell.float("ranger --choosefiles=/tmp/lvim-shell " .. dir, "l")
end
vim.cmd("command! -nargs=? -complete=dir Ranger :lua _G.Ranger(<f-args>)")
vim.keymap.set("n", "<C-c>r", function()
    vim.cmd("Ranger")
end, { noremap = true, silent = true, desc = "Ranger" })

-- Lazygit
_G.Lazygit = function(dir)
    dir = dir or "."
    lvim_shell.float("lazygit -w " .. dir, "l")
end
vim.cmd("command! -nargs=? -complete=dir Lazygit :lua _G.Lazygit(<f-args>)")
vim.keymap.set("n", "<C-c>g", function()
    vim.cmd("Lazygit")
end, { noremap = true, silent = true, desc = "Lazygit" })
