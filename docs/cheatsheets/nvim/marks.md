# Marks

## Basic

- `:marks`: List all marks

- `m{a-z}`: Set local mark
- `m{A-Z}`: Set global mark (valid across files)
- `'{a-zA-Z}`: Jump to mark line
- `` `{a-zA-Z}`` : Jump to mark position (line and column)

## Using marks with operators

- `d'{a-z}`: Delete up to mark
- ``d`{a-z}``: Delete up to mark position
- `y'{a-z}`: Yank up to mark
- ``y`{a-z}``: Yank up to mark position
- `c'{a-z}`: Change up to mark
- ``c`{a-z}``: Change up to mark position

## Special marks

- `''`: Jump to previous line in current buffer
- ``: Jump to previous position (line and column) in current buffer
- `.` : Jump to last change position (line and column) in current buffer
