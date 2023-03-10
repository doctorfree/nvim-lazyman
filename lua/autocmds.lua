local settings = require("configuration")

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyman_" .. name, { clear = true })
end

-- Check if we need to reload the file when it changed
vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = augroup("checktime"),
  command = "checktime",
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- resize splits if window got resized
vim.api.nvim_create_autocmd({ "VimResized" }, {
  group = augroup("resize_splits"),
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- go to last loc when opening a buffer
vim.api.nvim_create_autocmd("BufReadPost", {
  group = augroup("last_loc"),
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- close some filetypes with <q>
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("close_with_q"),
  pattern = {
    "PlenaryTestPopup",
    "help",
    "lspinfo",
    "man",
    "notify",
    "qf",
    "query", -- :InspectTree
    "spectre_panel",
    "startuptime",
    "tsplayground",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("wrap_spell"),
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

if settings.enable_alpha then
  local alpha_group = vim.api.nvim_create_augroup("alpha_autocmd", { clear = true })

  vim.api.nvim_create_autocmd("User", {
    pattern = "AlphaReady",
    group = alpha_group,
    callback = function()
      require("lualine").hide({
        place = { "statusline", "tabline", "winbar" }, -- the segment this change applies to.
        unhide = false, -- whether to re-enable lualine again/
      })
    end
  })

  vim.api.nvim_create_autocmd("User", {
    pattern = "AlphaReady",
    group = alpha_group,
    callback = function()
      vim.cmd([[
        setlocal showtabline=0 | autocmd BufUnload <buffer> set showtabline=settings.showtabline
        setlocal laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
      ]])
    end,
  })

  -- when there is no buffer left show Alpha dashboard
  -- requires "famiu/bufdelete.nvim" and "goolord/alpha-nvim"
  vim.api.nvim_create_autocmd("User", {
    pattern = "BDeletePost*",
    group = alpha_group,
    callback = function(event)
      local fallback_name = vim.api.nvim_buf_get_name(event.buf)
      local fallback_ft = vim.api.nvim_buf_get_option(event.buf, "filetype")
      local fallback_on_empty = fallback_name == "" and fallback_ft == ""

      if fallback_on_empty then
        -- require("neo-tree").close_all()
        vim.api.nvim_command("Alpha")
        vim.api.nvim_command(event.buf .. "bwipeout")
      end
    end,
  })
end

