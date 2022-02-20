#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar

if [[ $(xrandr -q | grep 'HDMI-A-0 connected') ]]; then
	polybar top_external -c ~/.config/polybar/config.ini &
else
	polybar top -c ~/.config/polybar/config.ini &
fi

