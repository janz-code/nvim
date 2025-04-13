return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "whoIsSethDaniel/mason-tool-installer.nvim"
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      automatic_installation = true,
      ensure_installed = {
        "lua_ls"
      }
    })
    require("mason-tool-installer").setup({
      ensure_installed = {
        "stylua"
      }
    })
  end
}
