local settings = require("configuration")
local Util = require("util")
local map = Util.map
local keymap = vim.keymap.set
local silent = { silent = true }
local Info = require("lazy.core.util").info

-- Plugin Management
map("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy Menu" })
map("n", "<leader>U", "<cmd>Lazy update<cr>", { desc = "Lazy Update" })
-- Options
map("n", "<leader>o", "<cmd>options<cr>", { desc = "Options" })

-- Lazyman help
map("n", "<leader>hl", "<cmd>help Lazyman<cr>", { desc = "Lazyman Help" })
map("n", "<leader>hn", "<cmd>help Nvims<cr>", { desc = "Nvims Help" })
map("n", "<leader>hk", "<cmd>help Lazyman-Keymaps<cr>", { desc = "Lazyman Keymaps" })

-- Lazyman Cheatsheet
if settings.enable_cheatsheet then
  map("n", "<leader>C", "<cmd>Cheatsheet<cr>", { desc = "Lazyman Cheatsheet" })
  map("n", "<leader>hc", "<cmd>Cheatsheet<cr>", { desc = "Lazyman Cheatsheet" })
end

-- Terminal commands
if settings.enable_terminal then
  if vim.fn.executable("htop") == 1 then
    map("n", "<leader>H", "<cmd>Htop<cr>", { desc = "Htop command" })
  end
  if vim.fn.executable("lazygit") == 1 then
    map("n", "<leader>gg", "<cmd>Lazygit<cr>", { desc = "Lazygit command" })
  end
  if vim.fn.executable("lazyman") == 1 then
    map("n", "<leader>lm", "<cmd>Lazyman<cr>", { desc = "Lazyman menu" })
    map("n", "<leader>lc", "<cmd>Lazyconf<cr>", { desc = "Lazyman configuration" })
    map("n", "<leader>lp", "<cmd>Lazyplug<cr>", { desc = "Lazyman plugins" })
  end
  if vim.fn.executable("asciiville") == 1 then
    map("n", "<leader>av", "<cmd>Asciiville<cr>", { desc = "Asciiville" })
  end
  if vim.fn.executable("mpplus") == 1 then
    map("n", "<leader>am", "<cmd>MusicPlayerPlus<cr>", { desc = "MusicPlayerPlus" })
    map("n", "<leader>aM", "<cmd>MusicPlayerMenu<cr>", { desc = "MusicPlayerPlus Menu" })
  end
else
  map("n", "<leader>gg", function()
    Util.float_term({ "lazygit" }, { cwd = Util.get_root() })
  end, { desc = "Lazygit (root dir)" })
  map("n", "<leader>gG", function()
    Util.float_term({ "lazygit" })
  end, { desc = "Lazygit (cwd)" })
end

-- Better window movement
keymap("n", "<C-h>", "<C-w>h", silent)
keymap("n", "<C-j>", "<C-w>j", silent)
keymap("n", "<C-k>", "<C-w>k", silent)
keymap("n", "<C-l>", "<C-w>l", silent)

-- H to move to the first non-blank character of the line
keymap("n", "H", "^", silent)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", silent)
keymap("x", "J", ":move '>+1<CR>gv-gv", silent)

-- Keep visual mode indenting
keymap("v", "<", "<gv", silent)
keymap("v", ">", ">gv", silent)

-- Case change in visual mode
keymap("v", "`", "u", silent)
keymap("v", "<A-`>", "U", silent)

-- Save file by CTRL-S
keymap("n", "<C-s>", ":w<CR>", silent)
keymap("i", "<C-s>", "<ESC> :w<CR>", silent)

-- Telescope
keymap("n", "<C-p>", "<CMD>lua require('ecovim.plugins.telescope').project_files()<CR>")
keymap("n", "<S-p>", "<CMD>lua require('ecovim.plugins.telescope.pickers.multi-rg')()<CR>")

-- Remove highlights
keymap("n", "<CR>", ":noh<CR><CR>", silent)

-- Find word/file across project
keymap("n", "<Leader>pf",
  "<CMD>lua require('ecovim.plugins.telescope').project_files({ default_text = vim.fn.expand('<cword>'), initial_mode = 'normal' })<CR>")
keymap("n", "<Leader>pw", "<CMD>lua require('telescope.builtin').grep_string({ initial_mode = 'normal' })<CR>")

-- Buffers
keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", silent)
keymap("n", "gn", ":bn<CR>", silent)
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", silent)
keymap("n", "gp", ":bp<CR>", silent)
keymap("n", "<S-q>", ":lua require('mini.bufremove').delete(0, false)<CR>", silent)

-- Don't yank on delete char
keymap("n", "x", '"_x', silent)
keymap("n", "X", '"_X', silent)
keymap("v", "x", '"_x', silent)
keymap("v", "X", '"_X', silent)

-- Don't yank on visual paste
keymap("v", "p", '"_dP', silent)

-- Avoid issues because of remapping <c-a> and <c-x> below
vim.cmd([[
  nnoremap <Plug>SpeedDatingFallbackUp <c-a>
  nnoremap <Plug>SpeedDatingFallbackDown <c-x>
]])

-- Quickfix
keymap("n", ",,", ":cp<CR>", silent)
keymap("n", ",.", ":cn<CR>", silent)

-- Toggle quicklist
keymap("n", "<leader>q", "<cmd>lua require('ecovim.utils').toggle_quicklist()<CR>", silent)

-- Manually invoke speeddating in case switch.vim didn't work
keymap("n", "<C-a>", ":if !switch#Switch() <bar> call speeddating#increment(v:count1) <bar> endif<CR>", silent)
keymap("n", "<C-x>", ":if !switch#Switch({'reverse': 1}) <bar> call speeddating#increment(-v:count1) <bar> endif<CR>",
  silent)

-- Open links under cursor in browser with gx
if vim.fn.has('macunix') == 1 then
  keymap("n", "gx", "<cmd>silent execute '!open ' . shellescape('<cWORD>')<CR>", silent)
else
  keymap("n", "gx", "<cmd>silent execute '!xdg-open ' . shellescape('<cWORD>')<CR>", silent)
end

-- LSP
-- keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", silent) -- Replaced with Glance plugin
-- keymap("n", "gr", "<cmd>lua vim.lsp.buf.references({ includeDeclaration = false })<CR>", silent) -- Replaced with Glance plugin
keymap("n", "<C-Space>", "<cmd>lua vim.lsp.buf.code_action()<CR>", silent)
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", silent)
keymap("v", "<leader>ca", "<cmd>'<,'>lua vim.lsp.buf.code_action()<CR>", silent)
keymap("n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<CR>", silent)
keymap("n", "<leader>cf", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", silent)
keymap("v", "<leader>cf", function()
  local start_row, _ = table.unpack(vim.api.nvim_buf_get_mark(0, "<"))
  local end_row, _ = table.unpack(vim.api.nvim_buf_get_mark(0, ">"))

	vim.lsp.buf.format({
		range = {
			["start"] = { start_row, 0 },
			["end"] = { end_row, 0 },
		},
		async = true,
	})
end, silent)
keymap("n", "K", function()
	local winid = require("ufo").peekFoldedLinesUnderCursor()
	if not winid then
		vim.lsp.buf.hover()
	end
end)

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Toggle keymaps
if settings.enable_winbar == "barbecue" then
  map("n", "<leader>ub", function() require("barbecue.ui").toggle() end, { desc = "Toggle barbecue winbar" })
end
map("n", "<leader>uf", require("config.lsp.format").toggle, { desc = "Toggle format on Save" })
map("n", "<leader>us", function() Util.toggle("spell") end, { desc = "Toggle Spelling" })
map("n", "<leader>uw", function() Util.toggle("wrap") end, { desc = "Toggle Word Wrap" })
map("n", "<leader>ul", function()
  Util.toggle("relativenumber", true)
  Util.toggle("number")
end, { desc = "Toggle Line Numbers" })
local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
map("n", "<leader>uC", function() Util.toggle("conceallevel", false, { 0, conceallevel }) end,
  { desc = "Toggle Conceal" })

map("n", "<leader>ug", function()
  if vim.wo.signcolumn == "no" then
    vim.wo.signcolumn = "yes"
  elseif vim.wo.signcolumn == "yes" then
    vim.wo.signcolumn = "auto"
  else
    vim.wo.signcolumn = "no"
  end
  Info("Set signcolumn to " .. vim.wo.signcolumn, { title = "Option" })
end, { desc = "Toggle signcolumn" })

map("n", "<leader>uL", function()
  vim.opt.showtabline = vim.api.nvim_get_option('showtabline') == 0 and 2 or 0
  Info("Set showtabline to " .. vim.api.nvim_get_option('showtabline'), { title = "Option" })
end, { desc = "Toggle tabline" })

map("n", "<leader>uS", function()
  local laststatus = vim.api.nvim_get_option('laststatus')
  if laststatus == 0 then
    vim.opt.laststatus = 2
  elseif laststatus == 2 then
    vim.opt.laststatus = 3
  elseif laststatus == 3 then
    vim.opt.laststatus = 0
  end
  Info("Set laststatus to " .. vim.api.nvim_get_option('laststatus'), { title = "Option" })
end, { desc = "Toggle statusline" })

map("n", "<leader>um", function()
  local mouse = vim.api.nvim_get_option('mouse')
  if mouse == "" then
    vim.opt.mouse = "nv"
    Info("Mouse Enabled: mouse = " .. vim.api.nvim_get_option('mouse'), { title = "Option" })
  else
    vim.opt.mouse = ""
    Info("Mouse Disabled", { title = "Option" })
  end
end, { desc = "Toggle mouse" })

map("n", "<leader>uN", function()
  local number = vim.wo.number                 -- local to window
  local relativenumber = vim.wo.relativenumber -- local to window
  if not number and not relativenumber then
    vim.wo.number = true
    Info("Set number to true", { title = "Option" })
  elseif number and not relativenumber then
    vim.wo.relativenumber = true
    Info("Set relativenumber to true", { title = "Option" })
  elseif number and relativenumber then
    vim.wo.number = false
    Info("Set number to false", { title = "Option" })
  else -- not number and relativenumber
    vim.wo.relativenumber = false
    Info("Set relativenumber to false", { title = "Option" })
  end
end, { desc = "Toggle number" })
map("n", "<leader>x", require("utils.functions").toggle_colorcolumn, { desc = "Toggle colorcolumn" })

-- highlights under cursor
if vim.fn.has("nvim-0.9.0") == 1 then
  map("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })
end

-- floating terminal
map("n", "<leader>ft", function() Util.float_term(nil, { cwd = Util.get_root() }) end, { desc = "Terminal (root dir)" })
map("n", "<leader>fT", function() Util.float_term() end, { desc = "Terminal (cwd)" })
map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

-- windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other window" })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete window" })
map("n", "<leader>w-", "<C-W>s", { desc = "Split window below" })
map("n", "<leader>w|", "<C-W>v", { desc = "Split window right" })
map("n", "<leader>-", "<C-W>s", { desc = "Split window below" })
map("n", "<leader>|", "<C-W>v", { desc = "Split window right" })

-- tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- open url
map("n", "gh", "<cmd>OpenRepo<CR>", { desc = "Open URL" })
