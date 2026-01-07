#!/usr/local/bin/dash

sketchybar \
   --add item volume right \
   --set volume script="~/.config/sketchybar/scripts/volume.sh" \
   --subscribe volume volume_change \
