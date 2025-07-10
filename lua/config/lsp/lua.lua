vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua" },
	callback = function(args)
		vim.lsp.enable("lua_ls")
	end,
})
