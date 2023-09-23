local cfg = {}
local settings = require("configuration")

---@type PluginLspKeys
cfg._keys = nil

function cfg.get()
  local format = require("config.lsp.format").format
  if not cfg._keys then
  ---@class PluginLspKeys
    -- stylua: ignore
    cfg._keys =  {
      { "<leader>cd", vim.diagnostic.open_float, desc = "Line Diagnostics" },
      { "<leader>cl", "<cmd>LspInfo<cr>", desc = "Lsp Info" },
      { "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "Goto Definition", has = "definition" },
      { "gr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
      { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
      { "gI", "<cmd>Telescope lsp_implementations<cr>", desc = "Goto Implementation" },
      { "gt", "<cmd>Telescope lsp_type_definitions<cr>", desc = "Goto Type Definition" },
      { "K", vim.lsp.buf.hover, desc = "Hover" },
      { "gK", vim.lsp.buf.signature_help, desc = "Signature Help", has = "signatureHelp" },
      { "<c-k>", vim.lsp.buf.signature_help, mode = "i", desc = "Signature Help", has = "signatureHelp" },
      { "]d", cfg.diagnostic_goto(true), desc = "Next Diagnostic" },
      { "[d", cfg.diagnostic_goto(false), desc = "Prev Diagnostic" },
      { "]e", cfg.diagnostic_goto(true, "ERROR"), desc = "Next Error" },
      { "[e", cfg.diagnostic_goto(false, "ERROR"), desc = "Prev Error" },
      { "]w", cfg.diagnostic_goto(true, "WARN"), desc = "Next Warning" },
      { "[w", cfg.diagnostic_goto(false, "WARN"), desc = "Prev Warning" },
      { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "v" }, has = "codeAction" },
      { "<leader>cf", format, desc = "Format Document", has = "documentFormatting" },
      { "<leader>cf", format, desc = "Format Range", mode = "v", has = "documentRangeFormatting" },
    }
    if require("util").has("inc-rename.nvim") then
      cfg._keys[#cfg._keys + 1] = {
        "<leader>cr",
        function()
          require("inc_rename")
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        expr = true,
        desc = "Rename",
        has = "rename",
      }
    else
      cfg._keys[#cfg._keys + 1] = { "<leader>cr", vim.lsp.buf.rename, desc = "Rename", has = "rename" }
    end
  end
  return cfg._keys
end

function cfg.on_attach(client, buffer)
  local Keys = require("lazy.core.handler.keys")
  local keymaps = {}

  for _, value in ipairs(cfg.get()) do
    local keys = Keys.parse(value)
    if keys[2] == vim.NIL or keys[2] == false then
      keymaps[keys.id] = nil
    else
      keymaps[keys.id] = keys
    end
  end

  for _, keys in pairs(keymaps) do
    if not keys.has or client.server_capabilities[keys.has .. "Provider"] then
      local opts = Keys.opts(keys)
      ---@diagnostic disable-next-line: no-unknown
      opts.has = nil
      opts.silent = true
      opts.buffer = buffer
      vim.keymap.set(keys.mode or "n", keys[1], keys[2], opts)
    end
  end
  local opts = { noremap = true, silent = true }
  local map = vim.api.nvim_buf_set_keymap
  map(buffer, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  map(buffer, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  if settings.enable_renamer then
    local rpts = { desc = "Renamer", noremap = true, silent = true }
    map(buffer, "i", "<F2>", "<cmd>lua require('renamer').rename()<CR>", rpts)
    map(buffer, "n", "<leader>r", "<cmd>lua require('renamer').rename()<CR>", rpts)
    map(buffer, "v", "<leader>r", "<cmd>lua require('renamer').rename()<CR>", rpts)
  end
end

function cfg.diagnostic_goto(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end

return cfg
