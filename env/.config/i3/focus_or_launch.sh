#!/bin/bash
# focus_or_launch.sh <WM_CLASS> <command>

APP_CLASS="$1"
APP_CMD="$2"

# Try to focus the window
if ! i3-msg "[class=\"$APP_CLASS\"] focus" | grep -q '"success":true'; then
    # If focus failed, launch the app
    $APP_CMD &
fi

