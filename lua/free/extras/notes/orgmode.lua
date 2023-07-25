return {
  {
    "nvim-orgmode/orgmode",
    enabled = false,
    ft = { "org" },
    opts = {
      org_agenda_files = { vim.env.HOME .. "/org-notes/agenda/*" },
      org_default_notes_file = vim.env.HOME .. "/org-notes/default.org",
    },
    config = function(plugin, opts)
      require("orgmode").setup_ts_grammar()
      require("orgmode").setup(opts)
    end,
  },
  { "akinsho/org-bullets.nvim", enabled = false, config = true, ft = { "org" } },
}
