-- autochdir

local function openNetrw(changeDir)
  local ft = vim.bo.filetype;
  local bt = vim.bo.buftype;
  local isReadonly = vim.bo.readonly;

  if isReadonly then return vim.cmd('e .') end
  if ft == '' or ft == ' ' or not ft then return vim.cmd('e .') end
  if ft == 'netrw' then return 'h' end -- go dir up
  if bt == 'nofile' then return end

  if changeDir then vim.cmd('cd %:h') end

  vim.cmd('w');
  vim.cmd('e .');
end

vim.keymap.set('n', '<C-h>', function()
  vim.cmd('noh');
  openNetrw();
end);

vim.cmd([[
  let g:netrw_list_hide = '^\..*'
  let g:netrw_hide = 1
  let g:netrw_keepdir = 0
]]);

local toggle = false;

vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, { remap = true, buffer = true })
    end

    bind('i', '%');
    bind('l', '<Enter>');
    bind('h', '-');

    bind('m', function()
      toggle = vim.api.nvim_get_current_line();
      print(toggle)
    end);

    bind('p', function()

    end);
  end
});
