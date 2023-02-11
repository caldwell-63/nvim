local api = require 'api';
-- local treesitter = require 'api.treesitter';

vim.keymap.set('n', '<Leader>ot', api.startNewCmd, {
  desc   = 'Open/start new cmd/terminal)',
  silent = true,
});

vim.keymap.set('n', '<Leader>oc', api.startChrome, {
  silent = true,
  desc = 'Open/start Chrome',
});

vim.keymap.set('n', '<Leader>dt', function()
  local ft = vim.bo.filetype;
  print(ft, type(ft));
end);

vim.keymap.set('n', '<Leader>oo', api.goToConfig, { desc = 'Open Config' });

vim.keymap.set('n', '<C-h>', '<C-w>h');
vim.keymap.set('n', '<C-j>', '<C-w>j');
vim.keymap.set('n', '<C-k>', '<C-w>k');
vim.keymap.set('n', '<C-l>', '<C-w>l');

vim.keymap.set('n', '<C-p>', function() vim.cmd 'so' end);

-- vim.keymap.set('n', '<C-j>', treesitter.printHlGroupNameUnderTheCursor);
