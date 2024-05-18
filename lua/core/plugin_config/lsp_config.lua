local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "clangd"
  }
})

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').sqls.setup{
    on_attach_sqls = function(client, bufnr)
        require('sqls').on_attach(client, bufnr)
    end
}

require("lspconfig").html.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('nvim-ts-autotag').setup()
