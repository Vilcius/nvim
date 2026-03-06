# Neovim Config

Personal Neovim configuration built on [LazyVim](https://lazyvim.github.io).

## File Tree

```
~/.config/nvim/
├── init.lua
├── lazyvim.json          # LazyVim extras
├── lazy-lock.json        # plugin lockfile
├── stylua.toml           # Lua formatter config
├── spell/
│   └── en.utf-8.add      # custom spell words
├── UltiSnips/            # snippet files
│   ├── tex.snippets
│   ├── python.snippets
│   ├── c.snippets
│   ├── css.snippets
│   ├── sh.snippets
│   ├── vim.snippets
│   ├── vimwiki.snippets
│   └── ...
└── lua/
    ├── config/
    │   ├── autocmds.lua  # spell scoping, jukit highlights
    │   ├── keymaps.lua   # custom keybindings
    │   ├── lazy.lua      # lazy.nvim bootstrap
    │   └── options.lua   # vim options
    └── plugins/
        ├── cellular-automaton.lua
        ├── colorscheme.lua
        ├── copilot.lua
        ├── dashboard.lua
        ├── disabled.lua
        ├── dressing.lua
        ├── harpoon.lua
        ├── neotree.lua
        ├── nvim-lspconfig.lua
        ├── overleaf.lua
        ├── render-markdown.lua
        ├── treesitter.lua
        ├── ultisnips.lua
        ├── vim-jukit.lua
        ├── vim-tmux-navigator.lua
        └── vimtex.lua
```

## Plugins

### AI
| Plugin | Description |
|--------|-------------|
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | GitHub Copilot integration |
| [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) | Copilot chat interface |
| [claudecode.nvim](https://github.com/coder/claudecode.nvim) | Claude Code integration |

### Writing & LaTeX
| Plugin | Description |
|--------|-------------|
| [vimtex](https://github.com/lervag/vimtex) | LaTeX editing (Zathura viewer) |
| [UltiSnips](https://github.com/SirVer/ultisnips) | Snippet engine |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Markdown rendering in-buffer |
| [overleaf.nvim](https://github.com/richwomanbtc/overleaf.nvim) | Overleaf integration (cookie via `$OVERLEAF_COOKIE`) |

### Navigation
| Plugin | Description |
|--------|-------------|
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Quick file bookmarking and switching |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer (shows harpoon index per file) |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Seamless Neovim/tmux split navigation |

### Editor
| Plugin | Description |
|--------|-------------|
| [vim-jukit](https://github.com/luk400/vim-jukit) | Jupyter-like cells for Python files (Kitty terminal) |
| [dressing.nvim](https://github.com/stevearc/dressing.nvim) | Improved `vim.ui` input/select |
| [cellular-automaton.nvim](https://github.com/eandrju/cellular-automaton.nvim) | Fun buffer animations |

### Colorschemes
| Plugin | Status |
|--------|--------|
| [cyberspace.vim](https://github.com/Vilcius/cyberspace.vim) | **active** |
| [rose-pine](https://github.com/rose-pine/neovim) | available |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | available |
| [silkcircuit-nvim](https://github.com/hyperb1iss/silkcircuit-nvim) | available |
| [shadotheme](https://github.com/Shadorain/shadotheme) | available |
| [lavender.nvim](https://codeberg.org/jthvai/lavender.nvim) | available |
| [neopywal.nvim](https://github.com/RedsXDD/neopywal.nvim) | available |
| [neon.nvim](https://github.com/Zeioth/neon.nvim) | available |

## Keybindings

> `<leader>` is `<Space>` (LazyVim default)

### Navigation & Scrolling

| Key | Mode | Action |
|-----|------|--------|
| `<Down>` / `<Up>` | n | Move line and center cursor |
| `<C-d>` / `<C-u>` | n | Page down/up and center |
| `<S-Down>` / `<S-Up>` | n | Page down/up and center |
| `{` / `}` | n | Jump paragraph and center |
| `n` / `N` | n | Next/previous search result and center |

### Buffers & Splits

| Key | Mode | Action |
|-----|------|--------|
| `<PageDown>` / `<PageUp>` | n | Next/previous buffer |
| `<C-Tab>` | n | Cycle splits |
| `<C-S-Left/Right/Up/Down>` | n | Resize split |
| `<leader>th` | n | Convert split to vertical |
| `<leader>tv` | n | Convert split to horizontal |
| `<C-Left/Down/Up/Right>` | n | Navigate splits/tmux panes |
| `<C-\>` | n | Previous tmux pane |

### Editing

| Key | Mode | Action |
|-----|------|--------|
| `<S-Right>` / `<S-Left>` | n | Indent/dedent line |
| `<S-Down>` / `<S-Up>` | v | Move selected lines down/up |
| `<S-Right>` / `<S-Left>` | v | Indent/dedent selection |
| `<C-o>` | n | Insert empty line below |
| `<C-i>` | n | Insert empty line above |
| `J` | n | Join line (cursor stays in place) |

### Clipboard

| Key | Mode | Action |
|-----|------|--------|
| `<leader>y` | n/v | Copy to system clipboard |
| `<leader>Y` | n | Copy line to system clipboard |
| `<leader>p` / `<leader>P` | n/v | Paste from system clipboard (below/above) |
| `<leader>dd` | n/v | Delete to void register (no clipboard pollution) |

### Harpoon

| Key | Mode | Action |
|-----|------|--------|
| `<leader>a` | n | Add file to harpoon list |
| `<C-e>` | n | Toggle harpoon quick menu |
| `<C-m>` | n | Jump to harpoon file 1 |
| `<C-,>` | n | Jump to harpoon file 2 |
| `<C-.>` | n | Jump to harpoon file 3 |
| `<C-/>` | n | Jump to harpoon file 4 |

### Python / Jupyter (vim-jukit)

| Key | Mode | Action |
|-----|------|--------|
| `<C-PageDown>` | n | Jump to next cell |
| `<C-PageUp>` | n | Jump to previous cell |

### AI (Copilot)

| Key | Mode | Action |
|-----|------|--------|
| `<C-M>` | i | Accept Copilot suggestion |

### Misc

| Key | Mode | Action |
|-----|------|--------|
| `<leader>k` / `<leader>j` | n | Next/previous location list item |
| `<C-f>` | n | New tmux session (tmux-sessionizer) |
| `<leader>mr` | n | CellularAutomaton: make it rain |
| `<leader>ml` | n | CellularAutomaton: game of life |
| `<leader>ms` | n | CellularAutomaton: scramble |
| `Q` | n | Disabled (no accidental Ex mode) |

## LSP

[pylsp](https://github.com/python-lsp/python-lsp-server) is configured with:
- `jedi` pointed at the system `python3`
- `pycodestyle` ignoring: `E226`, `E265`, `E501`, `W391`, `W503`, `E402`
- Inline virtual text diagnostics disabled (use `<leader>cd` or the diagnostics float instead)

## Overleaf Setup

The Overleaf session cookie is read from the `OVERLEAF_COOKIE` environment variable. Add this to your shell config:

```zsh
export OVERLEAF_COOKIE="overleaf_session2=s%3A..."
```

Do not hardcode the cookie in `overleaf.lua`.
