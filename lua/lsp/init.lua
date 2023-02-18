vim.lsp.set_log_level('debug');

require 'lsp.common.keymaps';
require 'lsp.common.cmp';

require 'lsp.lang.json';
require 'lsp.lang.lua';
require 'lsp.lang.typescript';
require 'lsp.lang.emmet';

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
