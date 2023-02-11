local lsp = {
  info = function() vim.cmd 'LspInfo' end,
  log = function() vim.cmd 'LspLog' end,
  restart = function() vim.cmd 'LspRestart' end,
  start = function() vim.cmd 'LspStart' end,
  stop = function() vim.cmd 'LspStop' end,
};

vim.keymap.set('n', '<Leader>li', lsp.info);
vim.keymap.set('n', '<Leader>ll', lsp.log);
vim.keymap.set('n', '<Leader>lr', lsp.restart);
vim.keymap.set('n', '<Leader>ls', lsp.start);
vim.keymap.set('n', '<Leader>ld', lsp.stop);
