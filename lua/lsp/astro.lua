vim.api.nvim_create_autocmd("FileType", {
	pattern = { "astro" },
	callback = function(args)
		vim.lsp.start(require("config.lsp.astro"))
		vim.lsp.start(require("config.lsp.cssls"))
		local has_postcss = vim.fs.find({ ".postcssrc.json" }, { upward = true })[1] ~= nil
		if not has_postcss then
			return
		end
		vim.lsp.start(require("config.lsp.tailwindcss"))
	end,
})
