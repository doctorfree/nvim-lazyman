local settings = require("configuration")

local cmpnpm = {}
if not settings.enable_copilot then
  cmpnpm = {
    "David-Kunz/cmp-npm",
    ft = "json",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('cmp-npm').setup({
        ignore = {},
        only_semantic_versions = true,
      })
    end,
  }
end

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

local nvimcmp = {
  "hrsh7th/nvim-cmp",
  version = false,
  event = "VeryLazy",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
  },
  config = function()
    require("config.nvim-cmp")
  end,
}
local actionmenu = {}
local minicomment = {}
local inlayhints = {}
local signature = {}
local lspsaga = {}
local snippet = {}

if settings.enable_coding then
  snippet = {
    "L3MON4D3/LuaSnip",
    build = (not jit.os:find("Windows"))
        and "echo -e 'NOTE: jsregexp is optional, so not a big deal if it fails to build\n'; make install_jsregexp"
        or nil,
    dependencies = {
      "rafamadriz/friendly-snippets",
      "saadparwaiz1/cmp_luasnip",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        local snippet_path = vim.fn.stdpath("config") .. "/snippets"
        require("luasnip.loaders.from_snipmate").load({ path = { snippet_path }, })
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
  }
  nvimcmp = {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "VeryLazy",
    dependencies = {
      "mfussenegger/nvim-jdtls",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-calc",
    },
    config = function()
      require("config.nvim-cmp")
    end,
  }
  minicomment = {
    "echasnovski/mini.comment",
    version = false,
    event = "VeryLazy",
    opts = {
      mappings = {
        comment = "mc",
        comment_line = "ml",
        textobject = "mt",
      },
    },
    config = function(_, opts)
      require("mini.comment").setup(opts)
    end,
  }
  inlayhints = {
    "lvimuser/lsp-inlayhints.nvim",
    lazy = true,
  }
  signature = {
    "ray-x/lsp_signature.nvim",
    lazy = true,
    config = function()
      require("config.lsp.signature")
    end,
  }
  lspsaga = {
    "glepnir/lspsaga.nvim",
    lazy = true,
    config = function()
      require("config.lspsaga")
    end,
  }
  actionmenu = {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
    lazy = true,
  }
end

return {

  -- snippets
  snippet,

  -- auto completion
  nvimcmp,
  cmpnpm,
  { "onsails/lspkind-nvim" },

  -- auto pairs
  {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
    opts = {
      enable_check_bracket_line = false,
      ignored_next_char = "[%w%.]",
      check_ts = true,
      ts_config = {
        lua = { "string" },
        javascript = { "template_string" },
        java = false,
      },
    },
    config = function(_, opts)
      require("nvim-autopairs").setup({ opts })
    end,
  },

  surround,

  minicomment,

  inlayhints,

  signature,

  lspsaga,

  actionmenu,
}
