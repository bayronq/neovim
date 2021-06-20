#!/bin/sh
if ! screen -list | grep -q "hdmi2"; then
	xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --off --output HDMI-2 --mode 1920x1080 --pos 0x0 --rotate normal
fi
/home/gerry/.config/i3/polybar.sh
