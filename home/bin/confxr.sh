#!/bin/bash
cmd1="auto"
cmd2="off"
if [ -n "$1" ]; then
	cmd1=$1
	if [ -n "$2" ]; then
		cmd2=$2
	fi
fi
cmd="xrandr --output eDP1 --$cmd1 --output DP2 --$cmd2"
echo $cmd
$cmd
