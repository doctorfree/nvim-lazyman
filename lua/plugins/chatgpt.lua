local settings = require("configuration")
if settings.enable_chatgpt then
  return {
    {
      "jackMort/ChatGPT.nvim",
      event = "VeryLazy",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
      },
      config = function()
        require("chatgpt").setup({
          yank_register = "+",
          edit_with_instructions = {
            diff = false,
            keymaps = {
              accept = "<C-y>",
              toggle_diff = "<C-d>",
              toggle_settings = "<C-o>",
              cycle_windows = "<Tab>",
              use_output_as_input = "<C-i>",
            },
          },
          chat = {
            welcome_message = WELCOME_MESSAGE,
            loading_text = "Loading, please wait ...",
            question_sign = "", -- you can use emoji if you want e.g. 🙂
            answer_sign = "🤖", -- ﮧ
            max_line_length = 120,
            sessions_window = {
              border = {
                style = "rounded",
                text = {
                  top = " Sessions ",
                },
              },
              win_options = {
                winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
              },
            },
            keymaps = {
              close = { "<C-c>" },
              yank_last = "<C-y>",
              yank_last_code = "<C-k>",
              scroll_up = "<C-u>",
              scroll_down = "<C-d>",
              toggle_settings = "<C-o>",
              new_session = "<C-n>",
              cycle_windows = "<Tab>",
              select_session = "<Space>",
              rename_session = "r",
              delete_session = "d",
            },
          },
          popup_layout = {
            relative = "editor",
            position = "50%",
            size = {
              height = "80%",
              width = "80%",
            },
          },
          popup_window = {
            filetype = "chatgpt",
            border = {
              highlight = "FloatBorder",
              style = "rounded",
              text = {
                top = " ChatGPT ",
              },
            },
            win_options = {
              winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
            },
          },
          popup_input = {
            prompt = "  ",
            border = {
              highlight = "FloatBorder",
              style = "rounded",
              text = {
                top_align = "center",
                top = " Prompt ",
              },
            },
            win_options = {
              winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
            },
            submit = "<C-Enter>",
          },
          settings_window = {
            border = {
              style = "rounded",
              text = {
                top = " Settings ",
              },
            },
            win_options = {
              winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
            },
          },
          openai_params = {
            model = "gpt-3.5-turbo",
            frequency_penalty = 0,
            presence_penalty = 0,
            max_tokens = 300,
            temperature = 0,
            top_p = 1,
            n = 1,
          },
          openai_edit_params = {
            model = "code-davinci-edit-001",
            temperature = 0,
            top_p = 1,
            n = 1,
          },
          actions_paths = {},
          predefined_chat_gpt_prompts = "https://raw.githubusercontent.com/f/awesome-chatgpt-prompts/main/prompts.csv",
        })
      end,
    },
  }
else
  return {}
end
