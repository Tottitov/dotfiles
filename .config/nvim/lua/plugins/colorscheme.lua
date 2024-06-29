return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("tokyonight-night")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end,
	opts = function()
		return {
			on_highlights = function(hl, c)
				do
					return
				end
				local prompt = "#2d3149"
				hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg }
				hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
				hl.TelescopePromptNormal = { bg = prompt }
				hl.TelescopePromptBorder = { bg = prompt, fg = prompt }
				hl.TelescopePromptTitle = { bg = c.fg_gutter, fg = c.orange }
				hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
				hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
			end,
		}
	end,
}
