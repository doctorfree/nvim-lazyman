local settings = require("configuration")
local Util = require("util")

local dependencies = {
  "nvim-lua/plenary.nvim",
  "jvgrootveld/telescope-zoxide",
  "crispgm/telescope-heading.nvim",
  "nvim-telescope/telescope-symbols.nvim",
  "nvim-telescope/telescope-file-browser.nvim",
  "nvim-telescope/telescope-ui-select.nvim",
  "dharmx/telescope-media.nvim",
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
}
if settings.enable_toggleterm then
  dependencies = {
    "nvim-lua/plenary.nvim",
    "jvgrootveld/telescope-zoxide",
    "crispgm/telescope-heading.nvim",
    "nvim-telescope/telescope-symbols.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "ptethng/telescope-makefile",
    "dharmx/telescope-media.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  }
end

local theme_switch = {
  "<leader>uC", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme with preview",
}
if settings.enable_telescope_themes then
  theme_switch = {
    "<leader>uC", "<cmd>Telescope themes<cr>", desc = "Colorscheme with preview",
  }
end

return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  -- branch = "0.1.x",
  dependencies = dependencies,
  keys = {
    -- Search stuff
    { "<leader>sc", "<cmd>Telescope commands<cr>", desc = "Commands" },
    { "<leader>st", "<cmd>Telescope live_grep<cr>", desc = "Strings" },
    { "<leader>s?", "<cmd>Telescope help_tags<cr>", desc = "Help" },
    { "<leader>sh", "<cmd>Telescope heading<cr>", desc = "Headings" },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
    { "<leader>sO", "<cmd>Telescope vim_options<cr>", desc = "Vim Options" },
    -- { "<leader>sp", "<cmd>Telescope projects<cr>", desc = "Projects" },
    { "<leader>sR", "<cmd>Telescope regiesters<cr>", desc = "Registers" },
    { "<leader>ss", "<cmd>Telescope grep_string<cr>", desc = "Text under cursor" },
    { "<leader>sS", "<cmd>Telescope symbols<cr>", desc = "Emoji" },
    { "<leader>s:", "<cmd>Telescope search_history<cr>", desc = "Search History" },
    { "<leader>s;", "<cmd>Telescope command_history<cr>", desc = "Command history" },
    {
      "<leader>sf",
      "<cmd>lua require'telescope.builtin'.grep_string{ shorten_path = true, word_match = '-w', only_sort_text = true, search = '' }<cr>",
      desc = "Fuzzy search",
    },
    -- Git
    { "<leader>gh", "<cmd>Telescope git_branches<cr>", desc = "Branches" },
    { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Status" },
    { "<leader>gm", "<cmd>Telescope git_commits<cr>", desc = "Commits" },
    -- files
    { "<leader>fb", "<cmd>Telescope file_browser grouped=true<cr>", desc = "Filebrowser" },
    { "<leader>fz", "<cmd>Telescope zoxide list<cr>", desc = "Zoxide" },
    { "<leader>ff", "<cmd>" .. require("util").project_files() .. "<cr>", desc = "Open file" },
    { "<leader>fr", "<cmd>Telescope oldfiles prompt_title=Recent<cr>", desc = "Recent files" },
    -- misc
    { "<leader>mm", "<cmd>Telescope make<cr>", desc = "Run make" },
    { "<leader>mt", "<cmd>Telescope<cr>", desc = "Telescope" },
    -- Other
    { "<leader>B", "<cmd>Telescope buffers<cr>", desc = "Bufferlist" },
    { "<C-s>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search in buffer" },
    { "<leader>,", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
    {
      "<leader>/",
      Util.telescope("live_grep"),
      desc = "Find in Files (Grep)",
    },
    { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    {
      "<leader><space>",
      "<cmd>Telescope file_browser<CR>",
      desc = "Find Files (root dir)"
    },
    -- search
    { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
    { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
    { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
    { "<leader>sd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
    { "<leader>sg", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    { "<leader>sG", Util.telescope("live_grep", "dropdown", { cwd = false }), desc = "Grep (cwd)" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
    {
      "<leader>sH",
      "<cmd>Telescope highlights<cr>",
      desc = "Search Highlight Groups",
    },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
    { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
    { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
    { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
    { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
    { "<leader>sw", Util.telescope("grep_string"), desc = "Word (root dir)" },
    { "<leader>sW", Util.telescope("grep_string", "dropdown", { cwd = false }), desc = "Word (cwd)" },
    theme_switch,
    {
      "<leader>ss",
      Util.telescope("lsp_document_symbols", "dropdown", {
        symbols = {
          "Class",
          "Function",
          "Method",
          "Constructor",
          "Interface",
          "Module",
          "Struct",
          "Trait",
          "Field",
          "Property",
        },
      }),
      desc = "Goto Symbol",
    },
    {
      "<leader>sS",
      Util.telescope("lsp_workspace_symbols", "dropdown", {
        symbols = {
          "Class",
          "Function",
          "Method",
          "Constructor",
          "Interface",
          "Module",
          "Struct",
          "Trait",
          "Field",
          "Property",
        },
      }),
      desc = "Goto Symbol (Workspace)",
    },
  },
  config = function()
    require("free.config.telescope")
  end,
}
