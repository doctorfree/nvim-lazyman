local settings = require("configuration")
local enable_codeium = settings.enable_codeium
local enable_copilot = settings.enable_copilot
local enable_neoai = settings.enable_neoai
if not settings.enable_coding then
  enable_codeium = false
  enable_copilot = false
  enable_neoai = false
end

local codeium = {}
local copilot = {}
local copilot_cmp = {}
local neoai = {}
if enable_neoai then
  neoai = {
    "Bryley/neoai.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    cmd = {
      "NeoAI",
      "NeoAIOpen",
      "NeoAIClose",
      "NeoAIToggle",
      "NeoAIContext",
      "NeoAIContextOpen",
      "NeoAIContextClose",
      "NeoAIInject",
      "NeoAIInjectCode",
      "NeoAIInjectContext",
      "NeoAIInjectContextCode",
    },
    keys = {
      { "<leader>as", desc = "summarize text" },
      { "<leader>ag", desc = "generate git message" },
    },
    config = function()
      require("neoai").setup({
        ui = {
          output_popup_text = "NeoAI",
          input_popup_text = "Prompt",
          width = 30, -- As percentage eg. 30%
          output_popup_height = 80, -- As percentage eg. 80%
          submit = "<Enter>", -- Key binding to submit the prompt
        },
        models = {
          {
            name = "openai",
            model = "gpt-3.5-turbo",
            params = nil,
          },
        },
        register_output = {
          ["g"] = function(output)
            return output
          end,
          ["c"] = require("neoai.utils").extract_code_snippets,
        },
        inject = {
          cutoff_width = 75,
        },
        prompts = {
          context_prompt = function(context)
            return "Hey, I'd like to provide some context for future "
              .. "messages. Here is the code/text that I want to refer "
              .. "to in our upcoming conversations:\n\n"
              .. context
          end,
        },
        mappings = {
          ["select_up"] = "<C-k>",
          ["select_down"] = "<C-j>",
        },
        open_api_key_env = "OPENAI_API_KEY",
        shortcuts = {
          {
            name = "textify",
            key = "<leader>as",
            desc = "fix text with AI",
            use_context = true,
            prompt = [[
              Please rewrite the text to make it more readable, clear,
              concise, and fix any grammatical, punctuation, or spelling
              errors
            ]],
            modes = { "v" },
            strip_function = nil,
          },
          {
            name = "gitcommit",
            key = "<leader>ag",
            desc = "generate git commit message",
            use_context = false,
            prompt = function()
              return [[
                Using the following git diff generate a consise and
                clear git commit message, with a short title summary
                that is 75 characters or less:
              ]] .. vim.fn.system("git diff --cached")
            end,
            modes = { "n" },
            strip_function = nil,
          },
        },
      })
    end,
  }
end

if enable_codeium then
  codeium = {
    "jcdickinson/codeium.nvim",
    commit = "b1ff0d6c993e3d87a4362d2ccd6c660f7444599f",
    cmd = "Codeium",
    event = "InsertEnter",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = true,
  }
end

if enable_copilot then
  copilot = {
    "zbirenbaum/copilot.lua",
    build = ":Copilot auth",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("config.copilot")
    end,
  }
  copilot_cmp = {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  }
end

local cmpnpm = {}
if not settings.enable_copilot then
  cmpnpm = {
    "David-Kunz/cmp-npm",
    ft = "json",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("cmp-npm").setup({
        ignore = {},
        only_semantic_versions = true,
      })
    end,
  }
end

local securitree = {}
if settings.enable_securitree then
  securitree = {
    "GeekMasher/securitree.nvim",
    lazy = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "MunifTanjim/nui.nvim",
      -- optional
      -- "nvim-treesitter/playground"
    },
    config = function()
      require("securitree").setup({})
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
    "hrsh7th/cmp-nvim-lua",
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
local tscomment = {}
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
        require("luasnip.loaders.from_snipmate").load({ path = { snippet_path } })
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
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lua",
      "mfussenegger/nvim-jdtls",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-calc",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      copilot_cmp,
    },
    config = function()
      require("config.nvim-cmp")
    end,
  }
  -- comments
  tscomment = { "JoosepAlviste/nvim-ts-context-commentstring", lazy = true }
  minicomment = {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    opts = {
      hooks = {
        pre = function()
          require("ts_context_commentstring.internal").update_commentstring({})
        end,
      },
    },
    config = function(_, opts)
      require("mini.comment").setup(opts)
    end,
  }
  -- minicomment = {
  --   "echasnovski/mini.comment",
  --   version = false,
  --   event = "VeryLazy",
  --   opts = {
  --     mappings = {
  --       comment = "mc",
  --       comment_line = "ml",
  --       textobject = "mt",
  --     },
  --   },
  --   config = function(_, opts)
  --     require("mini.comment").setup(opts)
  --   end,
  -- }
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
  tscomment,
  minicomment,
  inlayhints,
  signature,
  lspsaga,
  actionmenu,
  -- AI
  codeium,
  copilot,
  copilot_cmp,
  neoai,
  securitree,
}
