local lsp_names = { "angularls", "ts_ls", "html" }
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities({}, false))
for _, lsp in ipairs(lsp_names) do
	local ok, config = pcall(require, "lsp." .. lsp)
	if ok then
		vim.lsp.add_config({
			name = lsp,
			capabilities = capabilities,
			...,
			on_attach = config.on_attach,
			cmd = config.cmd,
			filetypes = config.filetypes,
			root_markers = config.root_dir,
			settings = config.settings,
		})
	end
end
require("config/lsp/css")
require("config/lsp/html")
require("config/lsp/typescript")
