# Obsidian

## Navigation

- `<leader>ot`: Obsidian today note
- `<leader>oy`: Obsidian yesterday note
- `<leader>ob`: Obsidian backlinks
- `<leader>o#`: Obsidian tags
- `<leader>oo`: Open note in Obsidian app
- `<leader>ol`: Follow link under cursor

## Images

- `<leader>op`: Paste image from clipboard
  - Saves to `$assets/attachments/` folder in vault
  - Filenames prefixed with timestamp (e.g., `1734307200-image.png`)
  - Inserts markdown image link at cursor position
  - Requires `pngpaste` on macOS (`brew install pngpaste`)

### Image Pasting Workflow

1. Copy image to clipboard (screenshot with `Cmd+Shift+Ctrl+4` or copy from browser)
2. Position cursor in markdown file where you want the image
3. Press `<leader>op` or use `:ObsidianPasteImg [optional-name]`
4. Enter file name
5. Image is saved to vault and markdown link inserted

## Links

- https://github.com/epwalsh/obsidian.nvim
