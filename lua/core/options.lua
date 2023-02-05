local config = {
  leader = ' ',
  tab = 2,
  number = true,
};

vim.g.mapleader        = config.leader;
vim.opt.tabstop        = config.tab;
vim.opt.softtabstop    = config.tab;
vim.opt.shiftwidth     = config.tab;
vim.opt.number         = config.number;
vim.opt.relativenumber = config.number;
vim.opt.expandtab      = true;
vim.opt.swapfile       = false;
vim.opt.laststatus     = 3;
vim.opt.signcolumn     = 'yes:1';
vim.opt.wrap           = false;
vim.opt.ruler          = true;

vim.cmd([[
  setg nu
  setg rnu
  set rulerformat=%80(%l/%L\ %c%)
  set termguicolors
  set foldlevel=16
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
  set cul
  set nocuc
  set tw=80
  set cc=81
  set ignorecase
  set autoindent
  set keywordprg=

  colors vs-dark

  au VimEnter,VimResume * set guicursor=n-c-ci-i-v-ve:hor100-Cursor,r-cr:hor100,o:hor100
  au VimLeave,VimSuspend * set guicursor=
]]);

function lockCursorCenterOnVerticalMovements()
  vim.cmd([[
    nn <C-d> <C-d>zz
    nn <C-u> <C-u>zz
    nn G Gzz
  ]]);
end
