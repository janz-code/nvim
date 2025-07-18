return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_enable = false,
			ensure_installed = {
				"lua_ls",
				"angularls",
				"astro",
				"basedpyright",
				"bashls",
				"csharp_ls",
				"clangd",
				"cmake",
				"css_variables",
				"cssls",
				"denols",
				"docker_compose_language_service",
				"dockerls",
				"gopls",
				"grammarly",
				"gradle_ls",
				"html",
				"htmx",
				"jdtls",
				"jsonls",
				"kotlin_lsp",
				"markdown_oxide",
				"mdx_analyzer",
				"nginx_language_server",
				"phpactor",
				"postgres_lsp",
				"prismals",
				"rust_analyzer",
				"sqlls",
				"svelte",
				"tailwindcss",
				"textlsp",
				"ts_ls",
				"vue_ls",
				"yamlls",
				"zls",
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = { "stylua", "biome", "ruff" },
			auto_update = false,
			run_on_start = true,
			start_delay = 3000,
			integrations = {
				["mason-lspconfig"] = true,
				["mason-nvim-dap"] = true,
			},
		},
	},
}
