vim.keymap.set('n', '<leader>co', function()
  vim.cmd("CccPick");
end, { desc = 'Pick/Edit Color', noremap = true, silent = true });

vim.keymap.set('n', '<leader>ch', function()
  vim.cmd("CccHighlighterToggle");
end, { desc = 'Toggle Color Highlighting', noremap = true, silent = true });
