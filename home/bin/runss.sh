#!/bin/bash
# default : ss_.json
config=""
comm="start"
if [ -z "$1" ]; then
	comm="start"
else
	if [ -z "$2" ]; then
		if [ "$1" == "start" -o "$1" == "stop" ]; then
			comm=$1
		else
			config=$1
		fi	
	else
		config=$1
		comm=$2
	fi
fi
config="/home/wyl8899/bin/ss_${config}.json"
echo "sudo sslocal -c $config -d $comm"
sudo sslocal -c $config -d $comm

