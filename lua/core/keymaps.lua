--- Menu

vim.keymap.set("n", "<C-m>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-S-M>", ":NvimTreeFocus<CR>")

--- Clipboard

vim.keymap.set({ "n", "v" }, "<C-c>", '"+y', { desc = "Copiar al portapapeles" })
vim.keymap.set({ "n", "v" }, "<C-x>", '"+d', { desc = "Cortar al portapapeles" })
vim.keymap.set({ "n", "i" }, "<C-v>", '"+p', { desc = "Pegar desde portapapeles" })
