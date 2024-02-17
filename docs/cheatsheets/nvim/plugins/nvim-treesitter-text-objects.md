# Treesitter Text Objects

## Visual/copy/delete/change mode selections

(Operator each with `v`, `y`, `d`, `c`)

- `{operator}a=`: Select outer part of an assignment
- `{operator}i=`: Select inner part of an assignment

- `{operator}l=`: Select left hand side of an assignment
- `{operator}r=`: Select right hand side of an assignment

- `{operator}a:`: Select outer part of an object property (Javascript only)
- `{operator}i:`: Select inner part of an object property (Javascript only)
- `{operator}l:`: Select left part of an object property (Javascript only)
- `{operator}r:`: Select right part of an object property (Javascript only)

- `{operator}aa`: Select outer part of a parameter/argument
- `{operator}ia`: Select inner part of a parameter/argument

- `{operator}ai`: Select outer part of a conditional
- `{operator}ii`: Select inner part of a conditional

- `{operator}al`: Select outer part of a loop
- `{operator}il`: Select inner part of a loop

- `{operator}af`: Select outer part of a function call
- `{operator}if`: Select inner part of a function call

- `{operator}am`: Select outer part of a method/function definition
- `{operator}im`: Select inner part of a method/function definition

- `{operator}ac`: Select outer part of a class
- `{operator}ic`: Select inner part of a class

## Swaps

- `<leader>na`: Swap parameters/argument with next
- `<leader>pa`: Swap parameters/argument with prev

- `<leader>n:`: Swap object property with next
- `<leader>p:`: Swap object property with prev

- `<leader>nm`: Swap function with next
- `<leader>pm`: Swap function with prev

## Navigate nodes

- `[f`: Next function call start
- `[F`: Prev function call start
- `]f`: Next function call end
- `]F`: Prev function call end

- `[m`: Next method/function def start
- `[M`: Prev method/function def start
- `]m`: Next method/function def end
- `]M`: Prev method/function def end

- `[c`: Next class start
- `[C`: Prev class start
- `]c`: Next class end
- `]C`: Prev class end

- `[i`: Next conditional start
- `[I`: Prev conditional start
- `]i`: Next conditional end
- `]I`: Prev conditional end

- `[l`: Next loop start
- `[L`: Prev loop start
- `]l`: Next loop end
- `]L`: Prev loop end

- `[s`: Next scope
- `[z`: Next fold

## Repeats

- `;`: Repeat move in the same direction you were moving
- `,`: Repeat move in the opposite direction you were moving

Note: Works for built-in `f`, `F`, `t`, `T` commands as well
