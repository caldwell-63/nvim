local configs = require 'nvim-treesitter.configs';
local install = require 'nvim-treesitter.install';

install.prefer_git = false;

configs.setup {
  ensure_installed = {
    'lua', 'vim', 'help', 'typescript', 'javascript', 'markdown'
  },
  sync_install = false,
  highlight = {
    enable = true,
    disable = function(lang, buf)
      if lang == 'json' then return false end
      local max_filesize = 80 * 1024 -- 80 KB
      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,
  },
  additional_vim_regex_highlighting = false,
};
