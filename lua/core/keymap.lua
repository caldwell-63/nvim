local treesitter = require 'utils.treesitter';

vim.keymap.set("n", "<C-j>", treesitter.printHlGroupNameUnderTheCursor);

local mason = {
  open = function ()
    vim.cmd('Mason');
  end,
};

local utils = {
  config = function ()
    vim.cmd 'e ~/AppData/Local/nvim/';
  end,
};

vim.keymap.set('n', '<leader>m', mason.open, { desc = 'Open Mason' });
vim.keymap.set('n', '<F3>', utils.config, { desc = 'Open Config' });

-- vim.keymap.set('n', '<C-j>', function()
--   vim.cmd(':@"');
-- end, {
--   desc = 'Run selected text as vim command',
-- });
