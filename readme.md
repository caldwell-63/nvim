# NVIM

How is it different from all the great setups out there?

- No file explorer/tree plugins; they all have their flaws and netrw is actually
  quite effective (with just a few additional keymaps for ergonomics) and being 
  native to Vim, its performance is flawless
- Simple and predictable `paq.nvim` package manager; no lazy loading
- No bullshit plugins featuring animations, highly experimental slow UI plugins etc
- No terminal support/plugins whatsoever; we are not trying to build terminal 
  emulator/manager here, there are tools that do this very well already, 
  supporting tabs, panes, keymaps, configs, etc. I'd recommend Windows Terminal 
  for Windows users, and for MacOS and UNIX I'm sure you have all kinds of great 
  tools to choose from

## G

- `<Leader>gi`  `git init`
- `<Leader>gg`  `save & commit all`
- `<Leader>gp`  `git push`

## Y

- `<Leader>yy`  `yarn`
- `<Leader>ya`  `yarn add`

## L | modules.LSP | LSP Control

Shortcuts around commands provided by `lspconfig`. Useful especially that the LSP
isn't always doing perfectly on its own, for example Lua language server has an
issue when you change a workspace and it needs to be restarted.

- `i` info       `:LspInfo`
- `l` log        `:LspLog`
- `r` restart    `:LspRestart`
- `s` start      `:LspStart`
- `d` stop       `:LspStop`

## Todo

### Markdown

- Nested syntax highlights
- Preview

## Resources

- https://github.com/stars/caldwell-63/lists/nvim
- https://gitlab.com/bushblade/neovim-config
