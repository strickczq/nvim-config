return {
    'olimorris/codecompanion.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter',
        'j-hui/fidget.nvim',
    },
    keys = {
        { '<leader>cc', function() require('codecompanion').toggle() end, desc = 'Toggle CodeCompanion' },
    },
    opts = {
        opts = {
            language = 'Chinese',
        },
    },
    init = function()
        local fidget = require('fidget')
        local handler
        vim.api.nvim_create_autocmd({ 'User' }, {
            pattern = 'CodeCompanionRequest*',
            group = vim.api.nvim_create_augroup('CodeCompanionHooks', {}),
            callback = function(request)
                if request.match == 'CodeCompanionRequestStarted' then
                    if handler then
                        handler.message = 'Abort.'
                        handler:cancel()
                        handler = nil
                    end
                    handler = fidget.progress.handle.create({
                        title = '',
                        message = 'Thinking...',
                        lsp_client = { name = 'CodeCompanion' },
                    })
                elseif request.match == 'CodeCompanionRequestFinished' then
                    if handler then
                        handler.message = 'Done.'
                        handler:finish()
                        handler = nil
                    end
                end
            end,
        })
    end,
}
