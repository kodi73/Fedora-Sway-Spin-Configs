#!/bin/bash

chosen=$(printf "  Suspend\n  Reboot\n  Shutdown\n  Logout" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
    "  Suspend") systemctl suspend ;;
    "  Reboot") systemctl reboot ;;
    "  Shutdown") systemctl poweroff ;;
    "  Logout") swaymsg exit ;;
esac
