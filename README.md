# nvim config

My Neovim configuration, forked from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## Setup

### Dependencies

- [Neovim](https://neovim.io/) (stable)
- `git`, `make`, `unzip`, C compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation), [fd](https://github.com/sharkdp/fd#installation)
- [tree-sitter CLI](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md#installation)
- A [Nerd Font](https://www.nerdfonts.com/) (optional, for icons)

### Install dependencies

**Mac (Homebrew):**

```sh
brew install neovim ripgrep fd tree-sitter make gcc unzip
```

**Linux (Ubuntu/Debian):**

```sh
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install neovim make gcc ripgrep fd-find unzip git xclip
```

**Linux (Fedora):**

```sh
sudo dnf install -y neovim gcc make git ripgrep fd-find unzip
```

**tree-sitter CLI** (all platforms) — distro packages are often too old, install via npm or cargo:

```sh
npm install -g tree-sitter-cli
# or: cargo install tree-sitter-cli
```

### Installation

```sh
git clone git@github.com:mzahor/kickstart.nvim.git ~/.config/nvim
```

If installing over a previous Neovim setup, remove the old cache and plugin data first:

```sh
rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

Start Neovim and Lazy will install all plugins automatically:

```sh
nvim
```

## Plugins

| Plugin | Purpose |
| --- | --- |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) | File tree |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [mason.nvim](https://github.com/mason-org/mason.nvim) | LSP/tool installer |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Autoformatting |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Autocompletion |
| [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & textobjects |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git integration |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding hints |
| [mini.nvim](https://github.com/nvim-mini/mini.nvim) | Collection of small utilities |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODOs |
| [everforest](https://github.com/sainnhe/everforest) | Color scheme |

## Key Bindings

Use `<Space>` as leader key. Press `<Space>` and wait for which-key popup to explore available bindings.

Notable bindings:
- `<leader>sf` — Search files
- `<leader>sA` — Search all files (including gitignored)
- `<leader>sg` — Search by grep (live grep)
- `<leader>sd` — Search diagnostics
- `<leader>f` — Format buffer
- `<leader>sn` — Search Neovim config files
