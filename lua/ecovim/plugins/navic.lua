local navic = require("nvim-navic")

vim.g.navic_silence = true
vim.api.nvim_set_hl(0, "NavicText", { link = "Comment" })
vim.api.nvim_set_hl(0, "NavicSeparator", { link = "Comment" })

navic.setup {
    lsp = {
        auto_attach = true,
        preference = nil,
    },
    highlight = true,
    separator = " " .. Ecovim.icons.caretRight .. " ",
    depth_limit = 0,
    depth_limit_indicator = "..",
    icons = require("icons").kinds,
    safe_output = true
}
