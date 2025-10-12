# Coding Agent Guidelines

## Build/Lint/Test Commands
- **Lua formatting**: `stylua .` (uses 2-space indent)
- **Lua linting**: `luacheck .` (configured via .luacheckrc)
- **No package.json**: This is a dotfiles repository with no Node.js dependencies
- **No test framework**: Configuration changes should be tested manually in neovim/tmux

## Code Style Guidelines

### Lua (Neovim Configuration)
- **Indentation**: 2 spaces (configured in .stylua.toml)
- **Imports**: Use `require()` for modules, assign to descriptive local variables
- **Naming**: snake_case for variables/functions, PascalCase for plugin names
- **Comments**: Use `--` for single line, avoid unnecessary comments
- **Global variables**: `vim` global is allowed (configured in .luarc.json)
- **Plugin structure**: Return table with plugin spec, lazy loading preferred
- **Keymaps**: Use descriptive `desc` field, prefer `<leader>` prefix for custom binds

### Error Handling
- Use `pcall()` for potentially failing operations
- Prefer early returns over nested conditionals

### File Organization
- Plugin configs in `nvim/.config/nvim/lua/jason/plugins/`
- Core configs in `nvim/.config/nvim/lua/jason/core/`
- Follow existing directory structure and naming patterns