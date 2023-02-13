local lspc = require 'lspconfig';
local flags = require 'lsp.common.flags';
local on_attach = require 'lsp.common.on-attach';
local util = require 'lspconfig.util';

lspc.lua_ls.setup {
  on_attach = on_attach,
  flags = flags,
  single_file_support = true,
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  log_level = 2,
  root_dir = function(fname)
    local root = util.root_pattern('.git')(fname);

    return root;
  end,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
        maxPreload = 1000000,
        preloadFileSize = 1000000,
      },
      telemetry = {
        enable = false,
      },
    },
  },
};
