vim.api.nvim_create_autocmd("FileType", {
	pattern = { "html", "typescript" },
	callback = function(args)
		local full_path = vim.api.nvim_buf_get_name(args.buf)
		local filename = vim.fn.fnamemodify(full_path, ":t")
		local extension = vim.fn.fnamemodify(full_path, ":e")
		--- IF IS A TYPESCRIPT FILE BUT IT'S NOT AN ANGULAR COMPONENT RETURN
		if
			extension == "ts"
			and not vim.fs.find("angular.json", { upward = true })[1]
			and not filename:match("%.component%.ts$")
		then
			return
		end
		vim.lsp.enable("html")
		if vim.fs.find({ ".postcssrc.json" }, { upward = true })[1] then
			vim.lsp.enable("tailwindcss")
		end
	end,
})
