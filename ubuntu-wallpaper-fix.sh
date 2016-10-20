#!/bin/bash
running=true
numberOfConnectedMonitors=`xrandr -q | grep ' connected' | wc -l`
. $HOME/.ubuntu-wallpaper-fix/src/Fixer.sh
sleep 6
runFix
