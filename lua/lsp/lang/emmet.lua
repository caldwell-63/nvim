local capabilities = require 'cmp_nvim_lsp'.default_capabilities();
local flags = require 'lsp.common.flags';
local on_attach = require 'lsp.common.on-attach';

capabilities.textDocument.completion.completionItem.snippetSupport = true

require 'lspconfig'.emmet_ls.setup {
  cmd = { "emmet-ls2.cmd", "--stdio" },
  capabilities = capabilities,
  flags = flags,
  on_attach = on_attach,
  filetypes = {
    'html',
    'typescript',
    'typescriptreact',
    'javascriptreact',
    'css', 'sass', 'scss', 'less'
  },
}
