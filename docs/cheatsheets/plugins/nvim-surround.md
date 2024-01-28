# nvim-surround

## Visual/copy/delete/change mode selections

(Operator each with `v`, `y`, `d`, `c`)

- `{operator}vi{surround}`: Select all, excluding {surround}
- `{operator}va{surround}`: Select all, including {surround}
- `{operator}di{surround}`: Delete all, excluding {surround}
- `{operator}da{surround}`: Delete all, including {surround}
- `{operator}ds{surround}`: Delete surround
- `{operator}yi{surround}`: Copy all, excluding {surround}
- `{operator}ya{surround}`: Copy all, including {surround}
- `{operator}ci{surround}`: Delete all, excluding {surround} & enter insert mode
- `{operator}ca{surround}`: Delete all, including {surround} & enter insert mode

## Manage surrounds

- `cs{from:surround}{to:surround}`: Change surround
- `ys{motion}{surround}`: Add surround to {motion} selection
- `yss{surround}`: Add surround to current line, ignoring leading and trailing whitespace
- `ys{motion}{surround}`: Add surround to {motion} selection with surround characters on newlines

## Visual Mode

- `S{surround}`: Add surround to selected content

## Notes

### Suround symbols

{surround} = `"`, `'`, `()`, `{}`, `[]`, `

### Aliases

- `a -> >`
- `b -> )`
- `B -> }`
- `r -> ]`
- ``q -> ", ', ` ``
- `s -> }, ], ), >, ", ', `
- `t -> <?>asdfasdfasdf</?>`
- `f -> functionCall()`

## Links

- https://github.com/kylechui/nvim-surround
- `:h nvim-surround.usage`
