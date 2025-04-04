#!/usr/bin/env bash

sketchybar --add item focus left \
   --set focus \
   script="~/.config/sketchybar/scripts/focus.sh" \
   --subscribe focus front_app_switched
