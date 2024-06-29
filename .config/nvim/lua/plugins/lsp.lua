return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"bashls",
					"html",
					"marksman",
					"tsserver",
					"lua_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
		end,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered({
						border = "single",
					}),
					documentation = cmp.config.window.bordered({
						border = "single",
					}),
				},
				mapping = {
					["<C-k>"] = cmp.mapping.select_prev_item(),
					["<C-j>"] = cmp.mapping.select_next_item(),
					["<C-q>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}),
			})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.completion.spell,
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.formatting.shfmt,
					require("none-ls.diagnostics.eslint_d"),
				},
			})
			vim.keymap.set("n", "<leader>gf", function()
				vim.lsp.buf.format({ timeout_ms = 20000 })
			end, {})
		end,
	},
}
