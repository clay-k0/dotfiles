#!/bin/zsh

sketchybar --add item date right \
	--set date icon="date" \
	icon.color=$ACCENT_COLOR \
	update_freq=43200 \
	script="$PLUGIN_DIR/date.sh"
