local hop = require("hop")

hop.setup()

local set = vim.keymap.set
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<A-q>", "q", opts) -- Macro q remap
keymap("x", "<A-q>", "q", opts)

keymap("x", "<leader>hw", "<cmd>HopWord<cr>", opts)
keymap("n", "<leader>hw", "<cmd>HopWord<cr>", opts)
keymap("n", "<leader>hl", "<cmd>HopLineStart<cr>", opts)
keymap("x", "<leader>hl", "<cmd>HopLineStart<cr>", opts)
keymap("n", "<leader>hW", "<cmd>HopWordMW<cr>", opts)

keymap(
	"o",
	"f",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>",
	opts
)
keymap(
	"o",
	"F",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = false })<cr>",
	opts
)
keymap("n", "<leader>hH", "<cmd>lua require'hop'.hint_patterns({}, [[\\d\\+]])<cr>", opts)
keymap("n", "<leader>hf'", "<cmd>lua require'hop'.hint_patterns({}, [[\"\\|']])<cr>", opts)
keymap("n", "<leader>hf-", "<cmd>lua require'hop'.hint_patterns({}, [[-\\|+]])<cr>", opts)
keymap("n", "<leader>hf;", "<cmd>lua require'hop'.hint_patterns({}, [[;\\|:]])<cr>", opts)

keymap("n", "<leader>hf/", "<cmd>lua require'hop'.hint_patterns({}, [[/\\|?]])<cr>", opts)

keymap("n", "<leader>hqj", "<cmd>lua require'hop'.hint_patterns({}, [[(]])<cr>", opts)
keymap("n", "<leader>hqk", "<cmd>lua require'hop'.hint_patterns({}, [[)]])<cr>", opts)
keymap("n", "<leader>hq[", "<cmd>lua require'hop'.hint_patterns({}, [[{]])<cr>", opts)
keymap("n", "<leader>hq]", "<cmd>lua require'hop'.hint_patterns({}, [[}]])<cr>", opts)

local directions = require('hop.hint').HintDirection
set('', 'f', function()
  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only = true
  })
end, {remap=true})
set('', 'F', function()
  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only = true
  })
end, {remap=true})
set('', 't', function()
  hop.hint_char1({
    direction = directions.AFTER_CURSOR,
    current_line_only = true,
    hint_offset = -1
  })
end, {remap=true})
set('', 'T', function()
  hop.hint_char1({
    direction = directions.BEFORE_CURSOR,
    current_line_only = true,
    hint_offset = 1
  })
end, {remap=true})

local jump_target = require("hop.jump_target")
local hint_char1_and_then = function(and_then_func)
  return function()
    local hopts = hop.opts
    local c = hop.get_input_pattern("Hop 1 char: ", 1)
    local generator = jump_target.jump_targets_by_scanning_lines
    hop.hint_with_callback(generator(jump_target.regex_by_case_searching(c, true, hopts)), hopts, function(jt)
      hop.move_cursor_to(jt.window, jt.line + 1, jt.column - 1, hopts.hint_offset)
      and_then_func()
    end)
  end
end

set("n", "<leader>hd", hint_char1_and_then(vim.lsp.buf.type_definition),
  { desc = "Jump to definition", noremap = true, silent = true })
local function jump_back_to_original_buffer(original_buffer) --{{{
	local current_buffer = vim.api.nvim_get_current_buf()

	if current_buffer ~= original_buffer then
		-- jump back to the original buffer
		vim.cmd([[normal! ]])
	else
		-- jump back to the original line
		vim.cmd([[normal! ]])
	end
end --}}}

-- Hyper Yank with Treesitter Node Select
set("n", "yx", function()
	local original_buffer = vim.api.nvim_get_current_buf()

	vim.cmd([[:HopLineStartMW]]) --> jump to line
	vim.schedule(function()
		require("syntax-tree-surfer").select()
		vim.cmd([[normal! V]]) --> go to visual selection mode -> optional
		vim.cmd([[normal! y]]) --> yank
		jump_back_to_original_buffer(original_buffer)
	end)
end, { desc = "Yank user syntax-tree-surfer", noremap = true, silent = true })

-- Hyper Yank a line
set("n", "yl", function()
	local original_buffer = vim.api.nvim_get_current_buf()

	vim.cmd([[:HopLineStartMW]]) --> jump to line
	vim.schedule(function()
		vim.cmd([[normal! yy]]) --> yank the line
		jump_back_to_original_buffer(original_buffer)
	end)
end, { desc = "Yank a line with HopLineStart", noremap = true, silent = true })

-- Hyper Yank Treesitter Code Block
set("n", "yc", function()
	local original_buffer = vim.api.nvim_get_current_buf()
	vim.cmd([[:HopLineStartMW]])
	vim.schedule(function()
		require("tsht").nodes()
		vim.schedule(function()
			vim.cmd([[normal! V]]) --> go to visual selection mode -> optional
			vim.cmd([[normal! y]]) --> yank
			jump_back_to_original_buffer(original_buffer)
		end)
	end)
end, { desc = "Yank a Treesitter code block", noremap = true, silent = true })

-- Using nvim-treehopper to yank
set("n", "ym", function()
	require("tsht").nodes()
	vim.schedule(function()
		vim.cmd([[normal! V]]) --> go to visual selection mode
		vim.cmd([[normal! y]]) --> yank
	end)
end, { desc = "Yank using Treehopper", noremap = true, silent = true })

--SECTION: Hyper Paste

set("n", "vp", function()
	vim.cmd([[:HopLineStartMW]])
	vim.schedule(function()
		vim.cmd([[normal! p]]) --> paste
	end)
end, { desc = "Paste below target using HopLineStart", noremap = true, silent = true })
set("n", "<leader>vp", function()
	vim.cmd([[:HopLineStartMW]])
	vim.schedule(function()
		vim.cmd([[normal! o]]) --> make new line below target
		vim.cmd([[normal! o]]) --> make another new line below target
		vim.cmd([[normal! p]]) --> paste
	end)
end, { desc = "Paste below target using HopLineStart", noremap = true, silent = true })

set("n", "vP", function()
	vim.cmd([[:HopLineStartMW]])
	vim.schedule(function()
		vim.cmd([[normal! P]]) --> paste
	end)
end, { desc = "Paste above target using HopLineStart", noremap = true, silent = true })
set("n", "<leader>vP", function()
	vim.cmd([[:HopLineStartMW]])
	vim.schedule(function()
		vim.cmd([[normal! O]]) --> make another new line below target
		vim.cmd([[normal! P]]) --> paste
	end)
end, { desc = "Paste above target using HopLineStart", noremap = true, silent = true })

set("n", "vo", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[normal! o]])
		vim.cmd([[startinsert]])
	end)
end, { desc = "Open new line below HopLineStart target", noremap = true, silent = true })
set("n", "<leader>vo", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[normal! o]])
		vim.cmd([[normal! o]])
		vim.cmd([[startinsert]])
	end)
end, { desc = "Open new line below HopLineStart target", noremap = true, silent = true })

set("n", "vO", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[normal! O]])
		vim.cmd([[normal! O]])
		vim.cmd([[startinsert]])
	end)
end, { desc = "Open new line above HopLineStart target", noremap = true, silent = true })
set("n", "<leader>vO", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[normal! O]])
		vim.cmd([[normal! O]])
		vim.cmd([[startinsert]])
	end)
end, { desc = "Open new line above HopLineStart target", noremap = true, silent = true })

--  Hop with Macros

set("n", "vY", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[:normal @f]])
	end)
end, { desc = "HopLineStart target in normal mode", noremap = true, silent = true })

--  Hop can even trigger LuaSnip Snippets (complicated)

set("n", "<leader>lS", function()
	vim.cmd([[:HopLineStart]])
	vim.schedule(function()
		vim.cmd([[:normal ojja ]])
		vim.cmd("startinsert")
	end)
end, { desc = "Trigger LuaSnip snippet", noremap = true, silent = true })

--  TSHT (Treesitter hint textobject) --> mfussenegger/nvim-treehopper

set("n", "vy", function()
	require("tsht").nodes()
	vim.schedule(function()
		vim.cmd([[normal! c]])
		vim.cmd([[startinsert]])
	end)
end, { desc = "Treehopper node target insert", noremap = true, silent = true })
