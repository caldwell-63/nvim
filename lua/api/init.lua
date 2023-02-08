function highlight(groupName, bg, fg, gui)
  local command = "hi " .. groupName;

  if bg then command = command .. " guibg=" .. bg; end
  if fg then command = command .. " guifg=" .. fg; end
  if gui then command = command .. " gui=" .. gui; end

  vim.cmd(command);
end

local api = {
  goToConfig = function() vim.cmd 'e ~/AppData/Local/nvim/'; end,
  startNewCmd = function() vim.cmd 'silent !start cmd'; end,
  startChrome = function() vim.cmd 'silent !start chrome'; end,
  runCopiedCommand = function() vim.cmd ':@"'; end,
  applyHlGroups = function(groups)
    for k, v in pairs(groups) do
      local bg = v[1];
      local fg = v[2];
      local gu = v[3] or 'NONE';

      highlight(k, bg, fg, gu);
    end
  end,
};

return api;
