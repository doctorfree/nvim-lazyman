local settings = require("configuration")

local ensure_installed_cfg = {}
if settings.treesitter_ensure_installed == nil then
  ensure_installed_cfg = {
    "bash", "c", "help", "html", "javascript", "json", "lua", "vim", "yaml", "php",
    "markdown", "markdown_inline", "python", "query", "regex", "tsx", "typescript"
  }
  -- {
  --   "bash", "c", "help", "html", "javascript", "json", "lua", "luap", "markdown",
  --   "markdown_inline", "python", "query", "regex", "tsx", "typescript", "vim", "yaml",
  -- },
else
  ensure_installed_cfg = settings.treesitter_ensure_installed
end

local rainbow_plugin = "mrjones2014/nvim-ts-rainbow"
local rainbow_cfg = {
  enable = true,
  extended_mode = false,
  colors = {
    "#ff6188",
    "#fc9867",
    "#ffd866",
    "#a9dc76",
    "#78dce8",
    "#ab9df2",
  },
  disable = { "html" },
}
if settings.enable_rainbow2 then
  rainbow_plugin = "HiPhish/nvim-ts-rainbow2"
  rainbow_cfg = {
    enable = true,
    -- list of languages you want to disable the plugin for
    disable = { "html" },
    -- Which query to use for finding delimiters
    query = 'rainbow-parens',
  }
end

return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter-textobjects",
        init = function()
          -- PERF: no need to load the plugin, if we only need its queries for mini.ai
          local plugin = require("lazy.core.config").spec.plugins["nvim-treesitter"]
          local opts = require("lazy.core.plugin").values(plugin, "opts", false)
          local enabled = false
          if opts.textobjects then
            for _, mod in ipairs({ "move", "select", "swap", "lsp_interop" }) do
              if opts.textobjects[mod] and opts.textobjects[mod].enable then
                enabled = true
                break
              end
            end
          end
          if not enabled then
            require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
          end
        end,
      },
    },
    keys = {
      { "<c-space>", desc = "Increment selection" },
      { "<bs>", desc = "Decrement selection", mode = "x" },
    },
    ---@type TSConfig
    opts = {
      highlight = { enable = true },
      indent = { enable = true, disable = { "python" } },
      context_commentstring = { enable = true, enable_autocmd = false },
      ensure_installed = ensure_installed_cfg,
      rainbow = rainbow_cfg,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = "<nop>",
          node_decremental = "<bs>",
        },
      },
    },
    ---@param opts TSConfig
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
