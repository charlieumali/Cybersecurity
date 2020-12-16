#!/bin/bash
#Check if script was run as root. Exit if false
if [ "$UID" != "0" ]
then
	echo "Please help"
	exit
fi
