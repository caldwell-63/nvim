local Git = {
  init = function()
    vim.cmd 'silent !git init';
  end,
  commitAll = function()
    vim.cmd 'wa';

    local commitMessage = vim.fn.input { prompt = 'git commit -a -m ' };

    vim.cmd 'silent !git add .';
    vim.cmd('silent !git commit -a -m "' .. commitMessage .. '"');
  end,
  push = function ()
    vim.cmd 'silent !git push';
  end,
};

vim.keymap.set('n', '<Leader>gi', Git.init, { desc = 'init' });
vim.keymap.set('n', '<Leader>gg', Git.commitAll, { desc = 'save and commit all' });
vim.keymap.set('n', '<Leader>gp', Git.push, { desc = 'push' });
