return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-`>]],
      size = 20,
      on_close = function(term)
        if term.exit_status == 0 then
          term:close()
        end
      end,
      hide_numbers = true,
      direction = "float",
      shell = "/bin/zsh",
      auto_scroll = true,
      float_opts = {
        border = "curved",
        width = 160,
        height = 40,
        winblend = 3,
        zindex = 10,
        title_pos = "center",
      },
      winbar = {
        enable = true,
        name_formatter = function(term)
          return term.name
        end,
      },
      responsiveness = {
        horizontal_breakpoint = 135,
      },
    })
  end,
}
