local settings = require("configuration")
local lsp_servers = settings.lsp_servers
local formatters_linters = settings.formatters_linters
local table_contains = require("util").table_contains
local bashls_settings = {}

if table_contains(lsp_servers, "bashls") then
  -- Enable/Disable shellcheck in bashls
  bashls_settings = {
    bashIde = {
      backgroundAnalysisMaxFiles = 500,
      enableSourceErrorDiagnostics = false,
      explainshellEndpoint = "",
      globPattern = vim.env.GLOB_PATTERN or "*@(.sh|.inc|.bash|.command)",
      includeAllWorkspaceSymbols = false,
      logLevel = "info",
      shellcheckArguments = "",
      shellcheckPath = vim.env.SHELLCHECK_PATH or "",
    },
  }
  if table_contains(formatters_linters, "shellcheck") then
    bashls_settings = {
      bashIde = {
        backgroundAnalysisMaxFiles = 500,
        enableSourceErrorDiagnostics = false,
        explainshellEndpoint = "",
        globPattern = vim.env.GLOB_PATTERN or "*@(.sh|.inc|.bash|.command)",
        includeAllWorkspaceSymbols = false,
        logLevel = "info",
        shellcheckArguments = "",
        shellcheckPath = vim.env.SHELLCHECK_PATH or "shellcheck",
      },
    }
  end
end

local M = {}

M.settings = bashls_settings

return M
