return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "jvgrootveld/telescope-zoxide",
    "crispgm/telescope-heading.nvim",
    "nvim-telescope/telescope-symbols.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "dharmx/telescope-media.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "ptethng/telescope-makefile",
  },
  config = function()
    require("config.telescope")
  end
}
