#!/bin/bash -xv
GAIN=$(tail -1 /home/pi/logs/goesrecv.log | cut -c 39-42)
if [ $GAIN == "0.00" ]
then 
	JOBNO=$(ps -A | grep goesrecv | cut -c 1-5)
	kill $JOBNO
	sleep 10
	/usr/local/bin/goesrecv -v -i 1 -c /home/pi/goesrecv.conf >> /home/pi/logs/goesrecv.log 2>&1 &
fi

