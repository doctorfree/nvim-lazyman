local linterConfig = vim.fn.stdpath("config") .. '.linter_configs'

require("conform").setup({
	formatters_by_ft = {
    javascript = { { "prettierd", "prettier" } },
		-- typescript = { "biome" },
		-- json = { "biome" },
		-- jsonc = { "biome" },
		lua = { "stylua" },
		python = { "black" },
		yaml = { "prettier" },
		html = { "prettier" },
		markdown = { "markdownlint" },
		css = { "stylelint", "prettier" },
		sh = { "shfmt", "shellharden" },
		bib = { "bibtex_tidy" },
    ["*"] = { "trim_whitespace" },
	},
  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  },
  format_after_save = {
    lsp_fallback = true,
  },
	-- log_level = vim.log.levels.DEBUG,
  log_level = vim.log.levels.ERROR,
  -- Conform will notify you when a formatter errors
  notify_on_error = true,

	-- custom formatters
	formatters = {
		-- PENDING https://github.com/stevearc/conform.nvim/issues/44
		-- shellcheck = {
		-- 	command = "shellcheck",
		-- 	-- Using `git apply` is the officially recommended way for auto-fixing
		-- 	-- https://github.com/koalaman/shellcheck/issues/1220#issuecomment-594811243
		-- 	arg = "--shell=bash --format=diff '$FILENAME' | git apply",
		-- 	stdin = false,
		-- },
		markdownlint = {
			command = "markdownlint",
			stdin = false,
			args = { "--fix", "--config", linterConfig .. "/markdownlint.yaml", "$FILENAME" },
		},
		codespell = {
			command = "codespell",
			stdin = false,
			args = {
				"$FILENAME",
				"--write-changes",
				"--builtin=rare,clear,informal,code,names,en-GB_to_en-US",
				"--check-hidden", -- conform temp file is hidden
				"--ignore-words",
				linterConfig .. "/codespell-ignore.txt",
			},
			-- don't run on css or bib files
			condition = function(ctx)
				return not (ctx.filename:find("%.css$") or ctx.filename:find("%.bib$"))
			end,
		},
		bibtex_tidy = {
			command = "bibtex-tidy",
			stdin = true,
			args = {
				"--quiet",
				"--tab",
				"--curly",
				"--strip-enclosing-braces",
				"--enclosing-braces=title,journal,booktitle",
				"--numeric",
				"--months",
				"--no-align",
				"--encode-urls",
				"--duplicates",
				"--drop-all-caps",
				"--sort-fields",
				"--remove-empty-fields",
				"--no-wrap",
			},
		},
	},
})
