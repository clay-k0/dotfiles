#!/bin/zsh

sketchybar --add item current_time right \
	--set current_time icon="time" \
	icon.color=$ACCENT_COLOR \
	update_freq=30 \
	script="$PLUGIN_DIR/current_time.sh"
