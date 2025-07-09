vim.api.nvim_create_autocmd("FileType", {
	pattern = { "html", "typescript" },
	callback = function(args)
		local full_path = vim.api.nvim_buf_get_name(args.buf)
		local extension = vim.fn.fnamemodify(full_path, ":e")
		--- IF IS A TYPESCRIPT FILE BUT IT'S NOT AN ANGULAR PROJECT RETURN
		if extension == "ts" and not vim.fs.find("angular.json", { upward = true })[1] then
			return
		end
		vim.lsp.enable("html")
	end,
})
