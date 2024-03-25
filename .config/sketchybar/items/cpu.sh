#!/bin/zsh

sketchybar --add item cpu right \
	--set cpu update_freq=2 \
	script="$PLUGIN_DIR/cpu.sh" \
	icon.color=$ACCENT_COLOR \
	icon=cpu

# icon=􀧓  \
