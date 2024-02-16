return {
    'williamboman/mason.nvim',
    event = 'BufReadPre',
    build = ':MasonUpdate',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    },

    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                'bashls',
                'marksman',
                'tsserver',
                'lua_ls',
            },
        })

        require('mason-lspconfig').setup_handlers {
            function (server_name)
                require('lspconfig')[server_name].setup {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { 'vim' }
                            }
                        }
                    }
                }
            end
        }
    end
}
