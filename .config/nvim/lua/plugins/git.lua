return {
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
		config = function()
			vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		config = function()
			require("gitsigns").setup()
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>")
		end,
	},
}
