require("flirt").setup {
    override_open = true, -- experimental
    close_command = 'Q',
    default_move_mappings = true,   -- <C-arrows> to move floats
    default_resize_mappings = true, -- <A-arrows> to resize floats
    default_mouse_mappings = true,  -- Drag floats with mouse
    exclude_fts = {'notify', 'cmp_menu'},
    custom_filter = function(buffer, win_config)
        return vim.bo[buffer].filetype == 'cmp_menu' -- avoids animation
    end
}
