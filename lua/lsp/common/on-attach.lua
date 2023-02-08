local function on_attach(_, buffnr)
  -- enable completion triggered by <c-x><c-o> (?)
  vim.api.nvim_buf_set_option(buffnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc');

  -- :h vim.lsp.*
  local buffopts = {
    noremap = true,
    silent = true,
    buffer = buffnr,
  };

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, buffopts);
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buffopts);

  vim.keymap.set('n', '<Leader>f', function()
    vim.lsp.buf.format { async = true }
  end, buffopts);
end

return on_attach;
