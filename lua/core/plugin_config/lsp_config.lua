local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
	"lua_ls",
	"clangd",
	"gopls",
	"pyright",
	"sqls",
	"html",
	"vuels",
	"tsserver",
	"cssls"
  }
})

require "lsp_signature".setup()

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

require("lspconfig").volar.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
	init_options = {
    plugins = {
      {
        name = '@vue/typescript-plugin',
	location = require('mason-registry').get_package('vue-language-server'):get_install_path() .. '/node_modules/@vue/language-server',
        languages = { 'vue' },
      },
    },
  },
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
}

require("lspconfig").cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('nvim-ts-autotag').setup()

