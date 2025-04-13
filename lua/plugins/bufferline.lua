return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("bufferline").setup({
      options = {
        always_show_bufferline = true,
        diagnostics = true,
        persist_buffer_sort = true,
        show_close_icon = true,
      },
    })
  end,
}
