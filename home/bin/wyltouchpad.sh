#!/bin/bash
val="0"
if [ -n "$1" ]; then
	val=$1
fi
xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" $val
