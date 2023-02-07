local api = require 'api';
local mason = require 'api.mason';
local treesitter = require 'api.treesitter';
local git = require 'api.git';

local function n(l, r, desc, isSilent)
  vim.keymap.set('n', l, r, { desc = desc, silent = isSilent });
end

n('<Leader>ot', api.startNewCmd, '🏴 Open/start new cmd (terminal)', true);
n('<Leader>oc', api.startChrome, 'Open/start Chrome', true);
n('<leader>m', mason.open, 'Open Mason');
n('<F3>', api.goToConfig, 'Open Config');
n('<C-j>', treesitter.printHlGroupNameUnderTheCursor);
n('<C-p>', function() vim.cmd 'so' end);

n('<Leader>gi', git.init, 'git init');
n('<Leader>gg', git.commitAll, 'save all and git commit all');
n('<Leader>gp', git.push, 'git push');

-- n('?', api.runCopiedCommand, 'Run copied command');
