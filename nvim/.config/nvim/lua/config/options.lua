-- Options are automatically loaded before lazy.nvim startup
-- Default options:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.cmd("let g:netrw_liststyle = 3")

vim.g.lazyvim_blink_main = true

local opt = vim.opt

-- ============================================================================
-- UI
-- ============================================================================

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.number = true
opt.relativenumber = true
opt.cursorline = true

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.splitright = true
opt.splitbelow = true

opt.wrap = false
opt.colorcolumn = "120"

-- ============================================================================
-- Performance
-- ============================================================================

opt.updatetime = 250
opt.timeoutlen = 300
opt.redrawtime = 10000

opt.swapfile = false

-- ============================================================================
-- Indentation
-- ============================================================================

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- ============================================================================
-- Search
-- ============================================================================

opt.ignorecase = true
opt.smartcase = true

-- ============================================================================
-- Editing
-- ============================================================================

opt.backspace = "indent,eol,start"
opt.textwidth = 120

-- ============================================================================
-- Spell checking
-- Włączamy tylko dla plików tekstowych
-- ============================================================================

opt.spell = false

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "text", "gitcommit" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = { "en", "pl" }
	end,
})

-- ============================================================================
-- Large files optimization
-- ============================================================================

vim.api.nvim_create_autocmd("BufReadPre", {
	callback = function(args)
		local ok, stat = pcall(vim.loop.fs_stat, args.file)

		if ok and stat and stat.size > 500 * 1024 then
			vim.opt_local.spell = false
			vim.opt_local.relativenumber = false
			vim.opt_local.cursorline = false
			vim.opt_local.colorcolumn = ""
			vim.opt_local.foldmethod = "manual"

			pcall(vim.cmd, "TSBufDisable highlight")
		end
	end,
})
