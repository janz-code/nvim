vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua" },
	callback = function(args)
		vim.lsp.start(require("config/lsp/lua_ls"))
	end,
})
