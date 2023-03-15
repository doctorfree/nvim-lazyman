require("yanky").setup({
  ring = {
    history_length = 50,
    storage = "memory",
  },
  preserve_cursor_position = {
    enabled = false,
  },
})

vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")
vim.keymap.set("n", "[y", "<Plug>(YankyCycleForward)")
vim.keymap.set("n", "]y", "<Plug>(YankyCycleBackward)")
