local wezterm = require("wezterm")

return {
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 12.0,

	enable_tab_bar = false,
	window_decorations = "RESIZE",

	color_scheme = "Catppuccin Mocha",
	window_background_opacity = 0.91,
	text_background_opacity = 1.0,

	window_padding = {
		left = 10,
		right = 10,
		top = 8,
		bottom = 8,
	},

	default_cursor_style = "BlinkingBar",
	cursor_blink_rate = 650,

	scrollback_lines = 10000,
	audible_bell = "Disabled",
	window_close_confirmation = "NeverPrompt",

	term = "xterm-256color",

	default_prog = { "/bin/bash", "-l" },
}
