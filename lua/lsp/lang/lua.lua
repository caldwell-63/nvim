local lspc = require 'lspconfig';
local flags = require 'lsp.common.flags';
local on_attach = require 'lsp.common.on-attach';
local util = require 'lspconfig.util';

lspc.sumneko_lua.setup {
  -- root_dir = root_pattern(...)
  on_attach = on_attach,
  flags = flags,
  single_file_support = false,
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  log_level = 2,
  root_dir = function(fname)
    local root = util.root_pattern('.git')(fname);

    print(root);

    return root;
  end,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
        -- maxPreload = 100000, ?
        -- preloadFileSize = 10000, ?
      },
      telemetry = {
        enable = false,
      },
    },
  },
};
