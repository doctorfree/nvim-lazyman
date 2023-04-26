local cfg = {}

cfg.on_attach = function(_, buffer)
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

  -- Actions
  map({ "n", "v" }, "<leader>hs", ":Gitsigns stage_hunk<CR>")
  map({ "n", "v" }, "<leader>hr", ":Gitsigns reset_hunk<CR>")
  map("n", "<leader>hS", gs.stage_buffer, { desc = "Stage buffer" })
  map("n", "<leader>hu", gs.undo_stage_hunk, { desc = "Undo stage hunk" })
  map("n", "<leader>hR", gs.reset_buffer, { desc = "Reset buffer" })
  map("n", "<leader>hp", gs.preview_hunk, { desc = "Preview hunk" })
  map("n", "<leader>hb", function()
    gs.blame_line({ full = true })
  end, { desc = "Blame line" })
  map("n", "<leader>gb", gs.toggle_current_line_blame, { desc = "Toggle line blame" })
  map("n", "<leader>hd", gs.diffthis, { desc = "Diff this" })
  map("n", "<leader>hD", function()
    gs.diffthis("~")
  end, { desc = "Diff this ~" })
  map("n", "<leader>gd", gs.toggle_deleted, { desc = "Toggle deleted" })

  -- Text object
  map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
end

return cfg
