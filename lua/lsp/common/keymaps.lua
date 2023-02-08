local opts = { noremap = true, silent = true };

-- :h vim.diagnostic.*
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts);
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts);
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, opts);
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, opts);
