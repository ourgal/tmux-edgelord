#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$CURRENT_DIR/scripts/utils.sh"

tmux bind -n "$(tmux_option_or_fallback "@edgelord-bind-up" "M-k")" run-shell -b "$CURRENT_DIR/scripts/up.sh"
tmux bind -n "$(tmux_option_or_fallback "@edgelord-bind-down" "M-j")" run-shell -b "$CURRENT_DIR/scripts/down.sh"
tmux bind -n "$(tmux_option_or_fallback "@edgelord-bind-left" "M-h")" run-shell -b "$CURRENT_DIR/scripts/left.sh"
tmux bind -n "$(tmux_option_or_fallback "@edgelord-bind-right" "M-l")" run-shell -b "$CURRENT_DIR/scripts/right.sh"
