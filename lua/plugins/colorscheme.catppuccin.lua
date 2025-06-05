return {
    'catppuccin/nvim',
    config = function()
        require('catppuccin').setup({
            flavour = 'mocha',
            term_colors = true,
            transparent_background = true,
            color_overrides = {},
            highlight_overrides = {
                mocha = function(C)
                    return {
                        TabLineSel = { bg = C.pink },
                        CmpBorder = { fg = C.surface2 },
                        Pmenu = { bg = C.none },
                        TelescopeBorder = { link = 'FloatBorder' },
                    }
                end,
            },
            integrations = { blink_cmp = true },
        })
        vim.cmd.colorscheme 'catppuccin'
    end
}
