#!/bin/bash

# Make script executable with: chmod +x ~/.config/sway/scripts/mark-last-focused.sh

# This script marks the previously focused window when focus changes
swaymsg -t subscribe -m '["window"]' | 
  jq --unbuffered 'select(.change == "focus").container.id' | 
  while read -r current_id; do
    # If we have a previous window, mark it
    if [ -n "$previous_id" ]; then
      swaymsg "[con_id=$previous_id] mark _last"
    fi
    # Store current as previous for next focus change
    previous_id=$current_id
  done
