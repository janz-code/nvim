return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavor = "auto",
		background = {
			light = "latte",
			dark = "frappe",
		},
		show_end_of_buffer = false,
		term_color = false,
		integrations = {
			cmp = true,
			gitsigns = true,
			neotree = true,
			treesitter = true,
			notify = true,
			bufferline = true,
		},
	},
}
