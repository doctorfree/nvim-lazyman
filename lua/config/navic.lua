-------------------------------------------------------------------------------
-- Statusline/winbar component using lsp
-- SmiteshP/nvim-navic
-------------------------------------------------------------------------------
local ok, navic = pcall(require, 'nvim-navic')
if not ok then return end

navic.setup {
    highlight = true,
    separator = ' 〉 ',
}
