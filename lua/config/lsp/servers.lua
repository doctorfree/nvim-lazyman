local settings = require("configuration")

local servers = {
  ccls = {},
  clangd = {},
  cssls = {},
  html = {},
  jsonls = {},
  sqlls = {},
  intelephense = {}, -- php language server
  jdtls = {},
  rust_analyzer = {},
  lua_ls = {
    settings = {
      Lua = {
        hint = {
          enable = true,
          arrayIndex = "Disable", -- "Enable", "Auto", "Disable"
          await = true,
          paramName = "Disable", -- "All", "Literal", "Disable"
          paramType = false,
          semicolon = "Disable", -- "All", "SameLine", "Disable"
          setType = true,
        },
        runtime = {
          version = "LuaJIT",
          special = {
            reload = "require",
          },
        },
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = false,
            [vim.fn.stdpath("config") .. "/lua"] = false,
          },
        },
        telemetry = {
          enable = false,
        },
      },
    },
  },
  marksman = {},
  tsserver = {
    settings = {
      typescript = {
        inlayHints = {
          includeInlayParameterNameHints = "all",
          includeInlayParameterNameHintsWhenArgumentMatchesName = true,
          includeInlayFunctionParameterTypeHints = true,
          includeInlayVariableTypeHints = true,
          includeInlayPropertyDeclarationTypeHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayEnumMemberValueHints = true,
        },
      },
      javascript = {
        inlayHints = {
          includeInlayParameterNameHints = "all",
          includeInlayParameterNameHintsWhenArgumentMatchesName = false,
          includeInlayFunctionParameterTypeHints = true,
          includeInlayVariableTypeHints = true,
          includeInlayPropertyDeclarationTypeHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayEnumMemberValueHints = true,
        },
      },
    },
  },
  pyright = {
    settings = {
      python = {
        analysis = {
          typeCheckingMode = "basic",
          diagnosticMode = "workspace",
          inlayHints = {
            variableTypes = true,
            functionReturnTypes = true,
          },
        },
      },
    },
  },
  bashls = {},
}

return servers
