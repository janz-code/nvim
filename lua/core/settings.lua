vim.g.mapleader = " "
require("core.lazy")
require("core.keymaps")

local global = vim.g
local o = vim.opt

o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.encoding = "UTF-8"
o.termguicolors = true

vim.diagnostic.config({
	virtual_text = {
		prefix = "󰙎",
		spacing = 4,
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
	callback = function()
		local ft = vim.bo.filetype
		if ft == "" or vim.bo.buftype ~= "" then
			return
		end
		if vim.fn.line("$") > 5000 then
			return
		end
		pcall(function()
			require("lint").try_lint(ft)
			require("lint").try_lint()
		end)
	end,
})
