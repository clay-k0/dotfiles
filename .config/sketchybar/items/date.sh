#!/bin/zsh

sketchybar --add item date right \
	--set date icon="date" \
	icon.color=$ACCENT_COLOR \
	script="$PLUGIN_DIR/date.sh"
