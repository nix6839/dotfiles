#!/bin/sh

killall -q polybar
polybar-msg cmd quit

polybar i3bar 2>&1 | tee -a /tmp/polybar.log & disown
echo "Polybar launched..."
