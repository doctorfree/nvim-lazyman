return {
  {
    "codota/tabnine-nvim",
    enabled = false,
    build = "./dl_binaries.sh",
    event = "VeryLazy",
    config = function()
      require("tabnine").setup {
        disable_auto_comment = true,
        accept_keymap = "<A-t>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" },
      }
    end,
  },
}
