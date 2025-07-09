return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		{
			"windwp/nvim-ts-autotag",
			config = function()
				require("nvim-ts-autotag").setup({
					opts = {
						enable_close = true,
						enable_rename = true,
					},
					per_filetype = {
						["html"] = {
							enable_close_on_slash = false,
						},
					},
				})
			end,
		},
	},
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
