return {
    {
        'williamboman/mason.nvim',
        build = ':MasonUpdate',
        opts = {},
    },
    {
        'williamboman/mason-lspconfig.nvim',
        opts = {
            ensure_installed = { 'lua_ls', 'biome' },
            automatic_installation = false,
        },
    },
    {
        'neovim/nvim-lspconfig',
        event = 'VimEnter',
        dependencies = {
            'saghen/blink.cmp',
        },
        opts = {
            servers = {
                lua_ls = {
                    settings = {
                        Lua = {
                            hint = { enable = true }
                        }
                    }
                },
                biome = {},
                zls = {},
            }
        },
        config = function(_, opts)
            local lspconfig = require('lspconfig')
            for server, config in pairs(opts.servers) do
                config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
                lspconfig[server].setup(config)
            end

            ---@type table<number, {token:lsp.ProgressToken, msg:string, done:boolean}[]>
            local progress = vim.defaulttable()
            vim.api.nvim_create_autocmd('LspProgress', {
                ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
                callback = function(ev)
                    local client = vim.lsp.get_client_by_id(ev.data.client_id)
                    local value = ev.data.params
                        .value --[[@as {percentage?: number, title?: string, message?: string, kind: "begin" | "report" | "end"}]]
                    if not client or type(value) ~= 'table' then
                        return
                    end
                    local p = progress[client.id]

                    for i = 1, #p + 1 do
                        if i == #p + 1 or p[i].token == ev.data.params.token then
                            p[i] = {
                                token = ev.data.params.token,
                                msg = ('[%3d%%] %s%s'):format(
                                    value.kind == 'end' and 100 or value.percentage or 100,
                                    value.title or '',
                                    value.message and (' **%s**'):format(value.message) or ''
                                ),
                                done = value.kind == 'end',
                            }
                            break
                        end
                    end

                    local msg = {} ---@type string[]
                    progress[client.id] = vim.tbl_filter(function(v)
                        return table.insert(msg, v.msg) or not v.done
                    end, p)

                    local spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' }
                    vim.notify(table.concat(msg, '\n'), 'info', {
                        id = 'lsp_progress',
                        title = client.name,
                        opts = function(notif)
                            notif.icon = #progress[client.id] == 0 and ' '
                                or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
                        end,
                    })
                end,
            })
        end,
    },
    {
        'MysticalDevil/inlay-hints.nvim',
        event = 'LspAttach',
        dependencies = { 'neovim/nvim-lspconfig' },
        opts = {},
    },
    {
        'pmizio/typescript-tools.nvim',
        dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
        opts = {
            settings = {
                tsserver_file_preferences = {
                    includeInlayParameterNameHints = 'all',
                    includeCompletionsForModuleExports = true,
                    quotePreference = 'auto',
                },
            },
        },
    },
    {
        'mrcjkb/rustaceanvim',
        version = '^6', -- Recommended
        lazy = false,   -- This plugin is already lazy
    },

    {
        'aznhe21/actions-preview.nvim',
        keys = {
            { '<leader>ca', function() require('actions-preview').code_actions() end, mode = { 'n', 'v' }, desc = 'Lsp Code Actions' },
        },
        opts = {
            backend = { 'snacks' },
            ---@type snacks.picker.Config
            snacks = {
                layout = { preset = 'default' },
            },
        },
    },
}
