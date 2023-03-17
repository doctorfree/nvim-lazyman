local settings = require("configuration")
if not settings.enable_bookmarks then
  return {}
else
  return {
    {
      "crusj/bookmarks.nvim",
      branch = "main",
      event = "VeryLazy",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("bookmarks").setup({
          keymap = {
            toggle = "<tab><tab>", -- Toggle bookmarks
            add = "\\z", -- Add bookmarks
            jump = "<CR>", -- Jump from bookmarks
            delete = "dd", -- Delete bookmarks
            order = "<space><space>", -- Order bookmarks by frequency or updated_time
            delete_on_virt = "\\dd", -- Delete bookmark at virt text line
            show_desc = "\\sd", -- show bookmark desc
          },
          width = 0.8, -- Bookmarks window width:  (0, 1]
          height = 0.6, -- Bookmarks window height: (0, 1]
          preview_ratio = 0.4, -- Bookmarks preview window ratio (0, 1]
          preview_ext_enable = false, -- If true, preview buf will add file ext, preview window may be highlighed(treesitter), but may be slower.
          fix_enable = false, -- If true, when saving the current file, if the bookmark line number of the current file changes, try to fix it.
          hl_cursorline = "guibg=Gray guifg=White", -- hl bookmarsk window cursorline.

          virt_text = "🔖", -- Show virt text at the end of bookmarked lines
          virt_pattern = { "*.go", "*.lua", "*.sh", "*.php", "*.rs" }, -- Show virt text only on matched pattern
        })
      end,
    },
  }
end
