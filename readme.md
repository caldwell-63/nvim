# NVIM

How is it different from all the great setups out there?

- No file explorer/tree plugins; they all have their flaws and netrw is actually
  quite effective (with just a few additional keymaps for ergonomics) and being 
  native to Vim, its performance is flawless
- Simple and predictable `paq.nvim` package manager; no lazy loading
- No bullshit plugins featuring animations, highly experimental slow UI plugins etc
- No terminal support/plugins whatsoever; we are not trying to build terminal 
  emulator/manager here, there are tools that do this very well already, 
  supporting tabs, panes, keymaps, configs, etc, I'd recommend wezterm
- No compatibility with Windows guaranteed at all

## Keys (`keys.*`)

## `G` | Git

| Chord | Command |
| ----- | ------- |
| `i` | `git init` |
| `g` | `:wa` `git commit -a -m "{input}"` |
| `p` | `git push` |
| `s` | `git status` |

## `Y` | Yarn

| Chord | Command |
| ----- | ------- |
| `y` |  `yarn` |
| `a` |  `yarn add ____` |

## `L` | LSP

| Chord | Command |
| ----- | ------- |
| `i` | `:LspInfo` |
| `l` | `:LspLog` |
| `r` | `:LspRestart` |
| `s` | `:LspStart` |
| `d` | `:LspStop` |

## Todo

### Markdown

- Nested syntax highlights
- Preview

## Resources

- https://github.com/stars/caldwell-63/lists/nvim
- https://gitlab.com/bushblade/neovim-config
