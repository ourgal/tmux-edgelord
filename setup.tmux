#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux bind -n M-k run-shell -b "$CURRENT_DIR/scripts/up.sh"
tmux bind -n M-j run-shell -b "$CURRENT_DIR/scripts/down.sh"
tmux bind -n M-h run-shell -b "$CURRENT_DIR/scripts/left.sh"
tmux bind -n M-l run-shell -b "$CURRENT_DIR/scripts/right.sh"
