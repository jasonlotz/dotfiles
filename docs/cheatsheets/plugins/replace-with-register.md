# Replace with register

## Normal mode

- `{count}["x]gr{motion}`: Replace {motion} text with the contents of register x or unnamed register
- `{count}["x]grr`: Replace {count} lines with the contents of register x or unnamed register
- `["x]gr$`: Replace from cursor position to end of the line

## Visual mode

- `["x"]gr`: Replace the selection with the contents of register x or unnamed register

## Links

- https://github.com/vim-scripts/ReplaceWithRegister
