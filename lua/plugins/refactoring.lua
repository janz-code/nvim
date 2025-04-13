return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter"
  },
  lazy = false,
  opts = {},
  config = function()
    require("refactoring").setup({
      prompt_func_return_type = {
        go = true,
        java = true,
        cpp = true,
        c = true,
        lua = true,
        python = true,
        typescript = true,
        javascript = true,
        csharp = true
      },
      promp_func_param_type = {
        go = true,
        java = true,
        cpp = true,
        c = true,
        lua = true,
        python = true,
        typescript = true,
        javascript = true,
        csharp = true
      },
      printf_statements = {},
      print_var_statements = {},
      show_success_message = true
    })
  end
}
