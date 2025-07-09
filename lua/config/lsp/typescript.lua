vim.api.nvim_create_autocmd("FileType", {
	pattern = { "typescript", "typescriptreact", "javascript" },
	callback = function(args)
		local full_path = vim.api.nvim_buf_get_name(args.buf)
		local extension = vim.fn.fnamemodify(full_path, ":e")
		if extension == "ts" and vim.fs.find("angular.json", { upward = true })[1] then
			vim.lsp.enable("angularls")
		end
		vim.lsp.enable("ts_ls")
	end,
})
