#!/bin/bash
# Toggle desktop - minimize all windows or restore them

STATE_FILE="/tmp/hypr-desktop-state"

if [ -f "$STATE_FILE" ]; then
    # Restore windows
    hyprctl dispatch movetoworkspace "$(cat $STATE_FILE)"
    rm "$STATE_FILE"
else
    # Save current workspace and minimize all
    hyprctl activewindow -j | jq -r '.workspace.id' > "$STATE_FILE"
    hyprctl dispatch togglespecialworkspace minimize
fi
