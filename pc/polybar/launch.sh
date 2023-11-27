#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch on monitor 1
MONITOR=DP-0 polybar -c ~/.config/polybar/config.ini workspace &
# MONITOR=eDP polybar -c ~/.config/polybar/config music &
MONITOR=DP-0 polybar -c ~/.config/polybar/config.ini  status &

## Launch on monitor 2
## MONITOR=DP-2 polybar -c ~/.config/polybar/config.ini workspace &
## MONITOR=DP-2 polybar -c ~/.config/polybar/config.ini  status &
