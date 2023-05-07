local settings = require("configuration")

if settings.enable_games then
  return {
    {
      "ThePrimeagen/vim-be-good",
      event = "VeryLazy",
    },
    {
      "letieu/hacker.nvim",
      event = "VeryLazy",
      config = function()
        require("hacker").setup({
          is_popup = true, -- show random float window when typing
          popup_after = 5,
        })
      end,
    },
    {
      "jim-fx/sudoku.nvim",
      cmd = "Sudoku",
      event = "VeryLazy",
      config = function()
        require("sudoku").setup({
          -- save the settings under vim.fn.stdpath("data"), usually ~/.local/share/nvim,
          persist_settings = true,
          persist_games = true, -- persist a history of all played games
          default_mappings = true,
          -- if set to false you need to set your own, like the following:
          mappings = {
            { key = "x", action = "clear_cell" },
            { key = "r1", action = "insert=1" },
            { key = "r2", action = "insert=2" },
            { key = "r3", action = "insert=3" },
            { key = "r4", action = "insert=4" },
            { key = "r5", action = "insert=5" },
            { key = "r6", action = "insert=6" },
            { key = "r7", action = "insert=7" },
            { key = "r8", action = "insert=8" },
            { key = "r9", action = "insert=9" },
            { key = "gn", action = "new_game" },
            { key = "gr", action = "reset_game" },
            { key = "gs", action = "view=settings" },
            { key = "gt", action = "view=tip" },
            { key = "gz", action = "view=zen" },
            { key = "gh", action = "view=help" },
            { key = "u", action = "undo" },
            { key = "<C-r>", action = "redo" },
            { key = "+", action = "increment" },
            { key = "-", action = "decrement" },
          },
        })
      end,
    },
    {
      "alanfortlink/blackjack.nvim",
      cmd = "BlackJackNewGame",
      dependencies = { "nvim-lua/plenary.nvim" },
      event = "VeryLazy",
      config = function()
        require("blackjack").setup({
          card_style = "large", -- Can be "mini" or "large".
          suit_style = "black", -- Can be "black" or "white".
          -- Default location to store the scores.json file.
          scores_path = vim.fn.expand(vim.fn.stdpath("state") .. "/blackjack_scores.json"),
        })
      end,
    },
    {
      "eandrju/cellular-automaton.nvim",
      event = "VeryLazy",
    },
  }
else
  return {}
end
