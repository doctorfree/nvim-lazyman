local opts = {
  -- session_dir = (Path:new(vim.fn.stdpath("config")) / "possession"):absolute(),
  session_dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"),
  -- Disable notification
  silent = true,
  load_silent = true,
  debug = false,
  logfile = false,
  autosave = {
    current = true,
  },
  hooks = {
    before_save = function(_)
      vim.cmd([[wincmd =]]) -- Turn off full windows
      return {}
    end,
  },
  plugins = {
    delete_hidden_buffers = {
      hooks = {}, -- Do not delete buffers at saving
    },
    close_windows = {
      hooks = { "before_save" },
      preserve_layout = false, -- do not preserse empty window
      match = {
        -- buftype = { "help" },
        filetype = { "neo-tree", "aerial", "NeogitStatus", "NeogitCommitView", "toggleterm", "fugitiveblame" },
      },
    },
  },
}

require("possession").setup(opts)
require("telescope").load_extension("possession")
