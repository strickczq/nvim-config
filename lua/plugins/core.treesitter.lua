return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            modules = {},
            sync_install = false,
            ensure_installed = {},
            auto_install = true,
            ignore_install = {},
            parser_install_dir = nil,
        })
    end,
}
