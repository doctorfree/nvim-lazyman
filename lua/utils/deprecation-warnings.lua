local disabled_deprecation_warnings = {
  "vim.treesitter.query",
  "vim.treesitter.parse_query",
  "vim.treesitter.language.inspect_language",
}

local orig_deprecate = vim.deprecate

local filter_deprecate = function(name, ...)
  for _, disabled in pairs(disabled_deprecation_warnings) do
    if name:find(disabled, 1, true) then
      return
    end
  end
  orig_deprecate(name, ...)
end

vim.deprecate = filter_deprecate
