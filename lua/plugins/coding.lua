local settings = require("configuration")
local surround = {}

if settings.enable_surround then
  surround = {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  }
end

return {

  -- snippets
  {
    "L3MON4D3/LuaSnip",
    build = (not jit.os:find("Windows"))
        and "echo -e 'NOTE: jsregexp is optional, so not a big deal if it fails to build\n'; make install_jsregexp"
        or nil,
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
    -- stylua: ignore
    keys = {
      {
        "<tab>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
      { "<tab>",   function() require("luasnip").jump(1) end,  mode = "s" },
      { "<s-tab>", function() require("luasnip").jump(-1) end, mode = { "i", "s" } },
    },
  },

  -- auto completion
  {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-jdtls",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("config.nvim-cmp")
    end,
  },

  -- auto pairs
  {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
    opts = {
      enable_check_bracket_line = false, -- Don't add pairs if it already has a close pair in the same line
      ignored_next_char = "[%w%.]",      -- will ignore alphanumeric and `.` symbol
      check_ts = true,                   -- use treesitter to check for a pair.
      ts_config = {
        lua = { "string" },              -- it will not add pair on that treesitter node
        javascript = { "template_string" },
        java = false,                    -- don't check treesitter on java
      },
    },
    -- config = function() require("nvim-autopairs").setup {} end
    config = function(_, opts)
      require("nvim-autopairs").setup({ opts })
    end,
  },

  surround,

  -- comments
  { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    opts = {
      options = {
        ignore_blank_line = false,
      },
      mappings = {
        comment = "mc",
        comment_line = "ml",
        textobject = "mt",
      },
      hooks = {
        pre = function()
          require("ts_context_commentstring.internal").update_commentstring({})
        end,
      },
    },
    config = function(_, opts)
      require("mini.comment").setup(opts)
    end,
  },

  {
    "lvimuser/lsp-inlayhints.nvim",
    lazy = true,
  },

  {
    "ray-x/lsp_signature.nvim",
    lazy = true,
    config = function()
      require("config.lsp.signature")
    end,
  },

  {
    "glepnir/lspsaga.nvim",
    lazy = true,
    config = function()
      require("config.lspsaga")
    end,
  },

  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
    lazy = true,
  },
}
