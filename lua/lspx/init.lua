local rootDir = vim.fs.dirname(vim.fs.find({'.git'}, { upward = true })[1]);

local inspect=vim.inspect;

vim.lsp.start({
  name = 'lspx/lua',
  cmd = { 'lua-language-server' },
  root_dir = rootDir,
});

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id);

    if client.server_capabilities.hoverProvider then
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    end

    vim.keymap.set('n', '<Leader>f', vim.lsp.buf.format, { buffer = args.buf })
  end,
});

vim.api.nvim_create_autocmd("User", {
  pattern = 'LspProgressUpdate',
  callback = function(args)
    print(inspect(args));
  end,
});
