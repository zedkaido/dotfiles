#!/usr/bin/env bash

sketchybar --add event yabai_window_focused
sketchybar --add item focus left \
   --set focus \
   script="~/.config/sketchybar/scripts/focus.sh" \
   --subscribe focus yabai_window_focused
