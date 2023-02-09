local lspc = require 'lspconfig';
local flags = require 'lsp.common.flags';
local on_attach = require 'lsp.common.on-attach';

lspc.sumneko_lua.setup {
  -- root_dir = root_pattern(...)
  on_attach = on_attach,
  flags = flags,
  single_file_support = true,
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  log_level = 2,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      workspace = {
        -- library = vim.api.nvim_get_runtime_file('', true),
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
      telemetry = {
        enable = false,
      },
    },
  },
};
