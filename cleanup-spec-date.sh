#!/bin/bash
#STAMP=$(date --date="5 days ago" +%Y-%m-%d)
STAMP='2021-03-26'
echo $STAMP
find ./ -type d -name "$STAMP" -a -prune -exec rm -rf {} \;
find /home/pi/logs -type f -mtime +5 -name 'goes*.log' -delete
exit
