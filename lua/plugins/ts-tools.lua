return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = {
		settings = {
			separate_diagnostic_server = true,
			public_diagnostic_on = "insert_leaver",
			expose_as_code_action = "fix_all",
			tsserver_locale = "en",
			complete_function_calls = false,
			include_completions_with_insert_text = true,
			jsx_close_tag = {
				enable = true,
				filetypes = { "javascriptreact", "typescriptreact" },
			},
		},
	},
}
