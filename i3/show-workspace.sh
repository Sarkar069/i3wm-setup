#!/bin/bash

# Get current workspace name
CURRENT=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name')

# Send notification
notify-send "🧭 Workspace" "You are on: $CURRENT"

