# nvim-surround

## Visual/copy/delete/change mode selections

(Operator each with `v`, `y`, `d`, `c`)

- `{operator}i{surround}`: Select all, excluding {surround}
- `{operator}a{surround}`: Select all, including {surround}

## Manage surrounds

- `ds{surround}`: Delete surround
- `cs{from:surround}{to:surround}`: Change surround
- `ys{motion}{surround}`: Add surround to {motion} selection
- `yss{surround}`: Add surround to current line, ignoring leading and trailing whitespace
- `yS{motion}{surround}`: Add surround to {motion} selection with surround characters on newlines

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
