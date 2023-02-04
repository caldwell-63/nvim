local lsp = require('lsp-zero');
local cmp = require('cmp');

require("luasnip.loaders.from_vscode").load();

lsp.preset('recommended');

lsp.set_preferences({
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I',
  },
});

lsp.configure('emmet-ls', {
  filetypes = {
    'html',
    'typescript',
    'typescriptreact',
    'javascriptreact',
    'css', 'sass', 'scss', 'less'
  },
});

-- luasnip -> nvim-cmp -> zero
lsp.setup_nvim_cmp({
  sources = {
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
  mapping = lsp.defaults.cmp_mappings({
    ['<C-L>'] = cmp.mapping.confirm({ select = true })
  })
});

lsp.nvim_workspace();

lsp.setup();

vim.keymap.set('n', '<leader>f', function()
  vim.cmd('LspZeroFormat');
end, { desc = 'Format' });
