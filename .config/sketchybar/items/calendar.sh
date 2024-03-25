#!/bin/zsh

sketchybar --add item calendar right \
	--set calendar icon="time" \
	icon.color=$ACCENT_COLOR \
	update_freq=30 \
	script="$PLUGIN_DIR/calendar.sh"
