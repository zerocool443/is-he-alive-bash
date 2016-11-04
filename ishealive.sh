#!/bin/bash
HOSTS="192.168.2.2 192.168.2.3 192.168.2.4 192.168.2.6 192.168.2.7"

COUNT=4

for myHost in $HOSTS
do
	count=$(ping -c $COUNT $myHost | grep 'received' | awk -F',' '{print $2}' | awk '{print $1}')
	if $count
		then echo "Hosts down"
		else echo "Host up!"
	fi
done
