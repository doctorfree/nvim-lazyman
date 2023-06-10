return {
  {
    "nvim-neorg/neorg",
    enabled = false,
    ft = { "norg" },
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.norg.qol.toc"] = {},
        ["core.norg.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = vim.env.HOME .. "/norg-notes/",
            },
          },
        },
        ["core.presenter"] = {
          config = {
            zen_mode = "zen-mode",
          },
        },
      },
    },
  },
}
