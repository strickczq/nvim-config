return {
    'Mofiqul/vscode.nvim',
    config = function()
        require('vscode').setup {
            transparent = true,
            italic_comments = true,
            disable_nvimtree_bg = true,
        }

        require('vscode').load()
    end,
}
