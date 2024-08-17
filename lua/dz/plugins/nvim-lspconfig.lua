return {
  'neovim/nvim-lspconfig',
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require('lspconfig')

    lspconfig.tsserver.setup({
      capabilities = capabilities,
    })
  end,
}
