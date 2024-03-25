#!/bin/zsh

source "$CONFIG_DIR/colors.sh"

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ -z "$PERCENTAGE" ]; then
	exit 0
fi

ICON="battery"

if [ ${PERCENTAGE} -ge 90 ]; then
	COLOR=$WHITE
elif [ ${PERCENTAGE} -ge 50 ]; then
	COLOR=$YELLOW
elif [ ${PERCENTAGE} -ge 20 ]; then
	COLOR=$RED
fi

if [ -n "$CHARGING" ]; then
	PERCENTAGE="${PERCENTAGE}%*"
else
	PERCENTAGE="${PERCENTAGE}%"
fi

sketchybar --set $NAME icon="$ICON" label="$PERCENTAGE" label.color=$COLOR icon.color=$ACCENT_COLOR
