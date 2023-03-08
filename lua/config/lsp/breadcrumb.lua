M = {}

M.on_attach = function(client, buffer)
  local status_ok, breadcrumb = pcall(require, "breadcrumb")
  if not status_ok then
    return
  end
  if client.server_capabilities.documentSymbolProvider then
    breadcrumb.attach(client, buffer)
  end
end

return M
