# Treesitter Text Objects

## Visual/copy/delete/change mode selections

(Operator each with `v`, `y`, `d`, `c`)

### Select assignment

- `{operator}a=`: Select outer part of an assignment
- `{operator}i=`: Select inner part of an assignment
- `{operator}l=`: Select left hand side of an assignment
- `{operator}r=`: Select right hand side of an assignment

### Select object property

- `{operator}a:`: Select outer part of an object property (Javascript only)
- `{operator}i:`: Select inner part of an object property (Javascript only)
- `{operator}l:`: Select left part of an object property (Javascript only)
- `{operator}r:`: Select right part of an object property (Javascript only)

### Select parameter/argument

- `{operator}aa`: Select outer part of a parameter/argument
- `{operator}ia`: Select inner part of a parameter/argument

### Select conditional

- `{operator}ai`: Select outer part of a conditional
- `{operator}ii`: Select inner part of a conditional

### Select loop

- `{operator}al`: Select outer part of a loop
- `{operator}il`: Select inner part of a loop

### Select function call

- `{operator}af`: Select outer part of a function call
- `{operator}if`: Select inner part of a function call

### Select method/function definition

- `{operator}am`: Select outer part of a method/function definition
- `{operator}im`: Select inner part of a method/function definition

### Select class

- `{operator}ac`: Select outer part of a class
- `{operator}ic`: Select inner part of a class

## Swaps

### Swap parameter/argument

- `<leader>na`: Swap parameters/argument with next
- `<leader>pa`: Swap parameters/argument with prev

### Swap object property

- `<leader>n:`: Swap object property with next
- `<leader>p:`: Swap object property with prev

### Swap function

- `<leader>nm`: Swap function with next
- `<leader>pm`: Swap function with prev

## Navigate nodes

(`]` = next, `[` = prev — uppercase = end, lowercase = start)

### Function call

- `]f`: Next function call start
- `]F`: Next function call end
- `[f`: Prev function call start
- `[F`: Prev function call end

### Method/function definition

- `]m`: Next method/function def start
- `]M`: Next method/function def end
- `[m`: Prev method/function def start
- `[M`: Prev method/function def end

### Class

- `]c`: Next class start
- `]C`: Next class end
- `[c`: Prev class start
- `[C`: Prev class end

### Conditional

- `]i`: Next conditional start
- `]I`: Next conditional end
- `[i`: Prev conditional start
- `[I`: Prev conditional end

### Loop

- `]l`: Next loop start
- `]L`: Next loop end
- `[l`: Prev loop start
- `[L`: Prev loop end

## Repeats

- `;`: Repeat move in the same direction you were moving
- `,`: Repeat move in the opposite direction you were moving

Note: Works for built-in `f`, `F`, `t`, `T` commands as well

## Links

- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
