-- lua/plugins/ai.lua
return {
	-----------------------------------------------------------------------------
	-- 1) Autocomplete: blink.cmp (bez nvim-cmp, bez copilot-cmp)
	--  To LazyVim ma juz out of the box zdaje sie
	-----------------------------------------------------------------------------

	-----------------------------------------------------------------------------
	-- 2) GitHub Copilot: backend AI (bez panelu i ghostów)
	-----------------------------------------------------------------------------
	{
		"zbirenbaum/copilot.lua",
		event = "InsertEnter",
		opts = {
			suggestion = { enabled = false },
			panel = { enabled = false },
			filetypes = {
				markdown = true,
				gitcommit = true,
				["*"] = true,
			},
		},
		-- Pierwsze użycie: :Copilot auth
	},

	-----------------------------------------------------------------------------
	-- 3) CopilotChat: agent na cały projekt (explain/refactor/tests/docs)
	-----------------------------------------------------------------------------
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			"zbirenbaum/copilot.lua",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		opts = {
			debug = false,
			show_help = false,
			window = { layout = "vertical", width = 0.45 },
			context = "buffers", -- "buffers" | "buffer" | "quickfix" | "visual"
			prompts = {
				Explain = "Explain the selected code briefly.",
				Refactor = "Refactor the selected code, improving readability and performance.",
				Tests = "Write unit tests for the selected code.",
				Docs = "Generate documentation comments for the selected code.",
			},
		},
		keys = {
			{ "<leader>aa", "<cmd>CopilotChat<cr>", desc = "AI: Open chat" },
			{ "<leader>ae", "<cmd>CopilotChatExplain<cr>", desc = "AI: Explain code" },
			{ "<leader>ar", "<cmd>CopilotChatRefactor<cr>", desc = "AI: Refactor code" },
			{ "<leader>at", "<cmd>CopilotChatTests<cr>", desc = "AI: Generate tests" },
			{ "<leader>ad", "<cmd>CopilotChatDocs<cr>", desc = "AI: Docs/comments" },
			{
				"<leader>aq",
				function()
					local input = vim.fn.input("AI ask: ")
					if input and #input > 0 then
						require("CopilotChat").ask(input)
					end
				end,
				desc = "AI: Quick ask",
			},
		},
	},

	-----------------------------------------------------------------------------
	-- 4) ChatGPT.nvim: promptowanie przez własne API (OpenAI / lokalny endpoint)
	-----------------------------------------------------------------------------
	{
		"jackMort/ChatGPT.nvim",
		cmd = { "ChatGPT", "ChatGPTActAs", "ChatGPTEditWithInstructions" },
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("chatgpt").setup({
				api_key_cmd = "echo $OPENAI_API_KEY", -- ustaw zmienną środowiskową
				-- Jeśli używasz lokalnego serwera (np. LM Studio/Ollama-proxy), odkomentuj:
				-- openai_api_base = "http://127.0.0.1:11434/v1",
				openai_params = {
					model = "gpt-4o-mini",
					temperature = 0.2,
					max_tokens = 1200,
				},
				popup_input = { submit = "<CR>" },
				popup_window = { border = { style = "rounded" } },
			})
		end,
		keys = {
			{ "<leader>gc", "<cmd>ChatGPT<cr>", desc = "ChatGPT: Open chat" },
			{
				"<leader>ge",
				"<cmd>ChatGPTEditWithInstructions<cr>",
				mode = { "n", "v" },
				desc = "ChatGPT: Edit selection",
			},
			{ "<leader>ga", "<cmd>ChatGPTActAs<cr>", desc = "ChatGPT: Act as ..." },
			{
				"<leader>gq",
				function()
					local input = vim.fn.input("ChatGPT ask: ")
					if input and #input > 0 then
						require("chatgpt").ask(input)
					end
				end,
				desc = "ChatGPT: Quick ask",
			},
		},
	},

	-----------------------------------------------------------------------------
	-- 5) QoL (opcjonalnie – ale przydatne)
	-----------------------------------------------------------------------------
	{ "folke/which-key.nvim", opts = {} },
	{
		"folke/trouble.nvim",
		cmd = { "Trouble", "TroubleToggle" },
		opts = { use_diagnostic_signs = true },
		keys = {
			{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
			{ "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix (Trouble)" },
		},
	},
}
