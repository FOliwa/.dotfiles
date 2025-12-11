return {
	{
		"saghen/blink.cmp",
		opts = {
			fuzzy = {
				-- zamiast próbować Rust + binarki, jedziemy na czystym Lua
				implementation = "lua", -- albo "prefer_rust", jeśli kiedyś to ogarniesz
			},
		},
	},
}
