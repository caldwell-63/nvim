require 'paq' {
  'savq/paq-nvim';
  'nvim-lua/plenary.nvim';
  'MunifTanjim/nui.nvim';
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x' };
  'lewis6991/gitsigns.nvim';
  'kylechui/nvim-surround';
  'uga-rosa/ccc.nvim';
  'numToStr/Comment.nvim';
  'shortcuts/no-neck-pain.nvim';

  -- themes
  'folke/tokyonight.nvim';
  'nyoom-engineering/oxocarbon.nvim';

  {
    'nvim-treesitter/nvim-treesitter',
    run = function() vim.cmd 'TSUpdate' end
  };

  'nvim-treesitter/nvim-treesitter-textobjects',

  -- LSP
  'neovim/nvim-lspconfig';
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-nvim-lua';
  'saadparwaiz1/cmp_luasnip';
  'L3MON4D3/LuaSnip';
};
