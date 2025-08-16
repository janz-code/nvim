vim.api.nvim_create_autocmd("FileType", {
	pattern = { "css", "scss" },
	callback = function(args)
		vim.lsp.start({
			name = "cssls",
			cmd = { "vscode-css-language-server", "--stdio" },
			init_options = { providerFormatter = true },
			settings = {
				css = { validate = true },
				scss = { validate = true },
			},
		})
		local project = vim.fs.find({ "package.json" }, { upward = true })
		if project[1] == nil then
			return
		end
		vim.lsp.start({
			name = "css_variables",
			cmd = { "css-variables-language-server", "--stdio" },
			filetypes = { "css", "scss" },
			settings = {
				root_markers = { "package.json", ".git" },
				cssVariables = {
					lookupFiles = { "**/*.scss", "**/*.css" },
					blacklistFolders = {
						"**/.cache",
						"**/.DS_Store",
						"**/.git",
						"**/.hg",
						"**/.next",
						"**/.svn",
						"**/bower_components",
						"**/CVS",
						"**/dist",
						"**/node_modules",
						"**/tests",
						"**/tmp",
					},
				},
			},
		})
	end,
})
