local api = require 'api';

vim.keymap.set('n', '<Enter>', function () vim.cmd 'w' end)
vim.keymap.set('n', '<Leader>oo', api.goToConfig, { desc = 'Open Config' });
vim.keymap.set('n', '<C-p>', function() vim.cmd 'so' end);
