local hi = require('ink');

local theme = {
  OrientalPink = '#CE9178',
  CelestialBlue = '#569CD6',
  MutedGreen = '#6a9955',
  ClayAsh = '#b5cea8',
  Iron = '#d7d7d7',
  DynamicBlack = '#1e1e1e',
  Nero = '#252526',
  BlackCoral = '#515c6a',
  Liver = '#613214',
};

vim.cmd('set background=dark');

hi('Normal', { bg = theme.DynamicBlack, fg = theme.Iron });
hi('NormalNC', { bg = theme.DynamicBlack, fg = theme.Iron });
hi('NormalFloat', { bg = theme.Nero, fg = theme.Iron });
hi('CursorLine', { bg = theme.Nero });
hi('CursorColumn', { bg = theme.Nero });
hi('Cursor', { bg = '#ff0000', fg = '#00ff00' });
hi('lCursor', { bg = '#ff0000', fg = '#00ff00' });
hi('CursorIM', { bg = '#ff0000', fg = '#00ff00' });

-- :h group-name
hi('Constant', { fg = theme.OrientalPink, gui = 'NONE' });
hi('Number', { fg = theme.ClayAsh, gui = 'NONE' });
hi('Boolean', { fg = theme.CelestialBlue, gui = 'NONE' });

hi('Statement', { fg = '#569cd6', gui = 'NONE' });

-- variable, function names
hi('Identifier', { fg = theme.Iron, gui = "NONE" });

hi('PreProc', { fg = theme.CelestialBlue, gui = "NONE" });

hi('Comment', { fg = theme.MutedGreen, gui = 'NONE' });

hi('Type', { fg = theme.CelestialBlue, gui = 'NONE' });

hi('Error', { bg = '#ff0000', fg = '#ffffff', gui = 'NONE' });

-- brackets, parens, colons, semicolons, also classes
hi('Special', { fg = theme.Iron, gui = 'NONE' });

hi('ColorColumn', { bg = theme.Nero });

hi('Search', { bg = theme.BlackCoral, fg = 'fg' });
hi('CurSearch', { bg = theme.Liver, fg = 'fg' });
hi('IncSearch', { bg = theme.CelestialBlue, fg = 'fg' });

-- Placeholder characters substituted for concealed text (see 'conceallevel').
hi('Conceal', { bg = 'bg', fg = '#ff00ff' });

-- ink.hi('Title', { fg = ink.palette.lime }) -- Markdown headers and other titles
hi('StatusLine', { bg = theme.Nero, fg = '#cccccc', gui = 'NONE' });
hi('Visual', { bg = '#4d4d4d', fg = 'NONE' });
hi('NonText', { bg = theme.DynamicBlack, fg = theme.DynamicBlack });
hi('MsgArea', { bg = theme.Nero, fg = '#cccccc' });
hi('SpecialKey', { fg = theme.CelestialBlue });
hi('Directory', { fg = theme.ClayAsh });
hi('Title', { fg = theme.CelestialBlue });

hi('TabLine', { bg = '#33ff00', fg = '#ffffff' })
hi('TabLineFill', { bg = '#111111', fg = '#999999' })
hi('TabLineSel', { bg = '#111111', fg = '#cccccc' })

-- Diagnostics
-- ink.hi('DiagnosticInfo', { fg = c.mono16 })
-- ink.hi('DiagnosticHint', { fg = c.mono48 }) -- e.g. declared but never read
-- ink.hi('DiagnosticError', { fg = c.red })
-- ink.hi('DiagnosticInfo', { fg = c.green })

hi('Menu', { bg = theme.Nero });
hi('SignColumn', { bg = theme.DynamicBlack });
hi('WinSeparator', { bg = theme.Nero, fg = theme.Nero });
hi('Tooltip', { bg = theme.Nero });
hi('Scrollbar', { bg = theme.Nero });
hi('Pmenu', { bg = theme.Nero });
hi('PmenuSel', { bg = '#333333' });
