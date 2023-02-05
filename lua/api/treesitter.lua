local function getHlGroupNameUnderTheCursor()
  return vim.treesitter.get_captures_at_cursor(0);

  -- TSPlayground provided command. (Need to install the plugin.)
  -- bindkey("n",    "<C-e>",  ":TSHighlightCapturesUnderCursor<CR>",   opts)
  -- This was misbehaving a lot.
  -- Might be more stable now in recent treesitter versions.
end;

return {
  printHlGroupNameUnderTheCursor = function()
    print(vim.inspect(getHlGroupNameUnderTheCursor()));
  end
};
