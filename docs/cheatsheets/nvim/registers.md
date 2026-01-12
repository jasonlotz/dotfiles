# Registers

## Basic register management

- `:reg`: Display all registers and their contents

- `"{a-z0-9}y{motion}`: Yank to named registers
- `"{a-z0-9}Y`: Yank rest of line to named registers
- `"{a-z0-9}d{motion}`: Delete to named registers
- `"{a-z0-9}D`: Delete rest of line to named registers
- `"{a-z0-9}c{motion}`: Change to named registers
- `"{a-z0-9}C`: Change rest of line to named registers

- `"{a-z0-9}p`: Paste from named registers

## Append to register

- `{A-Z}y{motion}`: Append yank to named registers
- `{A-Z}Y`: Append yank rest of line to named registers
- `{A-Z}d{motion}`: Append delete to named registers
- `{A-Z}D`: Append delete rest of line to named registers
- `{A-Z}c{motion}`: Append change to named registers
- `{A-Z}C`: Append change rest of line to named registers

## Register access from insert and command mode

- `<C-r>{a-z0-9}`: Insert contents of named registers in insert mode and command mode

## Special registers

- `":`: Access the last executed command register
- `".`: Access the last inserted text register
- `"%`: Access the current file name register
- `"#`: Access the previous file name register
- `"_`: Access the black hole register (deletes without saving to a register)

## Notes

- Can be used to update macros which get saved in the register
