return {
    'hoob3rt/lualine.nvim',
    event = 'VimEnter',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/lsp-status.nvim',
        'arkav/lualine-lsp-progress',
    },
    config = function()
        local lualine = require('lualine')

        lualine.setup {
            options = {
                theme = 'vscode',
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_c = { 'lsp_progress' },
            },
            extensions = { 'nvim-tree' },
        }
    end,
}
