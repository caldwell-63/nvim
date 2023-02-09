local lspc = require 'lspconfig';
local flags = require 'lsp.common.flags';
local on_attach = require 'lsp.common.on-attach';
local capabilities = require 'cmp_nvim_lsp'.default_capabilities();
local util = require 'lspconfig.util';

lspc.tsserver.setup {
  on_attach = on_attach,
  flags = flags,
  capabilities = capabilities,
  single_file_support = false,
  root_dir = function(fname)
    -- local rd = util.root_pattern('tsconfig.json')(fname);
    -- local alt = util.root_pattern('package.json', '.git', 'jsconfig.json')(fname);

    -- this works correctly for a monorepos, not scoping to one package
    local root = util.root_pattern('.git')(fname);

    return root;
  end,
};
