# Editing

## Visual mode

- {count} + `v`: Visual mode (enter & exit)
- {count} + `V`: Visual line mode
- `o`: Exchange cursor position with start/end of highlighting

## Insert

- `i`, `a`: Insert at cursor (before, after)
- `I`, `A`: Insert at line (start, end)

## Delete

- {count} + `x`, `X`: Delete character from cursor (forwards, backwards)
- {count} + `d{motion}`: Delete the text that is moved over with motion
- {count} + `D`: Delete to the end of the line
- {count} + `dd`: Delete line

## Copy (yank)

- {count} + `y{motion}`: Copy the text that is moved over with the motion
- {count} + `Y`: Copy line
- {count} + `yy`: Copy line

## Change (delete + insert mode)

- {count} + `c{motion}`: Delete the text that is moved over with the motion & enter insert mode
- {count} + `C`: Delete to the end of the line & enter insert mode
- {count} + `cc`: Delete line & enter insert mode
- {count} + `S`: Delete line & enter insert mode
- {count} + `s`: Delete character & enter insert mode

## Replace

- {count} + `r{char}`: Replace character with {char}
- `R`: Replace mode

## Paste

- {count} + `P`, `p`: Paste contents of register at cursor (before, after)

## Undo/redo

- {count} + `u`: Undo
- {count} + `<ctrl> + r`: Redo

## Find

- {count} + `f`, `F`: Find character (forward, backward)

## Miscellaneous

- `~`: Change case
- `<ctrl> + a`, `<ctrl> + x`: Increment, decrement number under cursor
- {count} + `J`: Join N-1 lines
- `>>`, `<<`: Indent, outdent

## Insert mode

- `<ctrl> + o`: Allow enter of a single command and then returns to insert mode
- `<ctrl> + t`: Increase tab
- `<ctrl> + t`: Decrease tab
