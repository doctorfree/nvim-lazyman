local settings = require("configuration")
local formatters_linters = settings.formatters_linters
local external_formatters = settings.external_formatters
local table_contains = require("util").table_contains

local linterConfig = vim.fn.stdpath("config") .. '.linter_configs'
local ft_formatters = {}

if table_contains(formatters_linters, "prettier") then
  ft_formatters = {
    javascript = { "prettier" },
    yaml = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
  }
end
if table_contains(formatters_linters, "stylua") then
  table.insert(ft_formatters, { lua = { "stylua" } })
end
if table_contains(formatters_linters, "markdownlint") then
  table.insert(ft_formatters, { markdown = { "markdownlint" } })
end
if table_contains(external_formatters, "flake8") then
  if vim.fn.executable("flake8") == 1 then
    table.insert(ft_formatters, { python = { "flake8" } })
  end
end
if table_contains(formatters_linters, "shellcheck") then
  table.insert(ft_formatters, { sh = { "shellcheck" } })
  table.insert(ft_formatters, { zsh = { "shellcheck" } })
  table.insert(ft_formatters, { bash = { "shellcheck" } })
end

table.insert(ft_formatters, { ["*"] = { "trim_whitespace" } })

require("conform").setup({
  formatters_by_ft = ft_formatters,
    -- {
    -- typescript = { "biome" },
    -- json = { "biome" },
    -- jsonc = { "biome" },
    -- python = { "black" },
    -- sh = { "shfmt", "shellharden" },
    -- bib = { "bibtex_tidy" },
  -- },
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
    markdownlint = {
      command = "markdownlint",
      stdin = false,
      args = { "--fix", "--config", linterConfig .. "/markdownlint.yaml", "$FILENAME" },
    },
    flake8 = {
      command = "flake8",
      stdin = false,
      args = { "--ignore=E203,E501,E402,F401,F821,W503,W292" },
    },
    beautysh = {
      command = "beautysh",
      stdin = false,
      args = { "--indent-size", "2" },
    },
    shellcheck = {
      command = "shellcheck",
      -- Using `git apply` is the officially recommended way for auto-fixing
      -- https://github.com/koalaman/shellcheck/issues/1220#issuecomment-594811243
      -- arg = "--shell=bash --format=diff '$FILENAME' | git apply",
      arg = "--shell=bash",
      stdin = false,
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
