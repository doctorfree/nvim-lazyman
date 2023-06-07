local settings = require("configuration")
local notes = settings.neorg_notes
if notes == "" or notes == nil then
  notes = { "~/notes" }
end

local preview = {}
if settings.markdown_preview == "preview" then
  preview = {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install && git reset --hard",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
    event = "VeryLazy",
    config = function()
      require("config.markdown-preview")
      local wk = require("which-key")
      wk.register({
        m = {
          name = "Markdown",
          p = { ":MarkdownPreview<CR>", "Start Preview" },
          s = { ":MarkdownPreviewStop<CR>", "Stop Preview" },
          t = { ":MarkdownPreviewToggle<CR>", "Toggle Preview" },
        },
      }, {
        prefix = "<leader>", mode = "n", { silent = true }
      })
    end,
    ft = { "markdown" },
  }
elseif settings.markdown_preview == "peek" then
  preview = {
    "toppair/peek.nvim",
    event = { "BufRead", "BufNewFile" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup()
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  }
end

if settings.enable_notes then
  return {
    preview,
    --Markdown (or any Outline)
    { "simrat39/symbols-outline.nvim", event = "VeryLazy" },
    { "stevearc/aerial.nvim",          event = "VeryLazy" },
    { "preservim/vim-markdown",        event = "VeryLazy" },
    { "godlygeek/tabular",             event = "VeryLazy" },
    {
      "epwalsh/obsidian.nvim",
      event = "VeryLazy",
      config = function()
        require("config.obsidian")
      end
    },
    {
      "nvim-neorg/neorg",
      build = ":Neorg sync-parsers",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("neorg").setup {
          load = {
            ["core.defaults"] = {},  -- Loads default behaviour
            ["core.concealer"] = {}, -- Adds pretty icons to your documents
            ["core.dirman"] = {      -- Manages Neorg workspaces
              config = {
                workspaces = notes,
              },
            },
          },
        }
      end,
    },
  }
else
  return {}
end
