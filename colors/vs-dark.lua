local api = require 'api';

local palette = {
  DynamicBlack = '#1e1e1e',
  Nero = '#252526',
  BlackCoral = '#515c6a',
  Lochmara = '#007acc',
  Iron = '#d7d7d7',
  CelestialBlue = '#569CD6',
  OrientalPink = '#CE9178',
  ClayAsh = '#b5cea8',
  MutedGreen = '#6a9955',
  Liver = '#613214',
};

local colors = {
  bg = palette.DynamicBlack,
  fg = palette.Iron,
  primary = palette.CelestialBlue,
  secondary = palette.OrientalPink,
  tertiary = palette.ClayAsh,
  visual = palette.BlackCoral,
  float = palette.Nero,
  comment = palette.MutedGreen,
  number = palette.ClayAsh,
  cursor = '#FFFFFF',
  statusline = palette.Lochmara,
};

local bg = colors.bg;

-- api.applyTheme(theme); (colors -> theme)

api.applyHlGroups {
  Cursor = { colors.cursor, colors.cursor },
  lCursor = { colors.primary, colors.secondary },
  CursorIM = { colors.liver, colors.comment },
  TermCursor = { colors.fg, colors.fg },
  TermCursorNC = { colors.fg, colors.fg },

  TabLineFill = { colors.float },
  TabLine = { colors.visual },
  TabLineSel = { colors.primary },
  ColorColumn = { colors.float },

  Search = { colors.visual, 'fg' },
  CurSearch = { colors.secondary, 'bg' },
  IncSearch = { colors.secondary, 'bg' },

  Identifier = { nil, 'fg' },
  Statement = { nil, colors.primary },
  Boolean = { nil, colors.primary },
  Constant = { nil, colors.secondary },
  PreProc = { nil, colors.primary },
  Number = { nil, colors.number },
  Special = { nil, colors.primary },
  Error = { nil, '#ff0000' },
  Type = { nil, colors.primary },
  Comment = { nil, colors.comment },

  Menu = { colors.float },
  Pmenu = { colors.float },
  PmenuSel = { colors.visual },
  SignColumn = { colors.bg },
  StatusLine = { colors.statusline, colors.fg },
  StatusLineNC = { colors.fg, colors.statusline },
  WinSeparator = { colors.bg, colors.float },
  MsgSeparator = { '#ff0000', "#000ff0" },

  Normal = { colors.bg, colors.fg },
  NormalNC = { colors.bg, colors.fg }, -- Not Active
  NormalFloat = { colors.float, colors.fg }, -- "Borders" color isn't changed tho
  CursorLine = { colors.float },
  CursorColumn = { colors.float },
  Title = { nil, colors.primary },
  Directory = { nil, colors.secondary },
  Visual = { colors.visual },
  NonText = { colors.bg, colors.bg }, -- clean
  SpecialKey = { 'bg', colors.secondary },
  MsgArea = { colors.float, colors.primary },

  LineNr = { colors.bg, colors.visual },
  CursorLineNr = { colors.bg, colors.fg, 'bold' },

  -- ???
  Conceal = { '#00ff00', '#ff0000' },
  -- Scrollbar = { r, g },
  -- Tooltip = { g, b },
};

local diagnostic = {
  DiagnosticInfo = { bg, '#cccccc' },
  DiagnosticHint = { bg, '#19e6e6' },
  DiagnosticWarn = { bg, '#e69419' },
  DiagnosticError = { bg, '#e61919' },
};

api.applyHlGroups(diagnostic);

local gitsigns = {
  GitSignsAdd = { colors.bg, '#68eb47' },
  GitSignsChange = { colors.bg, '#47ebeb' },
  GitSignsDelete = { colors.bg, '#47ebeb' },
  GitSignsChangedelete = { colors.bg },
  GitSignsTopdelete = { colors.bg },
  GitSignsUntracked = { colors.bg },
  GitSignsAddLn = { colors.bg, '#6847eb' },
};

api.applyHlGroups(gitsigns);
