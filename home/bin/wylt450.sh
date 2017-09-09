#!/bin/bash
XINPUT=$(xinput)
if [[ $XINPUT == *"IBM TrackPoint"* ]]; then
  $(dirname "$0")/wyltouchpad.sh 0
  xinput --set-prop "TPPS/2 IBM TrackPoint" "Device Accel Constant Deceleration" 0.5
fi
