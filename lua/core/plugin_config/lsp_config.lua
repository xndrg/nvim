require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "gopls",
    "lua_ls"
  }
})

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
require("lspconfig").gopls.setup {
  on_attach = on_attach
}
require("lspconfig").clangd.setup {
  on_attach = on_attach
}
