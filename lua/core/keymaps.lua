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
