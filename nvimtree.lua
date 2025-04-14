return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "NvimTree",
      callback = function()
        vim.keymap.set("n", "<Esc>", "<Cmd>wincmd l<CR>", { buffer = true, desc = "Return focus to document" })
      end,
    })
    require("nvim-tree").setup({
      auto_reload_on_write = true,
      sort = {
        sorter = "case_sensitive",
        folders_first = true,
      },
      view = {
        width = 36,
        side = "left",
        preserve_window_proportions = true,
        signcolumn = "yes",
      },
      renderer = {
        group_empty = true,
        ident_width = 2,
      },
      filters = {
        dotfiles = true,
        git_ignored = true,
      },
    })
  end,
}
