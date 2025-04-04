#!/usr/bin/env bash

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
   exit 0
fi

ICON="B"
if [[ $CHARGING != "" ]]; then
   ICON="C ::"
fi

sketchybar --set $NAME icon="$ICON" label="${PERCENTAGE}%"
