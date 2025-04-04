#!/usr/bin/env bash

SPACE_ICONS=("I" "II" "III" "IV" "V" "VI" "VII" "VIII" "IX" "X" "XI")

for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar \
     --add space space.$sid left \
     --set space.$sid associated_space=$sid \
           icon=${SPACE_ICONS[i]} \
           icon.color=0xffb2b2b2 \
           background.color=0xff343434 \
           background.corner_radius=0 \
           background.height=20 \
           background.drawing=off \
           label.drawing=off \
           script="~/.config/sketchybar/scripts/space.sh" \
           click_script="yabai -m space --focus $sid"
done
