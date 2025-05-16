#!/usr/bin/env bash

set -euo pipefail

if (($(tmux display-message -p '#{pane_at_left}'))); then
  tmux prev\; select-pane -t "$(tmux list-panes -F '#{pane_id} #{pane_at_right}' |
    awk '/ 1$/{print $1; exit}')"
else
  tmux select-pane -L
fi
