if vim.g.neovide then
  vim.cmd [[set guifont=JetBrainsMono\ NF:h28:b]];
  vim.g.neovide_fullscreen = true
  vim.g.neovide_transparency = 1;
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_refresh_rate_idle = 1
  vim.g.neovide_remember_window_size = false
  vim.g.neovide_profiler = false
  -- vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
end

-- toggle boolean
