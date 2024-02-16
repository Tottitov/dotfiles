return {
    'norcalli/nvim-colorizer.lua',
    event = 'BufReadPre',
    config = function()
        require'colorizer'.setup()
    end
}
