return {
    {
        "nvim-lualine/lualine.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    theme = "auto",
                    component_separators = { left = "|", right = "|" },
                    section_separators = { left = "", right = "" },
                    always_divide_middle = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 1000,
                        tabline = 1000,
                        winbar = 1000,
                    },
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = { "filename" },
                    lualine_x = { "encoding", "fileformat", "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = { "location" },
                },
            })
        end,
    },
    {
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
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        config = function()
            require("ibl").setup()
        end,
    },
}
