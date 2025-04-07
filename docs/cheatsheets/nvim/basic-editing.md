# Editing

## Visual mode

- `v{motion}`: Visual mode (enter & exit)
- `V{motion}`: Visual line mode
- `o`: Exchange cursor position with start/end of highlighting

## Insert

- `i`, `a`: Insert at cursor (before, after)
- `I`, `A`: Insert at line (start, end)
- `o`, `O`: Insert at line (below, above)

## Delete

- `{count}x`: Delete character from cursor (forwards)
- `{count}X`: Delete character from cursor (backwards)

- `d{count}{motion}`: Delete the text that is moved over with motion
- `D`: Delete to the end of the line
- `{count}dd`: Delete line

## Copy (yank)

- `y{count}{motion}`: Copy the text that is moved over with the motion
- `Y`: Copy line
- `{count}yy`: Copy line

## Change (delete + insert mode)

- `c{count}{motion}`: Delete the text that is moved over with the motion & enter insert mode
- `C`: Delete to the end of the line & enter insert mode
- `{count}cc`: Delete line & enter insert mode
- `S`: Delete line & enter insert mode
- `{count}s`: Delete character & enter insert mode

## Replace

- `{count}r{char}`: Replace character with `{char}`
- `R`: Replace mode

## Paste

- `{count}P`: Paste contents of register at cursor (before)
- `{count}p`: Paste contents of register at cursor (after)

## Undo/redo

- `{count}u`: Undo
- `{count}<ctrl> + r`: Redo

## Basic multi-line editing

Steps:

1. `<ctrl > + v`: Visual block mode
2. Move cursor to select the block
3. `I` or `A`: Insert at the start or end of the block
4. Type the text to insert
5. `<esc>` or `jk` : Apply the change to all lines in the block

## Miscellaneous

- `{count}~`: Change case
- `<ctrl> + a`, `<ctrl> + x`: Increment, decrement number under cursor
- `{count}J`: Join N-1 lines
- `>>`, `<<`: Indent, outdent

## Insert mode

- `<ctrl> + o`: Allow enter of a single command and then returns to insert mode
- `<ctrl> + t`: Increase tab
- `<ctrl> + d`: Decrease tab
