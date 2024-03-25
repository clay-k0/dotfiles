#!/bin/zsh

source "$CONFIG_DIR/colors.sh"

if [ "$SELECTED" = true ]; then
	sketchybar --set $NAME background.drawing=off \
		label.color=$ACCENT_COLOR \
		icon.color=$ACCENT_COLOR
else
	sketchybar --set $NAME background.drawing=off \
		label.color=$WHITE \
		icon.color=$WHITE
fi
