return function()
  -- If true, open markdown preview after entering a markdown buffer.
  vim.g.mkdp_auto_start = true

  -- If true, close browser preview page when change from markdown buffer to another.
  vim.g.mkdp_auto_close = false

  -- If true, refresh preview when save the buffer or leave insert mode.
  -- If false, refresh preview as you edit or move the cursor.
  vim.g.mkdp_refresh_slow = true

  -- If true, preview server will be available to others in the same network.
  -- Set it to true if using WSL.
  vim.g.mkdp_open_to_the_world = true

  -- Use custom IP to open preview page.
  -- Useful when you work in remote nvim and want to preview on local browser.
  -- Check https://github.com/iamcco/markdown-preview.nvim/pull/9 for more.
  vim.g.mkdp_open_ip = ""

  -- Specify browser to open preview page.
  -- INFO: For path with space, use `/path/with\ space/xxx` instead of `/path/with\\ space/xxx`.
  vim.g.mkdp_browser = ""

  -- If true, print preview page url in cmdline area.
  -- Useful when working on a remote server.
  vim.g.mkdp_echo_preview_url = true

  -- Custom vim function to open preview page, which will receive an url as an input.
  vim.g.mkdp_browserfunc = ""

  -- options for markdown render
  -- mkit: markdown-it options for render
  -- katex: katex options for math
  -- uml: markdown-it-plantuml options
  -- maid: mermaid options
  -- disable_sync_scroll: if disable sync scroll, default 0
  -- sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
  --   middle: mean the cursor position alway show at the middle of the preview page
  --   top: mean the vim top viewport alway show at the top of the preview page
  --   relative: mean the cursor position alway show at the relative positon of the preview page
  -- hide_yaml_meta: if hide yaml metadata, default is 1
  -- sequence_diagrams: js-sequence-diagrams options
  -- content_editable: if enable content editable for preview page, default: v:false
  -- disable_filename: if disable filename header for preview page, default: 0
  vim.g.mkdp_preview_options = {
    mkit = {},
    katex = {},
    uml = {},
    maid = {},
    disable_sync_scroll = false,
    sync_scroll_type = "middle",
    hide_yaml_meta = true,
    sequence_diagrams = {},
    flowchart_diagrams = {},
    content_editable = false,
    disable_filename = false,
    toc = {},
  }

  -- Custom markdown style file, must be absolute path.
  -- e.g. `/home/USER/markdown.css` or `vim.fn.expand('~/markdown.css')`
  -- Using https://github.com/sindresorhus/github-markdown-css => no need, the default one is good enough.
  vim.g.mkdp_markdown_css = ""

  -- Custom highlight style file, must be absolute path.
  vim.g.mkdp_highlight_css = ""

  -- Custom port to start server. Leave it empty for random port.
  vim.g.mkdp_port = "6464"

  -- Preview page title. ${name} is the filename.
  vim.g.mkdp_page_title = "「${name}」"

  -- Recognized filetypes. These filetypes will have `:MarkdownPreview` related commands.
  vim.g.mkdp_filetypes = { "markdown" }

  -- Default theme.
  vim.g.mkdp_theme = "dark"
end
