#!/bin/bash

DIR="/var/lib/docker/volumes/twitch_twitch/_data"
SOMELIMIT=10

while true; do
    
    DIRSIZE=$(du -shm $DIR | awk '{print $1}')
    echo "$DIR is $DIRSIZE MegaBytes\n"
    if [ "$DIRSIZE" -gt "$SOMELIMIT" ]
    then
	cd $DIR
	ls -1t | tail -n 1  
#	ls -1t | tail -n 1 | xargs -d '\n' rm -f
    fi
    sleep 60
done