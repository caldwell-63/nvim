vim.lsp.set_log_level('debug');

-- vim.lsp.handlers['workspace/diagnostic/refresh'] = function(_, _, ctx)
--   local ns = vim.lsp.diagnostic.get_namespace(ctx.client_id)
--   local bufnr = vim.api.nvim_get_current_buf()
--   vim.diagnostic.reset(ns, bufnr)
--   return true
-- end

require 'lsp.common.keymaps';
require 'lsp.common.cmp';

require 'lsp.lang.json';
require 'lsp.lang.lua';
require 'lsp.lang.emmet';
require 'lsp.lang.typescript';


-- Todo:
--
-- lsp.set_preferences({
--   sign_icons = {
--     info = '•',
--     hint = '•',
--     warn = '?',
--     error = '!',
--   },
-- });
