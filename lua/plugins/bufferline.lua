return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				numbers = "ordinal",
				always_show_bufferline = true,
				diagnostics = true,
				persist_buffer_sort = true,
				show_close_icon = true,
				buffer_close_icon = "󰅙 ",
				close_icon = "󰅙 ",
				close_command = function(bufnum)
					require("bufdelete").bufdelete(bufnum)
				end,
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
						padding = 1,
					},
				},
				color_icons = true,
				show_buffer_close_icons = true,
				show_buffer_icons = true,
				show_tab_indicators = true,
				separator_style = "slant",
				sort_by = "id",
			},
		})
	end,
}
