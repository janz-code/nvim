vim.api.nvim_create_autocmd("FileType", {
	pattern = { "css", "scss" },
	callback = function(args)
		vim.lsp.enable("cssls")
		local project = vim.fs.find({ "package.json" }, { upward = true })
		if project[1] == nil then
			return
		end
		vim.lsp.enable("cssvariables")
	end,
})
