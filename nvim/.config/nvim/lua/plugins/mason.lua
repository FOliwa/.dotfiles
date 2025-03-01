return {
	"williamboman/mason.nvim",
	opts = function(_, opts)
		table.insert(opts.ensure_installed, "black")
		table.insert(opts.ensure_installed, "prettier")
		table.insert(opts.ensure_installed, "stylua")
		table.insert(opts.ensure_installed, "isort")
		table.insert(opts.ensure_installed, "flake8")
		table.insert(opts.ensure_installed, "eslint_d")
		table.insert(opts.ensure_installed, "html-lsp")
		table.insert(opts.ensure_installed, "lua-language-server")
		table.insert(opts.ensure_installed, "pyright")
	end,
}
