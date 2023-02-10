local api = require 'api';

vim.cmd 'set background=dark';

local palette = {
  Cinder = '#0d1117',
  Mirage = '#161b22',
  GreyGoose = '#c9d1d9',
  Rose = '#ff7b72',
  Malibu = '#79c0ff',
  RegentGrey = '#8b949e',
  ---
  BlackCoral = '#515c6a',
  CelestialBlue = '#569CD6',
  OrientalPink = '#CE9178',
  ClayAsh = '#b5cea8',
  MutedGreen = '#6a9955',
};

local colors = {
  bg = palette.Cinder,
  fg = palette.GreyGoose,
  primary = palette.Rose,
  secondary = palette.Malibu,
  tertiary = palette.ClayAsh,
  visual = palette.BlackCoral,
  float = palette.Mirage,
  comment = palette.RegentGrey,
  number = palette.ClayAsh,
  cursor = '#FFFFFF',
  statusline = palette.Mirage,
};

local bg = colors.bg;

-- api.applyTheme(theme); (colors -> theme)

api.applyHlGroups {
  Cursor = { colors.cursor, colors.cursor },
  lCursor = { colors.primary, colors.secondary },
  CursorIM = { '#ff0000', colors.comment },
  TermCursor = { colors.fg, colors.fg },
  TermCursorNC = { colors.fg, colors.fg },

  TabLineFill = { colors.float },
  TabLine = { colors.visual },
  TabLineSel = { colors.primary },
  ColorColumn = { colors.float },

  Search = { colors.visual, 'fg' },
  CurSearch = { colors.secondary, 'bg' },
  IncSearch = { colors.secondary, 'bg' },

  -- Syntax
  Normal = { colors.bg, colors.fg },
  NormalNC = { colors.bg, colors.fg }, -- Not Active
  NormalFloat = { colors.float, colors.fg }, -- "Borders" color isn't changed tho
  PreProc = { nil, colors.fg },
  Special = { nil, colors.fg },
  Statement = { nil, colors.primary },
  Identifier = { nil, colors.secondary },
  Boolean = { nil, colors.primary },
  Constant = { nil, colors.secondary },
  Number = { nil, colors.number },
  Error = { colors.float, colors.fg },
  Type = { nil, colors.primary },
  Comment = { nil, colors.comment },

  Menu = { colors.float },
  Pmenu = { colors.float },
  PmenuSel = { colors.visual },
  SignColumn = { colors.bg },
  WinSeparator = { colors.bg, colors.float },

  CursorLine = { colors.float },
  CursorColumn = { colors.float },
  Title = { nil, colors.primary },
  Directory = { nil, colors.secondary },
  Visual = { colors.visual },
  NonText = { colors.bg, colors.bg }, -- clean
  SpecialKey = { 'bg', colors.secondary },

  -- UI Areas
  StatusLine = { colors.statusline, colors.fg },
  StatusLineNC = { colors.statusline, colors.bg },
  MsgArea = { colors.bg, colors.fg },
  ErrorMsg = { colors.float, colors.primary },

  LineNr = { colors.bg, colors.visual },
  CursorLineNr = { colors.bg, colors.fg, 'bold' },

  -- ???
  Conceal = { '#00ff00', '#ff0000' },
  MsgSeparator = { '#ff0ff0', "#000ff0" },
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
  GitSignsDelete = { colors.bg, '#ed5959' },
  GitSignsChangedelete = { colors.bg },
  GitSignsTopdelete = { colors.bg },
  GitSignsUntracked = { colors.bg },
  GitSignsAddLn = { colors.bg, '#6847eb' },
};

api.applyHlGroups(gitsigns);
