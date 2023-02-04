local config = {
  tab = 2,
};

vim.g.mapleader = ' ';
vim.opt.tabstop = config.tab;
vim.opt.softtabstop = config.tab;
vim.opt.shiftwidth = config.tab;
vim.opt.expandtab = true;
vim.opt.swapfile = false;
vim.opt.laststatus = 3;
vim.opt.signcolumn = 'yes:1';
vim.opt.wrap = false;

vim.cmd([[
  set ruler
  set rulerformat=%80(%l/%L\ %c%)
  set termguicolors
  set foldlevel=16
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
  set cul
  set nocuc
  set tw=80
  set cc=80
  set ignorecase
  set autoindent
  set keywordprg=

  colors vs-dark

  au VimEnter,VimResume * set guicursor=n-c-ci-i-v-ve:hor100,r-cr:hor100,o:hor100
  au VimLeave,VimSuspend * set guicursor=
]]);

function cursorCenterLock()
  vim.cmd([[
    nn <C-d> <C-d>zz
    nn <C-u> <C-u>zz
    nn G Gzz
  ]]);
end;
