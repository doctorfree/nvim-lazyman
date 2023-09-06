local autocmd = vim.api.nvim_create_autocmd

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyman_" .. name, { clear = true })
end

-- Check if we need to reload the file when it changed
autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = augroup("checktime"),
  command = "checktime",
})

-- Auto insert mode for Terminal
autocmd({ "WinEnter", "BufWinEnter", "TermOpen" }, {
  callback = function(args)
    if vim.startswith(vim.api.nvim_buf_get_name(args.buf), "term://") then
      vim.opt_local.wrap = true
      vim.opt_local.spell = false
      vim.cmd("startinsert")
    end
  end,
})

autocmd({ "TermOpen" }, {
  pattern = { "*" },
  callback = function()
    vim.opt_local["number"] = false
    vim.opt_local["signcolumn"] = "no"
    vim.opt_local["foldcolumn"] = "0"
  end,
})

-- resize splits if window got resized
autocmd({ "VimResized" }, {
  group = augroup("resize_splits"),
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- go to last loc when opening a buffer
autocmd("BufReadPost", {
  group = augroup("last_loc"),
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "lightgreen" })
  end,
})

-- Highlight on yank
autocmd("TextYankPost",
  { callback = function() vim.highlight.on_yank({ higroup = 'IncSearch', timeout = 100 }) end })
-- Disable diagnostics in node_modules (0 is current buffer only)
autocmd({ "BufRead", "BufNewFile" }, { pattern = "*/node_modules/*", command = "lua vim.diagnostic.disable(0)" })
-- Enable spell checking for certain file types
autocmd({ "BufRead", "BufNewFile" }, { pattern = { "*.txt", "*.md", "*.tex" },
  command = "setlocal spell" })
-- Show `` in specific files
autocmd({ "BufRead", "BufNewFile" }, { pattern = { "*.txt", "*.md", "*.json" },
  command = "setlocal conceallevel=0" })

-- Open the URL of the plugin spec or 'user/repo' path under the cursor
vim.api.nvim_create_user_command("OpenRepo", function(_)
  local ghpath = vim.api.nvim_eval("shellescape(expand('<cfile>'))")
  local formatpath = ghpath:sub(2, #ghpath - 1)
  local repourl = "https://www.github.com/" .. formatpath
  if formatpath:sub(1, 5) == "http:" or formatpath:sub(1, 6) == "https:" then
    repourl = formatpath
  end
  if vim.fn.has("mac") == 1 then
    vim.fn.system({ "open", repourl })
  else
    if vim.fn.executable("gio") then
      vim.fn.system({ "gio", "open", repourl })
    else
      vim.fn.system({ "xdg-open", repourl })
    end
  end
end, {
  desc = "Open URL",
  force = true,
})

-- Attach specific keybindings in which-key for specific filetypes
local present, _ = pcall(require, "which-key")
if not present then return end
local _, pwk = pcall(require, "ecovim.plugins.which-key")

autocmd("BufEnter", { pattern = "*.md",
  callback = function() pwk.attach_markdown(0) end })
autocmd("BufEnter", { pattern = { "*.ts", "*.tsx" },
  callback = function() pwk.attach_typescript(0) end })
autocmd("BufEnter", { pattern = { "package.json" },
  callback = function() pwk.attach_npm(0) end })
autocmd("FileType",
  { pattern = "*",
    callback = function()
      if Ecovim.plugins.zen.enabled and vim.bo.filetype ~= "alpha" then
        pwk.attach_zen(0)
      end
    end
  })
autocmd("BufEnter", { pattern = { "*test.js", "*test.ts", "*test.tsx" },
  callback = function() pwk.attach_jest(0) end })
autocmd("FileType", { pattern = "spectre_panel",
  callback = function() pwk.attach_spectre(0) end })
autocmd("FileType", { pattern = "NvimTree",
  callback = function() pwk.attach_nvim_tree(0) end })
