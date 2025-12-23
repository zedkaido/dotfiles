#!/usr/bin/env bash

window=$(yabai -m query --windows --window)
readarray -t arr <<< $(echo "$window" | jq -r '.app, .title, ."stack-index"')
app=${arr[0]}
window_title=${arr[1]}
stackindex=${arr[2]}
stackindex=$(( stackindex == 0 ? 1 : stackindex ))

sketchybar --set $NAME label="${stackindex:+"::  [$stackindex]"} ${app:+"$app -"} ${window_title:0:55}"
