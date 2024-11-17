#!/bin/bash
echo "checking $DIR - limit is $DIRLIMIT\n"
    
while true; do
    
    DIRSIZE=$(du -shm $DIR | awk '{print $1}')
    echo "$DIR is $DIRSIZE MegaBytes - limit is $DIRLIMIT\n"
    if [ "$DIRSIZE" -gt "$DIRLIMIT" ]
    then
	cd $DIR
	ls -1t | tail -n 1  
#	ls -1t | tail -n 1 | xargs -d '\n' rm -f
    fi
    sleep $timer
done