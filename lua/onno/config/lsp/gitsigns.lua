local M = {}

M.attach = function(_, buffer)
  local gs = package.loaded.gitsigns
  local function map(mode, l, r, opts)
    opts = opts or {}
    opts.buffer = buffer
    vim.keymap.set(mode, l, r, opts)
  end

  -- Navigation
  map("n", "]c", function()
    if vim.wo.diff then
      return "]c"
    end
    vim.schedule(function()
      gs.next_hunk()
    end)
    return "<Ignore>"
  end, { expr = true })

  map("n", "[c", function()
    if vim.wo.diff then
      return "[c"
    end
    vim.schedule(function()
      gs.prev_hunk()
    end)
    return "<Ignore>"
  end, { expr = true })
end

return M
