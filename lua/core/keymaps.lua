--- System
vim.keymap.set("n", "<C-s>", function()
	vim.cmd.write() -- :w
end, { desc = "Save current buffer", noremap = true, silent = true })
vim.keymap.set("n", "<C-S-s>", function()
	vim.cmd.wall() -- :wa
end, { desc = "Save all buffers", noremap = true, silent = true })
--- Menu
vim.keymap.set("n", "<C-m>", ":Neotree toggle<CR>", { desc = "Toggle NeoTree" })
vim.keymap.set("n", "<C-S-M>", ":Neotree focus<CR>", { desc = "Focus NeoTree" })

--- Clipboard

vim.keymap.set({ "n", "v" }, "<C-c>", '"+y', { desc = "Copiar al portapapeles" })
vim.keymap.set({ "n", "v" }, "<C-x>", '"+d', { desc = "Cortar al portapapeles" })
vim.keymap.set({ "n", "i", "v" }, "<C-v>", '"+p', { desc = "Pegar desde portapapeles" })

--- BufDelete

vim.keymap.set("n", "<C-q>", function()
	require("bufdelete").bufdelete(0, false)
end)

--- BufferChange

for i = 1, 9 do
	vim.keymap.set("n", "<A-" .. i .. ">", function()
		require("bufferline").go_to(i)
	end)
end

--- Conform

vim.keymap.set("n", "<C-f>", function()
	print(vim.g.mapleader)
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
end, { desc = "Format file with conform" })

--- Hover

vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
vim.keymap.set("n", "<C-k>", require("hover").hover_select, { desc = "hover.nvim (select)" })
vim.keymap.set("n", "<C-p>", function()
	require("hover").hover_switch("previous")
end, { desc = "hover.nvim (previous source)" })
vim.keymap.set("n", "<C-n>", function()
	require("hover").hover_switch("next")
end, { desc = "hover.nvim (next source)" })
vim.keymap.set("n", "<MouseMove>", require("hover").hover_mouse, { desc = "hover.nvim (mouse)" })
vim.o.mousemoveevent = true

--- Telescope

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fa", function()
	print("Leader space")
end)
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
