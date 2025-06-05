return {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    opts = {
        options = {
            theme = 'auto',
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            disabled_filetypes = { statusline = { 'snacks_dashboard' } },
        },
        -- Lualine has sections as shown below.
        -- +-------------------------------------------------+
        -- | A | B | C                             X | Y | Z |
        -- +-------------------------------------------------+
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch' },
            lualine_c = { 'diagnostics', 'filetype', 'filename' },
            lualine_x = { 'diff', 'encoding', 'fileformat' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' }
        },
        extensions = { 'lazy', 'fzf' },
    },
}
