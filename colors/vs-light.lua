local api = require 'api';

vim.cmd 'set background=light';

local r = '#ff0000';
local g = '#00ff00';
local b = '#0000ff';

local palette = {
  MilkWhite = '#ffffff',
  Black = '#000000',
  LavenderMist = '#d6eaff',
  AquaHaze = '#f3f3f3',
  ArtyClickBlue = '#0000ff',
  Tabasco = '#a31515',
  Ao = '#008000',
  DeepSea = '#098658',
};

local colors = {
  bg = palette.MilkWhite,
  fg = palette.Black,
  primary = palette.ArtyClickBlue,
  secondary = palette.Tabasco,
  visual = palette.LavenderMist,
  float = palette.AquaHaze,
  comment = palette.Ao,
  number = palette.DeepSea,
};

api.applyHlGroups {
  -- TermCursor = { colors.fg, colors.fg },
  -- TermCursorNC = { colors.fg, colors.fg },
  -- lCursor = { colors.fg, colors.fg },
  -- CursorIM = { colors.fg, colors.fg },
  -- Cursor = { colors.fg, colors.fg },

  TabLineFill = { colors.float },
  TabLine = { colors.visual },
  TabLineSel = { colors.primary },
  DiagnosticInfo = { colors.fg },
  DiagnosticHint = { '#fff000' },
  DiagnosticError = { r },

  ColorColumn = { colors.float },
  Search = { colors.float },
  CurSearch = { colors.visual },
  IncSearch = { colors.secondary },
  Conceal = { colors.primary, r },

  Identifier = { nil, 'fg' },
  Statement = { nil, colors.primary },
  Boolean = { nil, colors.primary },
  Constant = { nil, colors.secondary },
  PreProc = { nil, colors.primary },
  Number = { nil, colors.number },
  Special = { nil, colors.primary },
  Error = { nil, r },
  Type = { nil, colors.primary },
  Comment = { nil, colors.comment },

  Menu = { colors.float },
  Pmenu = { colors.float },
  PmenuSel = { colors.visual },
  SignColumn = { colors.bg },

  -- ???
  Scrollbar = { r, g },
  Tooltip = { g, b },
  WinSeparator = { r, g },

  Normal = { colors.bg, colors.fg },
  NormalNC = { colors.bg, colors.fg }, -- Not Active
  NormalFloat = { colors.float, colors.fg }, -- "Borders" color isn't changed tho
  CursorLine = { colors.float },
  CursorColumn = { colors.float },
  Title = { nil, colors.primary },
  Directory = { nil, colors.secondary },
  StatusLine = { colors.primary, colors.bg },
  Visual = { colors.visual },
  NonText = { colors.bg, colors.bg }, -- clean
  SpecialKey = { 'bg', colors.secondary },
  MsgArea = { colors.float, colors.primary },
}
