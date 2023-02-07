require 'core.options';
require 'core.keymap';
require 'core.netrw';

require 'paq' {
  'savq/paq-nvim';
  'nvim-lua/plenary.nvim';
  'MunifTanjim/nui.nvim';
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x' };
  'uga-rosa/ccc.nvim';
  'folke/which-key.nvim';
  'folke/neodev.nvim';
  'numToStr/Comment.nvim';
  'lewis6991/gitsigns.nvim';
  'kylechui/nvim-surround';

  {
    'nvim-treesitter/nvim-treesitter',
    run = function() vim.cmd 'TSUpdate' end
  };

  'nvim-treesitter/nvim-treesitter-textobjects',

  -- LSP
  'VonHeikemen/lsp-zero.nvim';
  'neovim/nvim-lspconfig';
  'williamboman/mason.nvim';
  'williamboman/mason-lspconfig.nvim';
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'saadparwaiz1/cmp_luasnip';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-nvim-lua';
  'L3MON4D3/LuaSnip';
};

require 'plugin.lsp';
require 'plugin.treesitter';
require 'plugin.telescope';

require('Comment').setup();
require('gitsigns').setup();
require 'nvim-surround'.setup({});
require 'neodev'.setup({});

require 'which-key'.setup({});
vim.o.timeout = true;
vim.o.timeoutlen = 1024;

local ccc = require("ccc")

vim.keymap.set('n', '<leader>co', function()
  vim.cmd("CccPick");
end, { desc = 'Pick/Edit Color', noremap = true, silent = true });

vim.keymap.set('n', '<leader>ch', function()
  vim.cmd("CccHighlighterToggle");
end, { desc = 'Toggle Color Highlighting', noremap = true, silent = true });

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
