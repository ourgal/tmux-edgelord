#!/usr/bin/env bash

set -euo pipefail

if (($(tmux display-message -p '#{pane_top}') == 0)); then
  tmux switch-client -p\; \
    select-pane -t "$(tmux list-panes -F '#{pane_id} #{pane_at_bottom}' |
      awk '/ 1$/{print $1; exit}')"
else
  tmux select-pane -U
fi
