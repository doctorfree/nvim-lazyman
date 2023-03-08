local settings = require("configuration")
local map = vim.keymap.set

local treereg = {}
if settings.enable_neotree then
  map("n", "<leader>T", ":Neotree toggle<CR>")
  treereg = {
    name = "Files",
    b = { "<cmd>Telescope file_browser grouped=true<cr>", "File browser" },
    e = { "<cmd>Neotree<cr>", "Open Neotree" },
    f = { "<cmd>" .. require("utils.functions").project_files() .. "<cr>", "Find File" },
    p = { "<cmd>Neotree reveal toggle<cr>", "Toggle Neotree" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    s = { "<cmd>w<cr>", "Save Buffer" },
    z = { "<cmd>Telescope zoxide list<CR>", "Zoxide" },
  }
else
  map("n", "<leader>T", ":NvimTreeFindFileToggle<CR>")
  treereg = {
    name = "Files",
    b = { "<cmd>Telescope file_browser grouped=true<cr>", "File browser" },
    e = { "<cmd>NvimTreeOpen<cr>", "Open NvimTree" },
    f = { "<cmd>" .. require("utils.functions").project_files() .. "<cr>", "Find File" },
    p = { "<cmd>NvimTreeFindFileToggle<cr>", "Toggle NvimTree" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    s = { "<cmd>w<cr>", "Save Buffer" },
    z = { "<cmd>Telescope zoxide list<CR>", "Zoxide" },
  }
end

  -- Hide the tabline, statusline, winbar with '<leader>s'
vim.api.nvim_set_keymap("n", "<leader>s", "", {
  callback = function()
    require("lualine").hide({
      place = { "statusline", "tabline", "winbar" },
      unhide = false
    })
  end,
})
-- Unhide the tabline, statusline, winbar with '<leader>S'
vim.api.nvim_set_keymap("n", "<leader>S", "", {
  callback = function()
    require("lualine").hide({
      place = { "statusline", "tabline", "winbar" },
      unhide = true
    })
  end,
})

-- Remap for dealing with visual line wraps
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- paste over currently selected text without yanking it
map("v", "p", '"_dp')
map("v", "P", '"_dP')

-- switch buffer
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })

-- Cancel search highlighting with ESC
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear hlsearch and ESC" })

-- move over a closing element in insert mode
map("i", "<C-l>", function()
  return require("utils.functions").escapePair()
end)

-- search like you are used to
-- map("n", "<C-f>", "/", { desc = "Search buffer" })

-- save like your are used to
-- map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- toggles
map("n", "<leader>th", function()
  vim.o.list = vim.o.list == false and true or false
end, { desc = "Toggle hidden chars" })
map("n", "<leader>tl", function()
  vim.o.signcolumn = vim.o.signcolumn == "yes" and "no" or "yes"
end, { desc = "Toggle sgincolumn" })
map("n", "<leader>tv", function()
  vim.o.virtualedit = vim.o.virtualedit == "all" and "block" or "all"
end, { desc = "Toggle virtualedit" })
map("n", "<leader>ts", function()
  vim.o.spell = vim.o.spell == false and true or false
end, { desc = "Toggle spell" })
map("n", "<leader>tw", function()
  vim.o.wrap = vim.o.wrap == false and true or false
end, { desc = "Toggle wrap" })
map("n", "<leader>tc", function()
  vim.o.cursorline = vim.o.cursorline == false and true or false
end, { desc = "Toggle cursorline" })
map(
  "n",
  "<leader>to",
  "<cmd>lua require('utils.functions').toggle_colorcolumn()<cr>",
  { desc = "Toggle colorcolumn" }
)
map(
  "n",
  "<leader>tt",
  "<cmd>lua require('utils.utils').toggle_virtual_text()<cr>",
  { desc = "Toggle Virtualtext" }
)
map("n", "<leader>ts", "<cmd>SymbolsOutline<cr>", { desc = "Toggle SymbolsOutline" })

-- Neovim :Terminal
--
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal emulator with escape" })
map("t", "<C-w>", "<Esc><C-w>")
--tmap <C-d> <Esc>:q<CR>

-- Custom Mappings (lua custom mappings are within individual lua config files)
--
-- Core
-- map("n", [[\]], "<leader>t")
map("n", "<leader>r", ":so ~/.config/nvim/init.vim<CR>")
map("x", "<leader>a", "gaip*")
map("n", "<leader>a", "gaip*")
-- map("n", "<leader>h", ":RainbowParentheses!!<CR>")
map("n", "<leader>j", ":set filetype=journal<CR>")
-- nmap <leader>k :ColorToggle<CR>
-- map("n", "<leader>l", ":Limelight!!<CR>")
-- map("x", "<leader>l", ":Limelight!!<CR>")
map("n", "<silent>", "<leader><leader> :noh<CR>")
map("n", "<silent>", "<F12> :set invlist<CR>")
map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")
map("n", "<leader>$s", "<C-w>s<C-w>j:terminal<CR>:set nonumber<CR><S-a>")
map("n", "<leader>$v", "<C-w>v<C-w>l:terminal<CR>:set number<CR><S-a>")

-- Telescope mappings
-- nnoremap <leader>ff <cmd>Telescope find_files<cr>
-- nnoremap <leader>fg <cmd>Telescope live_grep<cr>
-- nnoremap <leader>fb <cmd>Telescope buffers<cr>
-- nnoremap <leader>fh <cmd>Telescope help_tags<cr>
-- nnoremap <leader>fc <cmd>Telescope colorscheme<cr>
-- nnoremap <leader>f/ <cmd>Telescope current_buffer_fuzzy_find<cr>
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
-- map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
map("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>")
map("n", "<leader>f/", "<cmd>Telescope current_buffer_fuzzy_find<cr>")

local wk = require("which-key")
local default_options = { silent = true }

-- register non leader based mappings
wk.register({
  sa = "Add surrounding",
  sd = "Delete surrounding",
  sh = "Highlight surrounding",
  sn = "Surround update n lines",
  sr = "Replace surrounding",
  sF = "Find left surrounding",
  sf = "Replace right surrounding",
  ss = { "<cmd>lua MiniJump2d.start(MiniJump2d.builtin_opts.single_character)<cr>", "Jump to character" },
  st = { "<cmd>lua require('tsht').nodes()<cr>", "TS hint textobject" },
})

-- Register leader based mappings
wk.register({
  ["<tab>"] = { "<cmd>e#<cr>", "Prev buffer" },
  b = {
    name = "Buffers",
    b = {
      "<cmd>Telescope buffers<cr>",
      "Find buffer",
    },
    D = {
      "<cmd>%bd|e#|bd#<cr>",
      "Close all but the current buffer",
    },
    d = { "<cmd>Bdelete<cr>", "Close buffer" },
  },
  f = treereg,
  P = {
    name = "Lazy Plugins",
    c = { "<cmd>Lazy check<cr>", "Lazy check" },
    C = { "<cmd>Lazy clean<cr>", "Lazy clean" },
    i = { "<cmd>Lazy install<cr>", "Lazy install" },
    l = { "<cmd>Lazy<cr>", "Lazy menu" },
    s = { "<cmd>Lazy sync<cr>", "Lazy sync" },
    u = { "<cmd>Lazy update<cr>", "Lazy update" },
  },
  F = {
    name = "Quickfix",
    j = { "<cmd>cnext<cr>", "Next Quickfix Item" },
    k = { "<cmd>cprevious<cr>", "Previous Quickfix Item" },
    q = { "<cmd>lua require('utils.functions').toggle_qf()<cr>", "Toggle quickfix list" },
    t = { "<cmd>TodoQuickFix<cr>", "Show TODOs" },
  },
  t = { name = "Toggles" },
  -- hydra heads
  s = { "Search" },
  w = { "Windows" },
  z = { "Spelling" },
}, { prefix = "<leader>", mode = "n", default_options })
