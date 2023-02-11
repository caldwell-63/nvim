local ccc = require("ccc")

-- https://github.com/uga-rosa/ccc.nvim/blob/main/lua/ccc/config/default.lua
ccc.setup({
  highlighter = {
    auto_enable = true,
    max_byte = 128 * 1024,
    lsp = true,
  }
})
