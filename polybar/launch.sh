#!/usr/bin/env sh


killall -q polybar


while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c ~/.config/polybar/config main &
polybar -c ~/.config/polybar/config left &
