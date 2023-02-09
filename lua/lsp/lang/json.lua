local capabilities = require 'cmp_nvim_lsp'.default_capabilities();
local flags = require 'lsp.common.flags';
local on_attach = require 'lsp.common.on-attach';

local lspc = require 'lspconfig';

lspc.jsonls.setup {
  capabilities = capabilities,
  flags = flags,
  on_attach = on_attach,
};

local function setup()
  
end
