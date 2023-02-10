vim.keymap.set('n', '<Leader>yy', function() vim.cmd '!yarn'; end);

vim.keymap.set('n', '<Leader>ya', function()
  local args = vim.fn.input('', 'yarn add');
  vim.cmd('!yarn add ' .. args);
end);
