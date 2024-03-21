#!/bin/bash

sketchybar --add item battery right \
	--set battery update_freq=120 \
	script="$PLUGIN_DIR/battery.sh" \
	icon.color=0xff72966c \
	--subscribe battery system_woke power_source_change
