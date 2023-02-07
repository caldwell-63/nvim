local api = require 'api';
local mason = require 'api.mason';
local treesitter = require 'api.treesitter';
local git = require 'api.git';

vim.keymap.set('n', '<Leader>ot', api.startNewCmd, {
  desc = 'Open/start new cmd/terminal)',
  silent  = true,
});

vim.keymap.set('n', '<Leader>oc', api.startChrome,  { 
  silent = true ,
  desc ='Open/start Chrome',
});

vim.keymap.set('n', '<Leader>om', mason.open, {
  silent = true,
  desc= 'Open mason' 
});

vim.keymap.set('n', '<Leader>oo', api.goToConfig, {desc='Open Config'});

vim.keymap.set('n', '<Leader>gi', git.init, {desc='git init'});
vim.keymap.set('n', '<Leader>gg', git.commitAll, {desc='save all and git commit all'});
vim.keymap.set('n', '<Leader>gp', git.push, {desc='git push'});

vim.keymap.set('n', '<C-j>', treesitter.printHlGroupNameUnderTheCursor);
vim.keymap.set('n', '<C-p>', function() vim.cmd 'so' end);
