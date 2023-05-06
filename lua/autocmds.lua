local settings = require("configuration")
local links = {
  ["@lsp.type.namespace"] = "@namespace",
  ["@lsp.type.type"] = "@type",
  ["@lsp.type.class"] = "@type",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.interface"] = "@type",
  ["@lsp.type.struct"] = "@structure",
  ["@lsp.type.parameter"] = "@parameter",
  ["@lsp.type.variable"] = "@variable",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.function"] = "@function",
  ["@lsp.type.method"] = "@method",
  ["@lsp.type.macro"] = "@macro",
  ["@lsp.type.decorator"] = "@function",
}

if not settings.enable_semantic_highlighting or settings.convert_semantic_highlighting then
  vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
      if not settings.enable_semantic_highlighting then
        for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
          vim.api.nvim_set_hl(0, group, {})
        end
      else
        if settings.convert_semantic_highlighting then
          for newgroup, oldgroup in pairs(links) do
            vim.api.nvim_set_hl(0, newgroup, { link = oldgroup, default = true })
          end
        end
      end
    end,
  })
end

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyman_" .. name, { clear = true })
end

-- Check if we need to reload the file when it changed
vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
  group = augroup("checktime"),
  command = "checktime",
})

-- Auto insert mode for Terminal
vim.api.nvim_create_autocmd({ "WinEnter", "BufWinEnter", "TermOpen" }, {
  callback = function(args)
    if vim.startswith(vim.api.nvim_buf_get_name(args.buf), "term://") then
      vim.opt_local.wrap = true
      vim.opt_local.spell = false
      vim.cmd("startinsert")
    end
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

-- popup completion menu if there is something before the cursor and nothing after.
vim.api.nvim_create_autocmd({ "TextChangedI", "TextChangedP" }, {
  callback = function()
    local line = vim.api.nvim_get_current_line()
    local cursor = vim.api.nvim_win_get_cursor(0)[2]

    local current = string.sub(line, cursor, cursor + 1)
    if current == "." or current == "," or current == " " then
      require("cmp").close()
    end

    local before_line = string.sub(line, 1, cursor + 1)
    local after_line = string.sub(line, cursor + 1, -1)
    if not string.match(before_line, "^%s+$") then
      if after_line == "" or string.match(before_line, " $") or string.match(before_line, "%.$") then
        require("cmp").complete()
      end
    end
  end,
  pattern = "*",
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
  pattern = { "gitcommit", "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

-- Get GUI config when entering UI
vim.api.nvim_create_autocmd("UIEnter", {
  once = true,
  callback = function()
    require("ginit")
  end,
})

if settings.enable_alpha then
  local alpha_group = vim.api.nvim_create_augroup("alpha_autocmd", { clear = true })

  vim.api.nvim_create_autocmd("User", {
    pattern = "AlphaReady",
    group = alpha_group,
    callback = function()
      require("lualine").hide({
        place = { "statusline", "tabline", "winbar" },
        unhide = false,
      })
    end,
  })

  vim.api.nvim_create_autocmd("BufUnload", {
    buffer = 0,
    desc = "enable status and tabline after alpha",
    group = alpha_group,
    callback = function()
      require("lualine").hide({
        place = { "statusline", "tabline", "winbar" },
        unhide = true,
      })
    end,
  })

  vim.api.nvim_create_autocmd("User", {
    pattern = "AlphaReady",
    group = alpha_group,
    callback = function()
      vim.cmd([[
        setlocal showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
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
elseif settings.enable_startup then
  local st_group = vim.api.nvim_create_augroup("Startup_au", { clear = true })
  vim.api.nvim_create_autocmd("Filetype", {
    pattern = "startup",
    group = st_group,
    callback = function()
      require("lualine").hide({
        place = { "statusline", "tabline", "winbar" },
        unhide = false,
      })
    end,
  })

  vim.api.nvim_create_autocmd("BufUnload", {
    desc = "enable status and tabline after dashboard",
    group = st_group,
    callback = function()
      require("lualine").hide({
        place = { "statusline", "tabline", "winbar" },
        unhide = true,
      })
    end,
  })
end
