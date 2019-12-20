#!/bin/bash
set -xe

# depend on the driver: nouveau or Nvidia
# middle=""
middle="-1"

# default: open built-in display
OUTPUT="eDP${middle}-1"
COMMAND="--auto"

if [[ "$1" == "V" ]]; then
  OUTPUT="eDP${middle}-1"
  COMMAND="--off"
fi

if [[ "$1" == "n" ]]; then
  OUTPUT="DP${middle}-1"
  COMMAND="--auto"
fi

if [[ "$1" == "N" ]]; then
  OUTPUT="DP${middle}-1"
  COMMAND="--off"
fi

if [[ "$1" == "m" ]]; then
  OUTPUT="DP${middle}-2"
  COMMAND="--auto"
fi

if [[ "$1" == "M" ]]; then
  OUTPUT="DP${middle}-2"
  COMMAND="--off"
fi

xrandr --output ${OUTPUT} ${COMMAND}

# c_eDP1="--off"
# c_DP1="--mode 1920x1080 --rotation normal --pos 1080x300"
# c_DP2="--mode 1920x1080 --rotation left --pos 0x0"
# xrandr --output eDP${middle}-1 $c_eDP1 --output DP${middle}-2 $c_DP2 --output DP${middle}-1 $c_DP1
