local wilder = require('wilder')
wilder.setup({ modes = { ':', '/', '?' } })
-- Disable Python remote plugin
wilder.set_option('use_python_remote_plugin', 0)

local gradient = {
    '#f4468f', '#fd4a85', '#ff507a', '#ff566f', '#ff5e63',
    '#ff6658', '#ff704e', '#ff7a45', '#ff843d', '#ff9036',
    '#f89b31', '#efa72f', '#e6b32e', '#dcbe30', '#d2c934',
    '#c8d43a', '#bfde43', '#b6e84e', '#aff05b'
}

for i, fg in ipairs(gradient) do
    gradient[i] = wilder.make_hl('WilderGradient' .. i, 'Pmenu', { { a = 1 }, { a = 1 }, { foreground = fg } })
end

local popupmenu_renderer = wilder.popupmenu_renderer(
    wilder.popupmenu_border_theme({
        winblend = 20,
        border = 'rounded',
        empty_message = wilder.popupmenu_empty_message_with_spinner(),
        -- }),
        highlights = {
            gradient = gradient, -- must be set
            -- selected_gradient key can be set to apply gradient highlighting for the selected candidate.
        },
        highlighter = wilder.highlighter_with_gradient({
            wilder.lua_fzy_highlighter(),
        }),
        left = {
            ' ',
            wilder.popupmenu_devicons(),
            wilder.popupmenu_buffer_flags({
                flags = ' A + ',
                icons = { ['+'] = 'modified', a = 'active', h = 'hidden', ['%'] = 'current  ', ['#'] = 'alternate' },
            }),
        },
        right = {
            ' ',
            wilder.popupmenu_scrollbar(),
        },
    })
)

local wildmenu_renderer = wilder.wildmenu_renderer({
    highlighter = wilder.highlighter_with_gradient({
        wilder.lua_fzy_highlighter(), -- or wilder.lua_fzy_highlighter(),
    }),
    separator = ' ¬∑ ',
    left = { ' ', wilder.wildmenu_spinner(), ' ' },
    right = { ' ', wilder.wildmenu_index() },
})

wilder.set_option('renderer', wilder.renderer_mux({
    [':'] = popupmenu_renderer,
    ['?'] = popupmenu_renderer,
    ['/'] = popupmenu_renderer,
    substitute = wildmenu_renderer
}))
-- wilder.set_option('renderer', wilder.renderer_mux({
--   [':'] = wilder.popupmenu_renderer({
--     highlighter = wilder.lua_fzy_highlighter(),
--     left = {
--       ' ',
--       wilder.popupmenu_devicons()
--     },
--     right = {
--       ' ',
--       wilder.popupmenu_scrollbar()
--     },
--   }),
--   ['/'] = wilder.wildmenu_renderer({
--     highlighter = wilder.lua_fzy_highlighter(),
--   }),
-- }))

wilder.set_option('pipeline', {
  wilder.branch(
    wilder.cmdline_pipeline({
      fuzzy = 1,
      fuzzy_filter = wilder.lua_fzy_filter(),
    }),
    wilder.vim_search_pipeline()
  )
})
-- wilder.set_option('pipeline', {
--   wilder.branch(
--     wilder.cmdline_pipeline({
--       -- sets the language to use, 'vim' and 'python' are supported
--       language = 'python',
--       -- 0 turns off fuzzy matching
--       -- 1 turns on fuzzy matching
--       -- 2 partial fuzzy matching (match does not have to begin with the same first letter)
--       fuzzy = 1,
--     }),
--     wilder.python_search_pipeline({
--       -- can be set to wilder#python_fuzzy_delimiter_pattern() for stricter fuzzy matching
--       pattern = wilder.python_fuzzy_pattern(),
--       -- omit to get results in the order they appear in the buffer
--       sorter = wilder.python_difflib_sorter(),
--       -- can be set to 're2' for performance, requires pyre2 to be installed
--       -- see :h wilder#python_search() for more details
--       engine = 're',
--     })
--   ),
-- })
