#!/usr/bin/env bash

window=$(yabai -m query --windows --window 2>/dev/null);
readarray -t arr < <(echo "$window" | jq -r '.app, .title, ."stack-index", ."has-parent-zoom", ."has-fullscreen-zoom"')

app=${arr[0]}
window_title=${arr[1]}
stackindex=${arr[2]}
stackindex=$(( stackindex == 0 ? 1 : stackindex ))
if [[ ${arr[3]} = "true" ]]; then
   zoom="[PZOOM]"
elif [[ ${arr[4]} = "true" ]]; then
   zoom="[FZOOM]"
fi

sketchybar --set $NAME label="${stackindex:+"::  [$stackindex]"} $zoom ${app:+"$app -"} ${window_title:0:55}"
