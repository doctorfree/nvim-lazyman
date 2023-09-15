local cfg = {}

cfg.root_patterns = { ".git", "lua", "package.json" }

function cfg.custom_lsp_attach(client, bufnr)
  -- disable formatting for LSP clients as this is handled by null-ls or conform
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false
  -- enable navic for displaying current code context
  if client.server_capabilities.documentSymbolProvider then
    require("nvim-navic").attach(client, bufnr)
  end
  local wk = require("which-key")
  local default_options = { silent = true }
  wk.register({
    l = {
      name = "LSP",
      D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration" },
      I = {
        "<cmd>lua vim.lsp.buf.implementation()<cr>",
        "Show implementations",
      },
      R = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
      a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
      d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition" },
      e = { "<cmd>Telescope diagnostics bufnr=0<cr>", "Document Diagnostics" },
      -- f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
      i = { "<cmd>LspInfo<cr>", "Connected Language Servers" },
      k = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover Commands" },
      l = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Line Diagnostics" },
      n = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next Diagnostic" },
      p = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
      q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix Diagnostics" },
      r = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },
      s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
      t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
      w = {
        name = "workspaces",
        a = {
          "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>",
          "Add Workspace Folder",
        },
        d = { "<cmd>Telescope diagnostics<cr>", "Workspace Diagnostics" },
        l = {
          "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
          "List Workspace Folders",
        },
        r = {
          "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>",
          "Remove Workspace Folder",
        },
        s = {
          "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
          "Workspace Symbols",
        },
      },
    },
  }, { prefix = "<leader>", mode = "n", default_options })
end

--- @param on_attach fun(client, buffer)
cfg.on_attach = function(on_attach)
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local buffer = args.buf
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      on_attach(client, buffer)
    end,
  })
end

cfg.get_highlight_value = function(group)
  local hl = vim.api.nvim_get_hl_by_name(group, true)
  local hl_config = {}
  for key, value in pairs(hl) do
    hl_config[key] = string.format("#%02x", value)
  end
  return hl_config
end

---@param name string
function cfg.opts(name)
  local plugin = require("lazy.core.config").plugins[name]
  if not plugin then
    return {}
  end
  local Plugin = require("lazy.core.plugin")
  return Plugin.values(plugin, "opts", false)
end

-- delay notifications till vim.notify was replaced or after 500ms
function cfg.lazy_notify()
  local notifs = {}
  local function temp(...)
    table.insert(notifs, vim.F.pack_len(...))
  end

  local orig = vim.notify
  vim.notify = temp

  local timer = vim.loop.new_timer()
  local check = vim.loop.new_check()

  local replay = function()
    timer:stop()
    check:stop()
    if vim.notify == temp then
      vim.notify = orig -- put back the original notify if needed
    end
    vim.schedule(function()
      ---@diagnostic disable-next-line: no-unknown
      for _, notif in ipairs(notifs) do
        vim.notify(vim.F.unpack_len(notif))
      end
    end)
  end

  -- wait till vim.notify has been replaced
  check:start(function()
    if vim.notify ~= temp then
      replay()
    end
  end)
  -- or if it took more than 500ms, then something went wrong
  timer:start(500, 0, replay)
end

return cfg
