return {
	"nvim-telescope/telescope.nvim",
	version = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		"nvim-telescope/telescope-fzy-native.nvim",
		"sharkdp/fd",
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({})
		telescope.load_extension("fzy_native")
	end,
}
