local config = {
    leader = ' ',
    theme = 'oxocarbon',
    tab = 2,
    number = false,
    highlightLine = false,
    cursorCenterLock = true,
};

vim.cmd('colors ' .. config.theme);

vim.g.mapleader        = config.leader;
vim.opt.tabstop        = config.tab;
vim.opt.softtabstop    = config.tab;
vim.opt.shiftwidth     = config.tab;
vim.opt.number         = config.number;
vim.opt.relativenumber = config.number;
vim.opt.cursorline     = config.highlightLine;
vim.opt.autochdir      = true;
vim.opt.termguicolors  = true;
vim.opt.expandtab      = true;
vim.opt.swapfile       = false;
vim.opt.laststatus     = 3;
vim.opt.signcolumn     = 'yes:1';
vim.opt.wrap           = false;
vim.opt.ruler          = true;
vim.opt.rulerformat    = "%80(%l/%L %c%)"
vim.opt.foldlevel      = 16;

vim.cmd([[
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
  set tw=81
  set cc=81
  set ignorecase
  set autoindent
  set keywordprg=
  set clipboard+=unnamedplus

  au VimEnter,VimResume * set guicursor=n-c-ci-i-v-ve:hor100-Cursor,r-cr:hor100,o:hor100
  au VimLeave,VimSuspend * set guicursor=
]]);

local function lockCursorCenterOnVerticalMovements()
  vim.cmd([[
    nn <C-d> <C-d>zz
    nn <C-u> <C-u>zz
    nn G Gzz
  ]]);
end

if config.cursorCenterLock then lockCursorCenterOnVerticalMovements(); end
