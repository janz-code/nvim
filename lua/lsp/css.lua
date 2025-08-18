vim.api.nvim_create_autocmd("FileType", {
	pattern = { "css", "scss" },
	callback = function(args)
		vim.lsp.start(require("config.lsp.cssls"))
		local project = vim.fs.find({ "package.json" }, { upward = true })
		if project[1] == nil then
			return
		end
		vim.lsp.start(require("config.lsp.cssvariables"))
	end,
})
