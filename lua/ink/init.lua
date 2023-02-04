local function hi(groupName, options)
  local command = "hi "..groupName;

  if options.bg then command = command.." guibg="..options.bg; end
  if options.fg then command = command.." guifg="..options.fg; end
  if options.gui then command = command.." gui="..options.gui; end

  vim.cmd(command);
end

return hi;
