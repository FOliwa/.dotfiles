return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		opts = {
			style = "moon",
			transparent = true,
			terminal_colors = true,

			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},

			on_highlights = function(hl, c)
				hl.CursorLine = { bg = c.bg_highlight }
				hl.WinSeparator = { fg = c.bg_highlight }
				hl.FloatBorder = { fg = c.blue, bg = "NONE" }
				hl.NormalFloat = { bg = "NONE" }
				hl.Normal = { bg = "NONE" }
				hl.NormalNC = { bg = "NONE" }
				hl.SignColumn = { bg = "NONE" }
				hl.EndOfBuffer = { bg = "NONE" }
			end,
		},
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "tokyonight-moon",
		},
	},
}
--
--
-- return {
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		priority = 1000,
-- 		config = function()
-- 			require("catppuccin").setup({
-- 				flavour = "mocha",
--
-- 				transparent_background = true,
--
-- 				integrations = {
-- 					cmp = true,
-- 					gitsigns = true,
-- 					treesitter = true,
-- 					telescope = {
-- 						enabled = true,
-- 					},
-- 					native_lsp = {
-- 						enabled = true,
-- 					},
-- 					mini = {
-- 						enabled = true,
-- 					},
-- 				},
-- 			})
--
-- 			vim.cmd.colorscheme("catppuccin")
--
-- 			-- Transparentne tło
-- 			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 			vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- 			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- 			vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
-- 			vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
-- 			vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
-- 		end,
-- 	},
--
-- 	{
-- 		"LazyVim/LazyVim",
-- 		opts = {
-- 			colorscheme = "catppuccin",
-- 		},
-- 	},
-- }
