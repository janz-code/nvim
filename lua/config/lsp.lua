for _, file in ipairs(vim.fn.readdir(vim.fn.stdpath("config") .. "/lsp")) do
	local lsp_name = file:match("^(.*)%.lua$")
	if lsp_name then
		pcall(require, "lsp." .. lsp_name)
	end
end
require("config/lsp/lua")
require("config/lsp/css")
require("config/lsp/html")
require("config/lsp/typescript")
require("config/lsp/astro")
