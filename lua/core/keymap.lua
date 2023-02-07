local api = require 'api';
local mason = require 'api.mason';
local treesitter = require 'api.treesitter';
local git = require 'api.git';

local function n(l, r, desc, isSilent)
  vim.keymap.set('n', l, r, { desc = desc, silent = isSilent });
end

n('<Leader>ot', api.startNewCmd, 'Open/start new cmd (terminal)', true);
n('<Leader>oc', api.startChrome, 'Open/start Chrome', true);
n('<Leader>om', mason.open, 'Open mason', true);
n('<Leader>oo', api.goToConfig, 'Open Config');

n('<Leader>gi', git.init, 'git init');
n('<Leader>gg', git.commitAll, 'save all and git commit all');
n('<Leader>gp', git.push, 'git push');

n('<C-j>', treesitter.printHlGroupNameUnderTheCursor);
n('<C-p>', function() vim.cmd 'so' end);
