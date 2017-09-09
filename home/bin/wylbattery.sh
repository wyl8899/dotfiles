#!/bin/bash
echo "battery_BAT0"
upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "(percentage)|(time to empty)"
echo "battery_BAT1"
upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -E "(percentage)|(time to empty)"
