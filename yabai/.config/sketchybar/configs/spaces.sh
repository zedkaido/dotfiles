#!/usr/bin/env bash

SPACE_ICONS=( "0x00" "I" "II" "III" "IV" "V" "VI" "VII" "VIII" "IX" "X")

for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar \
     --add space space.$sid left \
     --set space.$sid associated_space=$sid \
           icon=${SPACE_ICONS[i]} \
           icon.color=0xffb2b2b2 \
           background.color=0xff000087 \
           background.corner_radius=0 \
           background.height=28 \
           background.drawing=off \
           label.drawing=off \
           script="~/.config/sketchybar/scripts/space.sh" \
           click_script="yabai -m space --focus $sid"
done
