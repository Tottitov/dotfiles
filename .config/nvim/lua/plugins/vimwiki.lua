return {
	"vimwiki/vimwiki",
	init = function()
		vim.g.vimwiki_list = {
			{
				path = "~/documents/vimwiki",
				syntax = "markdown",
				ext = ".rmd",
			},
		}
		vim.g.vimwiki_global_ext = 0
	end,
}
