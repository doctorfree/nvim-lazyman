local settings = require("configuration")
if settings.enable_conform ~= true then
  return {}
end

local utils = require("utils.linter")

return {
	{ -- auto-install missing linters & formatters
		-- (auto-install of lsp servers done via `mason-lspconfig.nvim`)
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		event = "VeryLazy",
		dependencies = "williamboman/mason.nvim",
		config = function()
			-- triggered myself, since `run_on_start`, does not work w/ lazy-loading
			require("mason-tool-installer").setup {
				ensure_installed = settings.formatters_linters,
				run_on_start = false,
			}
			vim.defer_fn(vim.cmd.MasonToolsInstall, 2000)
		end,
	},
	{
		"mfussenegger/nvim-lint",
		event = "VeryLazy",
		config = function()
			utils.linterConfigs()
			utils.lintTriggers()
		end,
	},
	{
		"stevearc/conform.nvim",
		cmd = "ConformInfo",
		keys = {
			{
				"<leader>F",
				function()
					require("conform").format { lsp_fallback = "always" }
					vim.cmd.update()
				end,
				mode = { "n", "x" },
				desc = " Format & Save",
			},
		},
		config = function()
			require("config.conform")
		end,
	},
}
