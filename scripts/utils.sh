#!/usr/bin/env bash

tmux_option_or_fallback() {
  local option_value
  option_value="$(tmux show-option -gqv "$1")"
  if [ -z "$option_value" ]; then
    option_value="$2"
  fi
  echo "$option_value"
}
