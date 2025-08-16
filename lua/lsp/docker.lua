vim.api.nvim_create_autocmd("BufRead", {
	pattern = { "*-compose.yml", "*-compose.yaml", ".dockerignore", "DockerFile" },
	callback = function(args)
		local bufnr = vim.api.nvim_get_current_buf()
		local filename = vim.api.nvim_buf_get_name(bufnr)
		if filename:match("-compose%.ya?ml$") then
			vim.bo[args.buf].filetype = "yaml.docker-compose"
			vim.lsp.start(require("config.lsp.docker_compose_ls"))
			return
		end
		vim.lsp.start(require("config.lsp.docker_language_server"))
	end,
})
