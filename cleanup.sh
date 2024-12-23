#!/bin/bash
echo "checking $DIR for $EXTENSION - limit is $DIRLIMIT MBytes - timer is $timer sec"
    
while true; do
    
    DIRSIZE=$(du -shm $DIR | awk '{print $1}')
    echo "$DIR is $DIRSIZE MegaBytes - limit is $DIRLIMIT"
    if [ "$DIRSIZE" -gt "$DIRLIMIT" ]
    then
	cd $DIR
	ls -1t $EXTENSION | tail -n 1  
	ls -1t $EXTENSION | tail -n 1 | xargs -d '\n' rm -f
    fi
    sleep $timer
done