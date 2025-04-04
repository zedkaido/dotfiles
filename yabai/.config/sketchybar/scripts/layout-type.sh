#!/usr/bin/env bash

layout_type=$(yabai -m query --spaces --space | jq -r ".type" | tr '[:lower:]' '[:upper:]')
formatted_layout_type="[${layout_type}]"
sketchybar --set $NAME label="${formatted_layout_type}"
