local api = require 'api';

local palette = {
  OrientalPink = '#CE9178',
  CelestialBlue = '#569CD6',
  Lochmara = '#007acc',
  MutedGreen = '#6a9955',
  ClayAsh = '#b5cea8',
  Iron = '#d7d7d7',
  DynamicBlack = '#1e1e1e',
  Nero = '#252526',
  BlackCoral = '#515c6a',
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

api.applyHlGroups {
  Cursor = { colors.cursor, colors.cursor },
  lCursor = { colors.primary, colors.secondary },
  CursorIM = { colors.liver, colors.comment },
  TermCursor = { colors.fg, colors.fg },
  TermCursorNC = { colors.fg, colors.fg },

  TabLineFill = { colors.float },
  TabLine = { colors.visual },
  TabLineSel = { colors.primary },
  DiagnosticInfo = { colors.fg },
  DiagnosticHint = { '#fff000' },
  DiagnosticError = { '#f00000' },
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
  CursorLineNr = { colors.bg, colors.comment, 'bold' },

  -- ???
  Conceal = { '#00ff00', '#ff0000' },
  -- Scrollbar = { r, g },
  -- Tooltip = { g, b },
};

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
