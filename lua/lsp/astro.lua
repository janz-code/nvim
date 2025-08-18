vim.api.nvim_create_autocmd("FileType", {
	pattern = { "astro" },
	callback = function(args)
		vim.lsp.enable("astro")
		vim.lsp.enable("cssls")
		vim.lsp.enable("html")
		local has_postcss = vim.fs.find({ ".postcssrc.json" }, { upward = true })[1] ~= nil
		if not has_postcss then
			return
		end
		vim.lsp.enable("tailwindcss")
	end,
})
