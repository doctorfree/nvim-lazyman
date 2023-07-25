require('possession').setup {
  session_dir = (Path:new(vim.fn.stdpath('state')) / 'possession'):absolute(),
  silent = true,
  load_silent = true,
  debug = false,
  logfile = false,
  prompt_no_cr = false,
  autosave = {
    current = true,
    tmp = false,
    tmp_name = 'tmp',
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
    before_save = function(name) return {} end,
    after_save = function(name, user_data, aborted) end,
    before_load = function(name, user_data) return user_data end,
    after_load = function(name, user_data) end,
  },
  plugins = {
    close_windows = {
      hooks = {'before_save', 'before_load'},
      preserve_layout = true,
      match = {
        floating = true,
        buftype = {},
        filetype = {},
        custom = false,
      },
    },
    delete_hidden_buffers = {
      hooks = {
        'before_load',
        vim.o.sessionoptions:match('buffer') and 'before_save',
      },
      force = false,
    },
    nvim_tree = true,
    tabby = true,
    dap = true,
    delete_buffers = false,
  },
  telescope = {
    list = {
      default_action = 'load',
      mappings = {
        save = { n = '<c-x>', i = '<c-x>' },
        load = { n = '<c-v>', i = '<c-v>' },
        delete = { n = '<c-t>', i = '<c-t>' },
        rename = { n = '<c-r>', i = '<c-r>' },
      },
    },
  },
}
require("telescope").load_extension("possession")
