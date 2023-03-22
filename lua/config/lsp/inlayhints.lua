local cfg = {}

cfg.on_attach = function(client, buffer)
  local status_ok, inlayhints = pcall(require, "lsp-inlayhints")
  if not status_ok then
    return
  end
  inlayhints.on_attach(client, buffer)
end

return cfg
