local settings = require("configuration")
local enable_copilot = settings.enable_copilot
local enable_neoai = settings.enable_neoai
if not settings.enable_coding then
  enable_copilot = false
  enable_neoai = false
end

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
          width = 30,      -- As percentage eg. 30%
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
            prompt = function ()
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
if enable_copilot then
  copilot = {
    "zbirenbaum/copilot.lua",
    build = ":Copilot auth",
    cmd = "Copilot",
    event = "InsertEnter",
    lazy = false,
    config = function()
      require("config.copilot")
    end,
  }
  copilot_cmp = {
    "zbirenbaum/copilot-cmp",
    lazy = false,
    config = function()
      require("copilot_cmp").setup()
    end,
  }
end

return {
  copilot,
  copilot_cmp,
  neoai,
}
