vim.api.nvim_create_autocmd("FileType", {
	pattern = { "typescript", "typescriptreact", "javascript" },
	callback = function(args)
		vim.lsp.start(require("config.lsp.ts_ls"))
		local full_path = vim.api.nvim_buf_get_name(args.buf)
		local filename = vim.fn.fnamemodify(full_path, ":t")
		local extension = vim.fn.fnamemodify(full_path, ":e")
		if extension == "ts" and vim.fs.find("angular.json", { upward = true })[1] then
			vim.lsp.start(require("config.lsp.angularls"))
			return
		end
		local jsx_set = { jsx = true, tsx = true }
		local has_postcss = vim.fs.find({ ".postcssrc.json" }, { upward = true })[1] ~= nil
		local is_jsx = jsx_set[extension]
		local is_angular = vim.fs.find("angular.json", { upward = true })[1] ~= nil
			and filename:match("%.component%.ts$")
		if has_postcss and (is_jsx or is_angular) then
			vim.lsp.start(require("config.lsp.tailwindcss"))
		end
	end,
})
