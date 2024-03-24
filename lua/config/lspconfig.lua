local settings = require("configuration")
local lsp_servers = settings.lsp_servers
local lsp_installed = settings.lsp_installed
local formatters_linters = settings.formatters_linters
local external_formatters = settings.external_formatters
local showdiag = settings.show_diagnostics
local table_contains = require("util").table_contains
local fn = vim.fn
local api = vim.api
local keymap = vim.keymap
local diagnostic = vim.diagnostic

-- set quickfix list from diagnostics in a certain buffer, not the whole workspace
local set_qflist = function(buf_num, severity)
  local diagnostics = nil
  diagnostics = diagnostic.get(buf_num, { severity = severity })

  local qf_items = diagnostic.toqflist(diagnostics)
  fn.setqflist({}, ' ', { title = 'Diagnostics', items = qf_items })

  -- open quickfix by default
  vim.cmd[[copen]]
end

local custom_attach = function(client, bufnr)
  -- Mappings.
  local map = function(mode, l, r, opts)
    opts = opts or {}
    opts.silent = true
    opts.buffer = bufnr
    keymap.set(mode, l, r, opts)
  end

  map("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
  map("n", "<C-]>", vim.lsp.buf.definition)
  map("n", "K", vim.lsp.buf.hover, { desc = "Display symbol info in float"})
  map("n", "<C-k>", vim.lsp.buf.signature_help)
  map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "varialbe rename" })
  map("n", "gr", vim.lsp.buf.references, { desc = "show references" })
  map("n", "[d", diagnostic.goto_prev, { desc = "previous diagnostic" })
  map("n", "]d", diagnostic.goto_next, { desc = "next diagnostic" })
  -- this puts diagnostics from opened files to quickfix
  map("n", "<leader>qw", diagnostic.setqflist, { desc = "put window diagnostics to qf" })
  -- this puts diagnostics from current buffer to quickfix
  map("n", "<leader>qb", function() set_qflist(bufnr) end, { desc = "put buffer diagnostics to qf" })
  map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
  map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { desc = "add workspace folder" })
  map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, { desc = "remove workspace folder" })
  map("n", "<leader>wl", function()
    vim.print(vim.lsp.buf.list_workspace_folders())
  end, { desc = "list workspace folder" })

  -- Set some key bindings conditional on server capabilities
  if client.server_capabilities.documentFormattingProvider then
    map("n", "<leader>f", vim.lsp.buf.format, { desc = "format code" })
  end

  api.nvim_create_autocmd("CursorHold", {
    buffer = bufnr,
    callback = function()
      local float_opts = {
        focusable = false,
        close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
        border = "rounded",
        source = "always", -- show source in diagnostic popup window
        prefix = " ",
      }

      if not vim.b.diagnostics_pos then
        vim.b.diagnostics_pos = { nil, nil }
      end

      local cursor_pos = api.nvim_win_get_cursor(0)
      if (cursor_pos[1] ~= vim.b.diagnostics_pos[1] or cursor_pos[2] ~= vim.b.diagnostics_pos[2])
          and #diagnostic.get() > 0
      then
        diagnostic.open_float(nil, float_opts)
      end

      vim.b.diagnostics_pos = cursor_pos
    end,
  })

  -- The blow command will highlight the current variable and its usages in the buffer.
  if client.server_capabilities.documentHighlightProvider then
    vim.cmd([[
      hi! link LspReferenceRead Visual
      hi! link LspReferenceText Visual
      hi! link LspReferenceWrite Visual
    ]])

    local gid = api.nvim_create_augroup("lsp_document_highlight", { clear = true })
    api.nvim_create_autocmd("CursorHold" , {
      group = gid,
      buffer = bufnr,
      callback = function ()
        vim.lsp.buf.document_highlight()
      end
    })

    api.nvim_create_autocmd("CursorMoved" , {
      group = gid,
      buffer = bufnr,
      callback = function ()
        vim.lsp.buf.clear_references()
      end
    })
  end

  if vim.g.logging_level == "debug" then
    local msg = string.format("Language server %s started!", client.name)
    vim.notify(msg, vim.log.levels.DEBUG, { title = "Nvim-config" })
  end
end


local open_float = "<cmd>lua vim.diagnostic.open_float()<cr>"
if not showdiag == "popup" then
  open_float = ""
end

-- Style floating windows
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

-- Borders for LspInfo winodw
require("lspconfig.ui.windows").default_options.border = "rounded"

api.nvim_create_autocmd("LspAttach", {
  desc = "LSP actions",
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      keymap.set(mode, lhs, rhs, { buffer = true })
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

require("util").on_attach(function(client, buffer)
  require("config.lsp.navic").attach(client, buffer)
  require("config.lsp.lspkeymaps").attach(client, buffer)
  require("config.lsp.keymaps").on_attach(client, buffer)
  require("config.lsp.inlayhints").attach(client, buffer)
  require("config.lsp.gitsigns").attach(client, buffer)
  require("config.lsp.python").attach(client, buffer)
end)


-- diagnostics
for name, icon in pairs(require("icons").diagnostics) do
  name = "DiagnosticSign" .. name
  fn.sign_define(name, { text = icon, texthl = name, numhl = "" })
end
if showdiag == "none" then
  diagnostic.config(require("config.lsp.diagnostics")["off"])
else
  diagnostic.config(require("config.lsp.diagnostics")["on"])
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
    diagnostic.show()
  else
    diagnostic.hide()
  end
end

fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

diagnostic.config({
  update_in_insert = false,
})

if settings.enable_coding then
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

  local lspconfig = require("lspconfig")
  local navic = require("nvim-navic")

  local handlers = {
    ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      silent = true,
      border = "rounded",
    }),
    ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
    ["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,
      { virtual_text = false }
    ),
  }

  if table_contains(lsp_servers, "tailwindcss") then
    lspconfig.tailwindcss.setup({
      capabilities = require("config.lsp.servers.tailwindcss").capabilities,
      filetypes = require("config.lsp.servers.tailwindcss").filetypes,
      handlers = handlers,
      init_options = require("config.lsp.servers.tailwindcss").init_options,
      on_attach = require("config.lsp.servers.tailwindcss").on_attach,
      settings = require("config.lsp.servers.tailwindcss").settings,
    })
  end

  if table_contains(lsp_installed, "cssls") then
    lspconfig.cssls.setup({
      capabilities = capabilities,
      handlers = handlers,
      on_attach = require("config.lsp.servers.cssls").on_attach,
      settings = require("config.lsp.servers.cssls").settings,
    })
  end

  if table_contains(lsp_installed, "pylsp") then
    local venv_path = os.getenv('VIRTUAL_ENV')
    local py_path = nil
    -- decide which python executable to use for mypy
    if venv_path ~= nil then
      py_path = venv_path .. "/bin/python3"
    else
      py_path = vim.g.python3_host_prog
    end
    local enable_black = { enabled = false }
    if table_contains(external_formatters, "black") then
      enable_black = { enabled = true }
    end
    local enable_ruff = { enabled = false }
    if table_contains(external_formatters, "ruff") then
      enable_ruff = { enabled = true }
    end
    lspconfig.pylsp.setup({
      capabilities = capabilities,
      handlers = handlers,
      settings = {
        pylsp = {
          plugins = {
            -- formatter options
            black = enable_black,
            autopep8 = { enabled = false },
            yapf = { enabled = false },
            -- linter options
            pylint = { enabled = false },
            ruff = enable_ruff,
            pyflakes = { enabled = false },
            pycodestyle = { enabled = false },
            -- type checker
            pylsp_mypy = {
              enabled = true,
              overrides = { "--python-executable", py_path, true },
              report_progress = true,
              live_mode = false
            },
            -- auto-completion options
            jedi_completion = { fuzzy = true },
            -- import sorting
            isort = { enabled = true },
          },
        },
      },
      flags = {
        debounce_text_changes = 200,
      },
    })
  end

  if table_contains(lsp_servers, "vimls") then
    lspconfig.vimls.setup {
      on_attach = custom_attach,
      flags = {
        debounce_text_changes = 500,
      },
      capabilities = capabilities,
    }
  end

  if table_contains(lsp_servers, "vuels") then
    lspconfig.vuels.setup({
      filetypes = require("config.lsp.servers.vuels").filetypes,
      handlers = handlers,
      init_options = require("config.lsp.servers.vuels").init_options,
      on_attach = require("config.lsp.servers.vuels").on_attach,
      settings = require("config.lsp.servers.vuels").settings,
    })
  end

  if table_contains(lsp_installed, "jsonls") then
    lspconfig.jsonls.setup({
      capabilities = capabilities,
      handlers = handlers,
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
      handlers = handlers,
      filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
        "vue",
        "svelte",
        "astro",
      },
      root_dir = require("lspconfig.util").root_pattern(".git"),
      settings = {
        codeAction = {
          disableRuleComment = {
            enable = true,
            location = "separateLine",
          },
          showDocumentation = {
            enable = true,
          },
        },
        codeActionOnSave = {
          enable = false,
          mode = "all",
        },
        experimental = {
          useFlatConfig = false,
        },
        format = true,
        nodePath = "",
        onIgnoredFiles = "off",
        packageManager = "npm",
        problems = {
          shortenToSingleLine = false,
        },
        quiet = false,
        rulesCustomizations = {},
        run = "onType",
        useESLintClass = false,
        validate = "on",
        workingDirectory = {
          mode = "location",
        },
      },
      on_attach = function(_, bufnr)
        api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end,
    })
  end

  if table_contains(lsp_servers, "tsserver") then
    if settings.typescript_server == "tsserver" then
      -- make sure to only run this once!
      local formatter_bin = "eslint_d"
      if table_contains(formatters_linters, "prettier") then
        formatter_bin = "prettier"
      end
      local tsserver_on_attach = function(client, bufnr)
        -- disable tsserver formatting if you plan on formatting via null-ls or conform
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
        api.nvim_buf_set_keymap(bufnr, "n", ",go", ":TSLspOrganize<CR>", opts)
        api.nvim_buf_set_keymap(bufnr, "n", ",gR", ":TSLspRenameFile<CR>", opts)
        api.nvim_buf_set_keymap(bufnr, "n", ",gi", ":TSLspImportAll<CR>", opts)

        navic.attach(client, bufnr)
      end

      lspconfig.tsserver.setup({
        capabilities = capabilities,
        handlers = handlers,
        on_attach = tsserver_on_attach,
        settings = require("config.lsp.servers.tsserver").settings,
      })
    end
  end

  local other_servers_with_navic = {
    "awk_ls",
    "rust_analyzer",
    "ansiblels",
    "cmake",
    "taplo",
  }
  local check_servers_with_navic = {
    "pyright",
    "cssmodules_ls",
    "dockerls",
    "marksman",
    "sqlls",
    "texlab",
  }
  for _, server in ipairs(check_servers_with_navic) do
    if table_contains(lsp_servers, server) then
      table.insert(other_servers_with_navic, server)
    end
  end
  for _, server in ipairs(other_servers_with_navic) do
    if lspconfig[server] then
      lspconfig[server].setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          navic.attach(client, bufnr)
        end,
      })
    end
  end

  if table_contains(lsp_servers, "yamlls") then
    lspconfig.yamlls.setup({
      capabilities = capabilities,
      handlers = handlers,
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
    if fn.executable("clangd") == 1 then
      lspconfig.clangd.setup({
        on_attach = custom_attach,
        capabilities = capabilities,
        filetypes = { "c", "cpp", "cc" },
        flags = {
          debounce_text_changes = 500,
        },
      })
    end
  end

  if settings.enable_ccls then
    if fn.executable("ccls") == 1 then
      lspconfig.ccls.setup({
        capabilities = capabilities,
        handlers = handlers,
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

  if table_contains(lsp_installed, "lua_ls") then
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      handlers = handlers,
      -- on_attach = navic.attach,
      on_attach = custom_attach,
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
            library = api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
        },
      },
    })
  end

  if table_contains(lsp_servers, "bashls") then
    -- Enable/Disable shellcheck in bashls
    local bashls_settings = {
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
    lspconfig.bashls.setup({
      on_attach = custom_attach,
      capabilities = capabilities,
      handlers = handlers,
      settings = bashls_settings,
    })
  end

  if table_contains(lsp_servers, "emmet_ls") then
    lspconfig.emmet_ls.setup({
      capabilities = capabilities,
      handlers = handlers,
    })
  end

  if table_contains(lsp_servers, "graphql") then
    lspconfig.graphql.setup({
      capabilities = capabilities,
      handlers = handlers,
    })
  end

  if table_contains(lsp_installed, "html") then
    lspconfig.html.setup({
      capabilities = capabilities,
      handlers = handlers,
    })
  end

  if table_contains(lsp_servers, "prismals") then
    lspconfig.prismals.setup({
      capabilities = capabilities,
      handlers = handlers,
    })
  end

  vim.cmd([[ do User LspAttachBuffers ]])
end

require("ufo").setup({
  fold_virt_text_handler = require("config.nvim-ufo").handler,
  close_fold_kinds_for_ft = {
    default = {'imports', 'comment'},
    json = {'array'},
    c = {'comment', 'region'}
  },
})

-- Diagnostic keymaps
keymap.set("n",
  "[d",
  vim.diagnostic.goto_prev,
  { noremap = true, silent = true, desc = "Go to previous diagnostic" }
)
keymap.set("n",
  "]d",
  vim.diagnostic.goto_next,
  { noremap = true, silent = true, desc = "Go to next diagnostic" }
)
keymap.set("n",
  "<leader>de",
  vim.diagnostic.open_float,
  { noremap = true, silent = true, desc = "Open floating diagnostic" }
)
keymap.set("n",
  "<leader>dq",
  vim.diagnostic.setloclist,
  { noremap = true, silent = true, desc = "Diagnostics location list" }
)
keymap.set("n",
  "<leader>dt",
  toggle_diagnostics,
  { desc = "Toggle diagnostics" }
)
keymap.set("n",
  "L",
  "<cmd>lua vim.lsp.buf.signature_help()<CR>",
  { desc = "Signature help"}
)
