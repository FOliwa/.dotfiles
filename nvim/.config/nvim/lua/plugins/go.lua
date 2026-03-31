-- ~/.config/nvim/lua/plugins/go.lua
return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				gopls = {
					settings = {
						gopls = {
							analyses = {
								unusedparams = true,
							},
							staticcheck = true,
							gofumpt = true,
							usePlaceholders = true,
							completeUnimported = true,
						},
					},
				},
			},
		},
	},

	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				go = { "goimports", "gofmt" },
			},
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"go",
				"gomod",
				"gowork",
				"gosum",
			},
		},
	},
}
