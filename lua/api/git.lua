return {
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
