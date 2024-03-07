# Motions

## General

- {count} + `h`, `l`, `k`, `j`: Left, Right, Up, Down

## Word

- {count} + ` w`, `b`: Word (forward, backward)
- {count} + `e`, `ge`: End of word (forward, backward)
- {count} + ` W`, `B`: Space separated word (forward, backward)
- {count} + `E`, `gE`: Space separated end of word (forward, backward)
- {count} + `E`, `gE`: Space separated end of word (forward, backward)

## Single-line

- `0`: Start of line
- `^` or `_`: First character of line
- {count} + `$`: End of line
- `(`, `)`: Next sentence (backward, forward)
- `{`, `}`: Next blank line (backward, forward)

## Multi-line / page

- `gg`: Top of page
- `G`: Bottom of page
- `H`, `M`, `L`: Top, middle, bottom of screen
- `<ctrl> + u`, `<ctrl> + d`: Half page up, down
- `<ctrl> + f`, `<ctrl> + b`: Full page up, down
- {linenum} + `gg`: Move to line #
- `N%`: Move to percent of file

## Move to character

- `{count}F`: Find character (backward)
- `{count}f`: Find character (forward)
- `{count}T`: Till character (backward)
- `{count}t`: Till character (forward)

## Miscellaneous

_For languages that use {} for scopes AND open { on its own line:_

- {count} + `][`: Sections forward, at end of section
- {count} + `[]`: Section backward, at end of section
- {count} + `]]`: Sections forward, at start of section
- {count} + `[[`: Sections backward, at start of section
