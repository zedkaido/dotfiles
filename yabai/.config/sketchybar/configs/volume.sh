#!/usr/bin/env bash

sketchybar \
   --add item volume right \
   --set volume script="~/.config/sketchybar/scripts/volume.sh" \
         padding_right=15 \
   --subscribe volume volume_change \
