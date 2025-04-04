#!/usr/bin/env bash

sketchybar --add event yabai_layout_changed
sketchybar \
   --add item yabai_layout left \
   --set yabai_layout script="~/.config/sketchybar/scripts/layout-type.sh" \
         padding_right=15 \
   --subscribe yabai_layout space_change yabai_layout_changed display_change
