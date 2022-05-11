#!/bin/bash
JOBNO=$(ps -A | grep goesrecv | cut -c 1-5)
kill $JOBNO
#echo "Job killed "
sleep 3
/usr/local/bin/goesrecv -v -i 1 -c /home/pi/goesrecv.conf >> /home/pi/logs/goesrecv.log 2>&1 &
#sh ./startgoesrecv.sh
#echo "Restarted"
ps -A | grep goes
echo "done"
