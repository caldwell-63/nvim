return {
  init = function()
    vim.cmd 'silent !git init';
  end,
  commitAll = function()
    vim.cmd 'wa';
    local commitMessage = vim.fn.input('');
    vim.cmd '!git add .';
    vim.cmd('!git commit -a -m "' .. commitMessage .. '"');
  end,
  push = function ()
    vim.cmd 'silent !git push';
  end,
};
