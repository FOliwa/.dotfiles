return {
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		build = "make",
		opts = {
			-- domyślnie OpenAI
			provider = "openai",

			-- przygotowane różne providery + różne nazwy kluczy (env var)
			providers = {
				openai = {
					__inherited_from = "openai",
					api_key_name = "AVANTE_OPENAI_API_KEY",
					model = "gpt-4o-mini", -- jak chcesz mozesz ustawic konkretny model ale nie musisz
				},

				anthropic = {
					-- jeśli u ciebie Avante wspiera anthropic jako provider, to tak:
					-- w razie czego zmienisz provider = "anthropic"
					api_key_name = "AVANTE_ANTHROPIC_API_KEY",
					-- model = "claude-3-5-sonnet-latest",
				},

				openrouter = {
					__inherited_from = "openai",
					endpoint = "https://openrouter.ai/api/v1",
					api_key_name = "AVANTE_OPENROUTER_API_KEY",
					-- model = "deepseek/deepseek-r1",
				},
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
	},
}
