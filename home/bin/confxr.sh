#!/bin/bash
c_eDP1="--auto"
c_DP1="--off"
c_DP2="--off"
if [[ "$1" == "v" ]]; then
  c_eDP1="--off"
  c_DP1="--off"
  c_DP2="--auto"
elif [[ "$1" == "m" ]]; then
  c_eDP1="--off"
  # c_DP2="--mode 1920x1080 --rotation normal"
  # c_DP1="--mode 1920x1080 --rotation normal"
  c_DP1="--mode 1920x1080 --rotation normal"
elif [[ "$1" == "mv" ]]; then
  c_eDP1="--off"
  c_DP1="--mode 1920x1080 --rotation normal --pos 1080x300"
  c_DP2="--mode 1920x1080 --rotation left --pos 0x0"
fi
cmd="xrandr --output eDP-1 $c_eDP1 --output DP-2 $c_DP2 --output DP-1 $c_DP1"
echo $cmd
$cmd
