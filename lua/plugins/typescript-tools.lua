return {
	"pmizio/typescript-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("typescript-tools").setup({
			jsx_close_tag = {
				enable = true,
				filetypes = { "javascriptreact", "typescriptreact" },
			},
		})
	end,
}
