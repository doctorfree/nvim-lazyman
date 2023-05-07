local settings = require("configuration")
local theme = settings.theme

local function set_colorscheme(sty)
  if sty == "onedark_vivid" then
    vim.cmd([[colorscheme onedark_vivid]])
  elseif sty == "onedark_dark" then
    vim.cmd([[colorscheme onedark_dark]])
  elseif sty == "onelight" then
    vim.opt.background = 'light'
    vim.cmd([[colorscheme onelight]])
  else
    vim.cmd([[colorscheme onedark]])
  end
end

require("onedarkpro").setup({
  colors = {}, -- Override default colors or create your own
  filetypes = { -- Override which filetype highlight groups are loaded
    html = true,
    java = true,
    javascript = true,
    lua = true,
    markdown = true,
    php = true,
    python = true,
    ruby = true,
    rust = true,
    toml = true,
    typescript = true,
    typescriptreact = true,
    vue = true,
    xml = true,
    yaml = true,
  },
  plugins = { -- Override which plugin highlight groups are loaded
    aerial = true,
    barbar = true,
    copilot = true,
    dashboard = true,
    gitsigns = true,
    hop = true,
    indentline = true,
    leap = true,
    lsp_saga = true,
    marks = true,
    neotest = true,
    neo_tree = true,
    nvim_cmp = true,
    nvim_bqf = true,
    nvim_dap = true,
    nvim_dap_ui = true,
    nvim_hlslens = true,
    nvim_lsp = true,
    nvim_navic = true,
    nvim_notify = true,
    nvim_tree = true,
    nvim_ts_rainbow = true,
    op_nvim = true,
    packer = true,
    polygot = true,
    semantic_tokens = false,
    startify = true,
    telescope = true,
    toggleterm = true,
    treesitter = true,
    trouble = true,
    vim_ultest = true,
    which_key = true,
  },
  highlights = {}, -- Override default highlight groups or create your own
  styles = { -- For example, to apply bold and italic, use "bold,italic"
    types = "NONE", -- Style that is applied to types
    methods = "NONE", -- Style that is applied to methods
    numbers = "NONE", -- Style that is applied to numbers
    strings = "NONE", -- Style that is applied to strings
    comments = "NONE", -- Style that is applied to comments
    keywords = "NONE", -- Style that is applied to keywords
    constants = "NONE", -- Style that is applied to constants
    functions = "NONE", -- Style that is applied to functions
    operators = "NONE", -- Style that is applied to operators
    variables = "NONE", -- Style that is applied to variables
    parameters = "NONE", -- Style that is applied to parameters
    conditionals = "NONE", -- Style that is applied to conditionals
    virtual_text = "NONE", -- Style that is applied to virtual text
  },
  options = {
    cursorline = false, -- Use cursorline highlighting?
    transparency = settings.enable_transparent, -- Use a transparent background?
    terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
  }
})

if theme == "onedarkpro" then
  vim.opt.background = 'dark'
  local style = settings.theme_style
  set_colorscheme(style)
  if settings.dashboard == "alpha" then
    vim.api.nvim_set_hl(0, "AlphaHeader", { link = "StartifyHeader" })
    vim.api.nvim_set_hl(0, "AlphaHeaderLabel", { link = "StartifyHeader" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { link = "StartifySection" })
    vim.api.nvim_set_hl(0, "AlphaShortcut", { link = "StartifyFile" })
    vim.api.nvim_set_hl(0, "AlphaFooter", { link = "StartifyFooter" })
  end
  -- Not yet working, may need to clear and/or update cache
  -- local config = require("onedarkpro.config").config
  -- local opts = config.options
  -- vim.g.onedarkpro_transparent = opts.transparency
  -- local utils = require("utils.functions")
  -- utils.map("n", "<leader>ut", function()
  --   vim.g.onedarkpro_transparent = not vim.g.onedarkpro_transparent
  --   opts.transparency = vim.g.onedarkpro_transparent
  --   vim.cmd.OnedarkproClean()
  --   require("onedarkpro").setup({ options = opts })
  --   vim.cmd.OnedarkproCache()
  --   local sett = require("configuration")
  --   local styl = sett.theme_style
  --   set_colorscheme(styl)
  -- end, { desc = "Toggle Transparency" })
end
