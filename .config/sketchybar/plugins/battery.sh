#!/bin/zsh

source "$CONFIG_DIR/colors.sh"

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ -z "$PERCENTAGE" ]; then
	exit 0
fi

ICON="battery"

case ${PERCENTAGE} in
  9[0-9]|100) COLOR=$WHITE
  ;;
  [6-8][0-9]) COLOR=$WHITE
  ;;
  [3-5][0-9]) COLOR=$YELLOW
  ;;
  [1-2][0-9]) COLOR=$RED
  ;;
  *) COLOR=$RED
esac

if [ -n "$CHARGING" ]; then
	PERCENTAGE="${PERCENTAGE}%⁺"
else
	PERCENTAGE="${PERCENTAGE}%"
fi

sketchybar --set $NAME icon="$ICON" label="$PERCENTAGE" label.color=$COLOR icon.color=$ACCENT_COLOR
