local settings = require("configuration")
local lsp_servers = settings.lsp_servers
local formatters_linters = settings.formatters_linters
local showdiag = settings.show_diagnostics
local table_contains = require("utils.functions").table_contains

local open_float = "<cmd>lua vim.diagnostic.open_float()<cr>"
if not showdiag == "popup" then
  open_float = ""
end

-- Style floating windows
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

-- Borders for LspInfo winodw
require("lspconfig.ui.windows").default_options.border = "rounded"

vim.api.nvim_create_autocmd("LspAttach", {
  desc = "LSP actions",
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      vim.keymap.set(mode, lhs, rhs, { buffer = true })
    end

    -- Displays hover information about the symbol under the cursor
    bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")

    -- Jump to the definition
    bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")

    -- Jump to declaration
    bufmap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")

    -- Lists all the implementations for the symbol under the cursor
    bufmap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")

    -- Jumps to the definition of the type symbol
    bufmap("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")

    -- Lists all the references
    bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")

    -- Displays a function's signature information
    bufmap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

    -- Renames all references to the symbol under the cursor
    bufmap("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>")

    -- Selects a code action available at the current cursor position
    bufmap("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>")
    bufmap("x", "<F4>", "<cmd>lua vim.lsp.buf.range_code_action()<cr>")

    -- Show diagnostics in a floating window
    bufmap("n", "gl", open_float)

    -- Move to the previous diagnostic
    bufmap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")

    -- Move to the next diagnostic
    bufmap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")
  end,
})

require("utils.utils").on_attach(function(client, buffer)
  require("config.lsp.keymaps").on_attach(client, buffer)
  require("config.lsp.inlayhints").on_attach(client, buffer)
  require("config.lsp.gitsigns").on_attach(client, buffer)
end)

-- diagnostics
for name, icon in pairs(require("utils.icons").diagnostics) do
  name = "DiagnosticSign" .. name
  vim.fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
end
if showdiag == "none" then
  vim.diagnostic.config(require("config.lsp.diagnostics")["off"])
else
  vim.diagnostic.config(require("config.lsp.diagnostics")["on"])
end

-- Show line diagnostics automatically in hover window
if showdiag == "popup" then
  vim.cmd([[
    autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, { focus = false })
  ]])
end

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation
local diagnostics_active = true
local toggle_diagnostics = function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end

vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

vim.diagnostic.config({
  update_in_insert = false,
})

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    "documentation",
    "detail",
    "additionalTextEdits",
  },
}

capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

local null_ls = require("null-ls")
local conf_sources = {
  null_ls.builtins.formatting.trim_newlines,
  null_ls.builtins.formatting.trim_whitespace,
}
if table_contains(formatters_linters, "actionlint") then
  table.insert(conf_sources, null_ls.builtins.diagnostics.actionlint)
end
if table_contains(formatters_linters, "stylua") then
  table.insert(conf_sources, null_ls.builtins.formatting.stylua)
end
local formatter_bin = "eslint_d"
if table_contains(formatters_linters, "prettier") then
  table.insert(conf_sources, null_ls.builtins.formatting.prettier)
  formatter_bin = "prettier"
else
  table.insert(conf_sources, null_ls.builtins.formatting.eslint_d)
end

null_ls.setup({
  should_attach = function(bufnr)
    local ft = vim.api.nvim_buf_get_option(bufnr, "filetype")
    if ft == "dbui" or ft == "dbout" or ft:match("sql") then
      return false
    end
    return true
  end,
  sources = conf_sources
})

local lspconfig = require("lspconfig")
local navic = require("nvim-navic")

if table_contains(lsp_servers, "jsonls") then
  lspconfig.jsonls.setup({
    capabilities = capabilities,
    settings = {
      json = {
        schemas = require("schemastore").json.schemas(),
      },
    },
  })
end

if table_contains(lsp_servers, "eslint") then
  lspconfig.eslint.setup({
    cmd = { "vscode-eslint-language-server", "--stdio" },
    capabilities = capabilities,
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
      "vue",
      "svelte",
      "astro"
    },
    handlers = {
      ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        silent = true,
        border = "rounded",
      }),
      ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
      ["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics,
        { virtual_text = true }
      ),
    },
    root_dir = require('lspconfig.util').root_pattern('.git'),
    settings = {
      codeAction = {
        disableRuleComment = {
          enable = true,
          location = "separateLine"
        },
        showDocumentation = {
          enable = true
        }
      },
      codeActionOnSave = {
        enable = false,
        mode = "all"
      },
      experimental = {
        useFlatConfig = false
      },
      format = true,
      nodePath = "",
      onIgnoredFiles = "off",
      packageManager = "npm",
      problems = {
        shortenToSingleLine = false
      },
      quiet = false,
      rulesCustomizations = {},
      run = "onType",
      useESLintClass = false,
      validate = "on",
      workingDirectory = {
        mode = "location"
      }
    },
    on_attach = function(_, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        command = "EslintFixAll",
      })
    end,
  })
end

if table_contains(lsp_servers, "tsserver") then
  -- make sure to only run this once!
  local tsserver_on_attach = function(client, bufnr)
    -- disable tsserver formatting if you plan on formatting via null-ls
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false

    local ts_utils = require("nvim-lsp-ts-utils")

    -- defaults
    ts_utils.setup({
      enable_import_on_completion = true,
      -- eslint
      eslint_enable_code_actions = true,
      eslint_enable_disable_comments = true,
      eslint_bin = "eslint_d",
      eslint_enable_diagnostics = false,
      eslint_opts = {},
      -- formatting
      enable_formatting = true,
      formatter = formatter_bin,
      formatter_opts = {},
      -- update imports on file move
      update_imports_on_move = true,
      require_confirmation_on_move = false,
      watch_dir = nil,
      -- filter diagnostics
      filter_out_diagnostics_by_severity = {},
      filter_out_diagnostics_by_code = {},
    })

    -- required to fix code action ranges and filter diagnostics
    ts_utils.setup_client(client)

    -- no default maps, so you may want to define some here
    local opts = { silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, "n", ",go", ":TSLspOrganize<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", ",gR", ":TSLspRenameFile<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", ",gi", ":TSLspImportAll<CR>", opts)

    navic.attach(client, bufnr)
  end

  lspconfig.tsserver.setup({
    capabilities = capabilities,
    on_attach = tsserver_on_attach,
  })
end

local other_servers_with_navic = {
  "html",
  "pylsp",
  "vimls",
  "bashls",
  "awk_ls",
  "pyright",
  "rust_analyzer",
  "ansiblels",
  "cmake",
  "cssmodules_ls",
  "dockerls",
  "marksman",
  "sqlls",
  "taplo",
  "texlab",
}
for _, server in ipairs(other_servers_with_navic) do
  if table_contains(lsp_servers, server) then
    if lspconfig[server] then
      lspconfig[server].setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          navic.attach(client, bufnr)
        end,
      })
    end
  end
end

vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Open float" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { noremap = true, silent = true })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<leader>dq",
  vim.diagnostic.setloclist,
  { noremap = true, silent = true, desc = "Set diagnostics location list" }
)
vim.keymap.set("n", "<leader>dt", toggle_diagnostics, { desc = "Toggle diagnostics" })

if table_contains(lsp_servers, "yamlls") then
  lspconfig.yamlls.setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
      navic.attach(client, bufnr)
    end,
    schemaStore = {
      enable = true,
      url = "https://www.schemastore.org/api/json/catalog.json",
    },
    schemas = {
      kubernetes = "*.yaml",
      ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
      ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
      ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
      ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
      ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
      ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
      ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
      ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
      ["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = "*gitlab-ci*.{yml,yaml}",
      ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
      ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
      ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
    },
    format = { enabled = false },
    validate = false,
    completion = true,
    hover = true,
  })
end

if settings.enable_clangd then
  if vim.fn.executable('clangd') == 1 then
    lspconfig.clangd.setup({})
  end
end

if settings.enable_ccls then
  if vim.fn.executable('ccls') == 1 then
    lspconfig.ccls.setup({
      capabilities = capabilities,
      on_attach = navic.attach,
      init_options = {
        cache = {
          directory = ".ccls-cache",
        },
        highlight = {
          lsRanges = true,
        },
      },
    })
  end
end

if table_contains(lsp_servers, "lua_ls") then
  lspconfig.lua_ls.setup({
    capabilities = capabilities,
    on_attach = navic.attach,
    require("neodev").setup({
      library = { plugins = { "nvim-dap-ui" }, types = true },
      setup_jsonls = true,
      lspconfig = false,
      pathStrict = true,
      override = function(root_dir, library)
        local util = require("neodev.util")
        if util.has_file(root_dir, "/etc/nixos") or util.has_file(root_dir, "nvim-config") then
          library.enabled = true
          library.plugins = true
        end
      end,
    }),
    -- Note: These settings will meaningfully increase the time until lua_ls
    -- can service initial requests (completion, location) upon starting as well
    -- as time to first diagnostics. Completion results will include a workspace
    -- indexing progress message until the server has finished indexing.
    before_init = require("neodev.lsp").before_init,
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
        },
        diagnostics = {
          globals = {
            "vim",
            "describe",
            "it",
            "before_each",
            "after_each",
            "pending",
            "nnoremap",
            "vnoremap",
            "inoremap",
            "tnoremap",
          },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false,
        },
        telemetry = {
          enable = false,
        },
      },
    },
  })
end

vim.cmd([[ do User LspAttachBuffers ]])
