return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	opts = {
		install_dir = vim.fn.stdpath("data") .. "/site",
		configs = {
			highlight = { enable = true },
			indent = { enable = true },
			rainbow = { enable = true, disable = {}, extended_node = false, max_file_lines = nil },
		},
	},
}
