# tmux Windows & Panes

> Commands can be run from the shell or from within tmux via `<prefix>:` (tmux command prompt).

## Link a window

```sh
tmux link-window -s <session>:<index>
```

## Rename a window

```sh
tmux rename-window -t <session>:<index> <newname>
```

Or if you're inside the window: `Ctrl+s ,`

## Rename a pane

```sh
tmux select-pane -T "<newname>"
```

To show pane names persistently, add to `tmux.conf`:

```sh
set -g pane-border-status top
```

## Move a window

```sh
tmux move-window -s <session>:<index> -t <target-session>:
```

Or interactively: `Ctrl+s .` then type the target index.

## Swap panes

```sh
tmux swap-pane -s <session>:<window>.<pane> -t <target-session>:<target-window>.<target-pane>
```

Or interactively: `Ctrl+s Ctrl+o`
