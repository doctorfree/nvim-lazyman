local settings = require("configuration")

local treetype = {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require("config.nvim-tree")
  end
}

if settings.enable_neotree then
  treetype = {
    "loctvl842/neo-tree.nvim",
    cmd = "Neotree",
    keys = {
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = require("utils.utils").get_root() })
        end,
        desc = "Explorer (root dir)",
        remap = true,
      },
      { "<leader>E", "<cmd>Neotree toggle position=float<cr>", desc = "Explorer Float" },
    },
    init = function()
      vim.g.neo_tree_remove_legacy_commands = 1
      if vim.fn.argc() == 1 then
        local stat = vim.loop.fs_stat(vim.fn.argv(0))
        if stat and stat.type == "directory" then
          require("neo-tree")
        end
      end
    end,
    config = function()
      require("config.neo-tree")
    end,
  }
end

return {

  treetype,

  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false, -- telescope did only one release, so use HEAD for now
    opts = {
      defaults = {
        prompt_prefix = "  ",
        selection_caret = "❯ ",
        borderchars = { "█", " ", "▀", "█", "█", " ", " ", "▀" },
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
      },
    },
    keys = {
      -- goto
      { "gd",         "<cmd>Telescope lsp_definitions<cr>",        desc = "Go to definition" },
      { "gr",         "<cmd>Telescope lsp_references<cr>",         desc = "Go to references" },
      { "gi",         "<cmd>Telescope lsp_implementations<cr>",    desc = "Go to implementations" },
      -- search
      { "sb",         "<cmd>Telescope git_branches<cr>",           desc = "Checkout branch" },
      { "sc",         "<cmd>Telescope colorscheme<cr>",            desc = "Colorscheme" },
      { "sh",         "<cmd>Telescope help_tags<cr>",              desc = "Find Help" },
      { "sM",         "<cmd>Telescope man_pages<cr>",              desc = "Man Pages" },
      { "sr",         "<cmd>Telescope oldfiles<cr>",               desc = "Open Recent File" },
      { "sR",         "<cmd>Telescope registers<cr>",              desc = "Registers" },
      { "sk",         "<cmd>Telescope keymaps<cr>",                desc = "Keymaps" },
      { "sC",         "<cmd>Telescope commands<cr>",               desc = "Commands" },
      -- Git
      { "<leader>go", "<cmd>Telescope git_status<cr>",             desc = "Open changed file" },
      { "<leader>gb", "<cmd>Telescope git_branches<cr>",           desc = "Checkout branch" },
      { "<leader>gc", "<cmd>Telescope git_commits<cr>",            desc = "Checkout commit" },
      -- Find
      -- { "<leader>f",  "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "Find files" },
      { "<leader>f",  require("utils.utils").telescope("find_files"), desc = "Find files" },
      -- { "<leader>F",  "<cmd>Telescope live_grep<cr>",                           desc = "Find Text" },
      { "<leader>F",  require("utils.utils").telescope("live_grep"),  desc = "Find Text" },
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = {
        presets = { motions = false, g = false }, -- This fix mapping for fold when press f and nothing show up
      },
      window = {
        margin = { 1, 0, 2, 0 },  -- extra window margin [top, right, bottom, left]
        padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      local keymaps = {
            ["<leader>w"] = { "<cmd>w!<CR>", "Save" },
            ["<leader>W"] = { "<cmd>lua vim.lsp.buf.format()<CR><cmd>w!<CR>", "Format and Save" },
            ["<leader>q"] = { "<cmd>q<CR>", "Quit" },
            ["<leader>Q"] = { "<cmd>qa<CR>", "Quit All" },
            ["<leader>h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
            -- ["<leader><Tab>"] = { "<c-6>", "Navigate previous buffer" },
            ["<leader>g"] = { name = "+Git" },
            ["<leader>L"] = { name = "+LSP" },
            ["f"] = { name = "+Fold" },
            ["g"] = { name = "+Goto" },
            ["s"] = { name = "+Search" },
      }
      wk.register(keymaps)
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile", "BufEnter" },
    opts = {
      signs = {
        add = { text = "┃" },
        change = { text = "┋" },
        delete = { text = "契" },
        topdelhfe = { text = "契" },
        changedelete = { text = "┃" },
        untracked = { text = "┃" },
      },
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 300,
      },
      current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
      preview_config = {
        border = { "▄", "▄", "▄", "█", "▀", "▀", "▀", "█" }, -- [ top top top - right - bottom bottom bottom - left ]
      },
    },
    keys = {
      { "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>",                    desc = "Lazygit" },
      { "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>",       desc = "Next Hunk" },
      { "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>",       desc = "Prev Hunk" },
      { "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>",      desc = "Blame" },
      { "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>",    desc = "Preview Hunk" },
      { "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>",      desc = "Reset Hunk" },
      { "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>",    desc = "Reset Buffer" },
      { "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>",      desc = "Stage Hunk" },
      { "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc = "Undo Stage Hunk" },
      { "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>",                   desc = "Diff" },
    },
  },

  -- references
  {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      filetypes_denylist = {
        "dirvish",
        "fugitive",
        "alpha",
        "NvimTree",
        "neo-tree",
        "dashboard",
        "TelescopePrompt",
        "TelescopeResult",
        "DressingInput",
        "",
      },
      delay = 200,
    },
    config = function(_, opts)
      require("illuminate").configure(opts)

      local function map(key, dir, buffer)
        vim.keymap.set("n", key, function()
          require("illuminate")["goto_" .. dir .. "_reference"](false)
        end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })
      end

      map("]]", "next")
      map("[[", "prev")

      -- also set it after loading ftplugins, since a lot overwrite [[ and ]]
      vim.api.nvim_create_autocmd("FileType", {
        callback = function()
          local buffer = vim.api.nvim_get_current_buf()
          map("]]", "next", buffer)
          map("[[", "prev", buffer)
        end,
      })
    end,
    keys = {
      { "]]", desc = "Next Reference" },
      { "[[", desc = "Prev Reference" },
    },
  },

  {
    "kevinhwang91/nvim-ufo",
    lazy = false,
    dependencies = { "kevinhwang91/promise-async" },
    opts = {
      fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
        local newVirtText = {}
        local suffix = ("  ...  %d "):format(endLnum - lnum)
        local sufWidth = vim.fn.strdisplaywidth(suffix)
        local targetWidth = width - sufWidth
        local curWidth = 0
        for _, chunk in ipairs(virtText) do
          local chunkText = chunk[1]
          local chunkWidth = vim.fn.strdisplaywidth(chunkText)
          if targetWidth > curWidth + chunkWidth then
            table.insert(newVirtText, chunk)
          else
            chunkText = truncate(chunkText, targetWidth - curWidth)
            local hlGroup = chunk[2]
            table.insert(newVirtText, { chunkText, hlGroup })
            chunkWidth = vim.fn.strdisplaywidth(chunkText)
            -- str width returned from truncate() may less than 2nd argument, need padding
            if curWidth + chunkWidth < targetWidth then
              suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
            end
            break
          end
          curWidth = curWidth + chunkWidth
        end
        table.insert(newVirtText, { suffix, "MoreMsg" })
        return newVirtText
      end,
      open_fold_hl_timeout = 0,
    },
    keys = {
      { "fd", "zd", desc = "Delete fold under cursor" },
      { "fo", "zo", desc = "Open fold under cursor" },
      { "fO", "zO", desc = "Open all folds under cursor" },
      { "fc", "zC", desc = "Close all folds under cursor" },
      { "fa", "za", desc = "Toggle fold under cursor" },
      { "fA", "zA", desc = "Toggle all folds under cursor" },
      { "fv", "zv", desc = "Show cursor line" },
      {
        "fM",
        function()
          require("ufo").closeAllFolds()
        end,
        desc = "Close all folds",
      },
      {
        "fR",
        function()
          require("ufo").openAllFolds()
        end,
        desc = "Open all folds",
      },
      { "fm", "zm", desc = "Fold more" },
      { "fr", "zr", desc = "Fold less" },
      { "fx", "zx", desc = "Update folds" },
      { "fz", "zz", desc = "Center this line" },
      { "ft", "zt", desc = "Top this line" },
      { "fb", "zb", desc = "Bottom this line" },
      { "fg", "zg", desc = "Add word to spell list" },
      { "fw", "zw", desc = "Mark word as bad/misspelling" },
      { "fe", "ze", desc = "Right this line" },
      { "fE", "zE", desc = "Delete all folds in current buffer" },
      { "fs", "zs", desc = "Left this line" },
      { "fH", "zH", desc = "Half screen to the left" },
      { "fL", "zL", desc = "Half screen to the right" },
    },
  },

  {
    "j-hui/fidget.nvim",
    opts = {
      window = {
        relative = "win", -- where to anchor, either "win" or "editor"
        blend = 0,        -- &winblend for the window
        zindex = nil,     -- the zindex value for the window
        border = "none",  -- style of border for the fidget window
      },
    },
  },

  {
    "luukvbaal/statuscol.nvim",
    config = function()
      local builtin = require("statuscol.builtin")
      require("statuscol").setup({
        relculright = false,
        ft_ignore = { "neo-tree" },
        segments = {
          {
            -- line number
            text = { builtin.lnumfunc },
            condition = { true, builtin.not_empty },
            click = "v:lua.ScLa",
          },
          { text = { "%s" },      click = "v:lua.ScSa" }, -- Sign
          { text = { "%C", " " }, click = "v:lua.ScFa" }, -- Fold
        },
      })
      vim.api.nvim_create_autocmd({ "BufEnter" }, {
        callback = function()
          if vim.bo.filetype == "neo-tree" then
            vim.opt_local.statuscolumn = ""
          end
        end,
      })
    end,
  },
}
