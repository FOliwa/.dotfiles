-- ---------------------------------------------------------------------------------------------------------------
-- GIT THEME
-- ---------------------------------------------------------------------------------------------------------------
-- return {
-- 	"projekt0n/github-nvim-theme",
-- 	name = "github-theme",
-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		require("github-theme").setup({
-- 			-- ...
-- 		})
--
-- 		-- vim.cmd("colorscheme github_dark")
-- 		vim.cmd("colorscheme github_dark_dimmed")
-- 		-- vim.cmd("colorscheme github_dark_colorblind")
-- 	end,
-- }
-- ---------------------------------------------------------------------------------------------------------------
-- TOKYOINIGHT THEME
-- ---------------------------------------------------------------------------------------------------------------
return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "night", -- night | storm | day | moon
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd.colorscheme("tokyonight")
		end,
	},
}
-- ---------------------------------------------------------------------------------------------------------------
-- MONOKAI THEME
-- ---------------------------------------------------------------------------------------------------------------
-- return {
-- 	{
-- 		"loctvl842/monokai-pro.nvim",
-- 		priority = 1000,
-- 		config = function()
-- 			require("monokai-pro").setup({
-- 				filter = "octagon", -- pro | classic | machine | octagon | ristretto | spectrum  :contentReference[oaicite:0]{index=0}
--
-- 				-- tu robisz swoje dopasowania (np pod kitty)
-- 				-- override = function()
-- 				-- 	local bg = "#0b1110"
-- 				-- 	local fg = "#dce5d7"
--
-- 				-- 	return {
-- 				-- 		Normal = { bg = "#0b1110", fg = "#dce5d7" },
-- 				-- 		NormalNC = { bg = "#0b1110" },
-- 				-- 		NormalFloat = { bg = "#0b1110", fg = "#dce5d7" },
-- 				-- 		FloatBorder = { bg = "#0b1110", fg = "#9ae6b4" },
-- 				-- 		Visual = { bg = "#9ae6b4", fg = "#0b1110" },
--
-- 				-- 		-- jak chcesz “flat” panele:
-- 				-- 		-- neo-tree main
-- 				-- 		NeoTreeNormal = { bg = bg, fg = fg },
-- 				-- 		NeoTreeNormalNC = { bg = bg, fg = fg },
--
-- 				-- 		-- TO NAPRAWIA “pustą” część na dole
-- 				-- 		NeoTreeEndOfBuffer = { bg = bg, fg = bg },
-- 				-- 	}
-- 				-- end,
-- 			})
-- 		end,
-- 	},
--
-- 	-- 2) powiedz LazyVim żeby użył tego colorscheme
-- 	{
-- 		"LazyVim/LazyVim",
-- 		opts = {
-- 			colorscheme = "monokai-pro",
-- 		},
-- 	},
-- }

-- ---------------------------------------------------------------------------------------------------------------
-- kanagawa THEME
-- ---------------------------------------------------------------------------------------------------------------
-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	name = "kanagawa",
-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		require("kanagawa").setup({
-- 			-- ...
-- 		})
--
-- 		vim.cmd("colorscheme kanagawa-wave")
-- 		-- vim.cmd("colorscheme kanagawa-dragon")
-- 		-- vim.cmd("colorscheme kanagawa-lotus")
-- 	end,
-- }

-- ---------------------------------------------------------------------------------------------------------------
-- ONDARK THEME
-- ---------------------------------------------------------------------------------------------------------------
-- return {
-- 	"navarasu/onedark.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("onedark").setup({
-- 			style = "darker",
--
-- 			-- Twoja paleta z kitty (Forest Dark)
-- 			colors = {
-- 				bg0 = "#0b1110", -- background
-- 				fg = "#dce5d7", -- foreground
--
-- 				-- akcenty
-- 				green = "#98c379",
-- 				cyan = "#56b6c2",
-- 				blue = "#61afef",
-- 				purple = "#c678dd",
-- 				yellow = "#d19a66",
-- 				red = "#e06c75",
--
-- 				-- to jest Twój “mint” (cursor/selection/active border)
-- 				accent = "#9ae6b4",
-- 			},
--
-- 			highlights = {
-- 				-- global
-- 				Normal = { bg = "#0b1110", fg = "#dce5d7" },
-- 				NormalNC = { bg = "#0b1110" },
--
-- 				-- terminal w nvim
-- 				Terminal = { bg = "#0b1110", fg = "#dce5d7" },
--
-- 				-- floating windows
-- 				NormalFloat = { bg = "#0b1110", fg = "#dce5d7" },
-- 				FloatBorder = { fg = "#9ae6b4", bg = "#0b1110" },
--
-- 				-- NvimTree
-- 				NvimTreeNormal = { bg = "#0b1110" },
-- 				NvimTreeNormalNC = { bg = "#0b1110" },
-- 				NvimTreeEndOfBuffer = { fg = "#0b1110", bg = "#0b1110" },
-- 				NvimTreeWinSeparator = { fg = "#232825", bg = "#0b1110" },
--
-- 				-- linia kursora (żeby nie była jaśniejsza niż kitty)
-- 				CursorLine = { bg = "#111412" },
-- 			},
-- 		})
--
-- 		require("onedark").load()
-- 	end,
-- }

-- ---------------------------------------------------------------------------------------------------------------
-- NORDIC THEME
-- ---------------------------------------------------------------------------------------------------------------
-- return {
-- 	"AlexvZyl/nordic.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("nordic").load()
-- 	end,
-- }
--
