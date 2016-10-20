#!/bin/bash
running=true
silent_mode=false
startup=false
numberOfConnectedMonitors=`xrandr -q | grep ' connected' | wc -l`

while [ "$#" -gt 0 ]; do
  case "$1" in
    -s | --silent) silent_mode=true;;
    --onstartup) startup=true;;
    *) echo "The '$1' argument doesn't exists. Beep..."; exit 0;;
  esac; shift; shift
done

. $HOME/.ubuntu-wallpaper-fix/src/Fixer.sh

if [ $startup = true ]; then
  sleep 6
  runFix > /dev/null
fi

if [ $silent_mode == true ]; then
  runFix > /dev/null
else
  runFix
fi
