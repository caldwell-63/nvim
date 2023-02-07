local api = require 'api';
local mason = require 'api.mason';
local treesitter = require 'api.treesitter';

local function n(l, r, desc, isSilent)
  vim.keymap.set('n', l, r, { desc = desc, silent = isSilent });
end

n('<Leader>ot', api.startNewCmd, '🏴 Open/start new cmd (terminal)', true);
n('<Leader>oc', api.startChrome, 'Open/start Chrome', true);
n('<leader>m', mason.open, 'Open Mason');
n('<F3>', api.goToConfig, 'Open Config');
n('<C-j>', treesitter.printHlGroupNameUnderTheCursor);
n('<C-p>', function() vim.cmd 'so' end);

-- Git
n('<Leader>gi', function()
  vim.cmd 'silent !git init';
end, 'git init');

n('<Leader>gg', function()
  vim.cmd 'wa';
  local commitMessage = vim.fn.input('');
  vim.cmd('silent !git commit -a -m "' .. commitMessage .. '"');
end, 'save all and git commit all');

n('<Leader>gp', function() vim.cmd 'silent !git push'; end, 'git push');

-- n('?', api.runCopiedCommand, 'Run copied command');
