#!/bin/zsh

sketchybar --add item current_time right \
	--set current_time icon="time" \
	icon.color=$ACCENT_COLOR \
	update_freq=43200 \
	script="$PLUGIN_DIR/current_time.sh"
