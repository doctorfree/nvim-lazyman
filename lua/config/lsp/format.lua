local Util = require("lazy.core.util")

local cfg = {}

cfg.autoformat = true

function cfg.toggle()
  if vim.b.autoformat == false then
    vim.b.autoformat = nil
    cfg.autoformat = true
  else
    cfg.autoformat = not cfg.autoformat
  end
  if cfg.autoformat then
    Util.info("Enabled format on save", { title = "Format" })
  else
    Util.warn("Disabled format on save", { title = "Format" })
  end
end

function cfg.format()
  local buf = vim.api.nvim_get_current_buf()
  if vim.b.autoformat == false then
    return
  end
  local ft = vim.bo[buf].filetype
  local have_nls = #require("null-ls.sources").get_available(ft, "NULL_LS_FORMATTING") > 0

  vim.lsp.buf.format(vim.tbl_deep_extend("force", {
    bufnr = buf,
    filter = function(client)
      if have_nls then
        return client.name == "null-ls"
      end
      return client.name ~= "null-ls"
    end,
  }, require("utils.utils").opts("nvim-lspconfig").format or {}))
end

function cfg.on_attach(client, buf)
  -- dont format if client disabled it
  if
    client.config
    and client.config.capabilities
    and client.config.capabilities.documentFormattingProvider == false
  then
    return
  end

  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("LspFormat." .. buf, {}),
      buffer = buf,
      callback = function()
        if cfg.autoformat then
          cfg.format()
        end
      end,
    })
  end
end

return cfg
