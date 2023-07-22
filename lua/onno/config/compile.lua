local status_ok, compile = pcall(require, "compile-nvim")
if not status_ok then
  return
end

compile.setup({
  cmds = {
    typescript = "deno run %",
    javascript = "node %",
    markdown = "glow %",
    python = "python %",
    rust = "rustc % && ./$fileBase && rm $fileBase",
    -- rust = "cargo run",
    cpp = "g++ -O2 -Wall % -o $fileBase && ./$fileBase",
    go = "go run %",
    sh = "sh %",
    lua = "lua %",
  },
  -- UI settings
  ui = {
    -- Auto-save the current file
    -- before executing it
    autosave = true,
    -- Floating Window / FTerm settings
    -- Floating window border (see ':h nvim_open_win')
    border = "rounded",
    -- Num from `0 - 1` for measurements
    height = 0.5,
    width = 0.5,
    x = 0.96,
    y = 0.02,
    -- Highlight group for floating window/border (see ':h winhl')
    --border
    border_hl = "TermBorder",
    -- background
    normal_hl = "Normal",
    -- Floating Window Transparency (see ':h winblend')
    blend = 30,
  },
})
