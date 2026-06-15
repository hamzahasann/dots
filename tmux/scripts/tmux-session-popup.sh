#!/bin/bash

sessions=$(tmux list-sessions -F "#{session_name}")

selected_session=$(echo "$sessions" | fzf --height=50 --reverse --border --prompt="Select tmux session: ")

if [ -n "$selected_session" ]; then
    tmux switch-client -t "$selected_session"
fi
