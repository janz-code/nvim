--- GENERAL
vim.keymap.set("n", "<C-s>", function()
	vim.cmd.write()
end, { desc = "Save current buffer", noremap = true, silent = true })
vim.keymap.set("n", "<C-S-A>", function()
	vim.cmd.wall()
end, { desc = "Save all buffers", silent = true })
--- NEO-TREE
vim.keymap.set("n", "<C-m>", ":Neotree toggle<CR>", { desc = "Toggle NeoTree" })
vim.keymap.set("n", "<C-S-M>", ":Neotree focus<CR>", { desc = "Focus NeoTree" })
--- TODO-COMMENTS
vim.keymap.set("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
vim.keymap.set("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
--- BUF_DELETE
vim.keymap.set("n", "<C-q>", function()
	require("bufdelete").bufdelete(0, false)
end)
--- BUFFERLINE
for i = 1, 9 do
	vim.keymap.set("n", "<A-" .. i .. ">", function()
		require("bufferline").go_to(i)
	end)
end
--- TELESCOPE
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
--- HOVER
vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
vim.keymap.set("n", "<C-p>", function()
	require("hover").hover_switch("previous")
end, { desc = "hover.nvim (previous source)" })
vim.keymap.set("n", "<C-n>", function()
	require("hover").hover_switch("next")
end, { desc = "hover.nvim (next source)" })
vim.keymap.set("n", "<MouseMove>", require("hover").hover_mouse, { desc = "hover.nvim (mouse)" })
