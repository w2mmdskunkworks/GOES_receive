#!/bin/bash
#Check for goesproc
PSLIST=$(pgrep goesproc)
#echo $PSLIST
if [ "$PSLIST" = "" ]
then
	nohup /usr/local/bin/goesproc -c /home/pi/goesproc-goesr-rev.conf -m packet  --subscribe tcp://127.0.0.1:5004 >> /home/pi/logs/goesproc.log 2>&1 &
	echo "GOESPROC restarted"
#else
#	echo "GOESPROC running"
fi

#check for goesrecv
PSLIST=$(pgrep goesrecv)
if [ "$PSLIST" = "" ]
then
	nohup /usr/local/bin/goesrecv -v -i 1 -c /home/pi/goesrecv.conf >> /home/pi/logs/goesrecv.log 2>&1  &
        echo "GOESRECV restarted"
#else
#        echo "GOESRECV running"
fi

