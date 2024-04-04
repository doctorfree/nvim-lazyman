local settings = require("configuration")

local obsidian = {}
if settings.enable_obsidian then
  local obsidian_vault = settings.obsidian_vault
  obsidian = {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = { "BufReadPre " .. vim.fn.expand "~" .. "/" .. obsidian_vault .. "/**.md" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "preservim/vim-markdown",
    },
    config = function()
      require("free.config.obsidian")
    end
  }
end

local preview = {}
if settings.markdown_preview == "preview" then
  preview = {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install && git reset --hard",
    cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
    event = "VeryLazy",
    config = function()
      require("free.config.markdown-preview")
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
    { "godlygeek/tabular",             event = "VeryLazy" },
    {
      "preservim/vim-markdown",
      event = "VeryLazy",
      config = function()
        vim.g.vim_markdown_math = true
        vim.g.vim_markdown_frontmatter = true
        vim.g.vim_markdown_strikethrough = true
        vim.g.vim_markdown_autowrite = true
        vim.g.vim_markdown_toc_autofit = true
      end
    },
    obsidian,
  }
else
  return {}
end
