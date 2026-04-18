# tmux

## Link a window

- `tmux link-window -s <session>:<index>`: Link window from another session

## Rename a window

- `tmux rename-window -t <session>:<index> <newname>`: Rename by target
- `<prefix>,`: Rename current window

## Rename a pane

- `tmux select-pane -T "<newname>"`: Set pane title
- `set -g pane-border-status top`: Show pane names persistently (tmux.conf)

## Move a window

- `tmux move-window -s <session>:<index> -t <target-session>:`: Move to target session
- `<prefix>.`: Move current window (type target index)

## Swap panes

- `tmux swap-pane -s <session>:<window>.<pane> -t <target>`: Swap two panes
- `<prefix><C-o>`: Rotate panes
