return {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    event = 'InsertEnter',
    version = '*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = 'enter',
            ['<C-y>'] = { 'select_and_accept' },
        },
        appearance = {
            nerd_font_variant = 'mono'
        },
        completion = {
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 200,
            },
        },
    },
    opts_extend = { 'sources.default' }
}
