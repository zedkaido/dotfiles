#!/usr/bin/env bash

VOLUME=$INFO

case $VOLUME in
	[6-9][0-9]|100) ICON="VOL" ;;
	[3-5][0-9]) ICON="VOL" ;;
	[1-9]|[1-2][0-9]) ICON="VOL" ;;
	*) ICON="VOL :: Ꝏ "
esac

sketchybar --set $NAME icon="$ICON" label="$VOLUME%"
