#!/usr/bin/env bash

set -euo pipefail

if (($(tmux display-message -p '#{pane_at_bottom}'))); then
  tmux switch-client -n\; \
    select-pane -t "$(tmux list-panes -F '#{pane_id} #{pane_at_top}' |
      awk '/ 1$/{print $1; exit}')"
else
  tmux select-pane -D
fi
