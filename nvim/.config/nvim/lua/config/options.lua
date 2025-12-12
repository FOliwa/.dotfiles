-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd("let g:netrw_liststyle = 3")

vim.g.lazyvim_blink_main = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
vim.opt.termguicolors = true
vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- ---------------------------------------------------------------------
-- Colors like in kitty - Optional added for consistency
-- ---------------------------------------------------------------------
vim.g.terminal_color_0 = "#111412"
vim.g.terminal_color_8 = "#232825"
vim.g.terminal_color_1 = "#e06c75"
vim.g.terminal_color_9 = "#ff7b86"
vim.g.terminal_color_2 = "#98c379"
vim.g.terminal_color_10 = "#b6e3a0"
vim.g.terminal_color_3 = "#d19a66"
vim.g.terminal_color_11 = "#ffd27e"
vim.g.terminal_color_4 = "#61afef"
vim.g.terminal_color_12 = "#7dc3ff"
vim.g.terminal_color_5 = "#c678dd"
vim.g.terminal_color_13 = "#e6b5ff"
vim.g.terminal_color_6 = "#56b6c2"
vim.g.terminal_color_14 = "#7fe7f3"
vim.g.terminal_color_7 = "#dce5d7"
vim.g.terminal_color_15 = "#ffffff"

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- Display where 120 characters is
opt.colorcolumn = "120"

-- This will automatically brake my line if is to long
opt.textwidth = 120
