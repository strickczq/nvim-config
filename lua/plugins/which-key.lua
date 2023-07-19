return {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function()
        local wk = require('which-key')

        wk.setup {}

        -- buffer
        wk.register {
            ['<leader>'] = {
                ['1'] = { '<cmd>BufferLineGoToBuffer 1<cr>', 'Go to buffer 1' },
                ['2'] = { '<cmd>BufferLineGoToBuffer 2<cr>', 'Go to buffer 2' },
                ['3'] = { '<cmd>BufferLineGoToBuffer 3<cr>', 'Go to buffer 3' },
                ['4'] = { '<cmd>BufferLineGoToBuffer 4<cr>', 'Go to buffer 4' },
                ['5'] = { '<cmd>BufferLineGoToBuffer 5<cr>', 'Go to buffer 5' },
                ['6'] = { '<cmd>BufferLineGoToBuffer 6<cr>', 'Go to buffer 6' },
                ['7'] = { '<cmd>BufferLineGoToBuffer 7<cr>', 'Go to buffer 7' },
                ['8'] = { '<cmd>BufferLineGoToBuffer 8<cr>', 'Go to buffer 8' },
                ['9'] = { '<cmd>BufferLineGoToBuffer 9<cr>', 'Go to buffer 9' },
                ['0'] = { '<cmd>BufferLineGoToBuffer 10<cr>', 'Go to buffer 10' },
                q = { '<cmd>BufferLineCloseLeft<cr>', 'Close buffer Left' },
                w = { '<cmd>BufferLineCloseRight<cr>', 'Close buffer Right' },
            },
        }

        -- nvim-tree
        wk.register {
            ['<leader>'] = {
                e = { '<cmd>NvimTreeToggle<cr>', 'Explorer (NvimTree)' },
            },
        }

        -- auto-save
        wk.register {
            ['<leader>'] = {
                s = { '<cmd>ASToggle<cr>', 'AutoSave Toggle' },
            },
        }

        -- terminal
        wk.register {
            ['<leader>'] = {
                t = { '<cmd>ToggleTerm<cr>', 'ToggleTerm' },
            },
            ['<esc>'] = { '<C-\\><C-n><cmd>q!<cr>', 'Exit Terminal', mode = 't' },
        }

        -- lsp
        wk.register {
            ['<leader>'] = {
                k = { '<cmd>lua vim.lsp.buf.hover()<cr>', 'Hover (LSP)' },
                r = { '<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename (LSP)' },
                a = { '<cmd>lua vim.lsp.buf.code_action()<cr>', 'Code Action (LSP)' },
                ['='] = { '<cmd>lua vim.lsp.buf.format()<cr>', 'Format (LSP)' },
            },
            g = {
                d = { '<cmd>lua vim.lsp.buf.definition()<cr>', 'Go To Definition (LSP)' },
                y = { '<cmd>lua vim.lsp.buf.type_definition()<cr>', 'Go To Type Definition (LSP)' },
                r = { '<cmd>lua vim.lsp.buf.references()<cr>', 'Go To References (LSP)' },
                i = { '<cmd>lua vim.lsp.buf.implementation()<cr>', 'Go To Implementation (LSP)' },
            },
        }
    end,
}
