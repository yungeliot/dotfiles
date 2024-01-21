#!/usr/bin/env sh
killall waybar

while pgrep -x waybar >/dev/null; do sleep 1; done


waybar &