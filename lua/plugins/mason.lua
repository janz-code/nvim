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
			ensure_installed = { "lua_ls" },
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = { "stylua" },
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
