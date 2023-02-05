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
-- n('?', api.runCopiedCommand, 'Run copied command');
