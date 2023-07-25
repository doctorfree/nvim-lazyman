-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local Util = require("util")
local Info = require("lazy.core.util").info
local settings = require("configuration")
local lualine_enabled = false
if settings.enable_statusline then
  lualine_enabled = true
end
local winbar_enabled = true
if settings.enable_winbar == "none" then
  winbar_enabled = false
end

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-------------------- Better window navigation ------------------
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-l>", "<c-w>l", opts)
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-k>", "<c-w>k", opts)

-------------------- Navigate buffers --------------------------
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<A-S-l>", ":BufferLineMoveNext<CR>", opts)
keymap("n", "<A-S-h>", ":BufferLineMovePrev<CR>", opts)

-------------------- Press jk fast to enter --------------------
keymap("i", "jk", "<ESC>", opts)
keymap("i", "Jk", "<ESC>", opts)
keymap("i", "jK", "<ESC>", opts)
-- keymap("i", "JK", "<ESC>", opts)

-------------------- Stay in indent mode ------------------------
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "p", '"_dP', opts)

-------------------- Resize windows ----------------------------
keymap("n", "<A-C-j>", ":resize +1<CR>", opts)
keymap("n", "<A-C-k>", ":resize -1<CR>", opts)
keymap("n", "<A-C-h>", ":vertical resize +1<CR>", opts)
keymap("n", "<A-C-l>", ":vertical resize -1<CR>", opts)

-------------------- Move text up/ down ------------------------
-- Visual --
keymap("v", "<A-S-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-S-k>", ":m .-2<CR>==", opts)
-- Block --
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-S-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-S-k>", ":move '<-2<CR>gv-gv", opts)
-- Normal --
keymap("n", "<A-S-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-S-k>", ":m .-2<CR>==", opts)
-- Insert --
keymap("i", "<A-S-j>", "<ESC>:m .+1<CR>==gi", opts)
keymap("i", "<A-S-k>", "<ESC>:m .-2<CR>==gi", opts)

-------------------- No highlight ------------------------------
keymap("n", ";", ":noh<CR>", opts)

-------------------- Go to buffer quickly ----------------------
keymap("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", opts)
keymap("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", opts)
keymap("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", opts)

-------------------- split window ------------------------------
keymap("n", "<leader>\\", ":vsplit<CR>", opts)
keymap("n", "<leader>/", ":split<CR>", opts)

-------------------- Switch two windows ------------------------
keymap("n", "<A-o>", "<C-w>r", opts)

-------------------- Compile --------------------------------
keymap("n", "<c-m-n>", "<cmd>only | Compile<CR>", opts)

-------------------- Inspect --------------------------------
keymap("n", "<F2>", "<cmd>Inspect<CR>", opts)

-------------------- Fuzzy Search --------------------------------
vim.keymap.set("n", "<C-f>", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes"))
end, { desc = "[/] Fuzzily search in current buffer]" })

-- Plugin Management
map("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy Menu" })
map("n", "<leader>U", "<cmd>Lazy update<cr>", { desc = "Lazy Update" })
-- Options
map("n", "<leader>o", "<cmd>options<cr>", { desc = "Options" })

-- Lazyman help
map("n", "<leader>hl", "<cmd>help Lazyman-lazyman<cr>", { desc = "Lazyman Help" })
map("n", "<leader>hn", "<cmd>help Nvims-nvims<cr>", { desc = "Nvims Help" })
map("n", "<leader>hk", "<cmd>help Lazyman-Keymaps-lazymankeys<cr>", { desc = "Lazyman Keymaps" })

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
  end
  if vim.fn.executable("asciiville") == 1 then
    map("n", "<leader>av", "<cmd>Asciiville<cr>", { desc = "Asciiville" })
  end
else
  map("n", "<leader>gg", function()
    Util.float_term({ "lazygit" }, { cwd = Util.get_root() })
  end, { desc = "Lazygit (root dir)" })
  map("n", "<leader>gG", function()
    Util.float_term({ "lazygit" })
  end, { desc = "Lazygit (cwd)" })
end

if settings.file_tree == "neo-tree" then
  map("n", "<leader>T", "<cmd>Neotree toggle<CR>")
elseif settings.file_tree == "nvim-tree" then
  map("n", "<leader>T", "<cmd>NvimTreeFindFileToggle<CR>")
end

if settings.enable_games then
  map("n", "<leader>Gb", "<cmd>BlackJackNewGame<CR>", { desc = "Blackjack" })
  map("n", "<leader>Gh", "<cmd>:Hack<CR>", { desc = "Hack" })
  map("n", "<leader>Gf", "<cmd>:HackFollow<CR>", { desc = "Hack current buffer" })
  map("n", "<leader>Gs", "<cmd>Sudoku<CR>", { desc = "Sudoku" })
  map("n", "<leader>Gv", "<cmd>VimBeGood<CR>", { desc = "Vim-Be-Good" })
  map("n", "<leader>Gr", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it Rain" })
  map("n", "<leader>Gg", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Game of Life" })
end

-- better up/down
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
  map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
end
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
map(
  "n",
  "<leader>ur",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / clear hlsearch / diff update" }
)

map({ "n", "x" }, "gw", "*N", { desc = "Search word under cursor" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- Add undo break-points
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- Signature help
map({ "n" }, "<C-k>", function()
  require("lsp_signature").toggle_float_win()
end, { silent = true, noremap = true, desc = "toggle signature" })

map({ "n" }, "<leader>k", function()
  vim.lsp.buf.signature_help()
end, { silent = true, noremap = true, desc = "toggle signature" })

-- save file
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- new file
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

map("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
map("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })

if not Util.has("trouble.nvim") then
  map("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
  map("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })
end

-- stylua: ignore start

-- toggle options
if settings.enable_winbar == "barbecue" then
  map("n", "<leader>ub", function() require("barbecue.ui").toggle() end, { desc = "Toggle barbecue winbar" })
end
map("n", "<leader>us", function() Util.toggle("spell") end, { desc = "Toggle Spelling" })
map("n", "<leader>uw", function() Util.toggle("wrap") end, { desc = "Toggle Word Wrap" })
map("n", "<leader>ul", function()
  Util.toggle("relativenumber", true)
  Util.toggle("number")
end, { desc = "Toggle Line Numbers" })
local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
map("n", "<leader>uc", function() Util.toggle("conceallevel", false, { 0, conceallevel }) end,
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

map("n", "<leader>uT", function()
  vim.opt.showtabline = vim.api.nvim_get_option('showtabline') == 0 and 2 or 0
  Info("Set showtabline to " .. vim.api.nvim_get_option('showtabline'), { title = "Option" })
end, { desc = "Toggle tabline" })

map("n", "<leader>uW", function()
  if winbar_enabled then
    require('lualine').hide({
      place = {'winbar'},
      unhide = false,
    })
    winbar_enabled = false
    Info("Disable winbar", { title = "Option" })
  else
    require('lualine').hide({
      place = {'winbar'},
      unhide = true,
    })
    winbar_enabled = true
    Info("Enable winbar", { title = "Option" })
  end
end, { desc = "Toggle winbar" })

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

map("n", "<leader>uL", function()
  if lualine_enabled then
    require('lualine').hide({
      place = {'statusline', 'tabline', 'winbar'},
      unhide = false,
    })
    vim.opt.showtabline = 0
    lualine_enabled = false
    Info("Disable statusline, tabline, and winbar", { title = "Option" })
  else
    require('lualine').hide({
      place = {'statusline', 'tabline', 'winbar'},
      unhide = true,
    })
    vim.opt.showtabline = 2
    lualine_enabled = true
    Info("Enable statusline, tabline, and winbar", { title = "Option" })
  end
  vim.opt.showtabline = vim.api.nvim_get_option('showtabline') == 0 and 2 or 0
end, { desc = "Toggle statusline, tabline, and winbar" })

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

-- quit
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

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
