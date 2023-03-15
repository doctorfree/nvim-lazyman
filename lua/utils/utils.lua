local utils = require("utils.functions")
local Util = require("lazy.core.util")

local M = {}

M.root_patterns = { ".git", "lua" }

-- must be global or the initial state is not working
VIRTUAL_TEXT_ACTIVE = true
-- toggle displaying virtual text
M.toggle_virtual_text = function()
  VIRTUAL_TEXT_ACTIVE = not VIRTUAL_TEXT_ACTIVE
  utils.notify(string.format("Virtualtext %s", VIRTUAL_TEXT_ACTIVE and "on" or "off"), 1, "utils/utils.lua")
  vim.diagnostic.show(nil, 0, nil, { virtual_text = VIRTUAL_TEXT_ACTIVE })
end

-- must be global or the initial state is not working
AUTOFORMAT_ACTIVE = true
-- toggle null-ls's autoformatting
M.toggle_autoformat = function()
  AUTOFORMAT_ACTIVE = not AUTOFORMAT_ACTIVE
  require("utils.functions").notify(
    string.format("Autoformatting %s", AUTOFORMAT_ACTIVE and "on" or "off"),
    1,
    "utils.utils"
  )
end

local function disable_diagnostics(bufnr, message)
  utils.notify("Disabling diagnostics for HelmRelease files", 1, "utils/utils")
  vim.diagnostic.reset(bufnr)
  vim.diagnostic.disable(bufnr)
end

local function handle_helm_templates(bufnr)
  local bufferData = vim.api.nvim_buf_get_text(bufnr, 0, 0, -1, -1, {})
  local bufferString = table.concat(bufferData, "\n")
  -- usually Helm files are in a template folder
  -- TODO: more robust and elegant check
  if string.find(bufferString, "kind: HelmRelease") then
    disable_diagnostics(bufnr, "Disabling diagnostics for HelmRelease files")
  end
end

local function handle_docker_compose(bufnr)
  local bufName = vim.api.nvim_buf_get_name(bufnr)
  -- TODO: more robust and elegant check
  -- search dor docker-compose.yaml does not work!
  if string.find(bufName, "compose.yaml") then
    disable_diagnostics(bufnr, "Disabling diagnostics for docker-compose files")
  end
end

local function handle_helm_releases(bufnr)
  local bufName = vim.api.nvim_buf_get_name(bufnr)
  -- TODO: more robust and elegant check
  if string.find(bufName, "templates") then
    disable_diagnostics(bufnr, "Disabling diagnostics for Helm template files")
  end
end

local function handle_kustomization(bufnr)
  local bufName = vim.api.nvim_buf_get_name(bufnr)
  -- TODO: more robust and elegant check
  if string.find(bufName, "kustomization.yaml") then
    disable_diagnostics(bufnr, "Disabling diagnostics for kustomization.yaml")
  end
end

function M.custom_lsp_attach(client, bufnr)
  -- disable formatting for LSP clients as this is handled by null-ls
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false
  -- enable navic for displaying current code context
  if client.server_capabilities.documentSymbolProvider then
    require("nvim-navic").attach(client, bufnr)
  end
  -- TODO: this workaround is not sufficient and bugyy
  -- handle_helm_templates(bufnr)
  -- handle_kustomization(bufnr)
  -- handle_docker_compose(bufnr)
  -- handle_helm_releases(bufnr)
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
M.on_attach = function(on_attach)
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local buffer = args.buf
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      on_attach(client, buffer)
    end,
  })
end

M.get_highlight_value = function(group)
  local hl = vim.api.nvim_get_hl_by_name(group, true)
  local hl_config = {}
  for key, value in pairs(hl) do
    hl_config[key] = string.format("#%02x", value)
  end
  return hl_config
end

-- returns the root directory based on:
-- * lsp workspace folders
-- * lsp root_dir
-- * root pattern of filename of the current buffer
-- * root pattern of cwd
---@return string
function M.get_root()
  ---@type string?
  local path = vim.api.nvim_buf_get_name(0)
  path = path ~= "" and vim.loop.fs_realpath(path) or nil
  ---@type string[]
  local roots = {}
  if path then
    for _, client in pairs(vim.lsp.get_active_clients({ bufnr = 0 })) do
      local workspace = client.config.workspace_folders
      local paths = workspace and vim.tbl_map(function(ws)
        return vim.uri_to_fname(ws.uri)
      end, workspace) or client.config.root_dir and { client.config.root_dir } or {}
      for _, p in ipairs(paths) do
        local r = vim.loop.fs_realpath(p)
        if path:find(r, 1, true) then
          roots[#roots + 1] = r
        end
      end
    end
  end
  table.sort(roots, function(a, b)
    return #a > #b
  end)
  ---@type string?
  local root = roots[1]
  if not root then
    path = path and vim.fs.dirname(path) or vim.loop.cwd()
    ---@type string?
    root = vim.fs.find(M.root_patterns, { path = path, upward = true })[1]
    root = root and vim.fs.dirname(root) or vim.loop.cwd()
  end
  ---@cast root string
  return root
end

---@param type "ivy" | "dropdown" | "cursor" | nil
-- M.telescope_theme = function(type)
--   if type == nil then
--     return {}
--   end
--   return require("telescope.themes")["get_" .. type]({
--     cwd = M.get_root(),
--     borderchars = { "█", "█", "▀", "█", "█", "█", "▀", "▀" },
--   })
-- end

---@param type "ivy" | "dropdown" | "cursor" | nil
-- M.telescope = function(builtin, type, opts)
--   local params = { builtin = builtin, type = type, opts = opts }
--   return function()
--     builtin = params.builtin
--     type = params.type
--     opts = params.opts
--     opts = vim.tbl_deep_extend("force", { cwd = M.get_root() }, opts or {})
--     local theme
--     if vim.tbl_contains({ "ivy", "dropdown", "cursor" }, type) then
--       theme = M.telescope_theme(type)
--     else
--       theme = opts
--     end
--     require("telescope.builtin")[builtin](theme)
--   end
-- end

-- this will return a function that calls telescope.
-- cwd will default to util.get_root
-- for `files`, git_files or find_files will be chosen depending on .git
function M.telescope(builtin, opts)
  local params = { builtin = builtin, opts = opts }
  return function()
    builtin = params.builtin
    opts = params.opts
    opts = vim.tbl_deep_extend("force", { cwd = M.get_root() }, opts or {})
    if builtin == "files" then
      if vim.loop.fs_stat((opts.cwd or vim.loop.cwd()) .. "/.git") then
        opts.show_untracked = true
        builtin = "git_files"
      else
        builtin = "find_files"
      end
    end
    require("telescope.builtin")[builtin](opts)
  end
end

---@param plugin string
function M.has(plugin)
  return require("lazy.core.config").plugins[plugin] ~= nil
end

---@param fn fun()
function M.on_very_lazy(fn)
  vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
      fn()
    end,
  })
end

---@param name string
function M.opts(name)
  local plugin = require("lazy.core.config").plugins[name]
  if not plugin then
    return {}
  end
  local Plugin = require("lazy.core.plugin")
  return Plugin.values(plugin, "opts", false)
end

-- FIXME: create a togglable terminal
-- Opens a floating terminal (interactive by default)
---@param cmd? string[]|string
---@param opts? LazyCmdOptions|{interactive?:boolean}
function M.float_term(cmd, opts)
  opts = vim.tbl_deep_extend("force", {
    size = { width = 0.9, height = 0.9 },
  }, opts or {})
  require("lazy.util").float_term(cmd, opts)
end

---@param silent boolean?
---@param values? {[1]:any, [2]:any}
function M.toggle(option, silent, values)
  if values then
    if vim.opt_local[option]:get() == values[1] then
      vim.opt_local[option] = values[2]
    else
      vim.opt_local[option] = values[1]
    end
    return Util.info("Set " .. option .. " to " .. vim.opt_local[option]:get(), { title = "Option" })
  end
  vim.opt_local[option] = not vim.opt_local[option]:get()
  if not silent then
    if vim.opt_local[option]:get() then
      Util.info("Enabled " .. option, { title = "Option" })
    else
      Util.warn("Disabled " .. option, { title = "Option" })
    end
  end
end

-- local enabled = true
-- function M.toggle_diagnostics()
--   enabled = not enabled
--   if enabled then
--     vim.diagnostic.enable()
--     Util.info("Enabled diagnostics", { title = "Diagnostics" })
--   else
--     vim.diagnostic.disable()
--     Util.warn("Disabled diagnostics", { title = "Diagnostics" })
--   end
-- end

function M.deprecate(old, new)
  Util.warn(("`%s` is deprecated. Please use `%s` instead"):format(old, new), { title = "LazyMan" })
end

-- delay notifications till vim.notify was replaced or after 500ms
function M.lazy_notify()
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

return M
