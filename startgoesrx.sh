#!/bin/bash
#give system time to start
#sleep 60
[ -f /home/pi/logs/goesrecv.log ] && mv /home/pi/logs/goesrecv.log /home/pi/logs/goesrecv.$(date +%Y%m%d-%H%M%S).log
[ -f /home/pi/logs/goesproc.log ] && mv /home/pi/logs/goesproc.log /home/pi/logs/goesproc.$(date +%Y%m%d-%H%M%S).log
nohup /usr/local/bin/goesrecv -v -i 1 -c /home/pi/goesrecv.conf >> /home/pi/logs/goesrecv.log 2>&1 &
echo "Done"
exit
