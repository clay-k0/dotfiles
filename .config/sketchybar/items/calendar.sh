#!/bin/bash

sketchybar --add item calendar right \
	--set calendar icon="time" \
	icon.color=0xffebdab1 \
	update_freq=30 \
	script="$PLUGIN_DIR/calendar.sh"
