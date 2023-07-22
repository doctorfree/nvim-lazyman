local settings = require("configuration")
local autocmd = vim.api.nvim_create_autocmd
local Util = require("util")

-- Highlight on yank
autocmd({ "TextYankPost" }, {
  group = Util.augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual" })
  end,
})

-- resize splits if window got resized
autocmd({ "VimResized" }, {
  group = Util.augroup("resize_splits"),
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- close some filetypes with <q>
autocmd("FileType", {
  group = Util.augroup("close_with_q"),
  pattern = {
    "qf",
    "help",
    "man",
    "notify",
    "lspinfo",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "PlenaryTestPopup",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- Set wrap and spell in markdown and gitcommit
autocmd({ "FileType" }, {
  group = Util.augroup("wrap_spell"),
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

autocmd({ "BufWinLeave" }, {
  pattern = "?*",
  group = Util.augroup("remember_folds"),
  callback = function()
    vim.cmd([[silent! mkview 1]])
  end,
})
autocmd({ "BufWinEnter" }, {
  pattern = "?*",
  group = Util.augroup("remember_folds"),
  callback = function()
    vim.cmd([[silent! loadview 1]])
  end,
})

-- fix comment
autocmd({ "BufEnter", "BufWinEnter" }, {
  group = Util.augroup("comment_newline"),
  pattern = { "*" },
  callback = function()
    vim.cmd([[set formatoptions-=cro]])
  end,
})

autocmd({ "BufEnter" }, {
  pattern = { "" },
  callback = function()
    local get_project_dir = function()
      local cwd = vim.fn.getcwd()
      local project_dir = vim.split(cwd, "/")
      local project_name = project_dir[#project_dir]
      return project_name
    end

    vim.opt.titlestring = get_project_dir()
  end,
})

-- clear cmd output
autocmd({ "CursorHold" }, {
  group = Util.augroup("clear_term"),
  callback = function()
    vim.cmd([[echon '']])
  end,
})

autocmd({ "FileType" }, {
  pattern = { "help" },
  callback = function()
    vim.cmd([[wincmd L]])
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

-- fix comment on new line
autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*" },
  callback = function()
    vim.cmd([[set formatoptions-=cro]])
  end,
})

-- Auto create dir when saving a file, in case some intermediate directory does not exist
autocmd({ "BufWritePre" }, {
  group = Util.augroup("auto_create_dir"),
  callback = function(event)
    if event.match:match("^%w%w+://") then
      return
    end
    local file = vim.loop.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})

-- Check if we need to reload the file when it changed
autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = Util.augroup("checktime"),
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

-- go to last loc when opening a buffer
autocmd("BufReadPost", {
  group = Util.augroup("last_loc"),
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "lightgreen" })
  end,
})

-- Get GUI config when entering UI
autocmd("UIEnter", {
  once = true,
  callback = function()
    require("ginit")
  end,
})

if settings.dashboard == "alpha" then
  local alpha_group = vim.api.nvim_create_augroup("alpha_autocmd", { clear = true })

  autocmd("User", {
    desc = "Disable status and tablines for alpha",
    group = alpha_group,
    pattern = "AlphaReady",
    callback = function()
      vim.opt.laststatus = 0
      vim.opt.showtabline = 0
      vim.opt_local.winbar = nil
      if settings.enable_statusline then
        require("lualine").hide({
          place = { "statusline", "tabline", "winbar" },
          unhide = false,
        })
      end
      autocmd("BufUnload", {
        desc = "Reenable status and tablines for alpha",
        group = alpha_group,
        pattern = "<buffer>",
        callback = function()
          local config = require("configuration")
          if config.enable_statusline then
            if config.global_statusline then
              vim.opt.laststatus = 3
            else
              vim.opt.laststatus = 2
            end
          else
            vim.opt.laststatus = 0
          end
          vim.opt.showtabline = config.showtabline
          if settings.enable_statusline then
            require("lualine").hide({
              place = { "statusline", "tabline", "winbar" },
              unhide = true,
            })
          end
        end,
      })
    end,
  })
  autocmd("VimEnter", {
    desc = "Start Alpha when vim is opened with no arguments",
    group = alpha_group,
    callback = function()
      local should_skip = false
      if vim.fn.argc() > 0 or vim.fn.line2byte(vim.fn.line("$")) ~= -1 or not vim.o.modifiable then
        should_skip = true
      else
        for _, arg in pairs(vim.v.argv) do
          if arg == "-b" or arg == "-c" or vim.startswith(arg, "+") or arg == "-S" then
            should_skip = true
            break
          end
        end
      end
      if not should_skip then
        require("alpha").start(true, require("alpha").default_config)
      end
    end,
  })
end

-- Disable some things for large files
local aug = vim.api.nvim_create_augroup("buf_large", { clear = true })
autocmd({ "BufReadPre" }, {
  callback = function()
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()))
    if ok and stats and (stats.size > 1000000) then
      vim.b.large_buf = true
      vim.cmd("syntax off")
      vim.cmd("IlluminatePauseBuf") -- disable vim-illuminate
      vim.cmd("IndentBlanklineDisable") -- disable indent-blankline.nvim
      vim.opt_local.foldmethod = "manual"
      vim.opt_local.spell = false
    else
      vim.b.large_buf = false
    end
  end,
  group = aug,
  pattern = "*",
})

-- Open the Github URL of the plugin spec or 'user/repo' path under the cursor
vim.api.nvim_create_user_command("OpenGithubRepo", function(_)
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
  desc = "Open Github Repo",
  force = true,
})
