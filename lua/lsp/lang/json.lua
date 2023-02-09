-- local capabilities = vim.lsp.protocol.make_client_capabilities()

-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- require 'lspconfig'.jsonls.setup {
--   capabilities = capabilities
-- }

local capabilities = require 'cmp_nvim_lsp'.default_capabilities();
local flags = require 'lsp.common.flags';
local on_attach = require 'lsp.common.on-attach';

local lspc = require 'lspconfig';

lspc.jsonls.setup {
  capabilities = capabilities,
  flags = flags,
  on_attach = on_attach,
};
