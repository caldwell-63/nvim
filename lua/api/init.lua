local api = {
  goToConfig = function()
    vim.cmd 'e ~/AppData/Local/nvim/';
  end,
  startNewCmd = function()
    vim.cmd 'silent !start cmd';
  end,
  startChrome = function()
    vim.cmd 'silent !start chrome';
  end,
};

-- vim.keymap.set('n', '<C-j>', function()
--   vim.cmd(':@"');
-- end, {
--   desc = 'Run selected text as vim command',
-- });

return api;
