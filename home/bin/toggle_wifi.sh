#!/bin/bash
set -xeu

status="$(nmcli r w)"
if [[ "${status}" == "enabled" ]]; then
  cmd="off"
else
  cmd="on"
fi
nmcli r w "${cmd}"
