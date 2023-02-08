local lspc = require 'lspconfig';
local flags = require 'lsp.common.flags';
local on_attach = require 'lsp.common.on-attach';

lspc.tsserver.setup {
  on_attach = on_attach,
  flags = flags,
};
