return {
  "m4xshen/autoclose.nvim",
  name = "auto pairs and closes brackets",
  config = function()
    require("autoclose").setup({
      keys = {
        ["<"] = { escape = false, close = true, pair = "<>" }
      },
      options = {
        auto_ident = true
      }
    })
  end
}
