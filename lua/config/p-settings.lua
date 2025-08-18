--- TREESITTER
require("nvim-treesitter").install({
	"lua",
	"typescript",
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "<filetype>" },
	callback = function()
		vim.treesitter.start()
	end,
})
