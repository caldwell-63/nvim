require 'plugin.paq';

require 'core.options';
require 'core.keymap';
require 'core.netrw';
require 'keys.L';
require 'keys.Y';
require 'keys.G';
require 'keys.C';

require 'lsp';

require 'plugin.treesitter';
require 'plugin.telescope';

require('Comment').setup();
require('gitsigns').setup();
require 'nvim-surround'.setup({});

local ccc = require("ccc")

-- https://github.com/uga-rosa/ccc.nvim/blob/main/lua/ccc/config/default.lua
ccc.setup({
  highlighter = {
    auto_enable = true,
    max_byte = 128 * 1024,
    lsp = true,
  }
})

vim.keymap.set('n', '<Leader>q', function()
  vim.cmd('wqa');
end, { desc = 'Save all and quit' });

vim.keymap.set('n', '<Leader>h', function()
  vim.cmd('h | only');
end, { desc = 'Open help' });
