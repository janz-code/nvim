vim.api.nvim_create_autocmd("FileType", {
	pattern = { "rust", "rs" },
	callback = function(args)
		vim.lsp.enable("rust_analyzer")
	end,
})
