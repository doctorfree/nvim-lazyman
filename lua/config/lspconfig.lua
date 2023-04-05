-- See `:help vim.diagnostic.*` for documentation on any of the below functions

local settings = require("configuration")
local showdiag = settings.show_diagnostics

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

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

require("lspconfig")["awk_ls"].setup({})
require("lspconfig")["bashls"].setup({})
require("lspconfig")["pyright"].setup({})
require("lspconfig")["tsserver"].setup({})
require("lspconfig")["rust_analyzer"].setup({})
require("lspconfig")["ansiblels"].setup({})
require("lspconfig")["cmake"].setup({})
require("lspconfig")["cssmodules_ls"].setup({})
require("lspconfig")["dockerls"].setup({})
require("lspconfig")["marksman"].setup({})
require("lspconfig")["sqlls"].setup({})
require("lspconfig")["vimls"].setup({})
require("lspconfig")["taplo"].setup({})
require("lspconfig")["texlab"].setup({})
-- require("lspconfig")["rnix"].setup({})

require("lspconfig")["yamlls"].setup({
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
  -- anabling this conflicts between Kubernetes resources and kustomization.yaml and Helmreleases
  -- see utils.custom_lsp_attach() for the workaround
  -- how can I detect Kubernetes ONLY yaml files? (no CRDs, Helmreleases, etc.)
  validate = false,
  completion = true,
  hover = true,
})

-- Enable (broadcasting) snippet capability for completion
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").jsonls.setup({
  capabilities = capabilities,
})

-- require("lspconfig").eslint.setup({
--   on_attach = function(client, bufnr)
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       buffer = bufnr,
--       command = "EslintFixAll",
--     })
--   end,
-- })

if settings.enable_clangd then
  require("lspconfig").clangd.setup({})
else
  require("lspconfig")["ccls"].setup({
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

require("lspconfig")["lua_ls"].setup({
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
        -- Get the language server to recognize the `vim` global
        globals = {
          "vim",
          -- 'describe',
          -- 'it',
          -- 'assert',
          "nnoremap",
          "vnoremap",
          "inoremap",
          "tnoremap",
          "use",
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", false),
        checkThirdParty = false,
      },
      -- adjust these two values if your performance is not optimal
      -- maxPreload = 2000,
      -- preloadFileSize = 1000,
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})
