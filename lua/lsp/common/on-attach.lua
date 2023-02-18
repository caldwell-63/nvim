local function on_attach(_, buffnr)
  local buffopts = {
      noremap = true,
      silent = true,
      buffer = buffnr,
  };

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, buffopts);
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buffopts);
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, buffopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, buffopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, buffopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, buffopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, buffopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, buffopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, buffopts)
  vim.keymap.set('n', '<space>dr', vim.lsp.buf.rename, buffopts)
  vim.keymap.set('n', '<space>da', vim.lsp.buf.code_action, buffopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, buffopts)

  vim.keymap.set('n', '<Leader>f', function()
    vim.lsp.buf.format { async = true }
  end, buffopts);
end

return on_attach;
