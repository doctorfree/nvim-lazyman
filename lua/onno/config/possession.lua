local opts = {
  -- session_dir = (Path:new(vim.fn.stdpath("config")) / "possession"):absolute(),
  session_dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"),
  -- Disable notification
  silent = true,
  load_silent = true,
  debug = false,
  logfile = false,
  prompt_no_cr = false,
  autosave = {
    current = true,
    tmp = false,  -- or fun(): boolean
    tmp_name = 'tmp', -- or fun(): string
    on_load = true,
    on_quit = true,
  },
  commands = {
    save = 'PossessionSave',
    load = 'PossessionLoad',
    rename = 'PossessionRename',
    close = 'PossessionClose',
    delete = 'PossessionDelete',
    show = 'PossessionShow',
    list = 'PossessionList',
    migrate = 'PossessionMigrate',
  },
  hooks = {
    before_save = function(_)
      vim.cmd([[wincmd =]]) -- Turn off full windows
      return {}
    end,
  },
  plugins = {
    delete_hidden_buffers = false,
    close_windows = {
      hooks = { "before_save" },
      preserve_layout = false, -- do not preserse empty window
      match = {
        -- buftype = { "help" },
        filetype = {
          "neo-tree",
          "aerial",
          "NeogitStatus",
          "NeogitCommitView",
          "toggleterm",
          "fugitiveblame"
        },
      },
    },
  },
}

require("possession").setup(opts)
require("telescope").load_extension("possession")
