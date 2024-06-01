return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = 'BufReadPost',
	dependencies = { 'nvim-treesitter/playground' },
    config = function()
        require'nvim-treesitter.configs'.setup {
            ensure_installed = {
                "javascript",
                "typescript",
                "html",
                "css",
                "c",
                "lua",
                "bash"
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
        }
    end
}
