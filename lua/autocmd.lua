local api = vim.api
local settings = require("configuration")

--- Remove all trailing whitespace on save
local TrimWhiteSpaceGrp = api.nvim_create_augroup("TrimWhiteSpaceGrp", { clear = true })
api.nvim_create_autocmd("BufWritePre", {
  command = [[:%s/\s\+$//e]],
  group = TrimWhiteSpaceGrp,
})

-- don't auto comment new line
-- api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- wrap words "softly" (no carriage return) in mail buffer
api.nvim_create_autocmd("Filetype", {
  pattern = "mail",
  callback = function()
    vim.opt.textwidth = 0
    vim.opt.wrapmargin = 0
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.columns = 80
    vim.opt.colorcolumn = "80"
  end,
})

-- wrap words "softly" (no carriage return) in mail buffer
api.nvim_create_autocmd("Filetype", {
  pattern = "terraform-vars",
  callback = function()
    vim.api.nvim_command("set filetype=hcl")
  end,
})

-- Highlight on yank
api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- go to last loc when opening a buffer
api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- windows to close with "q"
api.nvim_create_autocmd("FileType", {
  pattern = {
    "dap-float",
    "fugitive",
    "help",
    "man",
    "notify",
    "null-ls-info",
    "qf",
    "PlenaryTestPopup",
    "startuptime",
    "tsplayground",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})
api.nvim_create_autocmd("FileType", { pattern = "man", command = [[nnoremap <buffer><silent> q :quit<CR>]] })

-- disable list option in certain filetypes
api.nvim_create_autocmd("FileType", { pattern = { "NeoGitStatus" }, command = [[setlocal list!]] })

-- show cursor line only in active window
local cursorGrp = api.nvim_create_augroup("CursorLine", { clear = true })
api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  pattern = "*",
  command = "set cursorline",
  group = cursorGrp,
})
api.nvim_create_autocmd(
  { "InsertEnter", "WinLeave" },
  { pattern = "*", command = "set nocursorline", group = cursorGrp }
)

if settings.enable_alpha then
  local alpha_group = api.nvim_create_augroup("alpha_autocmd", { clear = true })

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

  -- vim.api.nvim_create_autocmd("User", {
  --   pattern = "AlphaReady",
  --   group = alpha_group,
  --   callback = function()
  --     require("lualine").hide({ unhide = true })
  --   end
  -- })

  vim.api.nvim_create_autocmd("User", {
    pattern = "AlphaReady",
    group = alpha_group,
    callback = function()
      vim.cmd([[
        setlocal showtabline=0 | autocmd BufUnload <buffer> set showtabline=1
        setlocal laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
      ]])
    end,
  })
  -- vim.api.nvim_create_autocmd('BufEnter', {
  --   pattern = '*',
  --   group = alpha_group,
  --   callback = function () require('alpha').redraw() end,
  -- })

  -- when there is no buffer left show Alpha dashboard
  -- requires "famiu/bufdelete.nvim" and "goolord/alpha-nvim"
  api.nvim_create_autocmd("User", {
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

-- Enable spell checking for certain file types
api.nvim_create_autocmd(
  { "BufRead", "BufNewFile" },
  {
    pattern = { "*.txt", "*.md", "*.tex" },
    callback = function()
      vim.opt.spell = true
      vim.opt.spelllang = "en"
    end,
  }
)

-- Highlight groups
-- autocmd ColorSchemePre MyTheme highlight link TSRainbow MyThemeRed
-- autocmd ColorSchemePre MyTheme highlight link TSRainbow MyThemeYellow

-- Filetype-Specific Configurations

-- CSS, HTML, LUA, JS, TS, XML, Jinja, YAML
api.nvim_create_autocmd("FileType", { pattern = { "lua" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "html" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "javascript" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "typescript" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "css" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "scss" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "xml" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "xhtml" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "yaml" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "htmldjango" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "htmldjango" }, command = [[inoremap {{ {{  }}<left><left><left>]] })
api.nvim_create_autocmd("FileType", { pattern = { "htmldjango" }, command = [[inoremap {% {%  %}<left><left><left>]] })
api.nvim_create_autocmd("FileType", { pattern = { "htmldjango" }, command = [[inoremap {# {#  #}<left><left><left>]] })

-- Markdown and Journal
api.nvim_create_autocmd("FileType", { pattern = { "markdown" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })
api.nvim_create_autocmd("FileType", { pattern = { "journal" }, command = [[setlocal shiftwidth=2 tabstop=2 softtabstop=2]] })

-- Neovim :Terminal
-- api.nvim_create_autocmd("BufWinEnter,WinEnter", { command = [[term://* startinsert]] })
-- api.nvim_create_autocmd("BufLeave", { command = [[term://* stopinsert]] })

-- Python
api.nvim_create_autocmd("FileType", { pattern = { "python" }, command = [[nmap <leader>d <Plug>(pydocstring)]] })
api.nvim_create_autocmd("FileType", { pattern = { "python" }, command = [[nmap <leader>p :Black<CR>]] })
