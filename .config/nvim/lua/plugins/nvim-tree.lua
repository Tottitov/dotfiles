return {
    "nvim-tree/nvim-tree.lua",
    event = "VeryLazy",
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>")
        require("nvim-tree").setup({
            view = {
                width = 60,
            },
        })
    end,
}
