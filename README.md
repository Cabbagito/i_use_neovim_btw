# My Neovim Configuration

A highly customized Neovim configuration focused on modern development workflows with Lua-based configuration.

## Features

- **Package Management**: Lazy.nvim for fast plugin loading
- **LSP Integration**: Full LSP support with Mason for language server management
- **Fuzzy Finding**: Telescope for file/text searching and navigation
- **File Management**: Oil.nvim for efficient file operations
- **Syntax Highlighting**: Treesitter for advanced syntax highlighting
- **Code Completion**: nvim-cmp with multiple sources
- **Terminal Integration**: Built-in floating terminal
- **Git Integration**: Built-in git operations
- **Multiple Themes**: Catppuccin, Everforest, Edge, Sonokai, and more
- **Status Line**: Lualine with custom configuration
- **Code Formatting**: none-ls for formatting and linting
- **Navigation**: Harpoon for quick file switching
- **Custom Commands**: Virtual edit mode commands and more

## Installation

### Quick Setup (Recommended)

Clone directly to your Neovim config directory:

```bash
# Backup existing config (optional)
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this config
git clone https://github.com/yourusername/i_use_neovim_btw ~/.config/nvim

# Start Neovim (plugins will auto-install)
nvim
```

### Manual Setup

```bash
# Clone to any directory
git clone https://github.com/yourusername/i_use_neovim_btw

# Copy to Neovim config directory
cp -r i_use_neovim_btw/* ~/.config/nvim/

# Start Neovim
nvim
```

## Key Features & Keybindings

### File Navigation
- `<leader>ff` - Find files
- `<leader>fw` - Find word (live grep)
- `<leader>fb` - Find buffers
- `<leader>fr` - Find recent files
- `<leader>nv` - Find Neovim config files
- `<leader>df` - Find dotfiles

### Code Navigation
- `<leader>cs` - Find colorscheme
- `<leader>ft` - Find TODOs
- `gd` - Go to definition
- `gr` - Go to references

### File Management
- `<leader>e` - Toggle file explorer
- `-` - Open Oil.nvim file manager

### Terminal
- `<leader>t` - Toggle floating terminal

### Custom Commands
- `:Virtual` - Enable virtual edit mode
- `:VirtualOff` - Disable virtual edit mode
- `:Glow` - Preview markdown files

## Configuration Structure

```
├── init.lua                 # Entry point
├── lazy-lock.json          # Plugin lockfile
└── lua/
    └── core/
        ├── options.lua      # Neovim options
        ├── keymaps.lua      # Key mappings
        ├── plugins.lua      # Plugin specifications
        └── configs/         # Plugin configurations
            ├── init.lua     # Load all configs
            ├── lsp-config.lua
            ├── telescope.lua
            ├── lualine.lua
            └── ...
```

## Customization

This configuration is designed to be easily customizable:

1. **Themes**: Change theme in `lua/core/configs/colorscheme.lua`
2. **Keymaps**: Modify keybindings in `lua/core/keymaps.lua`
3. **Plugins**: Add/remove plugins in `lua/core/plugins.lua`
4. **LSP**: Configure language servers in `lua/core/configs/lsp-config.lua`

## Requirements

- Neovim 0.9+ 
- Git
- A Nerd Font (for icons)
- ripgrep (for Telescope live grep)
- Node.js (for some LSP servers)

## Troubleshooting

If you encounter issues:

1. Ensure you have the latest Neovim version
2. Run `:checkhealth` to diagnose problems
3. Check that all external dependencies are installed
4. Clear plugin cache: `rm -rf ~/.local/share/nvim/`