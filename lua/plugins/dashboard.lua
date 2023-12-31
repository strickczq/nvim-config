return {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('dashboard').setup {
            config = {
                -- STRICK
                header = {
                    '███████╗████████╗██████╗ ██╗ ██████╗██╗  ██╗',
                    '██╔════╝╚══██╔══╝██╔══██╗██║██╔════╝██║ ██╔╝',
                    '███████╗   ██║   ██████╔╝██║██║     █████╔╝ ',
                    '╚════██║   ██║   ██╔══██╗██║██║     ██╔═██╗ ',
                    '███████║   ██║   ██║  ██║██║╚██████╗██║  ██╗',
                    '╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝ ╚═════╝╚═╝  ╚═╝',
                    '                                            ',
                },
                shortcut = {
                    { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
                },
                footer = {
                    '',
                    '🚀',
                },
            },
        }
    end,
}
