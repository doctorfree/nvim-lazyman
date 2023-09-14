local settings = require("configuration")
if settings.enable_conform ~= true then
  return {}
end

local linterConfig = vim.fn.stdpath("config") .. '.linter_configs'

local function linterConfigs()
	local lint = require("lint")
	local linters = require("lint").linters

	lint.linters_by_ft = {
		lua = { "selene" },
		css = { "stylelint" },
		sh = { "shellcheck" },
		markdown = { "markdownlint" },
		yaml = { "yamllint" },
		python = { "pylint" },
		gitcommit = {},
		json = {},
		javascript = {},
		typescript = {},
		toml = {},
		text = {},
	}

	-- use for codespell for all except bib and css
	for ft, _ in pairs(lint.linters_by_ft) do
		if ft ~= "bib" and ft ~= "css" then table.insert(lint.linters_by_ft[ft], "codespell") end
	end

	linters.codespell.args = {
		"--ignore-words",
		linterConfig .. "/codespell-ignore.txt",
		"--builtin=rare,clear,informal,code,names,en-GB_to_en-US",
	}

	linters.shellcheck.args = {
		"--shell=bash", -- force to work with zsh
		"--format=json",
		"-",
	}

	linters.yamllint.args = {
		"--config-file",
		linterConfig .. "/yamllint.yaml",
		"--format=parsable",
		"-",
	}

	linters.markdownlint.args = {
		"--disable=no-trailing-spaces", -- not disabled in config, so it's enabled for formatting
		"--disable=no-multiple-blanks",
		"--config=" .. linterConfig .. "/markdownlint.yaml",
	}
end

local function lintTriggers()
	vim.api.nvim_create_autocmd({ "BufReadPost", "InsertLeave", "TextChanged", "FocusGained" }, {
		callback = function() vim.defer_fn(require("lint").try_lint, 1) end,
	})

	-- due to auto-save.nvim, we need the custom event "AutoSaveWritePost"
	-- instead of "BufWritePost" to trigger linting to prevent race conditions
	vim.api.nvim_create_autocmd("User", {
		pattern = "AutoSaveWritePost",
		callback = function() require("lint").try_lint() end,
	})
	-- run once on start
	require("lint").try_lint()
end

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
			linterConfigs()
			lintTriggers()
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
