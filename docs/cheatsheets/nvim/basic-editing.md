# Basic Editing

## Basic mode

- `v{motion}`: Basic mode (enter & exit)
- `V{motion}`: Basic line mode
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
- `U`: Undo all changes on a line
- `{count}<ctrl> + r`: Redo

- `:undolist`: Show undo history
- `:earlier {when}`: Go to earlier state (when can be in number of changes (default), seconds (s), minutes (m), hours (h), days (d))
- `:later {when}`: Go to later state (when can be in number of changes (default), seconds (s), minutes (m), hours (h), days (d))

## Change case

- `guu`: Lowercase line
- `gUU`: Uppercase line
- `g~~`: Toggle case of line
- `gu{count}{motion}`: Lowercase text that is moved over with motion
- `gU{count}{motion}`: Uppercase text that is moved over with motion
- `g~{count}{motion}`: Toggle case of text that is moved over with motion

## Basic multi-line editing

Steps:

1. `<ctrl > + v`: Basic block mode
2. Move cursor to select the block
3. `I` or `A`: Insert at the start or end of the block
4. Type the text to insert
5. `<esc>` or `jk` : Apply the change to all lines in the block

## Numbers

This works with various number formats, including decimal, hex, octal, times, dates, and more. Also, this works in visual mode to increment/decrement all numbers in the selected text.

- `{count}<ctrl> + a`, `{count}<ctrl> + x`: Increment, decrement number under cursor by the {count} (default 1)

For a numbered list, use:

- `g<ctrl> + a`, `g<ctrl> + x`: Increment, decrement to next/previous number in sequence

## Miscellaneous

- `{count}~`: Change case
- `{count}J`: Join N-1 lines
- `>>`, `<<`: Indent, outdent

## Insert mode

- `<ctrl> + o`: Allow enter of a single command and then returns to insert mode
- `<ctrl> + t`: Increase tab
- `<ctrl> + d`: Decrease tab
