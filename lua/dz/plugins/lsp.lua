return {
  'neovim/nvim-lspconfig',
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    for _, server in ipairs({
      'bashls',
      'cssls',
      'eslint',
      'gopls',
      'lua_ls',
      'openscad_lsp',
      'prismals',
      'svelte',
      'tailwindcss',
    }) do
      vim.lsp.enable(server)
    end
  end,
}
