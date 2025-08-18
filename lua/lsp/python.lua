vim.api.nvim_create_autocmd("FileType", {
	pattern = { "py", "pyw" },
	callback = function(args)
		vim.lsp.start(require("config.lsp.basedpyright"))
	end,
})
