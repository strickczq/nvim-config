return {
    'akinsho/bufferline.nvim',
    event = 'VimEnter',
    config = function()
        require('bufferline').setup {
            options = {
                always_show_bufferline = true,
                offsets = {
                    {
                        filetype = 'NvimTree',
                        text = 'File Explorer',
                        text_align = 'center',
                        separator = true,
                    },
                },
            },
        }
    end,
}
