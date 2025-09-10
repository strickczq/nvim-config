return {
    'catppuccin/nvim',
    config = function()
        require('catppuccin').setup({
            flavour = 'mocha',
            term_colors = true,
            transparent_background = true,
            float = {
                transparent = true,
                solid = false,
            },
            color_overrides = {},
            highlight_overrides = {},
            default_integrations = true,
            auto_integrations = false,
            integrations = {
                cmp = true,
                snacks = { enabled = true }
            }
        })
        vim.cmd.colorscheme 'catppuccin'
    end
}
