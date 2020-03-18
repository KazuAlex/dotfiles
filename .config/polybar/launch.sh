#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

kill $(ps aux | grep -i "/home/alexandre/.config/polybar/modules/spotify/scripts/spotify/launchlistener.sh" | awk '{print $2}')

# Spotify
/bin/sh /home/alexandre/.config/polybar/modules/spotify/scripts/spotify/launchlistener.sh &

# Launch top and bottom
polybar top &
polybar bottom &

echo "Bars launched..."
