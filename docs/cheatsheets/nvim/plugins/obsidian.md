# Obsidian

## Navigation

- `<leader>od`: Obsidian daily (today) note
- `<leader>oy`: Obsidian yesterday note
- `<leader>ob`: Obsidian backlinks
- `<leader>o#`: Obsidian tags
- `<leader>oo`: Open note in Obsidian app
- `<leader>of`: Follow link under cursor
- `<leader>oc`: Table of contents for current note
- `<leader>ot`: Search for unchecked checkboxes (todos) in vault
- `<leader>on`: Create a new note
- `<leader>oN`: Create a new note from a template
- `<leader>ol`: Insert link on selected text
- `<leader>or`: Rename current note (and automatically update backlinks)
- `<leader>oe`: Extract contents and replace with link to new note

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
