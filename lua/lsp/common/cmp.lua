local luasnip = require 'luasnip'
local cmp = require 'cmp'
require("luasnip.loaders.from_vscode").load();

if not cmp then return end

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    -- ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
    -- ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
    -- ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<C-L>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }
      elseif luasnip.jumpable(1) then
        luasnip.jump(1);
      else
        fallback()
      end
    end, { 'i' })
  }),
  sources = {
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
}
