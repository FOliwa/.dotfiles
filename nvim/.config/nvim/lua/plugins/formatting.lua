return {
	"stevearc/conform.nvim",
	optional = true,
	opts = {
		formatters_by_ft = {
			["python"] = { "isort", "black" },
			["javascript"] = { "prettier" },
			["typescript"] = { "prettier" },
			["javascriptreact"] = { "prettier" },
			["typescriptreact"] = { "prettier" },
			["css"] = { "prettier" },
			["html"] = { "prettier" },
			["json"] = { "prettier" },
			["yaml"] = { "prettier" },
			["markdown"] = { "prettier" },
			["lua"] = { "stylua" },
			["fish"] = { "fish_indent" },
			["sh"] = { "shfmt" },
		},

		-- Setup your formaters here:
		formatters = {
			black = {
				prepend_args = { "--line-length", "120" },
			},
			isort = {
				prepend_args = { "--line-length", "120" },
			},
		},
	},
}
