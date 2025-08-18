vim.api.nvim_create_autocmd("FileType", {
	pattern = { "py", "pyw" },
	callback = function(args)
		vim.lsp.enable("basedpyright")
	end,
})
