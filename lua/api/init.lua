local h = require 'utils.h';

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
  applyHlGroups = function(groups)
    for k, v in pairs(groups) do
      local bg = v[1];
      local fg = v[2];
      local gu = v[3];

      h(k, bg, fg, gu);
    end
  end,
  runCopiedCommand = function()
    vim.cmd ':@"';
  end,
};

return api;
