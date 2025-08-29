#!/bin/bash
if ! i3-msg '[class="Spotify"] focus' | grep -q '"success":true'; then
    spotify &
fi
