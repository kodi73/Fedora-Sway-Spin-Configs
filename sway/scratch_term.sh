#!/bin/bash
# Check if foot-scratch is already running
if pgrep -f "foot --app-id=foot-scratch" >/dev/null; then
    # It's running, just toggle visibility
    swaymsg '[app_id="foot-scratch"] scratchpad show'
else
    # Not running, launch it (for_window rule will catch and float it)
    foot --app-id=foot-scratch
fi
