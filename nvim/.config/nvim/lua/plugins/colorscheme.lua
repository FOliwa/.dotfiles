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
return {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "darker",
			-- dark, darker, warm, warmer, cool, deep
		})
		require("onedark").load()
	end,
}

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
