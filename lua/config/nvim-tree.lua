-------------------------------------------------------------------------------
-- File explorer
-- kyazdani42/nvim-tree.lua
-------------------------------------------------------------------------------
local ok, nvim_tree = pcall(require, 'nvim-tree')
if not ok then return end

-- each of these are documented in `:help nvim-tree.OPTION_NAME`
nvim_tree.setup({
    respect_buf_cwd = true, -- Change cwd of nvim-tree to that of new buffer's when opening nvim-tree
    view = {
        adaptive_size = true,
        width = 40, -- Width of the window
    },
    renderer = {
        add_trailing = true, -- Append a trailing slash to folder names
        group_empty = true, -- Compact folders that only contain a single folder into one node
        highlight_git = true, -- Enable highlight for git attributes using NvimTreeGit*
        highlight_opened_files = 'all', -- 0: none, 1: icon, 2: name, 3: all
        indent_markers = {
            enable = true, -- Display indent markers when folders are open
        },
        icons = {
            webdev_colors = true, -- Use the webdev icon colors, otherwise NvimTreeFileIcon
            git_placement = 'before', -- Place where the git icons will be rendered
            symlink_arrow = ' -> ', -- Used as a separator between symlinks' source and target
            glyphs = {
                git = {
                    unstaged  = "",
                    staged    = "",
                    unmerged  = "",
                    renamed   = "",
                    untracked = "",
                    deleted   = "✖",
                    ignored   = "",
                },
            },
        },
        special_files = { 'Cargo.toml', 'Makefile', 'README.md', 'readme.md', 'environment.yml' }, -- A list of filenames that gets highlighted with NvimTreeSpecialFile
    },
    diagnostics = {
        enable = true, -- Show LSP and COC diagnostics in the signcolumn
    },
})
