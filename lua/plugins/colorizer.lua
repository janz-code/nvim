return {
	"norcalli/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile", "BufWinEnter" },
	lazy = true,
	config = function()
		require("colorizer").setup({
			"*",
			css = { rgb_fn = true },
			html = { names = false },
		})
	end,
}
