#!/bin/bash

sketchybar --add item media center \
	--set media label.color=$ACCENT_COLOR \
	label.max_chars=50 \
	icon.padding_left=0 \
	icon= \
	scroll_texts=on \
	background.drawing=off \
	script="$PLUGIN_DIR/media.sh" \
	--subscribe media media_change >icon.color=$ACCENT_COLOR
