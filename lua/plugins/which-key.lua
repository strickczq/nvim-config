return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
        local wk = require('which-key')

        wk.setup {}

        -- buffer
        wk.add {
            { '<leader>1', '<cmd>BufferLineGoToBuffer 1<cr>',  desc = 'Go to buffer 1' },
            { '<leader>2', '<cmd>BufferLineGoToBuffer 2<cr>',  desc = 'Go to buffer 2' },
            { '<leader>3', '<cmd>BufferLineGoToBuffer 3<cr>',  desc = 'Go to buffer 3' },
            { '<leader>4', '<cmd>BufferLineGoToBuffer 4<cr>',  desc = 'Go to buffer 4' },
            { '<leader>5', '<cmd>BufferLineGoToBuffer 5<cr>',  desc = 'Go to buffer 5' },
            { '<leader>6', '<cmd>BufferLineGoToBuffer 6<cr>',  desc = 'Go to buffer 6' },
            { '<leader>7', '<cmd>BufferLineGoToBuffer 7<cr>',  desc = 'Go to buffer 7' },
            { '<leader>8', '<cmd>BufferLineGoToBuffer 8<cr>',  desc = 'Go to buffer 8' },
            { '<leader>9', '<cmd>BufferLineGoToBuffer 9<cr>',  desc = 'Go to buffer 9' },
            { '<leader>0', '<cmd>BufferLineGoToBuffer 10<cr>', desc = 'Go to buffer 10' },
            { '<leader>q', '<cmd>BufferLineCloseLeft<cr>',     desc = 'Close buffer Left' },
            { '<leader>w', '<cmd>BufferLineCloseRight<cr>',    desc = 'Close buffer Right' },
        }

        -- nvim-tree
        wk.add {
            { '<leader>e', '<cmd>NvimTreeToggle<cr>', desc = 'Explorer (NvimTree)' },
        }

        -- auto-save
        wk.add {
            { '<leader>s', '<cmd>ASToggle<cr>', desc = 'AutoSave Toggle' },
        }

        -- terminal
        wk.add {
            { '<leader>t', '<cmd>ToggleTerm<cr>',    desc = 'ToggleTerm' },
            { '<esc>',     '<C-\\><C-n><cmd>q!<cr>', desc = 'Exit Terminal', mode = 't' },
        }

        -- lsp
        wk.add {
            { '<leader>k',  '<cmd>lua vim.lsp.buf.hover()<cr>',           desc = 'Hover (LSP)' },
            { '<leader>r',  '<cmd>lua vim.lsp.buf.rename()<cr>',          desc = 'Rename (LSP)' },
            { '<leader>a',  '<cmd>lua vim.lsp.buf.code_action()<cr>',     desc = 'Code Action (LSP)' },
            { '<leader>=',  '<cmd>lua vim.lsp.buf.format()<cr>',          desc = 'Format (LSP)' },
            { '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>',      desc = 'Go To Definition (LSP)' },
            { '<leader>gy', '<cmd>lua vim.lsp.buf.type_definition()<cr>', desc = 'Go To Type Definition (LSP)' },
            { '<leader>gr', '<cmd>lua vim.lsp.buf.references()<cr>',      desc = 'Go To References (LSP)' },
            { '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>',  desc = 'Go To Implementation (LSP)' },
        }
    end,
}
