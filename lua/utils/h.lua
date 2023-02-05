local function h(groupName, bg, fg, gui)
  local command = "hi "..groupName;

  if bg then command = command.." guibg="..bg; end
  if fg then command = command.." guifg="..fg; end
  if gui then command = command.." gui="..gui; end

  vim.cmd(command);
end;

return h;
