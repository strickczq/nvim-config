return {
    'pocco81/auto-save.nvim',
    event = 'VimEnter',
    config = function()
        require('auto-save').setup {}
    end,
}
